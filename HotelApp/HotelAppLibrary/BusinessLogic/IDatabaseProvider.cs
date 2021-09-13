using HotelAppLibrary.Models;
using System;
using System.Collections.Generic;

namespace HotelAppLibrary.BusinessLogic
{
	public interface IDatabaseProvider
	{
		void BookingGuest(string firstName, string lastName, DateTime startDate, DateTime endDate, int roomTypeId);
		void CheckInGuest(int bookingId);
		List<RoomTypeModel> GetAvailableRoomTypes(DateTime startDate, DateTime endDate);
		List<BookingFullModel> SearchBookings(string lastName);
	}
}
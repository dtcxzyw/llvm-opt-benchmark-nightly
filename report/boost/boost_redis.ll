Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/boost_redis?download=true
inline.NumInlined: 16494
inline.NumDeleted: 6231
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 33
begin_hunk_0
%"class.std::mersenne_twister_engine" = type { [624 x i64], i64 }
%"class.boost::redis::detail::writer_action" = type { i32, %union.anon.101 }
%union.anon.101 = type { %"class.boost::system::error_code" }
%"class.boost::asio::execution::bad_executor" = type { %"class.std::exception" }
%"class.boost::exception_detail::refcount_ptr" = type { ptr }
%"class.boost::asio::detail::initiate_composed" = type { %"class.boost::redis::detail::run_op", %"struct.boost::asio::detail::composed_io_executors" }
%"class.boost::redis::detail::run_op" = type { ptr, %"class.boost::redis::detail::run_fsm" }
%"class.boost::redis::detail::run_fsm" = type { i32, %"class.boost::system::error_code" }
%"class.boost::asio::cancellation_slot_binder" = type { %"class.boost::asio::cancellation_slot", %"class.boost::asio::any_completion_handler" }
%"class.boost::asio::cancellation_slot" = type { ptr }
%"class.boost::asio::any_completion_handler" = type { ptr, ptr }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.boost::asio::detail::completion_payload" = type { %"class.boost::asio::detail::completion_message" }
%"class.boost::asio::detail::completion_message" = type { %"class.boost::system::error_code", i64 }
%"struct.boost::asio::async_result<boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>::init_wrapper" = type { %"class.boost::asio::detail::initiation_base" }
%"class.boost::asio::detail::initiation_base" = type { %"class.boost::asio::detail::initiate_composed" }
%"class.boost::asio::detail::composed_op" = type { %"class.boost::asio::detail::composed_op.base", [4 x i8] }
%"class.boost::asio::detail::composed_op.base" = type <{ %"class.boost::asio::detail::base_from_cancellation_state", %"class.boost::redis::detail::run_op", %"struct.boost::asio::detail::composed_work", %"class.boost::asio::cancellation_slot_binder", i32 }>
%"class.boost::asio::detail::base_from_cancellation_state" = type { %"class.boost::asio::cancellation_state" }
%"class.boost::asio::cancellation_state" = type { ptr }
%"struct.boost::asio::detail::composed_work" = type { %"class.boost::asio::detail::composed_work_guard" }
%"class.boost::asio::detail::composed_work_guard" = type { %"class.boost::asio::any_io_executor" }
%"struct.boost::asio::execution::prefer_only" = type { i8 }
%"class.boost::asio::detail::initiate_composed.198" = type { %"struct.boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op" }
%"struct.boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op" = type { ptr, %"class.boost::redis::detail::connect_fsm", %"struct.boost::redis::detail::connect_params" }
%"class.boost::redis::detail::connect_fsm" = type { i32, ptr }
%"class.boost::asio::detail::initiate_composed.192" = type { %"struct.boost::redis::detail::sentinel_resolve_op", %"struct.boost::asio::detail::composed_io_executors" }
%"struct.boost::redis::detail::sentinel_resolve_op" = type { ptr, %"class.boost::redis::detail::sentinel_resolve_fsm" }
%"class.boost::redis::detail::sentinel_resolve_fsm" = type { i32, i64 }
%"class.boost::asio::experimental::wait_for_one" = type { i32 }
%"struct.boost::asio::experimental::parallel_group<(lambda at /opt-bench/work/boost/boost/libs/redis/include/boost/redis/connection.hpp:519:16), (lambda at /opt-bench/work/boost/boost/libs/redis/include/boost/redis/connection.hpp:522:16)>::initiate_async_wait" = type { i8 }
%"class.boost::asio::detail::initiate_immediate" = type { %"class.boost::asio::any_io_executor" }
%"class.std::bad_function_call" = type { %"class.std::exception" }
%"class.boost::asio::experimental::parallel_group" = type { %"class.std::tuple.158" }
%"class.std::tuple.158" = type { %"struct.std::_Tuple_impl.159" }
%"struct.std::_Tuple_impl.159" = type { %"struct.std::_Tuple_impl.160", %"struct.std::_Head_base.163" }
%"struct.std::_Tuple_impl.160" = type { %"struct.std::_Head_base.161" }
%"struct.std::_Head_base.161" = type { %class.anon.162 }
%class.anon.162 = type { ptr }
%"struct.std::_Head_base.163" = type { %class.anon.164 }
%class.anon.164 = type { ptr }
%"class.boost::asio::detail::initiate_dispatch_with_executor" = type { %"class.boost::asio::any_completion_executor" }
%"class.boost::asio::any_completion_executor" = type { %"class.boost::asio::execution::any_executor.166" }
%"class.boost::asio::execution::any_executor.166" = type { %"class.boost::asio::execution::detail::any_executor_base", ptr }
%"struct.boost::asio::detail::empty_work_function" = type { i8 }
%"class.boost::asio::detail::work_dispatcher" = type { %"class.boost::asio::detail::composed_op", %"class.boost::asio::any_completion_executor" }
%"class.boost::asio::detail::executor_function" = type { ptr }
%"class.std::allocator.150" = type { i8 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0" = type { %"class.boost::asio::detail::composed_op" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::composed_op.193" = type { %"class.boost::asio::detail::composed_op.base.196", [4 x i8] }
%"class.boost::asio::detail::composed_op.base.196" = type <{ %"class.boost::asio::detail::base_from_cancellation_state.195", %"struct.boost::redis::detail::sentinel_resolve_op", %"struct.boost::asio::detail::composed_work", %"class.boost::asio::detail::composed_op", i32 }>
%"class.boost::asio::detail::base_from_cancellation_state.195" = type { %"class.boost::asio::cancellation_state" }
%"class.boost::asio::cancel_after_timer" = type <{ %"class.boost::asio::detail::composed_op.193", ptr, %"class.std::chrono::duration", i32, [4 x i8] }>
%"struct.boost::asio::detail::initiate_cancel_after_timer.430" = type { %"class.boost::asio::detail::initiation_base.431" }
%"class.boost::asio::detail::initiation_base.431" = type { %"class.boost::asio::detail::initiate_composed.429" }
%"class.boost::asio::detail::initiate_composed.429" = type { %"struct.boost::redis::detail::exec_one_op", %"struct.boost::asio::detail::composed_io_executors" }
%"struct.boost::redis::detail::exec_one_op" = type { ptr, ptr, %"class.boost::redis::detail::exec_one_fsm" }
%"class.boost::redis::detail::exec_one_fsm" = type { i32, %"class.boost::redis::any_adapter", i64, %"class.boost::redis::resp3::parser" }
%"class.boost::redis::resp3::parser" = type { i64, %"struct.std::array", i64, i32, i64 }
%"class.boost::asio::detail::composed_op.199" = type { %"class.boost::asio::detail::composed_op.base.202", [4 x i8] }
%"class.boost::asio::detail::composed_op.base.202" = type <{ %"class.boost::asio::detail::base_from_cancellation_state.201", %"struct.boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op", [8 x i8], %"class.boost::asio::detail::composed_op.193", i32 }>
%"class.boost::asio::detail::base_from_cancellation_state.201" = type { %"class.boost::asio::cancellation_state" }
%"struct.boost::asio::detail::initiate_cancel_after_timer.372" = type { %"class.boost::asio::detail::initiation_base.373" }
%"class.boost::asio::detail::initiation_base.373" = type { %"class.boost::asio::ssl::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::initiate_async_handshake" }
%"class.boost::asio::ssl::stream<boost::asio::basic_stream_socket<boost::asio::ip::tcp>>::initiate_async_handshake" = type { ptr }
%"struct.boost::asio::detail::initiate_cancel_after_timer" = type { %"class.boost::asio::detail::initiation_base.217" }
%"class.boost::asio::detail::initiation_base.217" = type { %"class.boost::asio::basic_socket<boost::asio::local::stream_protocol>::initiate_async_connect" }
%"class.boost::asio::basic_socket<boost::asio::local::stream_protocol>::initiate_async_connect" = type { ptr }
%"class.boost::asio::local::basic_endpoint" = type { %"class.boost::asio::local::detail::endpoint" }
%"class.boost::asio::local::detail::endpoint" = type { %"union.boost::asio::local::detail::endpoint::data_union", i64 }
%"union.boost::asio::local::detail::endpoint::data_union" = type { %struct.sockaddr_un }
%struct.sockaddr_un = type { i16, [108 x i8] }
%"class.boost::asio::cancel_after_timer.206" = type <{ %"class.boost::asio::detail::composed_op.199", ptr, %"class.std::chrono::duration", i32, [4 x i8] }>
%"class.boost::asio::ssl::stream" = type { %"class.boost::asio::basic_stream_socket", %"struct.boost::asio::ssl::detail::stream_core" }
%"class.boost::asio::basic_stream_socket" = type { %"class.boost::asio::basic_socket" }
%"class.boost::asio::basic_socket" = type { %"class.boost::asio::detail::io_object_impl.124" }
%"class.boost::asio::detail::io_object_impl.124" = type { ptr, %"struct.boost::asio::detail::reactive_socket_service<boost::asio::ip::tcp>::implementation_type", %"class.boost::asio::any_io_executor" }
%"struct.boost::asio::detail::reactive_socket_service<boost::asio::ip::tcp>::implementation_type" = type <{ %"struct.boost::asio::detail::reactive_socket_service_base::base_implementation_type", %"class.boost::asio::ip::tcp", [4 x i8] }>
%"struct.boost::asio::detail::reactive_socket_service_base::base_implementation_type" = type { i32, i8, ptr }
%"class.boost::asio::ip::tcp" = type { i32 }
%"struct.boost::asio::ssl::detail::stream_core" = type { %"class.boost::asio::ssl::detail::engine", %"class.boost::asio::basic_waitable_timer", %"class.boost::asio::basic_waitable_timer", i64, i64, %"class.std::unique_ptr.126", %"class.std::unique_ptr.126", %"class.boost::asio::const_buffer" }
%"class.boost::asio::ssl::detail::engine" = type { ptr, ptr }
%"class.boost::asio::basic_waitable_timer" = type { %"class.boost::asio::detail::io_object_impl.125" }
%"class.boost::asio::detail::io_object_impl.125" = type { ptr, %"struct.boost::asio::detail::deadline_timer_service<boost::asio::detail::chrono_time_traits<std::chrono::_V2::steady_clock, boost::asio::wait_traits<std::chrono::_V2::steady_clock>>>::implementation_type", %"class.boost::asio::any_io_executor" }
%"struct.boost::asio::detail::deadline_timer_service<boost::asio::detail::chrono_time_traits<std::chrono::_V2::steady_clock, boost::asio::wait_traits<std::chrono::_V2::steady_clock>>>::implementation_type" = type { %"class.std::chrono::time_point", i8, %"class.boost::asio::detail::timer_queue<boost::asio::detail::chrono_time_traits<std::chrono::_V2::steady_clock, boost::asio::wait_traits<std::chrono::_V2::steady_clock>>, boost::asio::execution_context::allocator<void>>::per_timer_data" }
%"class.std::chrono::time_point" = type { %"class.std::chrono::duration" }
%"class.boost::asio::detail::timer_queue<boost::asio::detail::chrono_time_traits<std::chrono::_V2::steady_clock, boost::asio::wait_traits<std::chrono::_V2::steady_clock>>, boost::asio::execution_context::allocator<void>>::per_timer_data" = type { %"class.boost::asio::detail::op_queue", i64, ptr, ptr }
%"class.boost::asio::detail::op_queue" = type { ptr, ptr }
%"class.std::unique_ptr.126" = type { %"struct.std::__uniq_ptr_data.127" }
%"struct.std::__uniq_ptr_data.127" = type { %"class.std::__uniq_ptr_impl.128" }
%"class.std::__uniq_ptr_impl.128" = type { %"class.std::tuple.129" }
%"class.std::tuple.129" = type { %"struct.std::_Tuple_impl.130" }
%"struct.std::_Tuple_impl.130" = type { %"struct.std::_Head_base.133" }
%"struct.std::_Head_base.133" = type { ptr }
%"class.boost::asio::const_buffer" = type { ptr, i64 }
%"class.boost::asio::detail::conditionally_enabled_mutex<boost::asio::detail::futex_slim_mutex>::scoped_lock" = type <{ ptr, i8, [7 x i8] }>
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { ptr }
%"class.boost::asio::detail::op_queue.213" = type { ptr, ptr }
%struct.linger = type { i32, i32 }
%"class.boost::asio::detail::socket_holder" = type { i32 }
%"struct.boost::asio::detail::epoll_reactor::perform_io_cleanup_on_block_exit" = type { ptr, %"class.boost::asio::detail::op_queue.213", ptr }
%"struct.boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::timed_cancel_op_handler" = type { ptr }
%"class.boost::asio::detail::timed_cancel_timer_handler" = type { ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i64, i64 }
%"class.boost::asio::detail::handler_work" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::handler_work_base" = type { %"class.boost::asio::any_io_executor" }
%"class.boost::asio::detail::handler_work_base.228" = type { %"class.boost::asio::any_completion_executor" }
%"class.boost::asio::detail::binder1" = type { %"class.boost::asio::detail::timed_cancel_timer_handler", %"class.boost::system::error_code" }
%"class.boost::asio::detail::completion_payload_handler" = type { %"class.boost::asio::detail::completion_payload.219", %"class.boost::asio::detail::composed_op.199" }
%"class.boost::asio::detail::completion_payload.219" = type { %"class.boost::asio::detail::completion_message.220" }
%"class.boost::asio::detail::completion_message.220" = type { %"class.boost::system::error_code" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::timer_queue<boost::asio::detail::chrono_time_traits<std::chrono::_V2::steady_clock, boost::asio::wait_traits<std::chrono::_V2::steady_clock>>, boost::asio::execution_context::allocator<void>>::heap_entry" = type { %"class.std::chrono::time_point", ptr }
%"class.boost::asio::detail::initiate_post_with_executor" = type { %"class.boost::asio::any_io_executor" }
%"class.boost::asio::detail::binder1.238" = type { %"class.boost::asio::detail::timed_cancel_op_handler", %"class.boost::system::error_code" }
%"struct.boost::asio::detail::reactive_socket_connect_op<boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::execution::allocator_t" = type { %"class.boost::asio::any_completion_handler_allocator" }
%"class.boost::asio::any_completion_handler_allocator" = type { ptr, ptr }
%"class.boost::asio::detail::work_dispatcher.240" = type { %"class.boost::asio::detail::binder1.238", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::execution::prefer_only.175" = type { i8 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder1<boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::system::error_code>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.242" = type { %"class.boost::asio::detail::binder1.238" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::system::error_code>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.256" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%struct.pollfd = type { i32, i16, i16 }
%"class.boost::asio::detail::op_queue.212" = type { ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work" = type { %"class.boost::asio::detail::handler_work.256" }
%"class.boost::system::system_error" = type { %"class.std::runtime_error", %"class.boost::system::error_code" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"struct.boost::asio::detail::initiate_cancel_after_timer.264" = type { %"class.boost::asio::detail::initiation_base.265" }
%"class.boost::asio::detail::initiation_base.265" = type { %"class.boost::asio::ip::basic_resolver<boost::asio::ip::tcp>::initiate_async_resolve" }
%"class.boost::asio::ip::basic_resolver<boost::asio::ip::tcp>::initiate_async_resolve" = type { ptr }
%"class.boost::asio::ip::basic_resolver_query" = type { %struct.addrinfo, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%"struct.boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::timed_cancel_op_handler.271" = type { ptr }
%"class.boost::asio::detail::timed_cancel_timer_handler.272" = type { ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.276" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder1.278" = type { %"class.boost::asio::detail::timed_cancel_timer_handler.272", %"class.boost::system::error_code" }
%"class.boost::asio::detail::completion_payload_handler.279" = type { %"class.boost::asio::detail::completion_payload.267", %"class.boost::asio::detail::composed_op.199" }
%"class.boost::asio::detail::completion_payload.267" = type { %"class.boost::asio::detail::completion_message.268" }
%"class.boost::asio::detail::completion_message.268" = type { %"class.boost::system::error_code", %"class.boost::asio::ip::basic_resolver_results" }
%"class.boost::asio::ip::basic_resolver_results" = type { %"class.boost::asio::ip::basic_resolver_iterator" }
%"class.boost::asio::ip::basic_resolver_iterator" = type { %"class.std::shared_ptr", i64 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"struct.boost::asio::detail::initiate_cancel_after_timer.280" = type { %"class.boost::asio::detail::initiation_base.281" }
%"class.boost::asio::detail::initiation_base.281" = type { %"class.boost::asio::detail::initiate_async_range_connect" }
%"class.boost::asio::detail::initiate_async_range_connect" = type { ptr }
%"struct.boost::asio::detail::default_connect_condition" = type { i8 }
%"struct.boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::timed_cancel_op_handler.287" = type { ptr }
%"class.boost::asio::detail::timed_cancel_timer_handler.288" = type { ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.292" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder1.294" = type { %"class.boost::asio::detail::timed_cancel_timer_handler.288", %"class.boost::system::error_code" }
%"class.boost::asio::detail::completion_payload_handler.295" = type { %"class.boost::asio::detail::completion_payload.283", %"class.boost::asio::detail::composed_op.199" }
%"class.boost::asio::detail::completion_payload.283" = type { %"class.boost::asio::detail::completion_message.284" }
%"class.boost::asio::detail::completion_message.284" = type <{ %"class.boost::system::error_code", %"class.boost::asio::ip::basic_endpoint", [4 x i8] }>
%"class.boost::asio::ip::basic_endpoint" = type { %"class.boost::asio::ip::detail::endpoint" }
%"class.boost::asio::ip::detail::endpoint" = type { %"union.boost::asio::ip::detail::endpoint::data_union" }
%"union.boost::asio::ip::detail::endpoint::data_union" = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.2 }
%union.anon.2 = type { [4 x i32] }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::range_connect_op" = type { %"class.boost::asio::detail::base_from_cancellation_state.302", ptr, %"class.boost::asio::ip::basic_resolver_results", i64, i32, %"class.boost::asio::detail::timed_cancel_op_handler.287" }
%"class.boost::asio::detail::base_from_cancellation_state.302" = type { %"class.boost::asio::cancellation_state" }
%"class.boost::asio::basic_socket<boost::asio::ip::tcp>::initiate_async_connect" = type { ptr }
%"class.boost::asio::detail::binder1.307" = type { %"class.boost::asio::detail::range_connect_op", %"class.boost::system::error_code" }
%"struct.boost::asio::detail::reactive_socket_connect_op<boost::asio::detail::range_connect_op<boost::asio::ip::tcp, boost::asio::any_io_executor, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>, boost::asio::detail::default_connect_condition, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.313" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::range_connect_op<boost::asio::ip::tcp, boost::asio::any_io_executor, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>, boost::asio::detail::default_connect_condition, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.320" = type { %"class.boost::asio::detail::handler_work.313" }
%"class.boost::asio::detail::work_dispatcher.321" = type { %"class.boost::asio::detail::binder1.307", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder1<boost::asio::detail::range_connect_op<boost::asio::ip::tcp, boost::asio::any_io_executor, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>, boost::asio::detail::default_connect_condition, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::system::error_code>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.323" = type { %"class.boost::asio::detail::binder1.307" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder1<boost::asio::detail::range_connect_op<boost::asio::ip::tcp, boost::asio::any_io_executor, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>, boost::asio::detail::default_connect_condition, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::system::error_code>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::resolve_query_op<boost::asio::ip::tcp, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.std::weak_ptr" = type { %"class.std::__weak_ptr" }
%"class.std::__weak_ptr" = type { ptr, %"class.std::__weak_count" }
%"class.std::__weak_count" = type { ptr }
%"class.boost::asio::detail::handler_work.344" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2" = type { %"class.boost::asio::detail::timed_cancel_op_handler.271", %"class.boost::system::error_code", %"class.boost::asio::ip::basic_resolver_results" }
%"class.boost::asio::ip::basic_resolver_entry" = type { %"class.boost::asio::ip::basic_endpoint", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>, boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::scheduler_thread_info" = type { %"class.boost::asio::detail::thread_info_base", %"class.boost::asio::detail::op_queue.213", i64 }
%"class.boost::asio::detail::thread_info_base" = type { [12 x ptr], i32, %"class.std::__exception_ptr::exception_ptr" }
%"class.std::__exception_ptr::exception_ptr" = type { ptr }
%"class.boost::asio::detail::call_stack<boost::asio::detail::thread_context, boost::asio::detail::thread_info_base>::context" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::conditionally_enabled_mutex<boost::asio::detail::posix_mutex>::scoped_lock" = type <{ ptr, i8, [7 x i8] }>
%"struct.boost::asio::detail::scheduler::task_cleanup" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::scheduler::work_cleanup" = type { ptr, ptr, ptr }
%struct.timeval = type { i64, i64 }
%"struct.boost::asio::execution_context::service::key" = type { ptr, ptr }
%"struct.boost::asio::execution::context_as_t" = type { i8 }
%"class.boost::asio::execution_context::allocator" = type { ptr }
%"class.boost::asio::execution_context::allocator.216" = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%"class.boost::asio::detail::posix_signal_blocker" = type { i8, %struct.__sigset_t }
%"class.boost::asio::detail::posix_thread" = type { ptr }
%union.pthread_condattr_t = type { i32 }
%"class.boost::asio::ssl::detail::io_op" = type { %"class.boost::asio::detail::base_from_cancellation_state.374", ptr, ptr, %"class.boost::asio::ssl::detail::handshake_op", i32, i32, %"class.boost::system::error_code", i64, %"class.boost::asio::detail::timed_cancel_op_handler" }
%"class.boost::asio::detail::base_from_cancellation_state.374" = type { %"class.boost::asio::cancellation_state" }
%"class.boost::asio::ssl::detail::handshake_op" = type { i32 }
%"struct.boost::asio::ssl::detail::transfer_unlimited" = type { i8 }
%"class.boost::asio::detail::initiate_async_write" = type { ptr }
%"class.boost::asio::mutable_buffer" = type { ptr, i64 }
%"struct.boost::asio::detail::reactive_socket_recv_op<boost::asio::mutable_buffer, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.376" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.378" = type { %"class.boost::asio::ssl::detail::io_op", %"class.boost::system::error_code", i64 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.384" = type { %"class.boost::asio::detail::handler_work.376" }
%"class.boost::asio::detail::work_dispatcher.385" = type { %"class.boost::asio::detail::binder2.378", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.387" = type { %"class.boost::asio::detail::binder2.378" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder1.399" = type { %"class.boost::asio::ssl::detail::io_op", %"class.boost::system::error_code" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::write_op" = type { %"class.boost::asio::detail::base_from_cancellation_state.406", [8 x i8], ptr, %"class.boost::asio::detail::consuming_buffers", i32, %"class.boost::asio::ssl::detail::io_op" }
%"class.boost::asio::detail::base_from_cancellation_state.406" = type { %"class.boost::asio::cancellation_state" }
%"class.boost::asio::detail::consuming_buffers" = type { %"class.boost::asio::detail::consuming_single_buffer" }
%"class.boost::asio::detail::consuming_single_buffer" = type { %"class.boost::asio::const_buffer", i64 }
%"struct.boost::asio::detail::reactive_socket_send_op<boost::asio::const_buffer, boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.408" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.410" = type { %"class.boost::asio::detail::write_op", %"class.boost::system::error_code", i64 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.416" = type { %"class.boost::asio::detail::handler_work.408" }
%"class.boost::asio::detail::work_dispatcher.417" = type { %"class.boost::asio::detail::binder2.410", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code, unsigned long>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.419" = type { %"class.boost::asio::detail::binder2.410" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code, unsigned long>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::timed_cancel_op_handler.436" = type { ptr }
%"class.boost::asio::detail::timed_cancel_timer_handler.437" = type { ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.441" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder1.443" = type { %"class.boost::asio::detail::timed_cancel_timer_handler.437", %"class.boost::system::error_code" }
%"class.boost::asio::detail::completion_payload_handler.444" = type { %"class.boost::asio::detail::completion_payload.219", %"class.boost::asio::detail::composed_op.193" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::composed_op.450" = type { %"class.boost::asio::detail::composed_op.base.453", [4 x i8] }
%"class.boost::asio::detail::composed_op.base.453" = type <{ %"class.boost::asio::detail::base_from_cancellation_state.452", %"struct.boost::redis::detail::exec_one_op", %"struct.boost::asio::detail::composed_work", %"class.boost::asio::detail::timed_cancel_op_handler.436", i32 }>
%"class.boost::asio::detail::base_from_cancellation_state.452" = type { %"class.boost::asio::cancellation_state" }
%"class.boost::asio::ssl::detail::write_op" = type { %"class.boost::asio::const_buffer" }
%"class.boost::asio::ssl::detail::read_op" = type { %"class.boost::span" }
%"class.boost::span" = type { %"struct.boost::detail::span_store" }
%"struct.boost::detail::span_store" = type { ptr, i64 }
%"class.boost::asio::detail::write_op.458" = type { %"class.boost::asio::detail::base_from_cancellation_state.459", ptr, %"class.boost::asio::detail::consuming_buffers.461", i32, [4 x i8], %"class.boost::asio::detail::composed_op.450" }
%"class.boost::asio::detail::base_from_cancellation_state.459" = type { %"class.boost::asio::cancellation_state" }
%"class.boost::asio::detail::consuming_buffers.461" = type { %"class.boost::asio::detail::consuming_single_buffer" }
%"class.boost::asio::detail::transfer_all_t" = type { i8 }
%"struct.boost::asio::detail::reactive_socket_send_op<boost::asio::const_buffer, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.464" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.466" = type { %"class.boost::asio::detail::write_op.458", %"class.boost::system::error_code", i64 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.472" = type { %"class.boost::asio::detail::handler_work.464" }
%"class.boost::asio::detail::work_dispatcher.473" = type { %"class.boost::asio::detail::binder2.466", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder2<boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.475" = type { %"class.boost::asio::detail::binder2.466" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder2<boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::ssl::detail::io_op.485" = type { %"class.boost::asio::detail::base_from_cancellation_state.486", ptr, ptr, %"class.boost::asio::ssl::detail::write_op", i32, i32, %"class.boost::system::error_code", i64, %"class.boost::asio::detail::write_op.458" }
%"class.boost::asio::detail::base_from_cancellation_state.486" = type { %"class.boost::asio::cancellation_state" }
%"struct.boost::asio::detail::reactive_socket_recv_op<boost::asio::mutable_buffer, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::write_op<boost::asio::const_buffer>, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.489" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.491" = type { %"class.boost::asio::ssl::detail::io_op.485", %"class.boost::system::error_code", i64 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::write_op<boost::asio::const_buffer>, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.497" = type { %"class.boost::asio::detail::handler_work.489" }
%"class.boost::asio::detail::work_dispatcher.498" = type { %"class.boost::asio::detail::binder2.491", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::write_op<boost::asio::const_buffer>, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code, unsigned long>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.500" = type { %"class.boost::asio::detail::binder2.491" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::write_op<boost::asio::const_buffer>, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code, unsigned long>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::write_op<boost::asio::const_buffer>, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder1.512" = type { %"class.boost::asio::ssl::detail::io_op.485", %"class.boost::system::error_code" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::write_op<boost::asio::const_buffer>, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::write_op.518" = type { %"class.boost::asio::detail::base_from_cancellation_state.519", [8 x i8], ptr, %"class.boost::asio::detail::consuming_buffers", i32, %"class.boost::asio::ssl::detail::io_op.485" }
%"class.boost::asio::detail::base_from_cancellation_state.519" = type { %"class.boost::asio::cancellation_state" }
%"struct.boost::asio::detail::reactive_socket_send_op<boost::asio::const_buffer, boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::write_op<boost::asio::const_buffer>, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.522" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.524" = type { %"class.boost::asio::detail::write_op.518", %"class.boost::system::error_code", i64 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::write_op<boost::asio::const_buffer>, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.530" = type { %"class.boost::asio::detail::handler_work.522" }
%"class.boost::asio::detail::work_dispatcher.531" = type { %"class.boost::asio::detail::binder2.524", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::write_op<boost::asio::const_buffer>, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>>, boost::system::error_code, unsigned long>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.533" = type { %"class.boost::asio::detail::binder2.524" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::write_op<boost::asio::const_buffer>, boost::asio::detail::write_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>, boost::asio::const_buffer, const boost::asio::const_buffer *, boost::asio::detail::transfer_all_t, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>>, boost::system::error_code, unsigned long>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::reactive_socket_recv_op<boost::span<char>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.546" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.548" = type { %"class.boost::asio::detail::composed_op.450", %"class.boost::system::error_code", i64 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::buffer_sequence_adapter" = type { [64 x %struct.iovec], i64, i64 }
%struct.iovec = type { ptr, i64 }
%struct.msghdr = type { ptr, i32, ptr, i64, ptr, i64, i32 }
%"class.boost::asio::detail::immediate_handler_work.554" = type { %"class.boost::asio::detail::handler_work.546" }
%"class.boost::asio::detail::work_dispatcher.555" = type { %"class.boost::asio::detail::binder2.548", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder2<boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::system::error_code, unsigned long>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.557" = type { %"class.boost::asio::detail::binder2.548" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder2<boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::system::error_code, unsigned long>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::ssl::detail::io_op.567" = type { %"class.boost::asio::detail::base_from_cancellation_state.459", ptr, ptr, %"class.boost::asio::ssl::detail::read_op", i32, i32, %"class.boost::system::error_code", i64, %"class.boost::asio::detail::composed_op.450" }
%"struct.boost::asio::detail::reactive_socket_recv_op<boost::asio::mutable_buffer, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::read_op<boost::span<char>>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.570" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.572" = type { %"class.boost::asio::ssl::detail::io_op.567", %"class.boost::system::error_code", i64 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::read_op<boost::span<char>>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.578" = type { %"class.boost::asio::detail::handler_work.570" }
%"class.boost::asio::detail::work_dispatcher.579" = type { %"class.boost::asio::detail::binder2.572", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::read_op<boost::span<char>>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.581" = type { %"class.boost::asio::detail::binder2.572" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::read_op<boost::span<char>>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::read_op<boost::span<char>>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder1.593" = type { %"class.boost::asio::ssl::detail::io_op.567", %"class.boost::system::error_code" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::read_op<boost::span<char>>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::write_op.599" = type { %"class.boost::asio::detail::base_from_cancellation_state.600", [8 x i8], ptr, %"class.boost::asio::detail::consuming_buffers", i32, %"class.boost::asio::ssl::detail::io_op.567" }
%"class.boost::asio::detail::base_from_cancellation_state.600" = type { %"class.boost::asio::cancellation_state" }
%"struct.boost::asio::detail::reactive_socket_send_op<boost::asio::const_buffer, boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::read_op<boost::span<char>>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.603" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.605" = type { %"class.boost::asio::detail::write_op.599", %"class.boost::system::error_code", i64 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::read_op<boost::span<char>>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.611" = type { %"class.boost::asio::detail::handler_work.603" }
%"class.boost::asio::detail::work_dispatcher.612" = type { %"class.boost::asio::detail::binder2.605", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::read_op<boost::span<char>>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code, unsigned long>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.614" = type { %"class.boost::asio::detail::binder2.605" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::read_op<boost::span<char>>, boost::asio::detail::composed_op<boost::redis::detail::exec_one_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::sentinel_resolve_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code, unsigned long>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::composed_op.624" = type { %"class.boost::asio::detail::composed_op.base.626", [4 x i8] }
%"class.boost::asio::detail::composed_op.base.626" = type <{ %"class.boost::asio::detail::base_from_cancellation_state.195", %"struct.boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op", [8 x i8], %"class.boost::asio::detail::composed_op", i32 }>
%"class.boost::asio::cancel_after_timer.628" = type <{ %"class.boost::asio::detail::composed_op.624", ptr, %"class.std::chrono::duration", i32, [4 x i8] }>
%"struct.boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::timed_cancel_op_handler.634" = type { ptr }
%"class.boost::asio::detail::timed_cancel_timer_handler.635" = type { ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.639" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder1.641" = type { %"class.boost::asio::detail::timed_cancel_timer_handler.635", %"class.boost::system::error_code" }
%"class.boost::asio::detail::completion_payload_handler.642" = type { %"class.boost::asio::detail::completion_payload.219", %"class.boost::asio::detail::composed_op.624" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder1.648" = type { %"class.boost::asio::detail::timed_cancel_op_handler.634", %"class.boost::system::error_code" }
%"struct.boost::asio::detail::reactive_socket_connect_op<boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::work_dispatcher.650" = type { %"class.boost::asio::detail::binder1.648", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder1<boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::system::error_code>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.652" = type { %"class.boost::asio::detail::binder1.648" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::system::error_code>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.663" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.670" = type { %"class.boost::asio::detail::handler_work.663" }
%"struct.boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::timed_cancel_op_handler.674" = type { ptr }
%"class.boost::asio::detail::timed_cancel_timer_handler.675" = type { ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.679" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder1.681" = type { %"class.boost::asio::detail::timed_cancel_timer_handler.675", %"class.boost::system::error_code" }
%"class.boost::asio::detail::completion_payload_handler.682" = type { %"class.boost::asio::detail::completion_payload.267", %"class.boost::asio::detail::composed_op.624" }
%"struct.boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::timed_cancel_op_handler.686" = type { ptr }
%"class.boost::asio::detail::timed_cancel_timer_handler.687" = type { ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.691" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder1.693" = type { %"class.boost::asio::detail::timed_cancel_timer_handler.687", %"class.boost::system::error_code" }
%"class.boost::asio::detail::completion_payload_handler.694" = type { %"class.boost::asio::detail::completion_payload.283", %"class.boost::asio::detail::composed_op.624" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::range_connect_op.701" = type { %"class.boost::asio::detail::base_from_cancellation_state.702", ptr, %"class.boost::asio::ip::basic_resolver_results", i64, i32, %"class.boost::asio::detail::timed_cancel_op_handler.686" }
%"class.boost::asio::detail::base_from_cancellation_state.702" = type { %"class.boost::asio::cancellation_state" }
%"class.boost::asio::detail::binder1.703" = type { %"class.boost::asio::detail::range_connect_op.701", %"class.boost::system::error_code" }
%"struct.boost::asio::detail::reactive_socket_connect_op<boost::asio::detail::range_connect_op<boost::asio::ip::tcp, boost::asio::any_io_executor, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>, boost::asio::detail::default_connect_condition, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.706" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::range_connect_op<boost::asio::ip::tcp, boost::asio::any_io_executor, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>, boost::asio::detail::default_connect_condition, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.713" = type { %"class.boost::asio::detail::handler_work.706" }
%"class.boost::asio::detail::work_dispatcher.714" = type { %"class.boost::asio::detail::binder1.703", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder1<boost::asio::detail::range_connect_op<boost::asio::ip::tcp, boost::asio::any_io_executor, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>, boost::asio::detail::default_connect_condition, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::system::error_code>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.716" = type { %"class.boost::asio::detail::binder1.703" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder1<boost::asio::detail::range_connect_op<boost::asio::ip::tcp, boost::asio::any_io_executor, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>, boost::asio::detail::default_connect_condition, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_endpoint<boost::asio::ip::tcp>)>>, boost::system::error_code>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::detail::timed_cancel_timer_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::resolve_query_op<boost::asio::ip::tcp, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.733" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.735" = type { %"class.boost::asio::detail::timed_cancel_op_handler.674", %"class.boost::system::error_code", %"class.boost::asio::ip::basic_resolver_results" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>, void (boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>)>, boost::system::error_code, boost::asio::ip::basic_resolver_results<boost::asio::ip::tcp>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::ssl::detail::io_op.741" = type { %"class.boost::asio::detail::base_from_cancellation_state.742", ptr, ptr, %"class.boost::asio::ssl::detail::handshake_op", i32, i32, %"class.boost::system::error_code", i64, %"class.boost::asio::detail::timed_cancel_op_handler.634" }
%"class.boost::asio::detail::base_from_cancellation_state.742" = type { %"class.boost::asio::cancellation_state" }
%"struct.boost::asio::detail::reactive_socket_recv_op<boost::asio::mutable_buffer, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.745" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.747" = type { %"class.boost::asio::ssl::detail::io_op.741", %"class.boost::system::error_code", i64 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.753" = type { %"class.boost::asio::detail::handler_work.745" }
%"class.boost::asio::detail::work_dispatcher.754" = type { %"class.boost::asio::detail::binder2.747", %"class.boost::asio::any_completion_executor" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::work_dispatcher<boost::asio::detail::empty_work_function, boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>, boost::asio::any_completion_executor>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder0.756" = type { %"class.boost::asio::detail::binder2.747" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder0<boost::asio::detail::binder2<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code, unsigned long>>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"struct.boost::asio::detail::wait_handler<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::binder1.768" = type { %"class.boost::asio::ssl::detail::io_op.741", %"class.boost::system::error_code" }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder1<boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>, boost::system::error_code>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::write_op.774" = type { %"class.boost::asio::detail::base_from_cancellation_state.775", [8 x i8], ptr, %"class.boost::asio::detail::consuming_buffers", i32, %"class.boost::asio::ssl::detail::io_op.741" }
%"class.boost::asio::detail::base_from_cancellation_state.775" = type { %"class.boost::asio::cancellation_state" }
%"struct.boost::asio::detail::reactive_socket_send_op<boost::asio::const_buffer, boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::asio::any_io_executor>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::handler_work.778" = type { %"class.boost::asio::detail::handler_work_base", %"class.boost::asio::detail::handler_work_base.228" }
%"class.boost::asio::detail::binder2.780" = type { %"class.boost::asio::detail::write_op.774", %"class.boost::system::error_code", i64 }
%"struct.boost::asio::detail::executor_function::impl<boost::asio::detail::binder2<boost::asio::detail::write_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::mutable_buffer, const boost::asio::mutable_buffer *, boost::asio::ssl::detail::transfer_unlimited, boost::asio::ssl::detail::io_op<boost::asio::basic_stream_socket<boost::asio::ip::tcp>, boost::asio::ssl::detail::handshake_op, boost::asio::detail::timed_cancel_op_handler<boost::asio::detail::timed_cancel_op<boost::asio::detail::composed_op<boost::redis::detail::redis_stream<boost::asio::any_io_executor>::connect_op, boost::asio::detail::composed_work<void ()>, boost::asio::detail::composed_op<boost::redis::detail::run_op<boost::asio::any_io_executor>, boost::asio::detail::composed_work<void (boost::asio::any_io_executor)>, boost::asio::cancellation_slot_binder<boost::asio::any_completion_handler<void (boost::system::error_code)>, boost::asio::cancellation_slot>, void (boost::system::error_code)>, void (boost::system::error_code)>, boost::asio::basic_waitable_timer<std::chrono::_V2::steady_clock> &, void (boost::system::error_code)>, void (boost::system::error_code)>>>, boost::system::error_code, unsigned long>, std::allocator<void>>::ptr" = type { ptr, ptr, ptr }
%"class.boost::asio::detail::immediate_handler_work.786" = type { %"class.boost::asio::detail::handler_work.778" }
end_hunk_0
begin_hunk_1
$_ZNO5boost4asio6detail27initiate_cancel_after_timerINS1_28initiate_async_range_connectINS0_2ip3tcpENS0_15any_io_executorEEENSt6chrono3_V212steady_clockENS0_11wait_traitsISA_EES6_JFvNS_6system10error_codeENS4_14basic_endpointIS5_EEEEEclINS1_11composed_opINS_5redis6detail12redis_streamIS6_E10connect_opENS1_13composed_workIFvvEEENSK_INSM_19sentinel_resolve_opIS6_EENSQ_IFvS6_EEENSK_INSM_6run_opIS6_EESW_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvSE_EEEENS0_17cancellation_slotEEEJS11_EEEJS11_EEEJS11_EEElSt5ratioILl1ELl1000000000EEJRKNS4_22basic_resolver_resultsIS5_EENS1_25default_connect_conditionEEEEvOT_PNS0_20basic_waitable_timerISA_SC_S6_EERKNS8_8durationIT0_T1_EENS0_17cancellation_typeEDpOT2_ = comdat any

$_ZN5boost4asio6detail15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS3_INS5_19sentinel_resolve_opIS7_EENSA_IFvS7_EEENS3_INS5_6run_opIS7_EESG_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSN_EEEJSN_EEEJSN_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISX_EES7_EEJFvSM_NS0_2ip14basic_endpointINS12_3tcpEEEEEE5startINS1_28initiate_async_range_connectIS14_S7_EEJRKNS12_22basic_resolver_resultsIS14_EENS1_25default_connect_conditionEEEEvOT_DpOT0_ = comdat any

$_ZN5boost4asio6detail15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS3_INS5_19sentinel_resolve_opIS7_EENSA_IFvS7_EEENS3_INS5_6run_opIS7_EESG_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSN_EEEJSN_EEEJSN_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISX_EES7_EEJFvSM_NS0_2ip14basic_endpointINS12_3tcpEEEEEE3ptrD2Ev = comdat any

$_ZN5boost4asio6detail26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS4_INS6_19sentinel_resolve_opIS8_EENSB_IFvS8_EEENS4_INS6_6run_opIS8_EESH_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSO_EEEJSO_EEEJSO_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISY_EES8_EEJFvSN_NS0_2ip14basic_endpointINS13_3tcpEEEEEEEED2Ev = comdat any

$_ZN5boost4asio6detail23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS4_INS6_19sentinel_resolve_opIS8_EENSB_IFvS8_EEENS4_INS6_6run_opIS8_EESH_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSO_EEEJSO_EEEJSO_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISY_EES8_EEJFvSN_NS0_2ip14basic_endpointINS13_3tcpEEEEEEEJS17_EED2Ev = comdat any

$_ZN5boost4asio6detail20cancellation_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS4_INS6_19sentinel_resolve_opIS8_EENSB_IFvS8_EEENS4_INS6_6run_opIS8_EESH_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSO_EEEJSO_EEEJSO_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISY_EES8_EEJFvSN_NS0_2ip14basic_endpointINS13_3tcpEEEEEE12cancel_proxyEE4callENS0_17cancellation_typeE = comdat any

$_ZN5boost4asio6detail20cancellation_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS4_INS6_19sentinel_resolve_opIS8_EENSB_IFvS8_EEENS4_INS6_6run_opIS8_EESH_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSO_EEEJSO_EEEJSO_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISY_EES8_EEJFvSN_NS0_2ip14basic_endpointINS13_3tcpEEEEEE12cancel_proxyEE7destroyEv = comdat any

$_ZN5boost4asio6detail22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE10async_waitINS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENSE_INSG_19sentinel_resolve_opISI_EENSL_IFvSI_EEENSE_INSG_6run_opISI_EESR_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSY_EEEJSY_EEEJSY_EEERNS0_20basic_waitable_timerIS6_S8_SI_EEJFvSX_NS0_2ip14basic_endpointINS18_3tcpEEEEEEEEESI_EEvRNSA_19implementation_typeERT_RKT0_ = comdat any

$_ZN5boost4asio6detail12wait_handlerINS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS5_INS7_19sentinel_resolve_opIS9_EENSC_IFvS9_EEENS5_INS7_6run_opIS9_EESI_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSP_EEEJSP_EEEJSP_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISZ_EES9_EEJFvSO_NS0_2ip14basic_endpointINS14_3tcpEEEEEEEEES9_E11do_completeEPvPNS1_19scheduler_operationERKSO_m = comdat any

$_ZN5boost4asio6detail12wait_handlerINS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS5_INS7_19sentinel_resolve_opIS9_EENSC_IFvS9_EEENS5_INS7_6run_opIS9_EESI_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSP_EEEJSP_EEEJSP_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISZ_EES9_EEJFvSO_NS0_2ip14basic_endpointINS14_3tcpEEEEEEEEES9_E3ptr5resetEv = comdat any

$_ZN5boost4asio6detail7binder1INS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS5_INS7_19sentinel_resolve_opIS9_EENSC_IFvS9_EEENS5_INS7_6run_opIS9_EESI_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSP_EEEJSP_EEEJSP_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISZ_EES9_EEJFvSO_NS0_2ip14basic_endpointINS14_3tcpEEEEEEEEESO_ED2Ev = comdat any

$_ZN5boost4asio6detail12handler_workINS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS5_INS7_19sentinel_resolve_opIS9_EENSC_IFvS9_EEENS5_INS7_6run_opIS9_EESI_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSP_EEEJSP_EEEJSP_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISZ_EES9_EEJFvSO_NS0_2ip14basic_endpointINS14_3tcpEEEEEEEEES9_vED2Ev = comdat any

$_ZN5boost4asio6detail15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS3_INS5_19sentinel_resolve_opIS7_EENSA_IFvS7_EEENS3_INS5_6run_opIS7_EESG_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSN_EEEJSN_EEEJSN_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISX_EES7_EEJFvSM_NS0_2ip14basic_endpointINS12_3tcpEEEEEE8completeEv = comdat any

$_ZN5boost4asio6detail15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS3_INS5_19sentinel_resolve_opIS7_EENSA_IFvS7_EEENS3_INS5_6run_opIS7_EESG_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSN_EEEJSN_EEEJSN_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISX_EES7_EEJFvSM_NS0_2ip14basic_endpointINS12_3tcpEEEEEE7releaseEv = comdat any

$_ZN5boost4asio6detail26completion_payload_handlerINS1_18completion_payloadIJFvNS_6system10error_codeENS0_2ip14basic_endpointINS6_3tcpEEEEEEENS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENSC_INSE_19sentinel_resolve_opISG_EENSJ_IFvSG_EEENSC_INSE_6run_opISG_EESP_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvS5_EEEENS0_17cancellation_slotEEEJSU_EEEJSU_EEEJSU_EEEED2Ev = comdat any

$_ZN5boost4asio6detail15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS3_INS5_19sentinel_resolve_opIS7_EENSA_IFvS7_EEENS3_INS5_6run_opIS7_EESG_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSN_EEEJSN_EEEJSN_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISX_EES7_EEJFvSM_NS0_2ip14basic_endpointINS12_3tcpEEEEEED2Ev = comdat any

$_ZN5boost4asio6detail11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS2_INS4_19sentinel_resolve_opIS6_EENS9_IFvS6_EEENS2_INS4_6run_opIS6_EESF_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSM_EEEJSM_EEEJSM_EEclIJSL_NS0_2ip14basic_endpointINSU_3tcpEEEEEEvDpOT_ = comdat any

$_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder1INS5_26timed_cancel_timer_handlerINS5_15timed_cancel_opINS5_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS5_13composed_workIFvvEEENS9_INSB_19sentinel_resolve_opISD_EENSG_IFvSD_EEENS9_INSB_6run_opISD_EESM_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJST_EEEJST_EEEJST_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS13_EESD_EEJFvSS_NS0_2ip14basic_endpointINS18_3tcpEEEEEEEEESS_EEEEvOT_ = comdat any

$_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder1INS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS0_2ip14basic_endpointINS16_3tcpEEEEEEEEESQ_EEEEvPv = comdat any

$_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS0_2ip14basic_endpointINS16_3tcpEEEEEEEEESQ_EESaIvEE3ptrD2Ev = comdat any

$_ZN5boost4asio6detail17executor_function8completeINS1_7binder1INS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS0_2ip14basic_endpointINS16_3tcpEEEEEEEEESQ_EESaIvEEEvPNS2_9impl_baseEb = comdat any

$_ZNK5boost4asio6detail28initiate_async_range_connectINS0_2ip3tcpENS0_15any_io_executorEEclINS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS5_E10connect_opENS1_13composed_workIFvvEEENSA_INSC_19sentinel_resolve_opIS5_EENSG_IFvS5_EEENSA_INSC_6run_opIS5_EESM_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJST_EEEJST_EEEJST_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS13_EES5_EEJFvSS_NS3_14basic_endpointIS4_EEEEEEJS1A_EEENS3_22basic_resolver_resultsIS4_EENS1_25default_connect_conditionEEEvOT_RKT0_RKT1_ = comdat any

$_ZN5boost4asio6detail16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS3_22basic_resolver_resultsIS4_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS5_E10connect_opENS1_13composed_workIFvvEEENSB_INSD_19sentinel_resolve_opIS5_EENSH_IFvS5_EEENSB_INSD_6run_opIS5_EESN_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSU_EEEJSU_EEEJSU_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS14_EES5_EEJFvST_NS3_14basic_endpointIS4_EEEEEEJS1B_EEEEclEST_i = comdat any

$_ZN5boost4asio6detail16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS3_22basic_resolver_resultsIS4_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS5_E10connect_opENS1_13composed_workIFvvEEENSB_INSD_19sentinel_resolve_opIS5_EENSH_IFvS5_EEENSB_INSD_6run_opIS5_EESN_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSU_EEEJSU_EEEJSU_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS14_EES5_EEJFvST_NS3_14basic_endpointIS4_EEEEEEJS1B_EEEED2Ev = comdat any

$_ZN5boost4asio18cancellation_stateC2INS0_17cancellation_slotENS0_19cancellation_filterILNS0_17cancellation_typeE3EEES6_EET_T0_T1_ = comdat any

$_ZN5boost4asio6detail20cancellation_handlerINS0_18cancellation_state4implINS0_19cancellation_filterILNS0_17cancellation_typeE3EEES7_EEE4callES6_ = comdat any

$_ZN5boost4asio6detail20cancellation_handlerINS0_18cancellation_state4implINS0_19cancellation_filterILNS0_17cancellation_typeE3EEES7_EEE7destroyEv = comdat any

$_ZN5boost4asio6detail16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS3_22basic_resolver_resultsIS4_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS5_E10connect_opENS1_13composed_workIFvvEEENSB_INSD_19sentinel_resolve_opIS5_EENSH_IFvS5_EEENSB_INSD_6run_opIS5_EESN_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSU_EEEJSU_EEEJSU_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS14_EES5_EEJFvST_NS3_14basic_endpointIS4_EEEEEEJS1B_EEEE7processINS3_23basic_resolver_iteratorIS4_EEEEvST_iT_S1I_ = comdat any

$_ZN5boost4asio2ip23basic_resolver_iteratorINS1_3tcpEED2Ev = comdat any

$_ZN5boost4asio6detail7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS4_22basic_resolver_resultsIS5_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS6_E10connect_opENS1_13composed_workIFvvEEENSC_INSE_19sentinel_resolve_opIS6_EENSI_IFvS6_EEENSC_INSE_6run_opIS6_EESO_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSV_EEEJSV_EEEJSV_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS15_EES6_EEJFvSU_NS4_14basic_endpointIS5_EEEEEEJS1C_EEEEESU_ED2Ev = comdat any

$_ZNK5boost4asio12basic_socketINS0_2ip3tcpENS0_15any_io_executorEE22initiate_async_connectclINS0_6detail16range_connect_opIS3_S4_NS2_22basic_resolver_resultsIS3_EENS8_25default_connect_conditionENS8_23timed_cancel_op_handlerINS8_15timed_cancel_opINS8_11composed_opINS_5redis6detail12redis_streamIS4_E10connect_opENS8_13composed_workIFvvEEENSF_INSH_19sentinel_resolve_opIS4_EENSL_IFvS4_EEENSF_INSH_6run_opIS4_EESR_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSY_EEEJSY_EEEJSY_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS18_EES4_EEJFvSX_NS2_14basic_endpointIS3_EEEEEEJS1F_EEEEEEEvOT_RKS1E_RKSX_ = comdat any

$_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE13async_connectINS1_16range_connect_opIS4_NS0_15any_io_executorENS3_22basic_resolver_resultsIS4_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS8_E10connect_opENS1_13composed_workIFvvEEENSE_INSG_19sentinel_resolve_opIS8_EENSK_IFvS8_EEENSE_INSG_6run_opIS8_EESQ_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSX_EEEJSX_EEEJSX_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS17_EES8_EEJFvSW_NS3_14basic_endpointIS4_EEEEEEJS1E_EEEEES8_EEvRNS5_19implementation_typeERKS1D_RT_RKT0_ = comdat any

$_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS4_22basic_resolver_resultsIS5_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS6_E10connect_opENS1_13composed_workIFvvEEENSC_INSE_19sentinel_resolve_opIS6_EENSI_IFvS6_EEENSC_INSE_6run_opIS6_EESO_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSV_EEEJSV_EEEJSV_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS15_EES6_EEJFvSU_NS4_14basic_endpointIS5_EEEEEEJS1C_EEEEES6_EC2ERKSU_iRS1F_RKS6_ = comdat any

$_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS4_22basic_resolver_resultsIS5_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS6_E10connect_opENS1_13composed_workIFvvEEENSC_INSE_19sentinel_resolve_opIS6_EENSI_IFvS6_EEENSC_INSE_6run_opIS6_EESO_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSV_EEEJSV_EEEJSV_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS15_EES6_EEJFvSU_NS4_14basic_endpointIS5_EEEEEEJS1C_EEEEES6_E3ptrD2Ev = comdat any

$_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS4_22basic_resolver_resultsIS5_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS6_E10connect_opENS1_13composed_workIFvvEEENSC_INSE_19sentinel_resolve_opIS6_EENSI_IFvS6_EEENSC_INSE_6run_opIS6_EESO_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSV_EEEJSV_EEEJSV_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS15_EES6_EEJFvSU_NS4_14basic_endpointIS5_EEEEEEJS1C_EEEEES6_E11do_completeEPvPNS1_19scheduler_operationERKSU_m = comdat any

$_ZN5boost4asio6detail12handler_workINS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS4_22basic_resolver_resultsIS5_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS6_E10connect_opENS1_13composed_workIFvvEEENSC_INSE_19sentinel_resolve_opIS6_EENSI_IFvS6_EEENSC_INSE_6run_opIS6_EESO_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSV_EEEJSV_EEEJSV_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS15_EES6_EEJFvSU_NS4_14basic_endpointIS5_EEEEEEJS1C_EEEEES6_vED2Ev = comdat any

$_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS4_22basic_resolver_resultsIS5_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS6_E10connect_opENS1_13composed_workIFvvEEENSC_INSE_19sentinel_resolve_opIS6_EENSI_IFvS6_EEENSC_INSE_6run_opIS6_EESO_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSV_EEEJSV_EEEJSV_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS15_EES6_EEJFvSU_NS4_14basic_endpointIS5_EEEEEEJS1C_EEEEES6_ED2Ev = comdat any

$_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder1INS5_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS8_22basic_resolver_resultsIS9_EENS5_25default_connect_conditionENS5_23timed_cancel_op_handlerINS5_15timed_cancel_opINS5_11composed_opINS_5redis6detail12redis_streamISA_E10connect_opENS5_13composed_workIFvvEEENSG_INSI_19sentinel_resolve_opISA_EENSM_IFvSA_EEENSG_INSI_6run_opISA_EESS_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSZ_EEEJSZ_EEEJSZ_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS19_EESA_EEJFvSY_NS8_14basic_endpointIS9_EEEEEEJS1G_EEEEESY_EEEEvOT_ = comdat any

$_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS6_22basic_resolver_resultsIS7_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS8_E10connect_opENS1_13composed_workIFvvEEENSE_INSG_19sentinel_resolve_opIS8_EENSK_IFvS8_EEENSE_INSG_6run_opIS8_EESQ_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSX_EEEJSX_EEEJSX_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS17_EES8_EEJFvSW_NS6_14basic_endpointIS7_EEEEEEJS1E_EEEEESW_EEEEvPv = comdat any

$_ZN5boost4asio6detail17executor_function8completeINS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS6_22basic_resolver_resultsIS7_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS8_E10connect_opENS1_13composed_workIFvvEEENSE_INSG_19sentinel_resolve_opIS8_EENSK_IFvS8_EEENSE_INSG_6run_opIS8_EESQ_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSX_EEEJSX_EEEJSX_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS17_EES8_EEJFvSW_NS6_14basic_endpointIS7_EEEEEEJS1E_EEEEESW_EESaIvEEEvPNS2_9impl_baseEb = comdat any

$_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS6_22basic_resolver_resultsIS7_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS8_E10connect_opENS1_13composed_workIFvvEEENSE_INSG_19sentinel_resolve_opIS8_EENSK_IFvS8_EEENSE_INSG_6run_opIS8_EESQ_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSX_EEEJSX_EEEJSX_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS17_EES8_EEJFvSW_NS6_14basic_endpointIS7_EEEEEEJS1E_EEEEESW_EESaIvEE3ptr5resetEv = comdat any

$_ZN5boost4asio6detail26reactive_socket_connect_opINS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS4_22basic_resolver_resultsIS5_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS6_E10connect_opENS1_13composed_workIFvvEEENSC_INSE_19sentinel_resolve_opIS6_EENSI_IFvS6_EEENSC_INSE_6run_opIS6_EESO_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSV_EEEJSV_EEEJSV_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS15_EES6_EEJFvSU_NS4_14basic_endpointIS5_EEEEEEJS1C_EEEEES6_E12do_immediateEPNS1_19scheduler_operationEbPKv = comdat any

$_ZN5boost4asio6detail22immediate_handler_workINS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS4_22basic_resolver_resultsIS5_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS6_E10connect_opENS1_13composed_workIFvvEEENSC_INSE_19sentinel_resolve_opIS6_EENSI_IFvS6_EEENSC_INSE_6run_opIS6_EESO_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSV_EEEJSV_EEEJSV_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS15_EES6_EEJFvSU_NS4_14basic_endpointIS5_EEEEEEJS1C_EEEEES6_E8completeINS1_7binder1IS1F_SU_EEEEvRT_RS1F_PKv = comdat any

$_ZN5boost4asio6detail22immediate_handler_workINS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS4_22basic_resolver_resultsIS5_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS6_E10connect_opENS1_13composed_workIFvvEEENSC_INSE_19sentinel_resolve_opIS6_EENSI_IFvS6_EEENSC_INSE_6run_opIS6_EESO_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSV_EEEJSV_EEEJSV_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS15_EES6_EEJFvSU_NS4_14basic_endpointIS5_EEEEEEJS1C_EEEEES6_ED2Ev = comdat any

$_ZNK5boost4asio6detail31initiate_dispatch_with_executorINS0_23any_completion_executorEEclINS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS8_22basic_resolver_resultsIS9_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamISA_E10connect_opENS1_13composed_workIFvvEEENSG_INSI_19sentinel_resolve_opISA_EENSM_IFvSA_EEENSG_INSI_6run_opISA_EESS_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSZ_EEEJSZ_EEEJSZ_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS19_EESA_EEJFvSY_NS8_14basic_endpointIS9_EEEEEEJS1G_EEEEESY_EENS1_19empty_work_functionEEEvOT_OT0_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES3_S1M_E4typeEEE5valueEvE4typeEPNS1Q_IXsr27is_work_dispatcher_requiredINSt5decayIS1O_E4typeENS1X_IS1M_E4typeES3_EE5valueEvE4typeE = comdat any

$_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail15work_dispatcherINS5_19empty_work_functionENS5_7binder1INS5_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENSA_22basic_resolver_resultsISB_EENS5_25default_connect_conditionENS5_23timed_cancel_op_handlerINS5_15timed_cancel_opINS5_11composed_opINS_5redis6detail12redis_streamISC_E10connect_opENS5_13composed_workIFvvEEENSI_INSK_19sentinel_resolve_opISC_EENSO_IFvSC_EEENSI_INSK_6run_opISC_EESU_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJS11_EEEJS11_EEEJS11_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS1B_EESC_EEJFvS10_NSA_14basic_endpointISB_EEEEEEJS1I_EEEEES10_EENS0_23any_completion_executorEvEEEEvOT_ = comdat any

$_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS6_22basic_resolver_resultsIS7_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS8_E10connect_opENS1_13composed_workIFvvEEENSE_INSG_19sentinel_resolve_opIS8_EENSK_IFvS8_EEENSE_INSG_6run_opIS8_EESQ_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSX_EEEJSX_EEEJSX_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS17_EES8_EEJFvSW_NS6_14basic_endpointIS7_EEEEEEJS1E_EEEEESW_EENS0_23any_completion_executorEvEC2IS3_S1I_EEOT_OT0_RKS1J_ = comdat any

$_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS6_22basic_resolver_resultsIS7_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS8_E10connect_opENS1_13composed_workIFvvEEENSE_INSG_19sentinel_resolve_opIS8_EENSK_IFvS8_EEENSE_INSG_6run_opIS8_EESQ_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSX_EEEJSX_EEEJSX_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS17_EES8_EEJFvSW_NS6_14basic_endpointIS7_EEEEEEJS1E_EEEEESW_EENS0_23any_completion_executorEvED2Ev = comdat any

$_ZN5boost4asio6detail17executor_functionC2INS1_15work_dispatcherINS1_19empty_work_functionENS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS8_22basic_resolver_resultsIS9_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamISA_E10connect_opENS1_13composed_workIFvvEEENSG_INSI_19sentinel_resolve_opISA_EENSM_IFvSA_EEENSG_INSI_6run_opISA_EESS_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSZ_EEEJSZ_EEEJSZ_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS19_EESA_EEJFvSY_NS8_14basic_endpointIS9_EEEEEEJS1G_EEEEESY_EENS0_23any_completion_executorEvEESaIvEEET_RKT0_ = comdat any

$_ZN5boost4asio6detail22executor_function_view8completeINS1_15work_dispatcherINS1_19empty_work_functionENS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS8_22basic_resolver_resultsIS9_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamISA_E10connect_opENS1_13composed_workIFvvEEENSG_INSI_19sentinel_resolve_opISA_EENSM_IFvSA_EEENSG_INSI_6run_opISA_EESS_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSZ_EEEJSZ_EEEJSZ_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS19_EESA_EEJFvSY_NS8_14basic_endpointIS9_EEEEEEJS1G_EEEEESY_EENS0_23any_completion_executorEvEEEEvPv = comdat any

$_ZN5boost4asio6detail15work_dispatcherINS1_19empty_work_functionENS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS6_22basic_resolver_resultsIS7_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS8_E10connect_opENS1_13composed_workIFvvEEENSE_INSG_19sentinel_resolve_opIS8_EENSK_IFvS8_EEENSE_INSG_6run_opIS8_EESQ_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSX_EEEJSX_EEEJSX_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS17_EES8_EEJFvSW_NS6_14basic_endpointIS7_EEEEEEJS1E_EEEEESW_EENS0_23any_completion_executorEvEclEv = comdat any

$_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder0INS5_7binder1INS5_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS9_22basic_resolver_resultsISA_EENS5_25default_connect_conditionENS5_23timed_cancel_op_handlerINS5_15timed_cancel_opINS5_11composed_opINS_5redis6detail12redis_streamISB_E10connect_opENS5_13composed_workIFvvEEENSH_INSJ_19sentinel_resolve_opISB_EENSN_IFvSB_EEENSH_INSJ_6run_opISB_EEST_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJS10_EEEJS10_EEEJS10_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS1A_EESB_EEJFvSZ_NS9_14basic_endpointISA_EEEEEEJS1H_EEEEESZ_EEEEEEvOT_ = comdat any

$_ZN5boost4asio6detail7binder0INS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS5_22basic_resolver_resultsIS6_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS7_E10connect_opENS1_13composed_workIFvvEEENSD_INSF_19sentinel_resolve_opIS7_EENSJ_IFvS7_EEENSD_INSF_6run_opIS7_EESP_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSW_EEEJSW_EEEJSW_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS16_EES7_EEJFvSV_NS5_14basic_endpointIS6_EEEEEEJS1D_EEEEESV_EEED2Ev = comdat any

$_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder0INS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS7_22basic_resolver_resultsIS8_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS9_E10connect_opENS1_13composed_workIFvvEEENSF_INSH_19sentinel_resolve_opIS9_EENSL_IFvS9_EEENSF_INSH_6run_opIS9_EESR_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSY_EEEJSY_EEEJSY_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS18_EES9_EEJFvSX_NS7_14basic_endpointIS8_EEEEEEJS1F_EEEEESX_EEEEEEvPv = comdat any

$_ZN5boost4asio6detail17executor_function8completeINS1_7binder0INS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS7_22basic_resolver_resultsIS8_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS9_E10connect_opENS1_13composed_workIFvvEEENSF_INSH_19sentinel_resolve_opIS9_EENSL_IFvS9_EEENSF_INSH_6run_opIS9_EESR_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSY_EEEJSY_EEEJSY_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS18_EES9_EEJFvSX_NS7_14basic_endpointIS8_EEEEEEJS1F_EEEEESX_EEEESaIvEEEvPNS2_9impl_baseEb = comdat any

$_ZN5boost4asio6detail17executor_function4implINS1_7binder0INS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS7_22basic_resolver_resultsIS8_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS9_E10connect_opENS1_13composed_workIFvvEEENSF_INSH_19sentinel_resolve_opIS9_EENSL_IFvS9_EEENSF_INSH_6run_opIS9_EESR_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSY_EEEJSY_EEEJSY_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS18_EES9_EEJFvSX_NS7_14basic_endpointIS8_EEEEEEJS1F_EEEEESX_EEEESaIvEE3ptr5resetEv = comdat any

$_ZN5boost4asio6detail17executor_function8completeINS1_15work_dispatcherINS1_19empty_work_functionENS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS8_22basic_resolver_resultsIS9_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamISA_E10connect_opENS1_13composed_workIFvvEEENSG_INSI_19sentinel_resolve_opISA_EENSM_IFvSA_EEENSG_INSI_6run_opISA_EESS_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSZ_EEEJSZ_EEEJSZ_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS19_EESA_EEJFvSY_NS8_14basic_endpointIS9_EEEEEEJS1G_EEEEESY_EENS0_23any_completion_executorEvEESaIvEEEvPNS2_9impl_baseEb = comdat any

$_ZN5boost4asio6detail17executor_function4implINS1_15work_dispatcherINS1_19empty_work_functionENS1_7binder1INS1_16range_connect_opINS0_2ip3tcpENS0_15any_io_executorENS8_22basic_resolver_resultsIS9_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamISA_E10connect_opENS1_13composed_workIFvvEEENSG_INSI_19sentinel_resolve_opISA_EENSM_IFvSA_EEENSG_INSI_6run_opISA_EESS_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSZ_EEEJSZ_EEEJSZ_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS19_EESA_EEJFvSY_NS8_14basic_endpointIS9_EEEEEEJS1G_EEEEESY_EENS0_23any_completion_executorEvEESaIvEE3ptr5resetEv = comdat any

$_ZNK5boost4asio6detail27initiate_post_with_executorINS0_15any_io_executorEEclINS1_7binder1INS1_16range_connect_opINS0_2ip3tcpES3_NS8_22basic_resolver_resultsIS9_EENS1_25default_connect_conditionENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamIS3_E10connect_opENS1_13composed_workIFvvEEENSF_INSH_19sentinel_resolve_opIS3_EENSL_IFvS3_EEENSF_INSH_6run_opIS3_EESR_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSY_EEEJSY_EEEJSY_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS18_EES3_EEJFvSX_NS8_14basic_endpointIS9_EEEEEEJS1F_EEEEESX_EENS1_19empty_work_functionEEEvOT_OT0_PNSt9enable_ifIXsr9execution11is_executorINSt11conditionalILb1ES3_S1L_E4typeEEE5valueEvE4typeEPNS1P_IXsr27is_work_dispatcher_requiredINSt5decayIS1N_E4typeENS1W_IS1L_E4typeES3_EE5valueEvE4typeE = comdat any

$_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder1INS5_26timed_cancel_timer_handlerINS5_15timed_cancel_opINS5_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS5_13composed_workIFvvEEENS9_INSB_19sentinel_resolve_opISD_EENSG_IFvSD_EEENS9_INSB_6run_opISD_EESM_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJST_EEEJST_EEEJST_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS13_EESD_EEJFvSS_NS0_2ip22basic_resolver_resultsINS18_3tcpEEEEEEEEESS_EEEEvOT_ = comdat any

$_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder1INS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS0_2ip22basic_resolver_resultsINS16_3tcpEEEEEEEEESQ_EEEEvPv = comdat any

$_ZN5boost4asio6detail17executor_function4implINS1_7binder1INS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS0_2ip22basic_resolver_resultsINS16_3tcpEEEEEEEEESQ_EESaIvEE3ptrD2Ev = comdat any

$_ZN5boost4asio6detail17executor_function8completeINS1_7binder1INS1_26timed_cancel_timer_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS0_2ip22basic_resolver_resultsINS16_3tcpEEEEEEEEESQ_EESaIvEEEvPNS2_9impl_baseEb = comdat any

$_ZN5boost4asio6detail16resolver_serviceINS0_2ip3tcpEE13async_resolveINS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS9_INSB_19sentinel_resolve_opISD_EENSG_IFvSD_EEENS9_INSB_6run_opISD_EESM_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJST_EEEJST_EEEJST_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS13_EESD_EEJFvSS_NS3_22basic_resolver_resultsIS4_EEEEEEJS1A_EEESD_EEvRSt10shared_ptrIvERKNS3_20basic_resolver_queryIS4_EERT_RKT0_ = comdat any

$_ZN5boost4asio6detail16resolve_query_opINS0_2ip3tcpENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS3_22basic_resolver_resultsIS4_EEEEEEJS18_EEESB_EC2ESt8weak_ptrIvERKNS3_20basic_resolver_queryIS4_EERNS1_9schedulerERS1A_RKSB_ = comdat any

$_ZNSt10__weak_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5boost4asio6detail16resolve_query_opINS0_2ip3tcpENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS3_22basic_resolver_resultsIS4_EEEEEEJS18_EEESB_E3ptrD2Ev = comdat any

$_ZN5boost4asio6detail16resolve_query_opINS0_2ip3tcpENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS3_22basic_resolver_resultsIS4_EEEEEEJS18_EEESB_E11do_completeEPvPNS1_19scheduler_operationERKSQ_m = comdat any

$_ZN5boost4asio2ip20basic_resolver_queryINS1_3tcpEEC2ERKS4_ = comdat any

$_ZN5boost4asio6detail9scheduler24post_deferred_completionEPNS1_19scheduler_operationE = comdat any

$_ZN5boost4asio2ip22basic_resolver_resultsINS1_3tcpEE6createEP8addrinfoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_ = comdat any

$_ZN5boost4asio6detail7binder2INS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS5_INS7_19sentinel_resolve_opIS9_EENSC_IFvS9_EEENS5_INS7_6run_opIS9_EESI_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSP_EEEJSP_EEEJSP_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISZ_EES9_EEJFvSO_NS0_2ip22basic_resolver_resultsINS14_3tcpEEEEEEEJS18_EEESO_S17_ED2Ev = comdat any

$_ZN5boost4asio6detail12handler_workINS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS5_INS7_19sentinel_resolve_opIS9_EENSC_IFvS9_EEENS5_INS7_6run_opIS9_EESI_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSP_EEEJSP_EEEJSP_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISZ_EES9_EEJFvSO_NS0_2ip22basic_resolver_resultsINS14_3tcpEEEEEEEJS18_EEES9_vED2Ev = comdat any

$_ZN5boost4asio6detail10socket_ops24translate_addrinfo_errorEi = comdat any

$_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEEC2ERKNS1_14basic_endpointIS3_EESt17basic_string_viewIcSt11char_traitsIcEESC_ = comdat any

$_ZN5boost4asio2ip20basic_resolver_entryINS1_3tcpEED2Ev = comdat any

$_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EED2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPSt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPSt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPSt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPSt6vectorIN5boost4asio2ip20basic_resolver_entryINS3_3tcpEEESaIS6_EELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt6vectorIN5boost4asio2ip20basic_resolver_entryINS2_3tcpEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN5boost4asio6detail16resolve_query_opINS0_2ip3tcpENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS3_22basic_resolver_resultsIS4_EEEEEEJS18_EEESB_ED2Ev = comdat any

$_ZN5boost4asio6detail23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS4_INS6_19sentinel_resolve_opIS8_EENSB_IFvS8_EEENS4_INS6_6run_opIS8_EESH_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSO_EEEJSO_EEEJSO_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISY_EES8_EEJFvSN_NS0_2ip22basic_resolver_resultsINS13_3tcpEEEEEEEJS17_EEclIJRKSN_RKS16_EEENSt9enable_ifIXsr16is_constructibleINS1_18completion_messageIS17_EEiDpT_EE5valueEvE4typeEDpOS1I_ = comdat any

$_ZNK5boost4asio9execution6detail17any_executor_base7executeINS0_6detail7binder2INS5_23timed_cancel_op_handlerINS5_15timed_cancel_opINS5_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS5_13composed_workIFvvEEENS9_INSB_19sentinel_resolve_opISD_EENSG_IFvSD_EEENS9_INSB_6run_opISD_EESM_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJST_EEEJST_EEEJST_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS13_EESD_EEJFvSS_NS0_2ip22basic_resolver_resultsINS18_3tcpEEEEEEEJS1C_EEESS_S1B_EEEEvOT_ = comdat any

$_ZN5boost4asio6detail22executor_function_view8completeINS1_7binder2INS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS0_2ip22basic_resolver_resultsINS16_3tcpEEEEEEEJS1A_EEESQ_S19_EEEEvPv = comdat any

$_ZN5boost4asio6detail17executor_function8completeINS1_7binder2INS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS0_2ip22basic_resolver_resultsINS16_3tcpEEEEEEEJS1A_EEESQ_S19_EESaIvEEEvPNS2_9impl_baseEb = comdat any

$_ZN5boost4asio6detail17executor_function4implINS1_7binder2INS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS7_INS9_19sentinel_resolve_opISB_EENSE_IFvSB_EEENS7_INS9_6run_opISB_EESK_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSR_EEEJSR_EEEJSR_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS11_EESB_EEJFvSQ_NS0_2ip22basic_resolver_resultsINS16_3tcpEEEEEEEJS1A_EEESQ_S19_EESaIvEE3ptr5resetEv = comdat any

$_ZN5boost4asio6detail20resolver_thread_pool18start_work_threadsEv = comdat any

$_ZN5boost4asio6detail12posix_threadC2INS0_17execution_context9allocatorIvEENS1_20resolver_thread_pool21work_scheduler_runnerEEESt15allocator_arg_tRKT_T0_j = comdat any

$asio_detail_posix_thread_function = comdat any

$_ZN5boost4asio6detail12posix_thread4funcINS1_20resolver_thread_pool21work_scheduler_runnerENS0_17execution_context9allocatorIvEEED0Ev = comdat any

$_ZN5boost4asio6detail12posix_thread4funcINS1_20resolver_thread_pool21work_scheduler_runnerENS0_17execution_context9allocatorIvEEE3runEv = comdat any

$_ZN5boost4asio6detail12posix_thread4funcINS1_20resolver_thread_pool21work_scheduler_runnerENS0_17execution_context9allocatorIvEEE7destroyEv = comdat any

$_ZN5boost4asio6detail9scheduler3runERNS_6system10error_codeE = comdat any

$_ZN5boost4asio6detail9scheduler10do_run_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockERNS1_21scheduler_thread_infoERKNS_6system10error_codeE = comdat any

$_ZN5boost4asio6detail21scheduler_thread_infoD2Ev = comdat any

$_ZN5boost4asio6detail16thread_info_baseD2Ev = comdat any

$_ZN5boost4asio6detail9scheduler12task_cleanupD2Ev = comdat any

$_ZN5boost4asio6detail9scheduler12work_cleanupD2Ev = comdat any

$_ZN5boost4asio6detail27conditionally_enabled_event13wait_for_usecERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockEl = comdat any

$_ZN5boost4asio6detail9scheduler13work_finishedEv = comdat any

$_ZN5boost4asio3ssl6detail11stream_coreC2INS0_15any_io_executorEEEP10ssl_ctx_stRKT_mm = comdat any

$_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS0_2ip3tcpEEENS0_15any_io_executorEEC2EiRKS7_ = comdat any

$_ZN5boost4asio6detail16service_registry6createINS1_23reactive_socket_serviceINS0_2ip3tcpEEENS0_17execution_contextEJEEEPNS8_7serviceERS8_PvDpOT1_ = comdat any

$_ZN5boost4asio6detail16service_registry14do_use_serviceERKNS0_17execution_context7service3keyEPFPS4_RS3_PvESA_ = comdat any

$_ZN5boost4asio6detail15allocate_objectINS1_23reactive_socket_serviceINS0_2ip3tcpEEENS0_17execution_context9allocatorIvEEJRS7_EEEPT_RKT0_DpOT1_ = comdat any

$_ZN5boost4asio6detail16service_registry17destroy_allocatedINS1_23reactive_socket_serviceINS0_2ip3tcpEEEEEvPNS0_17execution_context7serviceE = comdat any

$_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEED0Ev = comdat any

$_ZN5boost4asio6detail23reactive_socket_serviceINS0_2ip3tcpEE8shutdownEv = comdat any

$_ZN5boost4asio17execution_context7service11notify_forkENS1_10fork_eventE = comdat any

$_ZN5boost4asio6detail30execution_context_service_baseINS1_23reactive_socket_serviceINS0_2ip3tcpEEEED0Ev = comdat any

$_ZN5boost4asio6detail16service_registry6createINS1_13epoll_reactorENS0_17execution_contextEJEEEPNS5_7serviceERS5_PvDpOT1_ = comdat any

$_ZN5boost4asio6detail16service_registry17destroy_allocatedINS1_13epoll_reactorEEEvPNS0_17execution_context7serviceE = comdat any

$_ZN5boost4asio6detail13epoll_reactorC2ERNS0_17execution_contextE = comdat any

$_ZN5boost4asio6detail13epoll_reactor15do_epoll_createEv = comdat any

$_ZN5boost4asio6detail11object_poolINS1_13epoll_reactor16descriptor_stateENS0_17execution_context9allocatorIvEEED2Ev = comdat any

$_ZN5boost4asio6detail26eventfd_select_interrupterD2Ev = comdat any

$_ZN5boost4asio6detail13epoll_reactorD2Ev = comdat any

$_ZN5boost4asio6detail13epoll_reactorD0Ev = comdat any

$_ZN5boost4asio6detail13epoll_reactor8shutdownEv = comdat any

$_ZN5boost4asio6detail13epoll_reactor11notify_forkENS0_17execution_context10fork_eventE = comdat any

$_ZN5boost4asio6detail13epoll_reactor3runElRNS1_8op_queueINS1_19scheduler_operationEEE = comdat any

$_ZN5boost4asio6detail13epoll_reactor9interruptEv = comdat any

$_ZThn48_N5boost4asio6detail13epoll_reactor3runElRNS1_8op_queueINS1_19scheduler_operationEEE = comdat any

$_ZThn48_N5boost4asio6detail13epoll_reactor9interruptEv = comdat any

$_ZN5boost4asio6detail16service_registry6createINS1_9schedulerENS0_17execution_contextEJEEEPNS5_7serviceERS5_PvDpOT1_ = comdat any

$_ZN5boost4asio6detail16service_registry17destroy_allocatedINS1_9schedulerEEEvPNS0_17execution_context7serviceE = comdat any

$_ZN5boost4asio6detail9scheduler16get_default_taskERNS0_17execution_contextE = comdat any

$_ZN5boost4asio6detail9schedulerC2ERNS0_17execution_contextEbPFPNS1_14scheduler_taskES4_E = comdat any

$_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEEC2Ebi = comdat any

$_ZN5boost4asio6detail9schedulerD2Ev = comdat any

$_ZN5boost4asio6detail9schedulerD0Ev = comdat any

$_ZN5boost4asio6detail9scheduler8shutdownEv = comdat any

$_ZN5boost4asio6detail11posix_eventC2Ev = comdat any

$_ZN5boost15throw_exceptionISt12out_of_rangeEEvRKT_ = comdat any

$_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS1_ = comdat any

$_ZN5boost10wrapexceptISt12out_of_rangeED2Ev = comdat any

$_ZNK5boost10wrapexceptISt12out_of_rangeE5cloneEv = comdat any

$_ZNK5boost10wrapexceptISt12out_of_rangeE7rethrowEv = comdat any

$_ZN5boost10wrapexceptISt12out_of_rangeED0Ev = comdat any

$_ZThn8_N5boost10wrapexceptISt12out_of_rangeED1Ev = comdat any

$_ZThn8_N5boost10wrapexceptISt12out_of_rangeED0Ev = comdat any

$_ZThn24_N5boost10wrapexceptISt12out_of_rangeED1Ev = comdat any

$_ZThn24_N5boost10wrapexceptISt12out_of_rangeED0Ev = comdat any

$_ZN5boost10wrapexceptISt12out_of_rangeEC2ERKS2_ = comdat any

$_ZN5boost4asio6detail12posix_threadC2ISaIvENS1_9scheduler15thread_functionEEESt15allocator_arg_tRKT_T0_j = comdat any

$_ZN5boost4asio6detail12posix_thread9func_baseD2Ev = comdat any

$_ZN5boost4asio6detail12posix_thread4funcINS1_9scheduler15thread_functionESaIvEED0Ev = comdat any

$_ZN5boost4asio6detail12posix_thread4funcINS1_9scheduler15thread_functionESaIvEE3runEv = comdat any

$_ZN5boost4asio6detail12posix_thread4funcINS1_9scheduler15thread_functionESaIvEE7destroyEv = comdat any

$_ZN5boost4asio6detail10config_getIbEET_RKNS0_14config_serviceEPKcS8_S3_St17integral_constantIbLb1EE = comdat any

$_ZN5boost4asio6detail26eventfd_select_interrupter16open_descriptorsEb = comdat any

$_ZNSt16allocator_traitsIN5boost4asio17execution_context9allocatorINS1_6detail13epoll_reactor16descriptor_stateEEEE10_S_destroyIS7_S6_EEvRT_PT0_z = comdat any

$_ZN5boost4asio6detail16service_registry6createINS0_14config_serviceENS0_17execution_contextEJEEEPNS5_7serviceERS5_PvDpOT1_ = comdat any

$_ZN5boost4asio6detail16service_registry17destroy_allocatedINS0_14config_serviceEEEvPNS0_17execution_context7serviceE = comdat any

$_ZN5boost4asio14config_serviceD0Ev = comdat any

$_ZN5boost4asio14config_service8shutdownEv = comdat any

$_ZNK5boost4asio14config_service9get_valueEPKcS3_Pcm = comdat any

$_ZN5boost4asio6detail10config_getIiEET_RKNS0_14config_serviceEPKcS8_S3_St17integral_constantIbLb0EE = comdat any

$_ZN5boost4asio6detail9scheduler9init_taskEv = comdat any

$_ZN5boost4asio3ssl6detail6engineC2EP10ssl_ctx_stmm = comdat any

$_ZN5boost4asio3ssl6detail6engineD2Ev = comdat any

$_ZN5boost4asio6detail14io_object_implINS1_22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEEEENS0_15any_io_executorEEC2EiRKSC_ = comdat any

$_ZN5boost4asio6detail16service_registry6createINS1_22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS8_EEEEEENS0_17execution_contextEJEEEPNSD_7serviceERSD_PvDpOT1_ = comdat any

$_ZN5boost4asio6detail16service_registry17destroy_allocatedINS1_22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS8_EEEEEEEEvPNS0_17execution_context7serviceE = comdat any

$_ZN5boost4asio6detail22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEEC2ERNS0_17execution_contextE = comdat any

$_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEED2Ev = comdat any

$_ZN5boost4asio6detail22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEED2Ev = comdat any

$_ZN5boost4asio6detail22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEED0Ev = comdat any

$_ZN5boost4asio6detail22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEEE8shutdownEv = comdat any

$_ZNSt6vectorIN5boost4asio6detail11timer_queueINS2_18chrono_time_traitsINSt6chrono3_V212steady_clockENS1_11wait_traitsIS7_EEEENS1_17execution_context9allocatorIvEEE10heap_entryENSC_ISF_EEED2Ev = comdat any

$_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEED0Ev = comdat any

$_ZNK5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE5emptyEv = comdat any

$_ZNK5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE18wait_duration_msecEl = comdat any

$_ZNK5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE18wait_duration_usecEl = comdat any

$_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE16get_ready_timersERNS1_8op_queueINS1_19scheduler_operationEEE = comdat any

$_ZN5boost4asio6detail11timer_queueINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS6_EEEENS0_17execution_context9allocatorIvEEE14get_all_timersERNS1_8op_queueINS1_19scheduler_operationEEE = comdat any

$_ZN5boost4asio6detail13epoll_reactor18do_add_timer_queueERNS1_16timer_queue_baseE = comdat any

$_ZN5boost4asio6detail13epoll_reactor21do_remove_timer_queueERNS1_16timer_queue_baseE = comdat any

$_ZN5boost4asio6detail14io_object_implINS1_22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEEEENS0_15any_io_executorEED2Ev = comdat any

$_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS0_2ip3tcpEEENS0_15any_io_executorEED2Ev = comdat any

$_ZN5boost4asio3ssl6detail11stream_coreaSEOS3_ = comdat any

$_ZN5boost4asio6detail14io_object_implINS1_23reactive_socket_serviceINS0_2ip3tcpEEENS0_15any_io_executorEEaSEOS8_ = comdat any

$_ZN5boost4asio3ssl6detail6engineaSEOS3_ = comdat any

$_ZN5boost4asio6detail14io_object_implINS1_22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEEEENS0_15any_io_executorEEaSEOSD_ = comdat any

$_ZN5boost4asio6detail13epoll_reactor10move_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEvRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataESK_ = comdat any

$_ZN5boost4asio3ssl6detail11stream_coreD2Ev = comdat any

$_ZNO5boost4asio6detail27initiate_cancel_after_timerINS0_3ssl6streamINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEEE24initiate_async_handshakeENSt6chrono3_V212steady_clockENS0_11wait_traitsISE_EES8_JFvNS_6system10error_codeEEEEclINS1_11composed_opINS_5redis6detail12redis_streamIS8_E10connect_opENS1_13composed_workIFvvEEENSM_INSO_19sentinel_resolve_opIS8_EENSS_IFvS8_EEENSM_INSO_6run_opIS8_EESY_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJSJ_EEENS0_17cancellation_slotEEEJSJ_EEEJSJ_EEEJSJ_EEElSt5ratioILl1ELl1000000000EEJRNS3_11stream_base14handshake_typeEEEEvOT_PNS0_20basic_waitable_timerISE_SG_S8_EERKNSC_8durationIT0_T1_EENS0_17cancellation_typeEDpOT2_ = comdat any

$_ZN5boost4asio6detail15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamINS0_15any_io_executorEE10connect_opENS1_13composed_workIFvvEEENS3_INS5_19sentinel_resolve_opIS7_EENSA_IFvS7_EEENS3_INS5_6run_opIS7_EESG_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSN_EEEJSN_EEEJSN_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsISX_EES7_EEJSN_EE5startINS0_3ssl6streamINS0_19basic_stream_socketINS0_2ip3tcpES7_EEE24initiate_async_handshakeEJRNS14_11stream_base14handshake_typeEEEEvOT_DpOT0_ = comdat any

$_ZN5boost4asio3ssl6detail5io_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS2_12handshake_opENS0_6detail23timed_cancel_op_handlerINSA_15timed_cancel_opINSA_11composed_opINS_5redis6detail12redis_streamIS7_E10connect_opENSA_13composed_workIFvvEEENSD_INSF_19sentinel_resolve_opIS7_EENSJ_IFvS7_EEENSD_INSF_6run_opIS7_EESP_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSW_EEEJSW_EEEJSW_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS16_EES7_EEJSW_EEEJSW_EEEEclESV_mi = comdat any

$_ZN5boost4asio3ssl6detail5io_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS2_12handshake_opENS0_6detail23timed_cancel_op_handlerINSA_15timed_cancel_opINSA_11composed_opINS_5redis6detail12redis_streamIS7_E10connect_opENSA_13composed_workIFvvEEENSD_INSF_19sentinel_resolve_opIS7_EENSJ_IFvS7_EEENSD_INSF_6run_opIS7_EESP_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSW_EEEJSW_EEEJSW_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS16_EES7_EEJSW_EEEJSW_EEEED2Ev = comdat any

$_ZN5boost4asio17cancellation_slot7emplaceINS0_18cancellation_state4implINS0_19cancellation_filterILNS0_17cancellation_typeE1EEES7_EEJEEERT_DpOT0_ = comdat any

$_ZNK5boost4asio3ssl6detail6engine14map_error_codeERNS_6system10error_codeE = comdat any

$_ZN5boost4asio3ssl6detail6engine7performEMS3_FiPvmES4_mRNS_6system10error_codeEPm = comdat any

$_ZN5boost4asio3ssl6detail6engine10do_connectEPvm = comdat any

$_ZN5boost4asio3ssl6detail6engine9do_acceptEPvm = comdat any

$_ZN5boost4asio6detail28reactive_socket_service_base13async_receiveINS0_14mutable_bufferENS0_3ssl6detail5io_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS6_12handshake_opENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamISB_E10connect_opENS1_13composed_workIFvvEEENSG_INSI_19sentinel_resolve_opISB_EENSM_IFvSB_EEENSG_INSI_6run_opISB_EESS_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSZ_EEEJSZ_EEEJSZ_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS19_EESB_EEJSZ_EEEJSZ_EEEEESB_EEvRNS2_24base_implementation_typeERKT_iRT0_RKT1_ = comdat any

$_ZN5boost4asio6detail23reactive_socket_recv_opINS0_14mutable_bufferENS0_3ssl6detail5io_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_12handshake_opENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamISA_E10connect_opENS1_13composed_workIFvvEEENSF_INSH_19sentinel_resolve_opISA_EENSL_IFvSA_EEENSF_INSH_6run_opISA_EESR_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSY_EEEJSY_EEEJSY_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS18_EESA_EEJSY_EEEJSY_EEEEESA_EC2ERKSX_ihRKS3_iRS1F_RKSA_ = comdat any

$_ZN5boost4asio6detail23reactive_socket_recv_opINS0_14mutable_bufferENS0_3ssl6detail5io_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_12handshake_opENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamISA_E10connect_opENS1_13composed_workIFvvEEENSF_INSH_19sentinel_resolve_opISA_EENSL_IFvSA_EEENSF_INSH_6run_opISA_EESR_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSY_EEEJSY_EEEJSY_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS18_EESA_EEJSY_EEEJSY_EEEEESA_E11do_completeEPvPNS1_19scheduler_operationERKSX_m = comdat any

$_ZN5boost4asio6detail23reactive_socket_recv_opINS0_14mutable_bufferENS0_3ssl6detail5io_opINS0_19basic_stream_socketINS0_2ip3tcpENS0_15any_io_executorEEENS5_12handshake_opENS1_23timed_cancel_op_handlerINS1_15timed_cancel_opINS1_11composed_opINS_5redis6detail12redis_streamISA_E10connect_opENS1_13composed_workIFvvEEENSF_INSH_19sentinel_resolve_opISA_EENSL_IFvSA_EEENSF_INSH_6run_opISA_EESR_NS0_24cancellation_slot_binderINS0_22any_completion_handlerIJFvNS_6system10error_codeEEEEENS0_17cancellation_slotEEEJSY_EEEJSY_EEEJSY_EEERNS0_20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS18_EESA_EEJSY_EEEJSY_EEEEESA_E3ptr5resetEv = comdat any

end_hunk_1
begin_hunk_2_@_ZN5boost4asio6detail9scheduler3runERNS_6system10error_codeE:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.an = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN5boost4asio6detail15keyword_tss_ptrINS1_10call_stackINS1_14thread_contextENS1_16thread_info_baseEE7contextEE6value_E) ; 4 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !553
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !3331
  store ptr %4, ptr %i.an, align 8, !tbaa !553
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ap, ptr %5, align 8, !tbaa !3332
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !821, !range !266, !noundef !267
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.l, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.au = load i32, ptr %i.at, align 8, !tbaa !822 ; 2 uses
  %.not8.i = icmp eq i32 %i.au, 0
  br i1 %.not8.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.m
  %.069.i = phi i32 [ %i.az, %bb.m ], [ %i.au, %.lr.ph.i.preheader ] ; 2 uses
  %i.aw = call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.av) #49
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.ay = icmp sgt i32 %.069.i, 0
  %.neg.i = sext i1 %i.ay to i32
  %i.az = add i32 %.069.i, %.neg.i                ; 2 uses
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !46

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ba) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit: ; preds = %.lr.ph.i, %bb.k, %._crit_edge.i
  %.sink.i = phi i8 [ 1, %._crit_edge.i ], [ 0, %bb.k ], [ 1, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split.backedge, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit
  %.sink = phi i8 [ %.sink.i, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit ], [ 1, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split.backedge ]
  %.0.ph = phi i64 [ 0, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit ], [ %spec.select, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split.backedge ]
  store i8 %.sink, ptr %i.bc, align 8, !tbaa !1108
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split, %bb.o
  %.0 = phi i64 [ %spec.select, %bb.o ], [ %.0.ph, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split ] ; 2 uses
  %i.bd = invoke noundef i64 @_ZN5boost4asio6detail9scheduler10do_run_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockERNS1_21scheduler_thread_infoERKNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit
  %.not = icmp eq i64 %i.bd, 0
  br i1 %.not, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %spec.select = call i64 @llvm.uadd.sat.i64(i64 %.0, i64 1) ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !1109, !nonnull !267, !align !690 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 52
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !821, !range !266, !noundef !267
  %i.bh = trunc nuw i8 %i.bg to i1
  %.not25 = xor i1 %i.bh, true
  %i.bi = load i8, ptr %i.bc, align 8, !range !266
  %i.bj = trunc nuw i8 %i.bi to i1
  %or.cond = select i1 %.not25, i1 true, i1 %i.bj
  br i1 %or.cond, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit, label %bb.p, !llvm.loop !3330

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !822 ; 2 uses
  %.not6.i = icmp eq i32 %i.bl, 0
  br i1 %.not6.i, label %._crit_edge.i21, label %.lr.ph.i16

.lr.ph.i16:                                       ; preds = %bb.p, %bb.q
  %.047.i = phi i32 [ %i.br, %bb.q ], [ %i.bl, %bb.p ] ; 2 uses
  %i.bm = load ptr, ptr %5, align 8, !tbaa !1109, !nonnull !267, !align !690
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.bn) #49
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split.backedge, label %bb.q, !llvm.loop !3330

bb.q:                                             ; preds = %.lr.ph.i16
  %i.bq = icmp sgt i32 %.047.i, 0
  %.neg.i17 = sext i1 %i.bq to i32
  %i.br = add i32 %.047.i, %.neg.i17              ; 2 uses
  %.not.i18 = icmp eq i32 %i.br, 0
  br i1 %.not.i18, label %._crit_edge.loopexit.i19, label %.lr.ph.i16, !llvm.loop !95

._crit_edge.loopexit.i19:                         ; preds = %bb.q
  %.pre.i20 = load ptr, ptr %5, align 8, !tbaa !1109
  br label %._crit_edge.i21

._crit_edge.i21:                                  ; preds = %._crit_edge.loopexit.i19, %bb.p
  %i.bs = phi ptr [ %.pre.i20, %._crit_edge.loopexit.i19 ], [ %i.be, %bb.p ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bt) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split.backedge

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split.backedge: ; preds = %.lr.ph.i16, %._crit_edge.i21
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.sink.split, !llvm.loop !3330

bb.r:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = load i8, ptr %i.bc, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.s, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %5, align 8, !tbaa !1109, !nonnull !267, !align !690
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.bz) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit

bb.t:                                             ; preds = %bb.n
  %i.cb = load i8, ptr %i.bc, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.u, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit22

bb.u:                                             ; preds = %bb.t
  %i.cd = load ptr, ptr %5, align 8, !tbaa !1109, !nonnull !267, !align !690
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ce) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit22

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit22: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.cg = load ptr, ptr %i.am, align 8, !tbaa !3331
  store ptr %i.cg, ptr %i.an, align 8, !tbaa !553
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !806 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ci, null
  br i1 %.not5.i.i, label %_ZN5boost4asio6detail21scheduler_thread_infoD2Ev.exit, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit22
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 120
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i.i23
  %i.ck = phi ptr [ %i.ci, %.lr.ph.i.i23 ], [ %i.cp, %bb.y ] ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !799 ; 2 uses
  store ptr %i.cl, ptr %i.ch, align 8, !tbaa !806
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr null, ptr %i.cj, align 8, !tbaa !802
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr null, ptr %i.ck, align 8, !tbaa !799
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !807
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void %i.co(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0)
          to label %bb.y unwind label %bb.z, !inline_history !43

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !806 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i24, label %_ZN5boost4asio6detail21scheduler_thread_infoD2Ev.exit, label %bb.v

bb.z:                                             ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          catch ptr null
  %i.cr = extractvalue { ptr, i32 } %i.cq, 0
  call void @__clang_call_terminate(ptr %i.cr) #50
  unreachable

_ZN5boost4asio6detail21scheduler_thread_infoD2Ev.exit: ; preds = %bb.y, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit22
  call void @_ZN5boost4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(136) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %_ZN5boost4asio6detail9scheduler4stopEv.exit

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit: ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.cs = load ptr, ptr %i.am, align 8, !tbaa !3331
  store ptr %i.cs, ptr %i.an, align 8, !tbaa !553
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @_ZN5boost4asio6detail21scheduler_thread_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %3) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  br label %common.resume

_ZN5boost4asio6detail9scheduler4stopEv.exit:      ; preds = %bb.h, %_ZN5boost4asio6detail9scheduler16stop_all_threadsERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i, %_ZN5boost4asio6detail21scheduler_thread_infoD2Ev.exit
  %.012 = phi i64 [ %.0, %_ZN5boost4asio6detail21scheduler_thread_infoD2Ev.exit ], [ 0, %_ZN5boost4asio6detail9scheduler16stop_all_threadsERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i ], [ 0, %bb.h ]
  ret i64 %.012
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN5boost4asio6detail9scheduler10do_run_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockERNS1_21scheduler_thread_infoERKNS_6system10error_codeE(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 4 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"struct.boost::asio::detail::scheduler::task_cleanup", align 8 ; 10 uses
  %7 = alloca %"struct.boost::asio::detail::scheduler::work_cleanup", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 217 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1105, !range !266, !noundef !267
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !806  ; 8 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.as, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !799  ; 2 uses
  store ptr %i.w, ptr %i.d, align 8, !tbaa !806
  %i.x = icmp eq ptr %i.w, null                   ; 2 uses
  %.not45 = icmp eq ptr %i.u, %i.f                ; 2 uses
  br i1 %i.x, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.thread

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit: ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !802
  br i1 %.not45, label %bb.d, label %bb.v

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.thread: ; preds = %bb.c
  store ptr null, ptr %i.u, align 8, !tbaa !799
  br i1 %.not45, label %.critedge, label %bb.w

bb.d:                                             ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit
  %i.y = load i64, ptr %i.p, align 8, !tbaa !1110
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = zext i1 %i.z to i8
  store i8 %i.aa, ptr %i.g, align 8, !tbaa !825
  br label %bb.i

.critedge:                                        ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.thread
  store i8 1, ptr %i.g, align 8, !tbaa !825
  %i.ab = load i8, ptr %i.h, align 8, !tbaa !1111, !range !266, !noundef !267
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !823
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %1, align 8, !tbaa !1109, !nonnull !267, !align !690 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !821, !range !266, !noundef !267
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !824 ; 2 uses
  %i.aj = or i64 %i.ai, 1
  store i64 %i.aj, ptr %i.k, align 8, !tbaa !824
  %i.ak = icmp ugt i64 %i.ai, 1
  %i.al = load i8, ptr %i.l, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i.i, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock6unlockEv.exit.i.i

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i.i: ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %8 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.an) #49 ; 0 uses
  store i8 0, ptr %i.l, align 8, !tbaa !1108
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock6unlockEv.exit.i.i

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock6unlockEv.exit.i.i: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i.i, %bb.g
  br i1 %i.ak, label %bb.h, label %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread

bb.h:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock6unlockEv.exit.i.i
  %9 = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread

bb.i:                                             ; preds = %bb.d, %bb.e, %.critedge
  %i.ao = load i8, ptr %i.l, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.j, label %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %1, align 8, !tbaa !1109, !nonnull !267, !align !690 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !821, !range !266, !noundef !267
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.k, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %10 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.au) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i: ; preds = %bb.k, %bb.j
  store i8 0, ptr %i.l, align 8, !tbaa !1108
  br label %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit

_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread: ; preds = %bb.h, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock6unlockEv.exit.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  store ptr %0, ptr %6, align 8, !tbaa !1115
  store ptr %1, ptr %i.m, align 8, !tbaa !1116
  store ptr %2, ptr %i.n, align 8, !tbaa !1117
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !826
  br label %bb.m

_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  store ptr %0, ptr %6, align 8, !tbaa !1115
  store ptr %1, ptr %i.m, align 8, !tbaa !1116
  store ptr %2, ptr %i.n, align 8, !tbaa !1117
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !826 ; 2 uses
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit
  %i.ax = load i64, ptr %i.p, align 8, !tbaa !1110
  br label %bb.m

bb.m:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread, %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit, %bb.l
  %i.ay = phi ptr [ %i.aw, %bb.l ], [ %i.aw, %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit ], [ %i.av, %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread ] ; 2 uses
  %i.az = phi i64 [ %i.ax, %bb.l ], [ 0, %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit ], [ 0, %_ZN5boost4asio6detail27conditionally_enabled_event21unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread ]
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !239
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 noundef %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.s, align 8, !tbaa !850 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.be = atomicrmw add ptr %i.t, i64 %i.bc seq_cst, align 8 ; 0 uses
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !1117
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !1116
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre4.i = phi ptr [ %.pre.i, %bb.o ], [ %2, %bb.n ] ; 3 uses
  %i.bf = phi ptr [ %.pre, %bb.o ], [ %1, %bb.n ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre4.i, i64 128
  store i64 0, ptr %i.bg, align 8, !tbaa !850
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !1109, !nonnull !267, !align !690 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 52
  %i.bj = load i8, ptr %i.bi, align 4, !tbaa !821, !range !266, !noundef !267
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.q, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.i

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !822 ; 2 uses
  %.not6.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not6.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.r, %bb.s
  %.047.i.i = phi i32 [ %i.bu, %bb.s ], [ %i.bp, %bb.r ] ; 2 uses
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !1109, !nonnull !267, !align !690
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %11 = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.br) #49
  %i.bs = icmp eq i32 %11, 0
  br i1 %i.bs, label %.sink.split.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.bt = icmp sgt i32 %.047.i.i, 0
  %.neg.i.i = sext i1 %i.bt to i32
  %i.bu = add i32 %.047.i.i, %.neg.i.i            ; 2 uses
  %.not.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !95

._crit_edge.loopexit.i.i:                         ; preds = %bb.s
  %.pre.i.i = load ptr, ptr %i.bf, align 8, !tbaa !1109
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.r
  %i.bv = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.bh, %bb.r ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %12 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bw) #49 ; 0 uses
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.i.i, %._crit_edge.i.i
  store i8 1, ptr %i.bl, align 8, !tbaa !1108
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.i

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.i: ; preds = %.sink.split.i.i, %bb.q, %bb.p
  %i.bx = load ptr, ptr %6, align 8, !tbaa !1115  ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 216
  store i8 1, ptr %i.by, align 8, !tbaa !825
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre4.i, i64 112 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !800 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.ca, null
  br i1 %.not.i1.i, label %bb.aq, label %bb.t

bb.t:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 232
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 240 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !802 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.cd, null
  %..i.i = select i1 %.not8.i.i, ptr %i.cb, ptr %i.cd
  store ptr %i.ca, ptr %..i.i, align 8, !tbaa !800
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre4.i, i64 120
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !800
  store ptr %i.cf, ptr %i.cc, align 8, !tbaa !802
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  br label %bb.aq

bb.u:                                             ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost4asio6detail9scheduler12task_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %bb.ar

bb.v:                                             ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !840
  %i.cj = zext i32 %i.ci to i64
  br label %bb.ag

bb.w:                                             ; preds = %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE3popEv.exit.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !840
  %i.cm = zext i32 %i.cl to i64                   ; 4 uses
  %i.cn = load i8, ptr %i.h, align 8, !tbaa !1111, !range !266, !noundef !267
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load i64, ptr %i.i, align 8, !tbaa !823
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = load ptr, ptr %1, align 8, !tbaa !1109, !nonnull !267, !align !690 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 52
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !821, !range !266, !noundef !267
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.z, label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i

bb.z:                                             ; preds = %bb.y
  %i.cv = load i64, ptr %i.k, align 8, !tbaa !824 ; 2 uses
  %i.cw = or i64 %i.cv, 1
  store i64 %i.cw, ptr %i.k, align 8, !tbaa !824
  %i.cx = icmp ugt i64 %i.cv, 1
  br i1 %i.cx, label %bb.aa, label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.cy = load i8, ptr %i.l, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i.i.i, label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i.i.i: ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %13 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.da) #49 ; 0 uses
  store i8 0, ptr %i.l, align 8, !tbaa !1108
  br label %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i

_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i.i.i, %bb.aa
  %14 = tail call i32 @pthread_cond_signal(ptr noundef nonnull align 8 dereferenceable(56) %i.j) #49 ; 0 uses
  br label %_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit

_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i: ; preds = %bb.z, %bb.y, %bb.x
  %i.db = load i8, ptr %i.g, align 8, !tbaa !825, !range !266, !noundef !267
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i
  %i.dd = load ptr, ptr %i.o, align 8, !tbaa !826 ; 3 uses
  %.not.i34 = icmp eq ptr %i.dd, null
  br i1 %.not.i34, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.g, align 8, !tbaa !825
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !239
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd), !inline_history !47
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread.i
  %i.dh = load i8, ptr %i.l, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ae, label %_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dj = load ptr, ptr %1, align 8, !tbaa !1109, !nonnull !267, !align !690 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 52
  %i.dl = load i8, ptr %i.dk, align 4, !tbaa !821, !range !266, !noundef !267
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.af, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %15 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dn) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i: ; preds = %bb.af, %bb.ae
  store i8 0, ptr %i.l, align 8, !tbaa !1108
  br label %_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit

bb.ag:                                            ; preds = %bb.v, %bb.w
  %i.do = phi i64 [ %i.cm, %bb.w ], [ %i.cj, %bb.v ] ; 2 uses
  %i.dp = load i8, ptr %i.l, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.ah, label %_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dr = load ptr, ptr %1, align 8, !tbaa !1109, !nonnull !267, !align !690 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 52
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !821, !range !266, !noundef !267
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.ai, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i35

bb.ai:                                            ; preds = %bb.ah
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %16 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.dv) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i35

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i35: ; preds = %bb.ai, %bb.ah
  store i8 0, ptr %i.l, align 8, !tbaa !1108
  br label %_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit

_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i35, %bb.ag, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i, %bb.ad, %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i
  %i.dw = phi i64 [ %i.do, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i35 ], [ %i.do, %bb.ag ], [ %i.cm, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i.i ], [ %i.cm, %bb.ad ], [ %i.cm, %_ZN5boost4asio6detail27conditionally_enabled_event27maybe_unlock_and_signal_oneERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  store ptr %0, ptr %7, align 8, !tbaa !1119
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.dx, align 8, !tbaa !1120
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.dy, align 8, !tbaa !1121
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !807
  invoke void %i.ea(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(20) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.dw)
          to label %_ZN5boost4asio6detail19scheduler_operation8completeEPvRKNS_6system10error_codeEm.exit unwind label %bb.ap, !inline_history !49

_ZN5boost4asio6detail19scheduler_operation8completeEPvRKNS_6system10error_codeEm.exit: ; preds = %_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !3335
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %_ZN5boost4asio6detail19scheduler_operation8completeEPvRKNS_6system10error_codeEm.exit
  store i32 0, ptr %i.eb, align 8, !tbaa !3335
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1122 ; 3 uses
  store ptr %i.ef, ptr %4, align 8, !tbaa !1122
  store ptr null, ptr %i.ee, align 8, !tbaa !1122
  store ptr %i.ef, ptr %5, align 8, !tbaa !1122
  %.not.i.i37 = icmp eq ptr %i.ef, null           ; 2 uses
  br i1 %.not.i.i37, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #49
  br label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i: ; preds = %bb.ak, %bb.aj
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %5) #51
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  unreachable

bb.am:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  %i.eh = load ptr, ptr %5, align 8, !tbaa !1122
  %.not.i2.i38 = icmp eq ptr %i.eh, null
  br i1 %.not.i2.i38, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #49
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i: ; preds = %bb.an, %bb.am
  br i1 %.not.i.i37, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #49
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i: ; preds = %bb.ao, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %.body

.thread:                                          ; preds = %_ZN5boost4asio6detail19scheduler_operation8completeEPvRKNS_6system10error_codeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN5boost4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %.loopexit

bb.ap:                                            ; preds = %_ZN5boost4asio6detail9scheduler26wake_one_thread_and_unlockERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i, %bb.ap
  %eh.lpad-body = phi { ptr, i32 } [ %i.ei, %bb.ap ], [ %i.eg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit4.i ]
  call void @_ZN5boost4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %bb.ar

bb.aq:                                            ; preds = %bb.t, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bx, i64 232
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bx, i64 192 ; 3 uses
  store ptr null, ptr %i.ek, align 8, !tbaa !799
  %i.el = getelementptr inbounds nuw i8, ptr %i.bx, i64 240 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !802 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.em, null
  %..i3.i = select i1 %.not.i2.i, ptr %i.ej, ptr %i.em
  store ptr %i.ek, ptr %..i3.i, align 8, !tbaa !800
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !802
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit

bb.ar:                                            ; preds = %.body, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.u ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn

bb.as:                                            ; preds = %bb.b
  %i.en = load i64, ptr %i.i, align 8, !tbaa !823 ; 4 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.ep = load i8, ptr %i.l, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.eq = trunc nuw i8 %i.ep to i1
  %.pre55 = load ptr, ptr %1, align 8, !tbaa !1109 ; 4 uses
  br i1 %i.eq, label %bb.au, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock6unlockEv.exit40

bb.au:                                            ; preds = %bb.at
  %i.er = getelementptr inbounds nuw i8, ptr %.pre55, i64 52
  %i.es = load i8, ptr %i.er, align 4, !tbaa !821, !range !266, !noundef !267
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.av, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i39

bb.av:                                            ; preds = %bb.au
  %i.eu = getelementptr inbounds nuw i8, ptr %.pre55, i64 8
  %17 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.eu) #49 ; 0 uses
  %.pre54.pre = load ptr, ptr %1, align 8, !tbaa !1109
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i39

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i39: ; preds = %bb.av, %bb.au
  %.pre54 = phi ptr [ %.pre54.pre, %bb.av ], [ %.pre55, %bb.au ]
  store i8 0, ptr %i.l, align 8, !tbaa !1108
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock6unlockEv.exit40

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock6unlockEv.exit40: ; preds = %bb.at, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i39
  %i.ev = phi ptr [ %.pre55, %bb.at ], [ %.pre54, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE6unlockEv.exit.i39 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 52
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !821, !range !266, !noundef !267
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.aw, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit

bb.aw:                                            ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock6unlockEv.exit40
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !822 ; 2 uses
  %.not6.i = icmp eq i32 %i.fa, 0
  br i1 %.not6.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %bb.ax
  %.047.i = phi i32 [ %i.ff, %bb.ax ], [ %i.fa, %bb.aw ] ; 2 uses
  %i.fb = load ptr, ptr %1, align 8, !tbaa !1109, !nonnull !267, !align !690
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %18 = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.fc) #49
  %i.fd = icmp eq i32 %18, 0
  br i1 %i.fd, label %.sink.split.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i
  %i.fe = icmp sgt i32 %.047.i, 0
  %.neg.i = sext i1 %i.fe to i32
  %i.ff = add i32 %.047.i, %.neg.i                ; 2 uses
  %.not.i41 = icmp eq i32 %i.ff, 0
  br i1 %.not.i41, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !95

._crit_edge.loopexit.i:                           ; preds = %bb.ax
  %.pre.i42 = load ptr, ptr %1, align 8, !tbaa !1109
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.aw
  %i.fg = phi ptr [ %.pre.i42, %._crit_edge.loopexit.i ], [ %i.ev, %bb.aw ]
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %19 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.fh) #49 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i, %._crit_edge.i
  store i8 1, ptr %i.l, align 8, !tbaa !1108
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit

bb.ay:                                            ; preds = %bb.as
  %i.fi = load ptr, ptr %1, align 8, !tbaa !1109, !nonnull !267, !align !690
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 52
  %i.fk = load i8, ptr %i.fj, align 4, !tbaa !821, !range !266, !noundef !267
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_ZN5boost4asio6detail27conditionally_enabled_event5clearERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit, label %_ZN5boost4asio6detail27conditionally_enabled_event5clearERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread

_ZN5boost4asio6detail27conditionally_enabled_event5clearERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit: ; preds = %bb.ay
  %i.fm = load i64, ptr %i.k, align 8, !tbaa !824
  %i.fn = and i64 %i.fm, -2                       ; 2 uses
  store i64 %i.fn, ptr %i.k, align 8, !tbaa !824
  %i.fo = icmp sgt i64 %i.en, 0
  br i1 %i.fo, label %bb.az, label %.lr.ph.preheader.i.i

_ZN5boost4asio6detail27conditionally_enabled_event5clearERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread: ; preds = %bb.ay
  %i.fp = icmp sgt i64 %i.en, 0
  br i1 %i.fp, label %bb.az, label %.thread44.a

bb.az:                                            ; preds = %_ZN5boost4asio6detail27conditionally_enabled_event5clearERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread, %_ZN5boost4asio6detail27conditionally_enabled_event5clearERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit
  %20 = tail call noundef zeroext i1 @_ZN5boost4asio6detail27conditionally_enabled_event13wait_for_usecERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockEl(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(9) %1, i64 noundef %i.en) ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit

.lr.ph.preheader.i.i:                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_event5clearERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit
  %i.fq = add i64 %i.fn, 2
  br label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %.lr.ph.i.i43, %.lr.ph.preheader.i.i
  %i.fr = phi i64 [ %i.fu, %.lr.ph.i.i43 ], [ %i.fq, %.lr.ph.preheader.i.i ]
  store i64 %i.fr, ptr %i.k, align 8, !tbaa !824
  %i.fs = load ptr, ptr %1, align 8, !tbaa !1109, !nonnull !267, !align !690
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %21 = tail call i32 @pthread_cond_wait(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull %i.ft) ; 0 uses
  %i.fu = load i64, ptr %i.k, align 8, !tbaa !824 ; 3 uses
  %i.fv = add i64 %i.fu, -2
  store i64 %i.fv, ptr %i.k, align 8, !tbaa !824
  %i.fw = and i64 %i.fu, 1
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.lr.ph.i.i43, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit, !llvm.loop !3333

.thread44.a:                                      ; preds = %_ZN5boost4asio6detail27conditionally_enabled_event5clearERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.thread
  %22 = tail call i32 @pause()                    ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit: ; preds = %.lr.ph.i.i43, %bb.aq, %.thread44.a, %.sink.split.i, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock6unlockEv.exit40, %bb.az
  %i.fy = load i8, ptr %i.a, align 1, !tbaa !1105, !range !266, !noundef !267
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %.loopexit, label %bb.b, !llvm.loop !3334

.loopexit:                                        ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit, %bb.a, %.thread
  %.3 = phi i64 [ 1, %.thread ], [ 0, %bb.a ], [ 0, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit ]
  ret i64 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail21scheduler_thread_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.boost::system::error_code", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !806  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %i.d = phi ptr [ %i.b, %.lr.ph.i ], [ %i.i, %bb.e ] ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !799  ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !806
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.c, align 8, !tbaa !802
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.d, align 8, !tbaa !799
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !807
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void %i.h(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(20) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
          to label %bb.e unwind label %bb.f, !inline_history !43

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #49
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !806  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev.exit, label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #50
  unreachable

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEED2Ev.exit: ; preds = %bb.e, %bb.a
  call void @_ZN5boost4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) #49
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail16thread_info_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !305    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.z
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #49
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.z, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.a) #49
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !305  ; 2 uses
  %.not.1 = icmp eq ptr %i.c, null
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.c) #49
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !305  ; 2 uses
  %.not.2 = icmp eq ptr %i.e, null
  br i1 %.not.2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.e) #49
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !305  ; 2 uses
  %.not.3 = icmp eq ptr %i.g, null
  br i1 %.not.3, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.g) #49
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !305  ; 2 uses
  %.not.4 = icmp eq ptr %i.i, null
  br i1 %.not.4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.i) #49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !305  ; 2 uses
  %.not.5 = icmp eq ptr %i.k, null
  br i1 %.not.5, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.k) #49
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !305  ; 2 uses
  %.not.6 = icmp eq ptr %i.m, null
  br i1 %.not.6, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.m) #49
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !305  ; 2 uses
  %.not.7 = icmp eq ptr %i.o, null
  br i1 %.not.7, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.o) #49
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !305  ; 2 uses
  %.not.8 = icmp eq ptr %i.q, null
  br i1 %.not.8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.q) #49
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !305  ; 2 uses
  %.not.9 = icmp eq ptr %i.s, null
  br i1 %.not.9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.s) #49
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !305  ; 2 uses
  %.not.10 = icmp eq ptr %i.u, null
  br i1 %.not.10, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.u) #49
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !305  ; 2 uses
  %.not.11 = icmp eq ptr %i.w, null
  br i1 %.not.11, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.w) #49
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1122
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.b
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13
end_hunk_2
begin_hunk_3_@_ZN5boost4asio6detail9scheduler12task_cleanupD2Ev:bb.a
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !822  ; 2 uses
  %.not6.i = icmp eq i32 %i.u, 0
  br i1 %.not6.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.f
  %.047.i = phi i32 [ %i.aa, %bb.f ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !1109, !nonnull !267, !align !690
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.w) #49
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.z = icmp sgt i32 %.047.i, 0
  %.neg.i = sext i1 %i.z to i32
  %i.aa = add i32 %.047.i, %.neg.i                ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !95

._crit_edge.loopexit.i:                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !1109
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.e
  %i.ab = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.m, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #49 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.i, %._crit_edge.i
  store i8 1, ptr %i.q, align 8, !tbaa !1108
  %.pre4 = load ptr, ptr %i.a, align 8, !tbaa !1117
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit: ; preds = %bb.c, %bb.d, %.sink.split.i
  %i.ae = phi ptr [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %.pre4, %.sink.split.i ] ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !1115  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 216
  store i8 1, ptr %i.ag, align 8, !tbaa !825
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 112 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !800 ; 2 uses
  %.not.i1 = icmp eq ptr %i.ai, null
  br i1 %.not.i1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 232
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 240 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !802 ; 2 uses
  %.not8.i = icmp eq ptr %i.al, null
  %..i = select i1 %.not8.i, ptr %i.aj, ptr %i.al
  store ptr %i.ai, ptr %..i, align 8, !tbaa !800
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 120
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !800
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !802
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %.pre5 = load ptr, ptr %0, align 8, !tbaa !1115
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit, %bb.g
  %i.ao = phi ptr [ %i.af, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit ], [ %.pre5, %bb.g ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 232
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 192 ; 3 uses
  store ptr null, ptr %i.aq, align 8, !tbaa !799
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 240 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !802 ; 2 uses
  %.not.i2 = icmp eq ptr %i.as, null
  %..i3 = select i1 %.not.i2, ptr %i.ap, ptr %i.as
  store ptr %i.aq, ptr %..i3, align 8, !tbaa !800
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !802
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail9scheduler12work_cleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1121
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load i64, ptr %i.c, align 8, !tbaa !850  ; 3 uses
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !1119
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.h = add nsw i64 %i.d, -1
  %i.i = atomicrmw add ptr %i.g, i64 %i.h seq_cst, align 8 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !1119
  invoke void @_ZN5boost4asio6detail9scheduler13work_finishedEv(ptr noundef nonnull align 8 dereferenceable(272) %i.j)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1121 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  store i64 0, ptr %i.l, align 8, !tbaa !850
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !806  ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushIS3_EEvRNS2_IT_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1120 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1109, !nonnull !267, !align !690 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  %i.t = load i8, ptr %i.s, align 4, !tbaa !821, !range !266, !noundef !267
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !tbaa !1108, !range !266, !noundef !267
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !822  ; 2 uses
  %.not6.i = icmp eq i32 %i.z, 0
  br i1 %.not6.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.i
  %.047.i = phi i32 [ %i.af, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !1109, !nonnull !267, !align !690
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #49
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.ae = icmp sgt i32 %.047.i, 0
  %.neg.i = sext i1 %i.ae to i32
  %i.af = add i32 %.047.i, %.neg.i                ; 2 uses
  %.not.i = icmp eq i32 %i.af, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !95

._crit_edge.loopexit.i:                           ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.q, align 8, !tbaa !1109
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.h
  %i.ag = phi ptr [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.r, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit: ; preds = %.lr.ph.i, %._crit_edge.i
  store i8 1, ptr %i.v, align 8, !tbaa !1108
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1121 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 112
  %.pre2 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !800 ; 2 uses
  %.not.i1 = icmp eq ptr %.pre2, null
  br i1 %.not.i1, label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushIS3_EEvRNS2_IT_EE.exit, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.thread

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.thread: ; preds = %bb.g, %bb.f, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit
  %i.aj = phi ptr [ %.pre, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit ], [ %i.k, %bb.f ], [ %i.k, %bb.g ] ; 2 uses
  %i.ak = phi ptr [ %.pre2, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit ], [ %i.n, %bb.f ], [ %i.n, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %i.am = load ptr, ptr %0, align 8, !tbaa !1119  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 232
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 240 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !802 ; 2 uses
  %.not8.i = icmp eq ptr %i.ap, null
  %..i = select i1 %.not8.i, ptr %i.an, ptr %i.ap
  store ptr %i.ak, ptr %..i, align 8, !tbaa !800
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !800
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !802
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br label %_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushIS3_EEvRNS2_IT_EE.exit

_ZN5boost4asio6detail8op_queueINS1_19scheduler_operationEE4pushIS3_EEvRNS2_IT_EE.exit: ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit.thread, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lock4lockEv.exit, %bb.e
  ret void

bb.j:                                             ; preds = %bb.d
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #50
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost4asio6detail27conditionally_enabled_event13wait_for_usecERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockEl(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %struct.timeval, align 8            ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 7 uses
  %6 = load ptr, ptr %1, align 8, !tbaa !1109, !nonnull !267, !align !690
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 52
  %8 = load i8, ptr %7, align 4, !tbaa !821, !range !266, !noundef !267
  %9 = trunc nuw i8 %8 to i1
  br i1 %9, label %10, label %40

10:                                               ; preds = %3
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %13 = load i64, ptr %12, align 8, !tbaa !824    ; 3 uses
  %14 = and i64 %13, 1
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %_ZN5boost4asio6detail11posix_event13wait_for_usecINS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockEEEbRT_l.exit

16:                                               ; preds = %10
  %17 = add i64 %13, 2
  store i64 %17, ptr %12, align 8, !tbaa !824
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %18 = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #49
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = sdiv i64 %2, 1000000
  %22 = load i64, ptr %5, align 8, !tbaa !3336
  %23 = add nsw i64 %22, %21
  %24 = srem i64 %2, 1000000
  %25 = mul nsw i64 %24, 1000
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %27 = load i64, ptr %26, align 8, !tbaa !3337
  %28 = add nsw i64 %27, %25                      ; 2 uses
  %29 = sdiv i64 %28, 1000000000
  %30 = add nsw i64 %23, %29
  store i64 %30, ptr %5, align 8, !tbaa !3336
  %31 = srem i64 %28, 1000000000
  store i64 %31, ptr %26, align 8, !tbaa !3337
  %32 = load ptr, ptr %1, align 8, !tbaa !1109, !nonnull !267, !align !690
  %33 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %34 = call i32 @pthread_cond_timedwait(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull %33, ptr noundef nonnull %5) ; 0 uses
  br label %35

35:                                               ; preds = %20, %16
  %36 = load i64, ptr %12, align 8, !tbaa !824
  %37 = add i64 %36, -2                           ; 2 uses
  store i64 %37, ptr %12, align 8, !tbaa !824
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %_ZN5boost4asio6detail11posix_event13wait_for_usecINS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockEEEbRT_l.exit

_ZN5boost4asio6detail11posix_event13wait_for_usecINS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockEEEbRT_l.exit: ; preds = %10, %35
  %38 = phi i64 [ %37, %35 ], [ %13, %10 ]
  %39 = trunc i64 %38 to i1
  br label %45

40:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %41 = sdiv i64 %2, 1000000
  store i64 %41, ptr %4, align 8, !tbaa !3339
  %42 = srem i64 %2, 1000000
  %43 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %42, ptr %43, align 8, !tbaa !3340
  %44 = call i32 @select(i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %4) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  br label %45

45:                                               ; preds = %40, %_ZN5boost4asio6detail11posix_event13wait_for_usecINS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockEEEbRT_l.exit
  %.0 = phi i1 [ %39, %_ZN5boost4asio6detail11posix_event13wait_for_usecINS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockEEEbRT_l.exit ], [ true, %40 ]
  ret i1 %.0
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #26

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio6detail9scheduler13work_finishedEv(ptr noundef nonnull align 8 dereferenceable(272) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = atomicrmw sub ptr %i.a, i64 1 seq_cst, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN5boost4asio6detail9scheduler4stopEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !821, !range !266, !noundef !267
  %i.f = trunc nuw i8 %i.e to i1                  ; 3 uses
  br i1 %i.f, label %bb.c, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i32, ptr %i.g, align 8, !tbaa !822  ; 2 uses
  %.not8.i.i = icmp eq i32 %i.h, 0
  br i1 %.not8.i.i, label %._crit_edge.i.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.preheader.i
  %.069.i.i = phi i32 [ %i.m, %bb.d ], [ %i.h, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.j = tail call i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #49
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp sgt i32 %.069.i.i, 0
  %.neg.i.i = sext i1 %i.l to i32
  %i.m = add i32 %.069.i.i, %.neg.i.i             ; 2 uses
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !46

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = tail call i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit.i

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit.i: ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 1, ptr %i.p, align 1, !tbaa !1105
  %i.q = load i8, ptr %i.d, align 4, !tbaa !821, !range !266, !noundef !267
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.e, label %_ZN5boost4asio6detail27conditionally_enabled_event10signal_allERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i.i

bb.e:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !824
  %i.v = or i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !824
  %i.w = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_event10signal_allERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i.i

_ZN5boost4asio6detail27conditionally_enabled_event10signal_allERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i.i: ; preds = %bb.e, %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockC2ERS4_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !825, !range !266, !noundef !267
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN5boost4asio6detail9scheduler16stop_all_threadsERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5boost4asio6detail27conditionally_enabled_event10signal_allERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !826 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.ab, null
  br i1 %.not.i2.i, label %_ZN5boost4asio6detail9scheduler16stop_all_threadsERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.x, align 8, !tbaa !825
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !239
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZN5boost4asio6detail9scheduler16stop_all_threadsERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i unwind label %bb.i, !inline_history !94

_ZN5boost4asio6detail9scheduler16stop_all_threadsERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i: ; preds = %bb.g, %bb.f, %_ZN5boost4asio6detail27conditionally_enabled_event10signal_allERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i.i
  br i1 %i.f, label %bb.h, label %_ZN5boost4asio6detail9scheduler4stopEv.exit

bb.h:                                             ; preds = %_ZN5boost4asio6detail9scheduler16stop_all_threadsERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.af) #49 ; 0 uses
  br label %_ZN5boost4asio6detail9scheduler4stopEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.j, label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit3.i

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ai) #49 ; 0 uses
  br label %_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit3.i

_ZN5boost4asio6detail27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockD2Ev.exit3.i: ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.ah

_ZN5boost4asio6detail9scheduler4stopEv.exit:      ; preds = %bb.h, %_ZN5boost4asio6detail9scheduler16stop_all_threadsERNS1_27conditionally_enabled_mutexINS1_11posix_mutexEE11scoped_lockE.exit.i, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #13

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare i32 @select(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #12

declare i32 @pause() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost4asio3ssl6detail11stream_coreC2INS0_15any_io_executorEEEP10ssl_ctx_stRKT_mm(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5boost4asio3ssl6detail6engineC2EP10ssl_ctx_stmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %3, i64 noundef %4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_ZN5boost4asio6detail14io_object_implINS1_22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEEEENS0_15any_io_executorEEC2EiRKSC_(ptr noundef nonnull align 8 dereferenceable(120) %i.a, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEC2ERKS7_.exit unwind label %bb.h

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEC2ERKS7_.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @_ZN5boost4asio6detail14io_object_implINS1_22deadline_timer_serviceINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEEEENS0_15any_io_executorEEC2EiRKSC_(ptr noundef nonnull align 8 dereferenceable(120) %i.b, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEC2ERKS7_.exit19 unwind label %bb.i

_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEC2ERKS7_.exit19: ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEC2ERKS7_.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.d = tail call noundef i64 @llvm.umax.i64(i64 %3, i64 17408) ; 3 uses
  store i64 %i.d, ptr %i.c, align 8, !tbaa !1123
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.f = tail call noundef i64 @llvm.umax.i64(i64 %4, i64 17408)
  store i64 %i.f, ptr %i.e, align 8, !tbaa !1124
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.h = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #52
          to label %bb.b unwind label %bb.j       ; 2 uses

bb.b:                                             ; preds = %_ZN5boost4asio20basic_waitable_timerINSt6chrono3_V212steady_clockENS0_11wait_traitsIS4_EENS0_15any_io_executorEEC2ERKS7_.exit19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, i8 0, i64 %i.d, i1 false)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !397
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !1124 ; 2 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #52
          to label %bb.c unwind label %bb.k       ; 2 uses

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 0, i64 %i.j, i1 false)
  store ptr %i.k, ptr %i.i, align 8, !tbaa !397
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8, !tbaa !669, !range !266, !noundef !267
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !668  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !689, !nonnull !267, !align !690
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = invoke noundef i64 @_ZN5boost4asio6detail13epoll_reactor12cancel_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEmRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(152) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 noundef -1)
          to label %.noexc unwind label %bb.l     ; 0 uses

.noexc:                                           ; preds = %bb.d
  store i8 0, ptr %i.m, align 8, !tbaa !669
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -9223372036854775808, ptr %i.v, align 8, !tbaa !232
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !669, !range !266, !noundef !267
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !668  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !689, !nonnull !267, !align !690
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ae = invoke noundef i64 @_ZN5boost4asio6detail13epoll_reactor12cancel_timerINS1_18chrono_time_traitsINSt6chrono3_V212steady_clockENS0_11wait_traitsIS7_EEEENS0_17execution_context9allocatorIvEEEEmRNS1_11timer_queueIT_T0_EERNSH_14per_timer_dataEm(ptr noundef nonnull align 8 dereferenceable(152) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 noundef -1)
          to label %.noexc21 unwind label %bb.m   ; 0 uses

.noexc21:                                         ; preds = %bb.f
  store i8 0, ptr %i.w, align 8, !tbaa !669
  br label %bb.g

bb.g:                                             ; preds = %.noexc21, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 -9223372036854775808, ptr %i.af, align 8, !tbaa !232
  ret void
end_hunk_3

begin_hunk_0
@_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_112kSecsPerYearE = internal unnamed_addr constant [2 x i32] [i32 31536000, i32 31622400], align 4
@_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_112kDaysPerYearE = internal unnamed_addr constant [2 x i32] [i32 365, i32 366], align 4
@constinit = private unnamed_addr constant [12 x i64] [i64 -576460752303423488, i64 1420070400, i64 1451606400, i64 1483228800, i64 1514764800, i64 1546300800, i64 1577836800, i64 1609459200, i64 1640995200, i64 1672531200, i64 1704067200, i64 1735689600], align 8
@_ZN4absl12lts_2025051213time_internal14cctz_extension24zone_info_source_factoryB5cxx11E = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"#trans=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" #types=\00", align 1
end_hunk_0
begin_hunk_1
@.str.17 = private unnamed_addr constant [35 x i8] c"/data/misc/zoneinfo/current/tzdata\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"/system/usr/share/zoneinfo/tzdata\00", align 1
@constinit.19 = private unnamed_addr constant [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18], align 8
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceE, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD2Ev, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSourceD0Ev, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4ReadEPvm, ptr @_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_118FileZoneInfoSource4SkipEm, ptr @_ZNK4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_121AndroidZoneInfoSource7VersionB5cxx11Ev] }, align 8
end_hunk_1
begin_hunk_2
  br i1 %.not, label %bb.b, label %bb.br

bb.b:                                             ; preds = %bb.a
  %12 = load i32, ptr %2, align 1
  %13 = icmp ne i32 %12, 1718180436
  %14 = zext i1 %13 to i32
  %.not147 = icmp eq i32 %14, 0
  br i1 %.not147, label %bb.c, label %bb.br

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3
  br i1 %.not150, label %bb.l, label %_ZN4absl12lts_2025051213time_internal4cctz12_GLOBAL__N_16Header5BuildERK6tzhead.exit.thread

bb.l:                                             ; preds = %bb.k
  %15 = load i32, ptr %2, align 1
  %.not152 = icmp ne i32 %15, 1718180436          ; 2 uses
  %16 = zext i1 %.not152 to i32                   ; 0 uses
  %i.dq = load i8, ptr %i.cy, align 1
  %i.dr = icmp eq i8 %i.dq, 0
  %or.cond191 = select i1 %.not152, i1 true, i1 %i.dr
end_hunk_3
begin_hunk_4
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [24 x i8], align 16               ; 18 uses
  %i.g = alloca [52 x i8], align 16               ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
end_hunk_4
begin_hunk_5
  br i1 %.not54.i.i.i.i, label %bb.t, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %11 = load i32, ptr %i.f, align 16
  %12 = xor i32 %11, 1633974900
  %13 = getelementptr i8, ptr %i.f, i64 4
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = xor i32 %15, 24948
  %17 = or i32 %12, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  %.not55.i.i.i.i = icmp eq i32 %19, 0
  br i1 %.not55.i.i.i.i, label %bb.u, label %_ZNSt10unique_ptrI8_IO_FILEPFiPS0_EED2Ev.exit87.i.i.i.i

bb.u:                                             ; preds = %bb.t
end_hunk_5

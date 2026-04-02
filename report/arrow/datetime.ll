begin_hunk_0
@.str.12 = private unnamed_addr constant [14 x i8] c"/etc/timezone\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"/var/db/zoneinfo\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"/etc/sysconfig/clock\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"/etc/config/system\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"option zoneName '\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Could not get current timezone\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Factory\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"iso3166.tab\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"right\00", align 1
end_hunk_0
begin_hunk_1
@.str.53 = private unnamed_addr constant [10 x i8] c" exceeded\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.54 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVSt12system_error = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.58 = private unnamed_addr constant [45 x i8] c"current_zone() failed to find \22zoneinfo\22 in \00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.60 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
end_hunk_1
begin_hunk_2
  %.041.i.i185 = phi i64 [ %i.ia, %.lr.ph.i.i184 ], [ %i.ii, %bb.ca ]
  %.02840.i.i186 = phi ptr [ %i.ib, %.lr.ph.i.i184 ], [ %i.ig, %bb.ca ]
  %.reass.reass.i.reass.reass.i188 = add i64 %.041.i.i185, -5
  %i.ie = call ptr @memchr(ptr noundef %.02840.i.i186, i32 noundef 90, i64 noundef %.reass.reass.i.reass.reass.i188) #31 ; 5 uses
  %.not34.i.i190 = icmp eq ptr %i.ie, null
  br i1 %.not34.i.i190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i191

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i191: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i189
  %14 = load i32, ptr %i.ie, align 1
  %15 = xor i32 %14, 1162760026
  %16 = getelementptr i8, ptr %i.ie, i64 4
  %17 = load i16, ptr %16, align 1
  %18 = zext i16 %17 to i32
  %19 = xor i32 %18, 8765
  %20 = or i32 %15, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %i.if = icmp eq i32 %22, 0
  br i1 %i.if, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcm.exit, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i191
end_hunk_2
begin_hunk_3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i225: ; preds = %bb.cp
  %i.kz = invoke noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #33
          to label %.noexc229 unwind label %bb.dc ; 7 uses

.noexc229:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.kz, ptr noundef nonnull align 1 dereferenceable(17) @.str.17, i64 17, i1 false)
end_hunk_3
begin_hunk_4
  %.041.i.i234 = phi i64 [ %i.lb, %.lr.ph.i.i233 ], [ %i.lj, %bb.cs ]
  %.02840.i.i235 = phi ptr [ %i.lc, %.lr.ph.i.i233 ], [ %i.lh, %bb.cs ]
  %.reass.reass.i.reass.reass.i237 = add i64 %.041.i.i234, -16
  %i.lf = call ptr @memchr(ptr noundef %.02840.i.i235, i32 noundef 111, i64 noundef %.reass.reass.i.reass.reass.i237) #31 ; 5 uses
  %.not34.i.i239 = icmp eq ptr %i.lf, null
  br i1 %.not34.i.i239, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i240

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i240: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i238
  %23 = load i128, ptr %i.lf, align 1
  %24 = load i128, ptr %i.kz, align 1
  %25 = xor i128 %23, %24
  %26 = getelementptr i8, ptr %i.lf, i64 16
  %27 = getelementptr i8, ptr %i.kz, i64 16
  %28 = load i8, ptr %26, align 1
  %29 = load i8, ptr %27, align 1
  %30 = zext i8 %28 to i128
  %31 = zext i8 %29 to i128
  %32 = xor i128 %30, %31
  %33 = or i128 %25, %32
  %34 = icmp ne i128 %33, 0
  %35 = zext i1 %34 to i32
  %i.lg = icmp eq i32 %35, 0
  br i1 %i.lg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findERKS4_m.exit243, label %bb.cs

bb.cs:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i240
end_hunk_4
begin_hunk_5

bb.e:                                             ; preds = %bb.d
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 4 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 5 uses
  %i.k = icmp ult i64 %i.i, 5
  br i1 %i.k, label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit, label %.lr.ph.i.i

end_hunk_5
begin_hunk_6
  %.033.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.02132.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %i.p, %bb.f ]
  %.reass.reass.i.reass.reass.i = add i64 %.033.i.i, -4
  %i.n = tail call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef 112, i64 noundef %.reass.reass.i.reass.reass.i) #31 ; 5 uses
  %.not26.i.i = icmp eq ptr %i.n, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %0 = load i32, ptr %i.n, align 1
  %1 = xor i32 %0, 1769172848
  %2 = getelementptr i8, ptr %i.n, i64 4
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = xor i32 %4, 120
  %6 = or i32 %1, %5
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  %i.o = icmp eq i32 %8, 0
  br i1 %i.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
end_hunk_6
begin_hunk_7
  br i1 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6:  ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread
  %9 = load i64, ptr %i.j, align 1
  %10 = xor i64 %9, 7815278589862178672
  %11 = getelementptr i8, ptr %i.j, i64 8
  %12 = load i16, ptr %11, align 1
  %13 = zext i16 %12 to i64
  %14 = xor i64 %13, 29541
  %15 = or i64 %10, %14
  %i.u = icmp ne i64 %15, 0                       ; 2 uses
  %16 = zext i1 %i.u to i32                       ; 0 uses
  br label %_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit

_ZNSt10unique_ptrIcPDoFvPvEED2Ev.exit:            ; preds = %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i6, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit.thread, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findEPKcm.exit
end_hunk_7
begin_hunk_8
_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.c, %bb.b
  %.013.i.i = phi i64 [ %i.f, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.013.i.i ; 2 uses
  %5 = load i64, ptr %i.d, align 1
  %6 = icmp ne i64 %5, 8027224784786845562
  %7 = zext i1 %6 to i32
  %i.e = icmp eq i32 %7, 0
  br i1 %i.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE5rfindES2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
end_hunk_8
begin_hunk_9
  br i1 %.not30, label %bb.bi, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 19 ; 18 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !31
  %i.by = icmp eq i8 %i.bx, 46
  br i1 %i.by, label %.preheader.backedge, label %bb.n
end_hunk_9
begin_hunk_10
  br label %.preheader, !llvm.loop !230

bb.n:                                             ; preds = %bb.m
  %43 = load i32, ptr %i.bw, align 1
  %44 = xor i32 %43, 1769172848
  %45 = getelementptr i8, ptr %i.bw, i64 4
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = xor i32 %47, 120
  %49 = or i32 %44, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %i.bz = icmp eq i32 %51, 0
  br i1 %i.bz, label %.preheader.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_10

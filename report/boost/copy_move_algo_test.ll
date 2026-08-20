inline.NumInlined: 397
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0
@__const._ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv.Position = private unnamed_addr constant [3 x i32] [i32 0, i32 100, i32 200], align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"life_count<value_type>::check(0)\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"/opt-bench/work/boost/boost/libs/container/test/copy_move_algo_test.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv = private unnamed_addr constant [140 x i8] c"void boost::container::test::test_expand_backward_forward_and_insert_alloc() [ValueType = boost::container::test::movable_and_copyable_int]\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"life_count<value_type>::check(InitialSize[iteration])\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"life_count<value_type>::check(InitialSize[iteration] + InsertSize[iteration])\00", align 1
@.str.10 = private unnamed_addr constant [86 x i8] c"life_count<value_type>::check(InitialSize[iteration] * 2 + InsertSize[iteration] * 2)\00", align 1
@.str.11 = private unnamed_addr constant [85 x i8] c"boost::container::algo_equal(initial_data.begin(), initial_data.end(), final_memory)\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"): test '\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"' failed in function '\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv()
  %i.a = tail call noundef i32 @_ZN5boost13report_errorsEv()
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::vector", align 8       ; 13 uses
  %1 = alloca %"class.boost::container::new_allocator", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.c

.loopexit:                                        ; preds = %bb.e
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !9

bb.b:                                             ; preds = %.loopexit
  ret void

bb.c:                                             ; preds = %bb.a, %.loopexit
  %i.c = phi i1 [ false, %bb.a ], [ true, %.loopexit ] ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.e
  %indvars.iv230 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next231, %bb.e ] ; 2 uses
  %i.d = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.e = icmp eq i32 %i.d, 0
  %i.f = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 64, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv, i1 noundef zeroext %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv.Position, i64 %indvars.iv230
  br label %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EED2Ev.exit103
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next231, 3
  br i1 %exitcond233.not, label %.loopexit, label %bb.d, !llvm.loop !12

_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EED2Ev.exit103, %bb.d
  %indvars.iv226 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next227, %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EED2Ev.exit103 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(800) ptr @_Znwm(i64 noundef 800) #18
          to label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE6resizeEm.exit unwind label %bb.f ; 53 uses

_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE6resizeEm.exit: ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit.i
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(800) %i.h, i8 0, i64 800, i1 false), !tbaa !13
  %i.i = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, 200 ; 2 uses
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  store ptr %i.h, ptr %0, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 800 ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !19
  store ptr %i.j, ptr %i.b, align 8, !tbaa !20
  store i32 %i.i, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.h, align 4, !tbaa !13
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.k, align 4, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.l, align 4, !tbaa !13
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %i.m, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store <4 x i32> <i32 16, i32 17, i32 18, i32 19>, ptr %i.n, align 4, !tbaa !13
  store <4 x i32> <i32 20, i32 21, i32 22, i32 23>, ptr %i.o, align 4, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store <4 x i32> <i32 24, i32 25, i32 26, i32 27>, ptr %i.p, align 4, !tbaa !13
  store <4 x i32> <i32 28, i32 29, i32 30, i32 31>, ptr %i.q, align 4, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  store <4 x i32> <i32 32, i32 33, i32 34, i32 35>, ptr %i.r, align 4, !tbaa !13
  store <4 x i32> <i32 36, i32 37, i32 38, i32 39>, ptr %i.s, align 4, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  store <4 x i32> <i32 40, i32 41, i32 42, i32 43>, ptr %i.t, align 4, !tbaa !13
  store <4 x i32> <i32 44, i32 45, i32 46, i32 47>, ptr %i.u, align 4, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store <4 x i32> <i32 48, i32 49, i32 50, i32 51>, ptr %i.v, align 4, !tbaa !13
  store <4 x i32> <i32 52, i32 53, i32 54, i32 55>, ptr %i.w, align 4, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 224
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  store <4 x i32> <i32 56, i32 57, i32 58, i32 59>, ptr %i.x, align 4, !tbaa !13
  store <4 x i32> <i32 60, i32 61, i32 62, i32 63>, ptr %i.y, align 4, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 272
  store <4 x i32> <i32 64, i32 65, i32 66, i32 67>, ptr %i.z, align 4, !tbaa !13
  store <4 x i32> <i32 68, i32 69, i32 70, i32 71>, ptr %i.aa, align 4, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  store <4 x i32> <i32 72, i32 73, i32 74, i32 75>, ptr %i.ab, align 4, !tbaa !13
  store <4 x i32> <i32 76, i32 77, i32 78, i32 79>, ptr %i.ac, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  store <4 x i32> <i32 80, i32 81, i32 82, i32 83>, ptr %i.ad, align 4, !tbaa !13
  store <4 x i32> <i32 84, i32 85, i32 86, i32 87>, ptr %i.ae, align 4, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  store <4 x i32> <i32 88, i32 89, i32 90, i32 91>, ptr %i.af, align 4, !tbaa !13
  store <4 x i32> <i32 92, i32 93, i32 94, i32 95>, ptr %i.ag, align 4, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  store <4 x i32> <i32 96, i32 97, i32 98, i32 99>, ptr %i.ah, align 4, !tbaa !13
  store <4 x i32> <i32 100, i32 101, i32 102, i32 103>, ptr %i.ai, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 416
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  store <4 x i32> <i32 104, i32 105, i32 106, i32 107>, ptr %i.aj, align 4, !tbaa !13
  store <4 x i32> <i32 108, i32 109, i32 110, i32 111>, ptr %i.ak, align 4, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  store <4 x i32> <i32 112, i32 113, i32 114, i32 115>, ptr %i.al, align 4, !tbaa !13
  store <4 x i32> <i32 116, i32 117, i32 118, i32 119>, ptr %i.am, align 4, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  store <4 x i32> <i32 120, i32 121, i32 122, i32 123>, ptr %i.an, align 4, !tbaa !13
  store <4 x i32> <i32 124, i32 125, i32 126, i32 127>, ptr %i.ao, align 4, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 528
  store <4 x i32> <i32 128, i32 129, i32 130, i32 131>, ptr %i.ap, align 4, !tbaa !13
  store <4 x i32> <i32 132, i32 133, i32 134, i32 135>, ptr %i.aq, align 4, !tbaa !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 544
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 560
  store <4 x i32> <i32 136, i32 137, i32 138, i32 139>, ptr %i.ar, align 4, !tbaa !13
  store <4 x i32> <i32 140, i32 141, i32 142, i32 143>, ptr %i.as, align 4, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  store <4 x i32> <i32 144, i32 145, i32 146, i32 147>, ptr %i.at, align 4, !tbaa !13
  store <4 x i32> <i32 148, i32 149, i32 150, i32 151>, ptr %i.au, align 4, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  store <4 x i32> <i32 152, i32 153, i32 154, i32 155>, ptr %i.av, align 4, !tbaa !13
  store <4 x i32> <i32 156, i32 157, i32 158, i32 159>, ptr %i.aw, align 4, !tbaa !13
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 640
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 656
  store <4 x i32> <i32 160, i32 161, i32 162, i32 163>, ptr %i.ax, align 4, !tbaa !13
  store <4 x i32> <i32 164, i32 165, i32 166, i32 167>, ptr %i.ay, align 4, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 672
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 688
  store <4 x i32> <i32 168, i32 169, i32 170, i32 171>, ptr %i.az, align 4, !tbaa !13
  store <4 x i32> <i32 172, i32 173, i32 174, i32 175>, ptr %i.ba, align 4, !tbaa !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 704
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 720
  store <4 x i32> <i32 176, i32 177, i32 178, i32 179>, ptr %i.bb, align 4, !tbaa !13
  store <4 x i32> <i32 180, i32 181, i32 182, i32 183>, ptr %i.bc, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 736
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 752
  store <4 x i32> <i32 184, i32 185, i32 186, i32 187>, ptr %i.bd, align 4, !tbaa !13
  store <4 x i32> <i32 188, i32 189, i32 190, i32 191>, ptr %i.be, align 4, !tbaa !13
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 768
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 784
  store <4 x i32> <i32 192, i32 193, i32 194, i32 195>, ptr %i.bf, align 4, !tbaa !13
  store <4 x i32> <i32 196, i32 197, i32 198, i32 199>, ptr %i.bg, align 4, !tbaa !13
  %i.bh = icmp eq i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i, 0
  %i.bi = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 78, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv, i1 noundef zeroext %i.bh)
          to label %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit.i133 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit.i, %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE6resizeEm.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EED2Ev.exit113

_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit.i133: ; preds = %_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE6resizeEm.exit
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv.InsertSize, i64 %indvars.iv226
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !11 ; 5 uses
  %i.bm = zext i32 %i.bl to i64                   ; 4 uses
  %i.bn = shl nuw nsw i64 %i.bm, 2                ; 5 uses
  %i.bo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #18
          to label %.lr.ph.preheader unwind label %bb.g ; 14 uses

.lr.ph.preheader:                                 ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit.i133
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i135 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11 ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bo, i8 0, i64 %i.bn, i1 false), !tbaa !13
  %i.bp = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i135, %i.bl ; 2 uses
  store i32 %i.bp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bn ; 5 uses
  %umax = call i32 @llvm.umax.i32(i32 %i.bl, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 3 uses
  %n.vec288 = and i64 %wide.trip.count, 4294967288 ; 3 uses
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %.lr.ph.preheader
  %index290 = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next293, %vector.body289 ] ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %index290 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <4 x i32> zeroinitializer, ptr %i.br, align 4, !tbaa !13
  store <4 x i32> zeroinitializer, ptr %i.bs, align 4, !tbaa !13
  %index.next293 = add nuw i64 %index290, 8       ; 2 uses
  %i.bt = icmp eq i64 %index.next293, %n.vec288
  br i1 %i.bt, label %middle.block295, label %vector.body289, !llvm.loop !21

middle.block295:                                  ; preds = %vector.body289
  %cmp.n296 = icmp eq i64 %n.vec288, %wide.trip.count
  br i1 %cmp.n296, label %.loopexit307, label %.lr.ph

.loopexit307:                                     ; preds = %.lr.ph, %middle.block295
  store i32 %i.bp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.bu = add i32 %i.bl, 200                      ; 5 uses
  %i.bv = icmp eq i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i135, 200
  %i.bw = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv, i1 noundef zeroext %i.bv)
          to label %bb.h unwind label %bb.g       ; 0 uses

bb.g:                                             ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit.i133, %.loopexit307
  %.sroa.22.0 = phi ptr [ %i.bq, %.loopexit307 ], [ null, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit.i133 ]
  %.sroa.0157.0 = phi ptr [ %i.bo, %.loopexit307 ], [ null, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit.i133 ]
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %middle.block295, %.lr.ph
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph ], [ %n.vec288, %middle.block295 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv218
  store i32 0, ptr %i.by, align 4, !tbaa !13
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count
  br i1 %exitcond221.not, label %.loopexit307, label %.lr.ph, !llvm.loop !24

bb.h:                                             ; preds = %.loopexit307
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv.Offset, i64 %indvars.iv226
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !11 ; 2 uses
  %i.cb = add i32 %i.ca, %i.bu
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #18
          to label %_ZN5boost7movelib19make_unique_definitIA_cEENS_9move_upmu13unique_ptr_ifIT_E27t_is_array_of_unknown_boundEm.exit unwind label %bb.i ; 5 uses

_ZN5boost7movelib19make_unique_definitIA_cEENS_9move_upmu13unique_ptr_ifIT_E27t_is_array_of_unknown_boundEm.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.cf = zext i32 %i.ca to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cc
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -800 ; 2 uses
  %i.cj = sub nsw i64 0, %i.cf
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.cj
  %.070 = select i1 %i.c, ptr %i.ck, ptr %i.cg    ; 54 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted193 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %.070, i64 16
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %.070, align 4, !tbaa !13
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.cl, align 4, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %.070, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %.070, i64 48
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.cm, align 4, !tbaa !13
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %i.cn, align 4, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %.070, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %.070, i64 80
  store <4 x i32> <i32 16, i32 17, i32 18, i32 19>, ptr %i.co, align 4, !tbaa !13
  store <4 x i32> <i32 20, i32 21, i32 22, i32 23>, ptr %i.cp, align 4, !tbaa !13
  %i.cq = getelementptr inbounds nuw i8, ptr %.070, i64 96
  %i.cr = getelementptr inbounds nuw i8, ptr %.070, i64 112
  store <4 x i32> <i32 24, i32 25, i32 26, i32 27>, ptr %i.cq, align 4, !tbaa !13
  store <4 x i32> <i32 28, i32 29, i32 30, i32 31>, ptr %i.cr, align 4, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.070, i64 128
  %i.ct = getelementptr inbounds nuw i8, ptr %.070, i64 144
  store <4 x i32> <i32 32, i32 33, i32 34, i32 35>, ptr %i.cs, align 4, !tbaa !13
  store <4 x i32> <i32 36, i32 37, i32 38, i32 39>, ptr %i.ct, align 4, !tbaa !13
  %i.cu = getelementptr inbounds nuw i8, ptr %.070, i64 160
  %i.cv = getelementptr inbounds nuw i8, ptr %.070, i64 176
  store <4 x i32> <i32 40, i32 41, i32 42, i32 43>, ptr %i.cu, align 4, !tbaa !13
  store <4 x i32> <i32 44, i32 45, i32 46, i32 47>, ptr %i.cv, align 4, !tbaa !13
  %i.cw = getelementptr inbounds nuw i8, ptr %.070, i64 192
  %i.cx = getelementptr inbounds nuw i8, ptr %.070, i64 208
  store <4 x i32> <i32 48, i32 49, i32 50, i32 51>, ptr %i.cw, align 4, !tbaa !13
  store <4 x i32> <i32 52, i32 53, i32 54, i32 55>, ptr %i.cx, align 4, !tbaa !13
  %i.cy = getelementptr inbounds nuw i8, ptr %.070, i64 224
  %i.cz = getelementptr inbounds nuw i8, ptr %.070, i64 240
  store <4 x i32> <i32 56, i32 57, i32 58, i32 59>, ptr %i.cy, align 4, !tbaa !13
  store <4 x i32> <i32 60, i32 61, i32 62, i32 63>, ptr %i.cz, align 4, !tbaa !13
  %i.da = getelementptr inbounds nuw i8, ptr %.070, i64 256
  %i.db = getelementptr inbounds nuw i8, ptr %.070, i64 272
  store <4 x i32> <i32 64, i32 65, i32 66, i32 67>, ptr %i.da, align 4, !tbaa !13
  store <4 x i32> <i32 68, i32 69, i32 70, i32 71>, ptr %i.db, align 4, !tbaa !13
  %i.dc = getelementptr inbounds nuw i8, ptr %.070, i64 288
  %i.dd = getelementptr inbounds nuw i8, ptr %.070, i64 304
  store <4 x i32> <i32 72, i32 73, i32 74, i32 75>, ptr %i.dc, align 4, !tbaa !13
  store <4 x i32> <i32 76, i32 77, i32 78, i32 79>, ptr %i.dd, align 4, !tbaa !13
  %i.de = getelementptr inbounds nuw i8, ptr %.070, i64 320
  %i.df = getelementptr inbounds nuw i8, ptr %.070, i64 336
  store <4 x i32> <i32 80, i32 81, i32 82, i32 83>, ptr %i.de, align 4, !tbaa !13
  store <4 x i32> <i32 84, i32 85, i32 86, i32 87>, ptr %i.df, align 4, !tbaa !13
  %i.dg = getelementptr inbounds nuw i8, ptr %.070, i64 352
  %i.dh = getelementptr inbounds nuw i8, ptr %.070, i64 368
  store <4 x i32> <i32 88, i32 89, i32 90, i32 91>, ptr %i.dg, align 4, !tbaa !13
  store <4 x i32> <i32 92, i32 93, i32 94, i32 95>, ptr %i.dh, align 4, !tbaa !13
  %i.di = getelementptr inbounds nuw i8, ptr %.070, i64 384
  %i.dj = getelementptr inbounds nuw i8, ptr %.070, i64 400
  store <4 x i32> <i32 96, i32 97, i32 98, i32 99>, ptr %i.di, align 4, !tbaa !13
  store <4 x i32> <i32 100, i32 101, i32 102, i32 103>, ptr %i.dj, align 4, !tbaa !13
  %i.dk = getelementptr inbounds nuw i8, ptr %.070, i64 416
  %i.dl = getelementptr inbounds nuw i8, ptr %.070, i64 432
  store <4 x i32> <i32 104, i32 105, i32 106, i32 107>, ptr %i.dk, align 4, !tbaa !13
  store <4 x i32> <i32 108, i32 109, i32 110, i32 111>, ptr %i.dl, align 4, !tbaa !13
  %i.dm = getelementptr inbounds nuw i8, ptr %.070, i64 448
  %i.dn = getelementptr inbounds nuw i8, ptr %.070, i64 464
  store <4 x i32> <i32 112, i32 113, i32 114, i32 115>, ptr %i.dm, align 4, !tbaa !13
  store <4 x i32> <i32 116, i32 117, i32 118, i32 119>, ptr %i.dn, align 4, !tbaa !13
  %i.do = getelementptr inbounds nuw i8, ptr %.070, i64 480
  %i.dp = getelementptr inbounds nuw i8, ptr %.070, i64 496
  store <4 x i32> <i32 120, i32 121, i32 122, i32 123>, ptr %i.do, align 4, !tbaa !13
  store <4 x i32> <i32 124, i32 125, i32 126, i32 127>, ptr %i.dp, align 4, !tbaa !13
  %i.dq = getelementptr inbounds nuw i8, ptr %.070, i64 512
  %i.dr = getelementptr inbounds nuw i8, ptr %.070, i64 528
  store <4 x i32> <i32 128, i32 129, i32 130, i32 131>, ptr %i.dq, align 4, !tbaa !13
  store <4 x i32> <i32 132, i32 133, i32 134, i32 135>, ptr %i.dr, align 4, !tbaa !13
  %i.ds = getelementptr inbounds nuw i8, ptr %.070, i64 544
  %i.dt = getelementptr inbounds nuw i8, ptr %.070, i64 560
  store <4 x i32> <i32 136, i32 137, i32 138, i32 139>, ptr %i.ds, align 4, !tbaa !13
  store <4 x i32> <i32 140, i32 141, i32 142, i32 143>, ptr %i.dt, align 4, !tbaa !13
  %i.du = getelementptr inbounds nuw i8, ptr %.070, i64 576
  %i.dv = getelementptr inbounds nuw i8, ptr %.070, i64 592
  store <4 x i32> <i32 144, i32 145, i32 146, i32 147>, ptr %i.du, align 4, !tbaa !13
  store <4 x i32> <i32 148, i32 149, i32 150, i32 151>, ptr %i.dv, align 4, !tbaa !13
  %i.dw = getelementptr inbounds nuw i8, ptr %.070, i64 608
  %i.dx = getelementptr inbounds nuw i8, ptr %.070, i64 624
  store <4 x i32> <i32 152, i32 153, i32 154, i32 155>, ptr %i.dw, align 4, !tbaa !13
  store <4 x i32> <i32 156, i32 157, i32 158, i32 159>, ptr %i.dx, align 4, !tbaa !13
  %i.dy = getelementptr inbounds nuw i8, ptr %.070, i64 640
  %i.dz = getelementptr inbounds nuw i8, ptr %.070, i64 656
  store <4 x i32> <i32 160, i32 161, i32 162, i32 163>, ptr %i.dy, align 4, !tbaa !13
  store <4 x i32> <i32 164, i32 165, i32 166, i32 167>, ptr %i.dz, align 4, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %.070, i64 672
  %i.eb = getelementptr inbounds nuw i8, ptr %.070, i64 688
  store <4 x i32> <i32 168, i32 169, i32 170, i32 171>, ptr %i.ea, align 4, !tbaa !13
  store <4 x i32> <i32 172, i32 173, i32 174, i32 175>, ptr %i.eb, align 4, !tbaa !13
  %i.ec = getelementptr inbounds nuw i8, ptr %.070, i64 704
  %i.ed = getelementptr inbounds nuw i8, ptr %.070, i64 720
  store <4 x i32> <i32 176, i32 177, i32 178, i32 179>, ptr %i.ec, align 4, !tbaa !13
  store <4 x i32> <i32 180, i32 181, i32 182, i32 183>, ptr %i.ed, align 4, !tbaa !13
  %i.ee = getelementptr inbounds nuw i8, ptr %.070, i64 736
  %i.ef = getelementptr inbounds nuw i8, ptr %.070, i64 752
  store <4 x i32> <i32 184, i32 185, i32 186, i32 187>, ptr %i.ee, align 4, !tbaa !13
  store <4 x i32> <i32 188, i32 189, i32 190, i32 191>, ptr %i.ef, align 4, !tbaa !13
  %i.eg = getelementptr inbounds nuw i8, ptr %.070, i64 768
  %i.eh = getelementptr inbounds nuw i8, ptr %.070, i64 784
  store <4 x i32> <i32 192, i32 193, i32 194, i32 195>, ptr %i.eg, align 4, !tbaa !13
  store <4 x i32> <i32 196, i32 197, i32 198, i32 199>, ptr %i.eh, align 4, !tbaa !13
  %i.ei = sub nsw i64 0, %i.bm
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.ei
  %.071 = select i1 %i.c, ptr %i.ej, ptr %i.ce    ; 7 uses
  %i.ek = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted193, 200
  store i32 %i.ek, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.em = load ptr, ptr %0, align 8, !tbaa !15
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = ashr exact i64 %i.ep, 2                 ; 2 uses
  %i.er = load i32, ptr %i.g, align 4, !tbaa !11
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.es ; 2 uses
  %i.eu = icmp ult ptr %.071, %.070
  br i1 %i.eu, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.j:                                             ; preds = %_ZN5boost7movelib19make_unique_definitIA_cEENS_9move_upmu13unique_ptr_ifIT_E27t_is_array_of_unknown_boundEm.exit
  invoke void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEES8_EEvT_mSG_SG_mT0_RT1_(ptr noundef nonnull %.070, i64 noundef %i.eq, ptr noundef nonnull %.071, ptr noundef nonnull %i.et, i64 noundef %i.bm, ptr nonnull %i.bo, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEES8_EEvT_mSG_SG_mT0_RT1_.exit unwind label %bb.p

bb.k:                                             ; preds = %_ZN5boost7movelib19make_unique_definitIA_cEENS_9move_upmu13unique_ptr_ifIT_E27t_is_array_of_unknown_boundEm.exit
  invoke void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIS6_St6vectorIS4_SaIS4_EEEEEEEEvT0_mSG_SG_mT1_RT_(ptr noundef nonnull %.070, i64 noundef %i.eq, ptr noundef nonnull %.071, ptr noundef nonnull %i.et, i64 noundef %i.bm, ptr nonnull %i.bo, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEES8_EEvT_mSG_SG_mT0_RT1_.exit unwind label %bb.p

_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEES8_EEvT_mSG_SG_mT0_RT1_.exit: ; preds = %bb.j, %bb.k
  %i.ew = shl i32 %i.bu, 1
  %i.ex = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.ey = icmp eq i32 %i.ew, %i.ex
  %i.ez = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, i32 noundef 114, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv, i1 noundef zeroext %i.ey)
          to label %bb.l unwind label %bb.p       ; 0 uses

bb.l:                                             ; preds = %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEES8_EEvT_mSG_SG_mT0_RT1_.exit
  %i.fa = load ptr, ptr %0, align 8, !tbaa !25
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.es
  invoke void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.fb, ptr nonnull %i.bo, ptr nonnull %i.bq)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.fc = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.fc, %i.fd
  br i1 %.not7.i.i, label %_ZN5boost9intrusive10algo_equalIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEES7_EEbT_SC_T0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %.071, %bb.m ] ; 2 uses
  %.sroa.04.08.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %i.fc, %bb.m ] ; 2 uses
  %i.fe = load i32, ptr %.sroa.04.08.i.i, align 4, !tbaa !13
  %i.ff = load i32, ptr %.09.i.i, align 4, !tbaa !13
  %i.fg = icmp eq i32 %i.fe, %i.ff                ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i, i64 4 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %.not.i.i95 = icmp ne ptr %i.fh, %i.fd
  %or.cond.not = select i1 %i.fg, i1 %.not.i.i95, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZN5boost9intrusive10algo_equalIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEES7_EEbT_SC_T0_.exit, !llvm.loop !26

_ZN5boost9intrusive10algo_equalIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEES7_EEbT_SC_T0_.exit: ; preds = %.lr.ph.i.i, %bb.m
  %.not.lcssa.i.i = phi i1 [ true, %bb.m ], [ %i.fg, %.lr.ph.i.i ]
  %i.fj = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7, i32 noundef 120, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5boost9container4test45test_expand_backward_forward_and_insert_allocINS1_24movable_and_copyable_intEEEvv, i1 noundef zeroext %.not.lcssa.i.i)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %_ZN5boost9intrusive10algo_equalIN9__gnu_cxx17__normal_iteratorIPNS_9container4test24movable_and_copyable_intESt6vectorIS6_SaIS6_EEEES7_EEbT_SC_T0_.exit
  %.not3.i = icmp eq i32 %i.bu, 0
  br i1 %.not3.i, label %.lr.ph.i.i.i.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.fk = zext i32 %i.bu to i64                   ; 4 uses
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted196 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %min.iters.check268 = icmp ult i32 %i.bu, 8
  br i1 %min.iters.check268, label %.lr.ph.i.preheader310, label %vector.ph269

vector.ph269:                                     ; preds = %.lr.ph.i.preheader
  %n.vec270 = and i64 %i.fk, 4294967288           ; 3 uses
end_hunk_0

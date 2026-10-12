Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUISelDAGToDAG?download=true
inline.NumInlined: 5475
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4llvm18AMDGPUDAGToDAGISel12SelectBITOP3ENS_7SDValueERS1_S2_S2_S2_:bb.a
  %.not.i15 = icmp ult i32 %i.ai, %i.ak
  br i1 %.not.i15, label %bb.l, label %bb.k, !prof !481

bb.k:                                             ; preds = %.lr.ph
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %.sroa.04.0.copyload, i32 %.sroa.25.0.copyload)
  %.pre = load i32, ptr %i.b, align 8, !tbaa !478
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.l:                                             ; preds = %.lr.ph
  %i.al = zext nneg i32 %i.ai to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.al ; 2 uses
  store ptr %.sroa.04.0.copyload, ptr %i.am, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %.sroa.25.0.copyload, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.an = load i32, ptr %i.b, align 8, !tbaa !478
  %i.ao = add i32 %i.an, 1                        ; 2 uses
  store i32 %i.ao, ptr %i.b, align 8, !tbaa !478
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.k, %bb.l
  %i.ap = phi i32 [ %.pre, %bb.k ], [ %i.ao, %bb.l ] ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 3
  br i1 %i.aq, label %.lr.ph, label %._crit_edge, !llvm.loop !914

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %.critedge
  %i.ar = load ptr, ptr %7, align 8, !tbaa !472   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.ar, i64 12, i1 false), !tbaa.struct !393
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.as, i64 12, i1 false), !tbaa.struct !393
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(12) %i.at, i64 12, i1 false), !tbaa.struct !393
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !389
  store i64 %i.ax, ptr %8, align 8, !tbaa !389
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !390
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !392
  %i.bb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.av, i64 noundef %.sroa.021.4.extract.shift40, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #24 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.bb, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.bb, 1
  store ptr %.fca.0.extract, ptr %6, align 8, !tbaa !382
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !383
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.g, %bb.h, %bb.c, %bb.a, %._crit_edge
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.g ], [ true, %._crit_edge ], [ false, %bb.j ], [ false, %bb.h ]
  %i.bc = load ptr, ptr %7, align 8, !tbaa !472   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.a
  br i1 %i.bd, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef %i.bc) #24
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i64 0, 1099511627776) i64 @_ZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EE(ptr %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.721, align 8            ; 7 uses
  %4 = alloca %"class.llvm::SmallVector.655", align 8 ; 12 uses
  %5 = alloca %"class.llvm::SmallVector.655", align 8 ; 14 uses
  %6 = alloca %"class.llvm::SmallVector.655", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %2, ptr %3, align 8, !tbaa !916
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !382
  %.sroa.6.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %1, ptr %.sroa.6.0..sroa_idx159, align 8, !tbaa !383
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !384
  %.off = add i32 %i.e, -193
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.b, label %bb.aq

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !380  ; 4 uses
  %.sroa.058.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !382 ; 6 uses
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.659.0.copyload = load i32, ptr %.sroa.659.0..sroa_idx, align 8, !tbaa !383 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.055.0.copyload = load ptr, ptr %i.h, align 8, !tbaa !382 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !383 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.i = load ptr, ptr %2, align 8, !tbaa !472
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !478  ; 4 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !472
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i32 0, ptr %i.n, align 8, !tbaa !478
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 3, ptr %i.o, align 4, !tbaa !477
  %.idx = shl nuw nsw i64 %i.l, 4
  %i.p = icmp ugt i32 %i.k, 3
  br i1 %i.p, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.thread, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.thread: ; preds = %bb.b
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull %i.m, i64 noundef %i.l, i64 noundef 16) #24
  %.pre8.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !478
  %i.q = zext i32 %.pre8.pre.i.i to i64
  br label %bb.c

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i: ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.thread, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i
  %.pre8.i.i213 = phi i64 [ %i.q, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i.thread ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ]
  %i.r = load ptr, ptr %4, align 8, !tbaa !472
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.pre8.i.i213
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %i.i, i64 %.idx, i1 false)
  %.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !478
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit

_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i, %bb.c
  %i.t = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.c ]
  %i.u = add i32 %i.t, %i.k
  store i32 %i.u, ptr %i.n, align 8, !tbaa !478
  %i.v = call fastcc noundef zeroext i1 @"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_0clES0_Rh"(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %.sroa.058.0.copyload, i32 %.sroa.659.0.copyload, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit
  %i.w = call fastcc noundef zeroext i1 @"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_0clES0_Rh"(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %.sroa.055.0.copyload, i32 %.sroa.6.0.copyload, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  br i1 %i.w, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit
  %i.x = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7SDValueEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %4) ; 0 uses
  %i.y = load ptr, ptr %4, align 8, !tbaa !472    ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.m
  br i1 %i.z, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.y) #24
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit: ; preds = %.critedge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.aa = load ptr, ptr %2, align 8, !tbaa !472
  %i.ab = load i32, ptr %i.j, align 8, !tbaa !478 ; 4 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !472
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 8 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !478
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 3, ptr %i.af, align 4, !tbaa !477
  %.idx178 = shl nuw nsw i64 %i.ac, 4
  %i.ag = icmp ugt i32 %i.ab, 3
  br i1 %i.ag, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i94.thread, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i94

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i94.thread: ; preds = %bb.f
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.ad, i64 noundef %i.ac, i64 noundef 16) #24
  %.pre8.pre.i.i98 = load i32, ptr %i.ae, align 8, !tbaa !478
  %i.ah = zext i32 %.pre8.pre.i.i98 to i64
  br label %bb.g

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i94: ; preds = %bb.f
  %.not.i.i.i96 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i96, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit99, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i94.thread, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i94
  %.pre8.i.i95216 = phi i64 [ %i.ah, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i94.thread ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i94 ]
  %i.ai = load ptr, ptr %5, align 8, !tbaa !472
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.pre8.i.i95216
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 8 %i.aa, i64 %.idx178, i1 false)
  %.pre.i.i97 = load i32, ptr %i.ae, align 8, !tbaa !478
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit99

_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit99: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i94, %bb.g
  %i.ak = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i94 ], [ %.pre.i.i97, %bb.g ]
  %i.al = add i32 %i.ak, %i.ab
  store i32 %i.al, ptr %i.ae, align 8, !tbaa !478
  %i.am = load i8, ptr %i.a, align 1, !tbaa !198  ; 5 uses
  %i.an = load i8, ptr %i.b, align 1, !tbaa !198  ; 5 uses
  %i.ao = call fastcc i64 @_ZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EE(ptr %.sroa.058.0.copyload, i32 %.sroa.659.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %.sroa.037.0.extract.trunc = trunc i64 %i.ao to i32 ; 2 uses
  %.not183 = icmp eq i32 %.sroa.037.0.extract.trunc, 0 ; 3 uses
  %.sroa.037.4.extract.shift90 = lshr i64 %i.ao, 32
  %.sroa.037.4.extract.trunc = trunc nuw i64 %.sroa.037.4.extract.shift90 to i8
  %i.ap = select i1 %.not183, i8 %i.am, i8 %.sroa.037.4.extract.trunc ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.aq = load ptr, ptr %2, align 8, !tbaa !472
  %i.ar = load i32, ptr %i.j, align 8, !tbaa !478 ; 4 uses
  %i.as = zext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.at, ptr %6, align 8, !tbaa !472
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i32 0, ptr %i.au, align 8, !tbaa !478
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 3, ptr %i.av, align 4, !tbaa !477
  %.idx180 = shl nuw nsw i64 %i.as, 4
  %i.aw = icmp ugt i32 %i.ar, 3
  br i1 %i.aw, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i100.thread, label %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i100

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i100.thread: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit99
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull %i.at, i64 noundef %i.as, i64 noundef 16) #24
  %.pre8.pre.i.i104 = load i32, ptr %i.au, align 8, !tbaa !478
  %i.ax = zext i32 %.pre8.pre.i.i104 to i64
  br label %bb.h

_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i100: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit99
  %.not.i.i.i102 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i102, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit105, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i100.thread, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i100
  %.pre8.i.i101219 = phi i64 [ %i.ax, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i100.thread ], [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i100 ]
  %i.ay = load ptr, ptr %6, align 8, !tbaa !472
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.pre8.i.i101219
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 8 %i.aq, i64 %.idx180, i1 false)
  %.pre.i.i103 = load i32, ptr %i.au, align 8, !tbaa !478
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit105

_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit105: ; preds = %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i100, %bb.h
  %i.ba = phi i32 [ 0, %_ZN4llvm15SmallVectorImplINS_7SDValueEE7reserveEm.exit.i.i100 ], [ %.pre.i.i103, %bb.h ]
  %i.bb = add i32 %i.ba, %i.ar
  store i32 %i.bb, ptr %i.au, align 8, !tbaa !478
  %i.bc = call fastcc i64 @_ZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EE(ptr %.sroa.055.0.copyload, i32 %.sroa.6.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %.sroa.029.0.extract.trunc = trunc i64 %i.bc to i32 ; 2 uses
  %.not182 = icmp eq i32 %.sroa.029.0.extract.trunc, 0 ; 2 uses
  %i.bd = add i32 %.sroa.029.0.extract.trunc, %.sroa.037.0.extract.trunc ; 7 uses
  %.sroa.029.4.extract.shift91 = lshr i64 %i.bc, 32
  %.sroa.029.4.extract.trunc = trunc nuw i64 %.sroa.029.4.extract.shift91 to i8
  %i.be = select i1 %.not182, i8 %i.an, i8 %.sroa.029.4.extract.trunc ; 7 uses
  br i1 %.not183, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit105
  %i.bf = load i32, ptr %i.au, align 8, !tbaa !478 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bh = load i32, ptr %i.j, align 8, !tbaa !478 ; 3 uses
  %i.bi = load ptr, ptr %6, align 8               ; 6 uses
  %i.bj = zext i8 %i.ap to i32                    ; 6 uses
  %i.bk = icmp sgt i32 %i.bh, 0
  br i1 %i.bk, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph
  %i.bl = load ptr, ptr %2, align 8, !tbaa !472   ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !408
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !408
  %i.bo = icmp ne ptr %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = icmp ne i32 %i.bq, %i.bs
  %.not3.i = select i1 %i.bo, i1 true, i1 %i.bt
  br i1 %.not3.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bu = lshr i32 %i.bj, 4
  %.masked = and i32 %i.bj, 15
  %.not184 = icmp eq i32 %i.bu, %.masked
  br i1 %.not184, label %bb.k, label %.thread173

bb.k:                                             ; preds = %.lr.ph, %bb.i, %bb.j
  %exitcond.not = icmp eq i32 %i.bf, 1
  br i1 %exitcond.not, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = icmp sgt i32 %i.bh, 1
  br i1 %i.bv, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bw = load ptr, ptr %2, align 8, !tbaa !472   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !408
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !408
  %i.cb = icmp ne ptr %i.bz, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = icmp ne i32 %i.cd, %i.cf
  %.not3.i.1 = select i1 %i.cb, i1 true, i1 %i.cg
  br i1 %.not3.i.1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = lshr i32 %i.bj, 2
  %i.ci = xor i32 %i.ch, %i.bj
  %i.cj = and i32 %i.ci, 51
  %.not184.1 = icmp eq i32 %i.cj, 0
  br i1 %.not184.1, label %bb.o, label %.thread173

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %exitcond.not.1 = icmp ne i32 %i.bf, 2
  %i.ck = icmp sgt i32 %i.bh, 2
  %or.cond = and i1 %exitcond.not.1, %i.ck
  br i1 %or.cond, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %2, align 8, !tbaa !472   ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.co = load ptr, ptr %i.cm, align 8, !tbaa !408
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !408
  %i.cq = icmp ne ptr %i.co, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = icmp ne i32 %i.cs, %i.cu
  %.not3.i.2 = select i1 %i.cq, i1 true, i1 %i.cv
  br i1 %.not3.i.2, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.cw = lshr i32 %i.bj, 1
  %i.cx = xor i32 %i.cw, %i.bj
  %i.cy = and i32 %i.cx, 85
  %.not184.2 = icmp eq i32 %i.cy, 0
  br i1 %.not184.2, label %.loopexit, label %.thread173

.loopexit:                                        ; preds = %bb.k, %bb.o, %bb.q, %bb.p, %.preheader, %_ZN4llvm11SmallVectorINS_7SDValueELj3EEC2IPS1_vEET_S5_.exit105
  br i1 %.not182, label %bb.r, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread"

bb.r:                                             ; preds = %.loopexit
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.055.0.copyload, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !384
  %i.db = icmp eq i32 %i.da, 195
  br i1 %i.db, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.055.0.copyload, i64 40 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !380 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %.sroa.0.0.copyload.i = load ptr, ptr %i.de, align 8, !tbaa !382
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !383
  %i.df = call noundef zeroext i1 @_ZN4llvm17isAllOnesConstantENS_7SDValueE(ptr %.sroa.0.0.copyload.i, i32 %.sroa.2.0.copyload.i) #24
  br i1 %i.df, label %.thread.thread.i, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  %i.dg = load i32, ptr %i.ae, align 8, !tbaa !478 ; 2 uses
  %.not8.i = icmp sgt i32 %i.dg, 0
  br i1 %.not8.i, label %.lr.ph.split.us.preheader.i, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread"

.thread.thread.i:                                 ; preds = %bb.s
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !380 ; 2 uses
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.dh, align 8, !tbaa !382
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !383
  %i.di = load i32, ptr %i.ae, align 8, !tbaa !478 ; 2 uses
  %.not825.i = icmp sgt i32 %i.di, 0
  br i1 %.not825.i, label %.lr.ph.split.preheader.i, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread"

.lr.ph.split.us.preheader.i:                      ; preds = %.thread.i
  %wide.trip.count.i = zext nneg i32 %i.dg to i64
  %i.dj = load ptr, ptr %5, align 8               ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.preheader.i:                         ; preds = %.thread.thread.i
  %wide.trip.count21.i = zext nneg i32 %i.di to i64
  %i.dk = load ptr, ptr %5, align 8               ; 4 uses
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %bb.u, %.lr.ph.split.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next.i, %bb.u ] ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr @"__const._ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_0clES0_Rh.SrcBits", i64 %indvars.iv.i
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !198
  %i.dn = icmp eq i8 %i.an, %i.dm
  br i1 %i.dn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.split.us.i
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %indvars.iv.i ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !408
  %i.dq = icmp eq ptr %i.dp, %.sroa.055.0.copyload
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = icmp eq i32 %i.ds, %.sroa.6.0.copyload
  %i.du = select i1 %i.dq, i1 %i.dt, i1 false
  br i1 %i.du, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit", label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.split.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread", label %.lr.ph.split.us.i, !llvm.loop !915

.lr.ph.split.i:                                   ; preds = %bb.y, %.lr.ph.split.preheader.i
  %indvars.iv18.i = phi i64 [ 0, %.lr.ph.split.preheader.i ], [ %indvars.iv.next19.i, %bb.y ] ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr @"__const._ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_0clES0_Rh.SrcBits", i64 %indvars.iv18.i
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !198 ; 2 uses
  %i.dx = icmp eq i8 %i.an, %i.dw
  br i1 %i.dx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.split.i
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %indvars.iv18.i ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !408
  %i.ea = icmp eq ptr %i.dz, %.sroa.055.0.copyload
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = icmp eq i32 %i.ec, %.sroa.6.0.copyload
  %i.ee = select i1 %i.ea, i1 %i.ed, i1 false
  br i1 %i.ee, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit", label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.split.i
  %i.ef = xor i8 %i.dw, %i.an
  %i.eg = icmp eq i8 %i.ef, -1
  br i1 %i.eg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %indvars.iv18.i ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !408
  %i.ej = icmp eq ptr %i.ei, %.sroa.0.0.copyload1.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = icmp eq i32 %i.el, %.sroa.5.0.copyload.i
  %i.en = select i1 %i.ej, i1 %i.em, i1 false
  br i1 %i.en, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit", label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next19.i, %wide.trip.count21.i
  br i1 %exitcond22.not.i, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread", label %.lr.ph.split.i, !llvm.loop !915

"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit": ; preds = %bb.t, %bb.v, %bb.x
  %i.eo = phi ptr [ %i.dk, %bb.v ], [ %i.dk, %bb.x ], [ %i.dj, %bb.t ]
  %spec.select.i.in = phi i64 [ %indvars.iv18.i, %bb.v ], [ %indvars.iv18.i, %bb.x ], [ %indvars.iv.i, %bb.t ] ; 2 uses
  %spec.select.i = trunc i64 %spec.select.i.in to i32 ; 2 uses
  %i.ep = icmp sgt i32 %spec.select.i, -1
  br i1 %i.ep, label %7, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread"

7:                                                ; preds = %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit"
  %8 = load i32, ptr %i.j, align 8, !tbaa !478
  %.not = icmp sgt i32 %8, %spec.select.i
  br i1 %.not, label %bb.z, label %.thread173

bb.z:                                             ; preds = %7
  %i.eq = and i64 %spec.select.i.in, 2147483647   ; 2 uses
  %i.er = load ptr, ptr %2, align 8, !tbaa !472
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %i.eq ; 2 uses
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.eq ; 2 uses
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !408
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !408
  %i.ew = icmp ne ptr %i.eu, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = icmp ne i32 %i.ey, %i.fa
  %.not3.i106 = select i1 %i.ew, i1 true, i1 %i.fb
  br i1 %.not3.i106, label %.thread173, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread"

"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread": ; preds = %bb.u, %bb.y, %.thread.thread.i, %.thread.i, %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit", %bb.z, %.loopexit
  br i1 %.not183, label %bb.aa, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread"

bb.aa:                                            ; preds = %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread"
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload, i64 24
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !384
  %i.fe = icmp eq i32 %i.fd, 195
  br i1 %i.fe, label %bb.ab, label %..thread.i107_crit_edge

..thread.i107_crit_edge:                          ; preds = %bb.aa
  %.pre = load i32, ptr %i.ae, align 8, !tbaa !478
  br label %.thread.i107

bb.ab:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.058.0.copyload, i64 40 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !380 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %.sroa.0.0.copyload.i117 = load ptr, ptr %i.fh, align 8, !tbaa !382
  %.sroa.2.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %.sroa.2.0.copyload.i119 = load i32, ptr %.sroa.2.0..sroa_idx.i118, align 8, !tbaa !383
  %i.fi = call noundef zeroext i1 @_ZN4llvm17isAllOnesConstantENS_7SDValueE(ptr %.sroa.0.0.copyload.i117, i32 %.sroa.2.0.copyload.i119) #24
  %.pre204 = load i32, ptr %i.ae, align 8, !tbaa !478 ; 3 uses
  br i1 %i.fi, label %.thread.thread.i120, label %.thread.i107

.thread.i107:                                     ; preds = %..thread.i107_crit_edge, %bb.ab
  %i.fj = phi i32 [ %.pre, %..thread.i107_crit_edge ], [ %.pre204, %bb.ab ] ; 2 uses
  %.not8.i108 = icmp sgt i32 %i.fj, 0
  br i1 %.not8.i108, label %.lr.ph.split.us.preheader.i110, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread"

.thread.thread.i120:                              ; preds = %bb.ab
  %i.fk = load ptr, ptr %i.ff, align 8, !tbaa !380 ; 2 uses
  %.sroa.0.0.copyload1.i121 = load ptr, ptr %i.fk, align 8, !tbaa !382
  %.sroa.5.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.sroa.5.0.copyload.i123 = load i32, ptr %.sroa.5.0..sroa_idx.i122, align 8, !tbaa !383
  %.not825.i124 = icmp sgt i32 %.pre204, 0
  br i1 %.not825.i124, label %.lr.ph.split.preheader.i125, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread"

.lr.ph.split.us.preheader.i110:                   ; preds = %.thread.i107
  %wide.trip.count.i111 = zext nneg i32 %i.fj to i64
  %i.fl = load ptr, ptr %5, align 8               ; 2 uses
  br label %.lr.ph.split.us.i112

.lr.ph.split.preheader.i125:                      ; preds = %.thread.thread.i120
  %wide.trip.count21.i126 = zext nneg i32 %.pre204 to i64
  %i.fm = load ptr, ptr %5, align 8               ; 4 uses
  br label %.lr.ph.split.i127

.lr.ph.split.us.i112:                             ; preds = %bb.ad, %.lr.ph.split.us.preheader.i110
  %indvars.iv.i113 = phi i64 [ 0, %.lr.ph.split.us.preheader.i110 ], [ %indvars.iv.next.i114, %bb.ad ] ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr @"__const._ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_0clES0_Rh.SrcBits", i64 %indvars.iv.i113
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !198
  %i.fp = icmp eq i8 %i.am, %i.fo
  br i1 %i.fp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split.us.i112
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fl, i64 %indvars.iv.i113 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !408
  %i.fs = icmp eq ptr %i.fr, %.sroa.058.0.copyload
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fu = load i32, ptr %i.ft, align 8
  %i.fv = icmp eq i32 %i.fu, %.sroa.659.0.copyload
  %i.fw = select i1 %i.fs, i1 %i.fv, i1 false
  br i1 %i.fw, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133", label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.split.us.i112
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i113, 1 ; 2 uses
  %exitcond.not.i115 = icmp eq i64 %indvars.iv.next.i114, %wide.trip.count.i111
  br i1 %exitcond.not.i115, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread", label %.lr.ph.split.us.i112, !llvm.loop !915

.lr.ph.split.i127:                                ; preds = %bb.ah, %.lr.ph.split.preheader.i125
  %indvars.iv18.i128 = phi i64 [ 0, %.lr.ph.split.preheader.i125 ], [ %indvars.iv.next19.i129, %bb.ah ] ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr @"__const._ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_0clES0_Rh.SrcBits", i64 %indvars.iv18.i128
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !198 ; 2 uses
  %i.fz = icmp eq i8 %i.am, %i.fy
  br i1 %i.fz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.split.i127
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv18.i128 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !408
  %i.gc = icmp eq ptr %i.gb, %.sroa.058.0.copyload
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.ge = load i32, ptr %i.gd, align 8
  %i.gf = icmp eq i32 %i.ge, %.sroa.659.0.copyload
  %i.gg = select i1 %i.gc, i1 %i.gf, i1 false
  br i1 %i.gg, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133", label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.split.i127
  %i.gh = xor i8 %i.fy, %i.am
  %i.gi = icmp eq i8 %i.gh, -1
  br i1 %i.gi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv18.i128 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !408
  %i.gl = icmp eq ptr %i.gk, %.sroa.0.0.copyload1.i121
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = icmp eq i32 %i.gn, %.sroa.5.0.copyload.i123
  %i.gp = select i1 %i.gl, i1 %i.go, i1 false
  br i1 %i.gp, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133", label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.next19.i129 = add nuw nsw i64 %indvars.iv18.i128, 1 ; 2 uses
  %exitcond22.not.i130 = icmp eq i64 %indvars.iv.next19.i129, %wide.trip.count21.i126
  br i1 %exitcond22.not.i130, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread", label %.lr.ph.split.i127, !llvm.loop !915

"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133": ; preds = %bb.ac, %bb.ae, %bb.ag
  %i.gq = phi ptr [ %i.fm, %bb.ae ], [ %i.fm, %bb.ag ], [ %i.fl, %bb.ac ]
  %spec.select.i109.in = phi i64 [ %indvars.iv18.i128, %bb.ae ], [ %indvars.iv18.i128, %bb.ag ], [ %indvars.iv.i113, %bb.ac ] ; 2 uses
  %spec.select.i109 = trunc i64 %spec.select.i109.in to i32 ; 2 uses
  %i.gr = icmp sgt i32 %spec.select.i109, -1
  br i1 %i.gr, label %9, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread"

9:                                                ; preds = %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133"
  %10 = load i32, ptr %i.j, align 8, !tbaa !478
  %.not92 = icmp sgt i32 %10, %spec.select.i109
  br i1 %.not92, label %bb.ai, label %.thread173

bb.ai:                                            ; preds = %9
  %i.gs = and i64 %spec.select.i109.in, 2147483647 ; 2 uses
  %i.gt = load ptr, ptr %2, align 8, !tbaa !472
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %i.gs ; 2 uses
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.gs ; 2 uses
  %i.gw = load ptr, ptr %i.gu, align 8, !tbaa !408
  %i.gx = load ptr, ptr %i.gv, align 8, !tbaa !408
  %i.gy = icmp ne ptr %i.gw, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.hc = load i32, ptr %i.hb, align 8
  %i.hd = icmp ne i32 %i.ha, %i.hc
  %.not3.i134 = select i1 %i.gy, i1 true, i1 %i.hd
  br i1 %.not3.i134, label %.thread173, label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread"

.thread173:                                       ; preds = %bb.j, %bb.n, %bb.q, %9, %bb.ai, %7, %bb.z
  %i.he = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplINS_7SDValueEEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 0 uses
  br label %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread"

"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread": ; preds = %bb.ad, %bb.ah, %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread", %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133", %bb.ai, %.thread.thread.i120, %.thread.i107, %.thread173
  %11 = phi i8 [ %i.an, %.thread173 ], [ %i.be, %bb.ai ], [ %i.be, %.thread.i107 ], [ %i.be, %.thread.thread.i120 ], [ %i.be, %bb.ah ], [ %i.be, %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread" ], [ %i.be, %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133" ], [ %i.be, %bb.ad ] ; 3 uses
  %12 = phi i8 [ %i.am, %.thread173 ], [ %i.ap, %bb.ai ], [ %i.ap, %.thread.i107 ], [ %i.ap, %.thread.thread.i120 ], [ %i.ap, %bb.ah ], [ %i.ap, %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread" ], [ %i.ap, %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133" ], [ %i.ap, %bb.ad ] ; 3 uses
  %.2 = phi i32 [ 0, %.thread173 ], [ %i.bd, %bb.ai ], [ %i.bd, %.thread.i107 ], [ %i.bd, %.thread.thread.i120 ], [ %i.bd, %bb.ah ], [ %i.bd, %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit.thread" ], [ %i.bd, %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133" ], [ %i.bd, %bb.ad ]
  %i.hf = load ptr, ptr %6, align 8, !tbaa !472   ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.at
  br i1 %i.hg, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit135, label %bb.aj

bb.aj:                                            ; preds = %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread"
  call void @free(ptr noundef %i.hf) #24
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit135

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit135: ; preds = %"_ZZL9BitOp3_OpN4llvm7SDValueERNS_15SmallVectorImplIS0_EEENK3$_2clEhS0_RKS2_.exit133.thread.thread", %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.hh = load ptr, ptr %5, align 8, !tbaa !472   ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %i.ad
  br i1 %i.hi, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit136, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit135
  call void @free(ptr noundef %i.hh) #24
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit136

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit136: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit135, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.hj = add i32 %.2, 1
  %i.hk = load ptr, ptr %4, align 8, !tbaa !472   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.m
  br i1 %i.hl, label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit137, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit136
  call void @free(ptr noundef %i.hk) #24
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit137

_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit137: ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit136, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.hm = load i32, ptr %i.d, align 8, !tbaa !384
  switch i32 %i.hm, label %bb.ap [
    i32 193, label %bb.am
    i32 194, label %bb.an
    i32 195, label %bb.ao
  ]

bb.am:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit137
  %i.hn = and i8 %11, %12
  br label %bb.ap

bb.an:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit137
  %i.ho = or i8 %11, %12
  br label %bb.ap

bb.ao:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit137
  %i.hp = xor i8 %11, %12
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit137, %bb.ao, %bb.an, %bb.am
  %.0164 = phi i8 [ undef, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit137 ], [ %i.hn, %bb.am ], [ %i.ho, %bb.an ], [ %i.hp, %bb.ao ]
  %i.hq = zext i8 %.0164 to i64
  %i.hr = shl nuw nsw i64 %i.hq, 32
  %i.hs = zext i32 %i.hj to i64
  %i.ht = or disjoint i64 %i.hr, %i.hs
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit, %bb.ap
  %.sroa.0161.sroa.4.0 = phi i64 [ %i.ht, %bb.ap ], [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj3EED2Ev.exit ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i64 %.sroa.0161.sroa.4.0
}

declare { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920), i64 noundef, ptr noundef nonnull align 8 dereferenceable(12), i16, ptr, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm11SIInstrInfo21findCommutedOpIndicesERKNS_11MCInstrDescERjS4_(ptr noundef nonnull align 8 dereferenceable(840), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm18AMDGPUDAGToDAGISel13isUniformLoadEPKNS_6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 4
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN4llvm6AMDGPU12isUniformMMOEPKNS_17MachineMemOperandE(ptr noundef %i.c) #24
  br i1 %i.g, label %bb.c, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i64 %i.i, 1152921504606846976
  %i.k = and i64 %i.i, 1152921504606846975
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.n = and i64 %.0.copyload.i.i.i.i.i.i.i, -5
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = tail call i8 @_ZNK4llvm17MachineMemOperand8getAlignEv(ptr noundef nonnull align 8 dereferenceable(88) %i.o) #24
  %i.q = load i64, ptr %i.h, align 8              ; 11 uses
  %i.r = icmp eq i64 %i.q, 1152921504606846976
  %i.s = and i64 %i.q, 1152921504606846975
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit27

bb.e:                                             ; preds = %bb.d
  %.mask.i.i.i.i17 = and i64 %i.q, -1152921504606846976
  %i.v = icmp eq i64 %.mask.i.i.i.i17, 4611686018427387904 ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = lshr i64 %i.q, 60
  %.off.i.i.i.i18 = add nsw i64 %i.w, -1
  %switch.i.i.i.i19 = icmp ult i64 %.off.i.i.i.i18, 3
  br i1 %switch.i.i.i.i19, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = icmp slt i64 %i.q, -8070450532247928832
  %spec.select.i.i.i.i.i26 = or i1 %i.x, %i.v
  %i.y = lshr i64 %i.q, 44
  %i.z = and i64 %i.y, 65535
  %i.aa = lshr i64 %i.q, 28
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = select i1 %spec.select.i.i.i.i.i26, i64 %i.z, i64 %i.ab
  br label %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i23

bb.h:                                             ; preds = %bb.f
  %i.ad = lshr i64 %i.q, 4
  %.sroa.0.0.insert.ext.i.i.i.i.i20 = and i64 %i.ad, 65535
  %i.ae = icmp slt i64 %i.q, -8070450532247928832
  %i.af = lshr i64 %i.q, 44
  %i.ag = and i64 %i.af, 65535
  %i.ah = lshr i64 %i.q, 28
  %.0.in.i3.i.i.i21 = select i1 %i.ae, i64 %i.ag, i64 %i.ah
  %i.ai = mul nuw nsw i64 %.0.in.i3.i.i.i21, %.sroa.0.0.insert.ext.i.i.i.i.i20
  %i.aj = and i64 %i.ai, 4294967295
  br label %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i23

_ZNK4llvm3LLT14getSizeInBytesEv.exit.i23:         ; preds = %bb.h, %bb.g
  %.sroa.05.0.i.i.i24 = phi i64 [ %i.ac, %bb.g ], [ %i.aj, %bb.h ]
  %i.ak = add nuw nsw i64 %.sroa.05.0.i.i.i24, 7
  %i.al = lshr i64 %i.ak, 3
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 4)
  %i.an = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 false)
  %i.ao = trunc nuw nsw i64 %i.an to i8
  %i.ap = sub nsw i8 63, %i.ao
  br label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit27

_ZNK4llvm17MachineMemOperand7getSizeEv.exit27:    ; preds = %bb.d, %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i23
  %.sroa.03.0.i16 = phi i8 [ %i.ap, %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i23 ], [ 2, %bb.d ]
  %.not39 = icmp ult i8 %i.p, %.sroa.03.0.i16
  br i1 %.not39, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm17MachineMemOperand7getSizeEv.exit27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !930
  %i.as = and i16 %i.ar, 32
  %.not40 = icmp eq i16 %i.as, 0
  br i1 %.not40, label %bb.j, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.at = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -5
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = tail call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.au) #24
  %i.aw = icmp eq i32 %i.av, 4
  br i1 %i.aw, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.0.copyload.i.i.i.i.i.i.i.i28 = load i64, ptr %i.a, align 8
  %i.ax = and i64 %.0.copyload.i.i.i.i.i.i.i.i28, -5
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = tail call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.ay) #24
  %i.ba = icmp eq i32 %i.az, 6
  br i1 %i.ba, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !197
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 630
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !931, !range !493, !noundef !141
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.m, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit

bb.m:                                             ; preds = %bb.l
  %.0.copyload.i.i.i.i.i.i.i.i29 = load i64, ptr %i.a, align 8
  %i.bg = and i64 %.0.copyload.i.i.i.i.i.i.i.i29, -5
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = tail call noundef i32 @_ZNK4llvm18MachinePointerInfo12getAddrSpaceEv(ptr noundef nonnull align 8 dereferenceable(21) %i.bh) #24
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.n, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit

bb.n:                                             ; preds = %bb.m
  %.0.copyload.i.i.i.i.i.i.i.i30 = load i64, ptr %i.a, align 8
  %i.bk = and i64 %.0.copyload.i.i.i.i.i.i.i.i30, -5
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bn = load i16, ptr %i.bm, align 4
  %i.bo = and i16 %i.bn, 3840
  %.not.i31 = icmp eq i16 %i.bo, 0
  %i.bp = load i8, ptr %i.d, align 8
  %i.bq = and i8 %i.bp, 8
  %.not1.i = icmp eq i8 %i.bq, 0
  %i.br = select i1 %.not.i31, i1 %.not1.i, i1 false
  br i1 %i.br, label %bb.o, label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !482
  %i.bu = tail call noundef zeroext i1 @_ZNK4llvm16SITargetLowering31isMemOpHasNoClobberedMemOperandEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(518456) %i.bt, ptr noundef nonnull %1) #24
  br label %_ZNK4llvm17MachineMemOperand7getSizeEv.exit

_ZNK4llvm17MachineMemOperand7getSizeEv.exit:      ; preds = %_ZNK4llvm17MachineMemOperand7getSizeEv.exit27, %bb.l, %bb.m, %bb.n, %bb.o, %bb.k, %bb.j, %bb.i, %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %_ZNK4llvm17MachineMemOperand7getSizeEv.exit27 ], [ %i.bu, %bb.o ], [ true, %bb.k ], [ true, %bb.j ], [ true, %bb.i ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.c ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN4llvm6AMDGPU12isUniformMMOEPKNS_17MachineMemOperandE(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK4llvm16SITargetLowering31isMemOpHasNoClobberedMemOperandEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(518456), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18AMDGPUDAGToDAGISel18PostprocessISelDAGEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(965) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !482  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !388  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !409  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  %.not1718 = icmp eq ptr %i.f, %i.g
  br i1 %.not1718, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %i.h = phi ptr [ %i.t, %bb.f ], [ %i.d, %bb.b ]
  %.020 = phi i1 [ %.2, %bb.f ], [ false, %bb.b ] ; 2 uses
  %.sroa.016.019 = phi ptr [ %i.j, %bb.f ], [ %i.f, %bb.b ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.016.019, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !409  ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.016.019, i64 -8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.016.019, i64 16
end_hunk_0

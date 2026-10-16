Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/densecrf?download=true
inline.NumInlined: 170
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN22HashTablePermutohedralILi2ELi2EE7setSizeEm
define linkonce_odr void @_ZN22HashTablePermutohedralILi2ELi2EE7setSizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i64 32768, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 32767, ptr %i.b, align 8, !tbaa !50
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %.thread8, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = shl i64 %1, 1                            ; 2 uses
  %i.e = icmp ugt i64 %i.d, 32768
  br i1 %i.e, label %.lr.ph, label %.thread

.thread:                                          ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %1, ptr %i.f, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !tbaa !37
  br label %.loopexit9

.thread8:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 16384, ptr %i.h, align 8, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.i, align 8, !tbaa !37
  br label %.loopexit9

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.fr12 = phi i64 [ %i.k, %.lr.ph ], [ 32768, %.preheader ] ; 3 uses
  %i.j = phi i64 [ %i.m, %.lr.ph ], [ 32767, %.preheader ]
  %i.k = shl i64 %.fr12, 1                        ; 4 uses
  %i.l = shl i64 %i.j, 1
  %i.m = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.n = icmp ult i64 %i.k, %i.d
  br i1 %i.n, label %.lr.ph, label %bb.b, !llvm.loop !209

bb.b:                                             ; preds = %.lr.ph
  store i64 %i.k, ptr %i.a, align 8, !tbaa !49
  store i64 %i.m, ptr %i.b, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %1, ptr %i.o, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.p, align 8, !tbaa !37
  %i.q = icmp ugt i64 %i.k, 4611686018427387903
  %i.r = shl i64 %.fr12, 3
  %spec.select = select i1 %i.q, i64 -1, i64 %i.r
  %i.s = shl i64 %.fr12, 3
  br label %.loopexit9

.loopexit9:                                       ; preds = %.thread, %bb.b, %.thread8
  %.sink = phi i64 [ 131072, %.thread8 ], [ 131072, %.thread ], [ %spec.select, %bb.b ]
  %i.t = phi i64 [ 131072, %.thread8 ], [ 131072, %.thread ], [ %i.s, %bb.b ]
  %i.u = phi ptr [ %i.h, %.thread8 ], [ %i.f, %.thread ], [ %i.o, %bb.b ] ; 3 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sink) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 -1, i64 %i.t, i1 false), !tbaa !113
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !102
  %i.x = load i64, ptr %i.u, align 8, !tbaa !111  ; 2 uses
  %i.y = icmp ugt i64 %i.x, 2305843009213693951
  %i.z = shl i64 %i.x, 3
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #17
  store ptr %i.ab, ptr %0, align 8, !tbaa !57
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !111 ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 2305843009213693951
  %i.ae = shl i64 %i.ac, 3                        ; 2 uses
  %i.af = select i1 %i.ad, i64 -1, i64 %i.ae
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #17 ; 2 uses
  %i.ah = icmp eq i64 %i.ac, 0
  br i1 %i.ah, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ae, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !25
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !49
  %i.ak = shl i64 %i.aj, 2
  %i.al = load i64, ptr %i.u, align 8, !tbaa !111
  %i.am = shl i64 %i.al, 4
  %i.an = add i64 %i.am, %i.ak                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !114
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !115
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN22HashTablePermutohedralILi5ELi2EE7setSizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i64 32768, ptr %i.a, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 32767, ptr %i.b, align 8, !tbaa !56
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %.thread8, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = shl i64 %1, 1                            ; 2 uses
  %i.e = icmp ugt i64 %i.d, 32768
  br i1 %i.e, label %.lr.ph, label %.thread

.thread:                                          ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %1, ptr %i.f, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.g, align 8, !tbaa !43
  br label %.loopexit9

.thread8:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 16384, ptr %i.h, align 8, !tbaa !116
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.i, align 8, !tbaa !43
  br label %.loopexit9

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.fr12 = phi i64 [ %i.k, %.lr.ph ], [ 32768, %.preheader ] ; 3 uses
  %i.j = phi i64 [ %i.m, %.lr.ph ], [ 32767, %.preheader ]
  %i.k = shl i64 %.fr12, 1                        ; 4 uses
  %i.l = shl i64 %i.j, 1
  %i.m = or disjoint i64 %i.l, 1                  ; 2 uses
  %i.n = icmp ult i64 %i.k, %i.d
  br i1 %i.n, label %.lr.ph, label %bb.b, !llvm.loop !210

bb.b:                                             ; preds = %.lr.ph
  store i64 %i.k, ptr %i.a, align 8, !tbaa !55
  store i64 %i.m, ptr %i.b, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 %1, ptr %i.o, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.p, align 8, !tbaa !43
  %i.q = icmp ugt i64 %i.k, 4611686018427387903
  %i.r = shl i64 %.fr12, 3
  %spec.select = select i1 %i.q, i64 -1, i64 %i.r
  %i.s = shl i64 %.fr12, 3
  br label %.loopexit9

.loopexit9:                                       ; preds = %.thread, %bb.b, %.thread8
  %.sink = phi i64 [ 131072, %.thread8 ], [ 131072, %.thread ], [ %spec.select, %bb.b ]
  %i.t = phi i64 [ 131072, %.thread8 ], [ 131072, %.thread ], [ %i.s, %bb.b ]
  %i.u = phi ptr [ %i.h, %.thread8 ], [ %i.f, %.thread ], [ %i.o, %bb.b ] ; 3 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sink) #17 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 -1, i64 %i.t, i1 false), !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.v, ptr %i.w, align 8, !tbaa !108
  %i.x = load i64, ptr %i.u, align 8, !tbaa !116  ; 2 uses
  %i.y = icmp ugt i64 %i.x, 1152921504606846975
  %i.z = shl i64 %i.x, 4
  %i.aa = select i1 %i.y, i64 -1, i64 %i.z
  %i.ab = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #17
  store ptr %i.ab, ptr %0, align 8, !tbaa !107
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !116 ; 3 uses
  %i.ad = icmp ugt i64 %i.ac, 2305843009213693951
  %i.ae = shl i64 %i.ac, 3                        ; 2 uses
  %i.af = select i1 %i.ad, i64 -1, i64 %i.ae
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #17 ; 2 uses
  %i.ah = icmp eq i64 %i.ac, 0
  br i1 %i.ah, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit9
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ag, i8 0, i64 %i.ae, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit9
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !30
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !55
  %i.ak = shl i64 %i.aj, 2
  %i.al = load i64, ptr %i.u, align 8, !tbaa !116 ; 2 uses
  %i.am = shl i64 %i.al, 4
  %i.an = add i64 %i.am, %i.ak
  %i.ao = shl i64 %i.al, 3
  %i.ap = add i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !119
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK20PermutohedralLatticeILi2ELi2EE5splatEPfS1_mi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
.lr.ph:
  %i.a = alloca [4 x float], align 16             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !14
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %i.c ; 3 uses
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %i.h, -2.000000e+00 ; 6 uses
  %i.i = load float, ptr %1, align 4, !tbaa !14
  %i.j = load float, ptr %i.e, align 4, !tbaa !14
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.i ; 2 uses
  %i.l = fsub reassoc nsz arcp contract afn float %factor.op.fmul, %i.k
  %.reass = fmul reassoc nsz arcp contract afn float %i.h, 3.000000e+00
  %i.m = fadd reassoc nsz arcp contract afn float %i.l, %.reass ; 5 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.k, 2.000000e+00
  %i.o = fadd reassoc nsz arcp contract afn float %i.m, %i.n ; 3 uses
  %i.p = insertelement <2 x float> poison, float %i.m, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.o, i64 1 ; 3 uses
  %i.r = fmul reassoc nsz arcp contract afn <2 x float> %i.q, splat (float f0x3EAAAAAB) ; 2 uses
  %i.s = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.r)
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.s, splat (float 3.000000e+00) ; 2 uses
  %i.u = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.r)
  %i.v = fmul reassoc nsz arcp contract afn <2 x float> %i.u, splat (float 3.000000e+00) ; 2 uses
  %i.w = fsub reassoc nsz arcp contract afn <2 x float> %i.t, %i.q
  %i.x = fsub reassoc nsz arcp contract afn <2 x float> %i.q, %i.v
  %i.y = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.w, %i.x
  %i.z = select <2 x i1> %i.y, <2 x float> %i.t, <2 x float> %i.v
  %i.aa = fptosi <2 x float> %i.z to <2 x i32>    ; 2 uses
  %i.ab = fmul reassoc nsz arcp contract afn float %i.h, f0xBF2AAAAB ; 2 uses
  %i.ac = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ab)
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, 3.000000e+00 ; 2 uses
  %i.ae = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ab)
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, 3.000000e+00 ; 2 uses
  %i.ag = fsub reassoc nsz arcp contract afn float %i.ad, %factor.op.fmul
  %i.ah = fsub reassoc nsz arcp contract afn float %factor.op.fmul, %i.af
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.ag, %i.ah
  %.sroa.27249.1.in = select i1 %i.ai, float %i.ad, float %i.af
  %.sroa.27249.1 = fptosi float %.sroa.27249.1.in to i32 ; 8 uses
  %i.aj = extractelement <2 x i32> %i.aa, i64 1   ; 7 uses
  %i.ak = sitofp reassoc nsz arcp contract afn i32 %i.aj to float
  %i.al = fsub reassoc nsz arcp contract afn float %i.o, %i.ak ; 2 uses
  %i.am = extractelement <2 x i32> %i.aa, i64 0   ; 8 uses
  %i.an = sitofp reassoc nsz arcp contract afn i32 %i.am to float
  %i.ao = fsub reassoc nsz arcp contract afn float %i.m, %i.an
  %i.ap = fcmp reassoc nsz arcp contract afn olt float %i.al, %i.ao ; 4 uses
  %.sroa.0200.1 = zext i1 %i.ap to i32
  %not. = xor i1 %i.ap, true
  %.sroa.15.1 = zext i1 %not. to i32
  %i.aq = sitofp reassoc nsz arcp contract afn i32 %.sroa.27249.1 to float
  %i.ar = fsub reassoc nsz arcp contract afn float %factor.op.fmul, %i.aq
  %i.as = fcmp reassoc nsz arcp contract afn uge float %i.al, %i.ar ; 3 uses
  %i.at = select i1 %i.ap, i32 2, i32 1
  %.sroa.0200.3 = select i1 %i.as, i32 %.sroa.0200.1, i32 %i.at ; 5 uses
  %.sroa.27.4 = zext i1 %i.as to i32
  %i.au = sitofp reassoc nsz arcp contract afn i32 %i.am to float
  %i.av = fsub reassoc nsz arcp contract afn float %i.m, %i.au
  %i.aw = sitofp reassoc nsz arcp contract afn i32 %.sroa.27249.1 to float
  %i.ax = fsub reassoc nsz arcp contract afn float %factor.op.fmul, %i.aw
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.av, %i.ax ; 2 uses
  %i.az = select i1 %i.ap, i32 1, i32 2
  %i.ba = select i1 %i.as, i32 2, i32 1
  %.sroa.15.3 = select i1 %i.ay, i32 %i.az, i32 %.sroa.15.1 ; 5 uses
  %.sroa.27.2 = select i1 %i.ay, i32 %.sroa.27.4, i32 %i.ba ; 5 uses
  %i.bb = add nsw i32 %i.am, %i.aj
  %i.bc = add nsw i32 %i.bb, %.sroa.27249.1       ; 3 uses
  %i.bd = sdiv i32 %i.bc, 3                       ; 10 uses
  %i.be = icmp sgt i32 %i.bc, 2
  br i1 %i.be, label %.preheader107, label %bb.a

.preheader107:                                    ; preds = %.lr.ph
  %i.bf = sub nsw i32 3, %i.bd                    ; 3 uses
  %i.bg = add nsw i32 %i.bd, -3                   ; 3 uses
  %.not = icmp slt i32 %.sroa.0200.3, %i.bf       ; 2 uses
  %i.bh = add nsw i32 %i.aj, -3
  %spec.select303.a = select i1 %.not, i32 %i.aj, i32 %i.bh
  %spec.select304.a = select i1 %.not, i32 %i.bd, i32 %i.bg
  %storemerge105 = add nsw i32 %spec.select304.a, %.sroa.0200.3
  %.not.1 = icmp slt i32 %.sroa.15.3, %i.bf       ; 2 uses
  %i.bi = add nsw i32 %i.am, -3
  %.sroa.14.3 = select i1 %.not.1, i32 %i.am, i32 %i.bi
  %.pn106.1 = select i1 %.not.1, i32 %i.bd, i32 %i.bg
  %storemerge105.1 = add nsw i32 %.pn106.1, %.sroa.15.3
  %.not.2 = icmp slt i32 %.sroa.27.2, %i.bf       ; 2 uses
  %i.bj = add nsw i32 %.sroa.27249.1, -3
  %.sroa.27249.3 = select i1 %.not.2, i32 %.sroa.27249.1, i32 %i.bj
  %.pn106.2 = select i1 %.not.2, i32 %i.bd, i32 %i.bg
  %storemerge105.2 = add nsw i32 %.pn106.2, %.sroa.27.2
  br label %.loopexit

bb.a:                                             ; preds = %.lr.ph
  %i.bk = icmp slt i32 %i.bc, -2
  br i1 %i.bk, label %.preheader108, label %.loopexit

.preheader108:                                    ; preds = %bb.a
  %i.bl = sub nsw i32 0, %i.bd                    ; 3 uses
  %i.bm = add nsw i32 %i.bd, 3                    ; 3 uses
  %i.bn = icmp slt i32 %.sroa.0200.3, %i.bl       ; 2 uses
  %i.bo = add nsw i32 %i.aj, 3
  %spec.select305.a = select i1 %i.bn, i32 %i.bo, i32 %i.aj
  %spec.select306 = select i1 %i.bn, i32 %i.bm, i32 %i.bd
  %storemerge = add nsw i32 %spec.select306, %.sroa.0200.3
  %i.bp = icmp slt i32 %.sroa.15.3, %i.bl         ; 2 uses
  %i.bq = add nsw i32 %i.am, 3
  %.sroa.14.2 = select i1 %i.bp, i32 %i.bq, i32 %i.am
  %.pn.1 = select i1 %i.bp, i32 %i.bm, i32 %i.bd
  %storemerge.1 = add nsw i32 %.pn.1, %.sroa.15.3
  %i.br = icmp slt i32 %.sroa.27.2, %i.bl         ; 2 uses
  %i.bs = add nsw i32 %.sroa.27249.1, 3
  %.sroa.27249.2 = select i1 %i.br, i32 %i.bs, i32 %.sroa.27249.1
  %.pn.2 = select i1 %i.br, i32 %i.bm, i32 %i.bd
  %storemerge.2 = add nsw i32 %.pn.2, %.sroa.27.2
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader108, %.preheader107, %bb.a
  %.sroa.27249.0 = phi i32 [ %.sroa.27249.3, %.preheader107 ], [ %.sroa.27249.2, %.preheader108 ], [ %.sroa.27249.1, %bb.a ]
  %.sroa.14.0 = phi i32 [ %.sroa.14.3, %.preheader107 ], [ %.sroa.14.2, %.preheader108 ], [ %i.am, %bb.a ] ; 4 uses
  %.sroa.0233.3 = phi i32 [ %spec.select303.a, %.preheader107 ], [ %spec.select305.a, %.preheader108 ], [ %i.aj, %bb.a ] ; 4 uses
  %.sroa.0200.2 = phi i32 [ %storemerge105, %.preheader107 ], [ %storemerge, %.preheader108 ], [ %.sroa.0200.3, %bb.a ] ; 5 uses
  %.sroa.15.2 = phi i32 [ %storemerge105.1, %.preheader107 ], [ %storemerge.1, %.preheader108 ], [ %.sroa.15.3, %bb.a ] ; 5 uses
  %.sroa.27.1 = phi i32 [ %storemerge105.2, %.preheader107 ], [ %storemerge.2, %.preheader108 ], [ %.sroa.27.2, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.bt = sitofp reassoc nsz arcp contract afn i32 %.sroa.0233.3 to float
  %i.bu = fsub reassoc nsz arcp contract afn float %i.o, %i.bt
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, f0x3EAAAAAB ; 2 uses
  %i.bw = sub nsw i32 2, %.sroa.0200.2
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bx ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !14
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bv, %i.bz
  store float %i.ca, ptr %i.by, align 4, !tbaa !14
  %i.cb = sub nsw i32 3, %.sroa.0200.2
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cc ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !14
  %i.cf = fsub reassoc nsz arcp contract afn float %i.ce, %i.bv
  store float %i.cf, ptr %i.cd, align 4, !tbaa !14
  %i.cg = sitofp reassoc nsz arcp contract afn i32 %.sroa.14.0 to float
  %i.ch = fsub reassoc nsz arcp contract afn float %i.m, %i.cg
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, f0x3EAAAAAB ; 2 uses
  %i.cj = sub nsw i32 2, %.sroa.15.2
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ck ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !14
  %i.cn = fadd reassoc nsz arcp contract afn float %i.ci, %i.cm
  store float %i.cn, ptr %i.cl, align 4, !tbaa !14
  %i.co = sub nsw i32 3, %.sroa.15.2
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cp ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !14
  %i.cs = fsub reassoc nsz arcp contract afn float %i.cr, %i.ci
  store float %i.cs, ptr %i.cq, align 4, !tbaa !14
  %i.ct = sitofp reassoc nsz arcp contract afn i32 %.sroa.27249.0 to float
  %i.cu = fsub reassoc nsz arcp contract afn float %factor.op.fmul, %i.ct
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, f0x3EAAAAAB ; 2 uses
  %i.cw = sub nsw i32 2, %.sroa.27.1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cx ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !14
  %i.da = fadd reassoc nsz arcp contract afn float %i.cv, %i.cz
  store float %i.da, ptr %i.cy, align 4, !tbaa !14
  %i.db = sub nsw i32 3, %.sroa.27.1
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dc ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !14
  %i.df = fsub reassoc nsz arcp contract afn float %i.de, %i.cv
  store float %i.df, ptr %i.dd, align 4, !tbaa !14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !14
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, 1.000000e+00
  %i.dj = load float, ptr %i.a, align 16, !tbaa !14
  %i.dk = fadd reassoc nsz arcp contract afn float %i.di, %i.dj ; 4 uses
  store float %i.dk, ptr %i.a, align 16, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38 ; 2 uses
  %i.dn = getelementptr inbounds nuw [28 x i8], ptr %i.dm, i64 %3
  store i32 %4, ptr %i.dn, align 4, !tbaa !122
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.dq = sext i32 %4 to i64                      ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !47 ; 3 uses
  %i.dt = sext i32 %.sroa.0200.2 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !26
  %i.dw = add nsw i32 %i.dv, %.sroa.0233.3        ; 3 uses
  %i.dx = sext i32 %.sroa.15.2 to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !26
  %i.ea = add nsw i32 %i.dz, %.sroa.14.0          ; 3 uses
  %sext = shl i32 %i.dw, 16
  %i.eb = ashr exact i32 %sext, 16
  %i.ec = mul i32 %i.eb, 2531011
  %sext293.a = shl i32 %i.ea, 16
  %i.ed = ashr exact i32 %sext293.a, 16
  %i.ee = add i32 %i.ec, %i.ed
  %i.ef = mul i32 %i.ee, 2531011                  ; 2 uses
  %i.eg = load ptr, ptr %i.dp, align 8, !tbaa !36 ; 2 uses
  %i.eh = getelementptr inbounds [80 x i8], ptr %i.eg, i64 %i.dq ; 10 uses
  %i.ei = zext i32 %i.ef to i64                   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 48
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !50 ; 3 uses
  %i.el = and i64 %i.ek, %i.ei                    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !102 ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.el
  %.sroa.0.0.copyload21.i.i = load i32, ptr %i.eo, align 4, !tbaa !26 ; 2 uses
  %i.ep = icmp eq i32 %.sroa.0.0.copyload21.i.i, -1
  br i1 %i.ep, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit
  %i.eq = load ptr, ptr %i.eh, align 8, !tbaa !57
  %.sroa.8.sroa.14.0.insert.ext188 = shl i32 %i.ea, 16
  %.sroa.8.sroa.0.0.insert.ext171 = and i32 %i.dw, 65535
  %.sroa.8.sroa.0.0.insert.insert173 = or disjoint i32 %.sroa.8.sroa.14.0.insert.ext188, %.sroa.8.sroa.0.0.insert.ext171
  br label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.e, %.loopexit
  %.011.lcssa.i.i = phi i64 [ %i.el, %.loopexit ], [ %i.fn, %bb.e ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 32 ; 4 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !37 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !111
  %.not.i.i = icmp ult i64 %i.es, %i.eu
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 72 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !123
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !123
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !49
  tail call void @_ZN22HashTablePermutohedralILi2ELi2EE9growExactEm(ptr noundef nonnull align 8 dereferenceable(80) %i.eh, i64 noundef %i.ez)
  %.pre.i.i = load i64, ptr %i.er, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i
  %i.fa = phi i64 [ %.pre.i.i, %bb.b ], [ %i.es, %._crit_edge.i.i ]
  %i.fb = load ptr, ptr %i.eh, align 8, !tbaa !57
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fa
  %.sroa.8.sroa.14.0.insert.ext = shl i32 %i.ea, 16
  %.sroa.8.sroa.0.0.insert.ext = and i32 %i.dw, 65535
  %.sroa.8.sroa.0.0.insert.insert = or disjoint i32 %.sroa.8.sroa.14.0.insert.ext, %.sroa.8.sroa.0.0.insert.ext
  %.sroa.8.0.insert.ext = zext i32 %.sroa.8.sroa.0.0.insert.insert to i64
  %.sroa.8.0.insert.shift = shl nuw i64 %.sroa.8.0.insert.ext, 32
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.8.0.insert.shift, %i.ei
  store i64 %.sroa.0.0.insert.insert, ptr %i.fc, align 4
  %i.fd = load i64, ptr %i.er, align 8, !tbaa !37 ; 2 uses
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  %i.ff = load ptr, ptr %i.em, align 8, !tbaa !102
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %.011.lcssa.i.i
  store i32 %i.fe, ptr %i.fg, align 4, !tbaa !113
  %i.fh = add i64 %i.fd, 1
  store i64 %i.fh, ptr %i.er, align 8, !tbaa !37
  %.pre = load ptr, ptr %i.dp, align 8, !tbaa !36 ; 2 uses
  %.pre264.a = load ptr, ptr %i.dl, align 8, !tbaa !38
  %.pre265 = load ptr, ptr %i.do, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds [80 x i8], ptr %.pre, i64 %i.dq ; 2 uses
  %.phi.trans.insert266 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 48
  %.pre267 = load i64, ptr %.phi.trans.insert266, align 8, !tbaa !50
  %.phi.trans.insert268 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 16
  %.pre269.a = load ptr, ptr %.phi.trans.insert268, align 8, !tbaa !102
  br label %_ZN22HashTablePermutohedralILi2ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.sroa.0.0.copyload23.i.i = phi i32 [ %.sroa.0.0.copyload21.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i, %bb.e ] ; 2 uses
  %.01122.i.i = phi i64 [ %i.el, %.lr.ph.i.i ], [ %i.fn, %bb.e ]
  %i.fi = sext i32 %.sroa.0.0.copyload23.i.i to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.fi ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !106
  %.not.i.i.i = icmp eq i32 %i.fk, %i.ef
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %lhsv.i.i.i = load i32, ptr %i.fl, align 4
  %.not4.i.i.i = icmp eq i32 %lhsv.i.i.i, %.sroa.8.sroa.0.0.insert.insert173
  %.0.i.i.i = select i1 %.not.i.i.i, i1 %.not4.i.i.i, i1 false
  br i1 %.0.i.i.i, label %_ZN22HashTablePermutohedralILi2ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fm = add i64 %.01122.i.i, 1
  %i.fn = and i64 %i.fm, %i.ek                    ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.fn
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.fo, align 4, !tbaa !26 ; 2 uses
  %i.fp = icmp eq i32 %.sroa.0.0.copyload.i.i, -1
  br i1 %i.fp, label %._crit_edge.i.i, label %bb.d, !llvm.loop !0

_ZN22HashTablePermutohedralILi2ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i: ; preds = %bb.d, %bb.c
  %i.fq = phi ptr [ %.pre269.a, %bb.c ], [ %i.en, %bb.d ] ; 3 uses
  %i.fr = phi i64 [ %.pre267, %bb.c ], [ %i.ek, %bb.d ] ; 3 uses
  %i.fs = phi ptr [ %.pre265, %bb.c ], [ %i.ds, %bb.d ] ; 3 uses
  %i.ft = phi ptr [ %.pre264.a, %bb.c ], [ %i.dm, %bb.d ] ; 2 uses
  %i.fu = phi ptr [ %.pre, %bb.c ], [ %i.eg, %bb.d ] ; 2 uses
  %.113.ph.i.i = phi i32 [ %i.fe, %bb.c ], [ %.sroa.0.0.copyload23.i.i, %bb.d ] ; 2 uses
  %i.fv = icmp sgt i32 %.113.ph.i.i, -1
  tail call void @llvm.assume(i1 %i.fv)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !25
  %i.fy = zext nneg i32 %.113.ph.i.i to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fy ; 4 uses
  %i.ga = load float, ptr %2, align 4, !tbaa !14
  %i.gb = fmul reassoc nsz arcp contract afn float %i.ga, %i.dk
  %i.gc = load float, ptr %i.fz, align 4, !tbaa !14
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.gb
  store float %i.gd, ptr %i.fz, align 4, !tbaa !14
  %i.ge = load float, ptr %i.dr, align 4, !tbaa !14
  %i.gf = fmul reassoc nsz arcp contract afn float %i.ge, %i.dk
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 4 ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !14
  %i.gi = fadd reassoc nsz arcp contract afn float %i.gh, %i.gf
  store float %i.gi, ptr %i.gg, align 4, !tbaa !14
  %i.gj = getelementptr inbounds [80 x i8], ptr %i.fu, i64 %i.dq ; 9 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !25 ; 3 uses
  %i.gm = ptrtoint ptr %i.fz to i64
  %i.gn = ptrtoint ptr %i.gl to i64               ; 2 uses
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = lshr exact i64 %i.go, 3
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = getelementptr inbounds nuw [28 x i8], ptr %i.ft, i64 %3 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !26
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store float %i.dk, ptr %i.gt, align 4, !tbaa !14
  %i.gu = sext i32 %.sroa.0200.2 to i64
  %i.gv = getelementptr [4 x i8], ptr %i.fs, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 12
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !26
  %i.gy = add nsw i32 %i.gx, %.sroa.0233.3        ; 3 uses
  %i.gz = sext i32 %.sroa.15.2 to i64
  %i.ha = getelementptr [4 x i8], ptr %i.fs, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 12
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !26
  %i.hd = add nsw i32 %i.hc, %.sroa.14.0          ; 3 uses
  %sext294.a = shl i32 %i.gy, 16
  %i.he = ashr exact i32 %sext294.a, 16
  %i.hf = mul i32 %i.he, 2531011
  %sext295.a = shl i32 %i.hd, 16
  %i.hg = ashr exact i32 %sext295.a, 16
  %i.hh = add i32 %i.hf, %i.hg
  %i.hi = mul i32 %i.hh, 2531011                  ; 2 uses
  %i.hj = zext i32 %i.hi to i64                   ; 2 uses
  %i.hk = and i64 %i.fr, %i.hj                    ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.hk
  %.sroa.0.0.copyload21.i.i.1 = load i32, ptr %i.hm, align 4, !tbaa !26 ; 2 uses
  %i.hn = icmp eq i32 %.sroa.0.0.copyload21.i.i.1, -1
  br i1 %i.hn, label %._crit_edge.i.i.1, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %_ZN22HashTablePermutohedralILi2ELi2EE12lookupOffsetERKNS0_3KeyEb.exit.i
  %i.ho = load ptr, ptr %i.gj, align 8, !tbaa !57
  %.sroa.8.sroa.14.0.insert.ext192 = shl i32 %i.hd, 16
  %.sroa.8.sroa.0.0.insert.ext174 = and i32 %i.gy, 65535
  %.sroa.8.sroa.0.0.insert.insert176 = or disjoint i32 %.sroa.8.sroa.14.0.insert.ext192, %.sroa.8.sroa.0.0.insert.ext174
  br label %bb.f
end_hunk_0

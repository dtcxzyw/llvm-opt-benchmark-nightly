Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/mesh_attribute_corner_table?download=true
inline.NumInlined: 805
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.fc = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !71
  %i.fd = or i64 %i.fc, %i.fb
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

bb.aj:                                            ; preds = %bb.ah
  %i.fe = xor i64 %i.fb, -1
  %i.ff = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !71
  %i.fg = and i64 %i.ff, %i.fe
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99:         ; preds = %bb.aj, %bb.ai
  %storemerge.i30.i.i.i100 = phi i64 [ %i.fg, %bb.aj ], [ %i.fd, %bb.ai ]
  store i64 %storemerge.i30.i.i.i100, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !71
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101: ; preds = %bb.ac, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96, %bb.ag, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99
  %.sroa.0.0.copyload.i102 = load ptr, ptr %i.i, align 8
  %.sroa.2.0.copyload.i104 = load i32, ptr %i.k, align 8
  %i.fh = ptrtoint ptr %.sroa.0.0.copyload.i102 to i64
  %i.fi = sub i64 %i.fh, %i.cz
  %i.fj = shl nsw i64 %i.fi, 3
  %i.fk = zext i32 %.sroa.2.0.copyload.i104 to i64
  %i.fl = zext i32 %2 to i64
  %i.fm = sub nsw i64 %i.fk, %i.fl
  %i.fn = add i64 %i.fm, %i.fj                    ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 0
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %.024.i.i.i.i.i118 = phi i64 [ %i.ge, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.fn, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i119 = phi ptr [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i120 = phi i32 [ %.sroa.59.1.i.i.i.i.i126, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i125, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %2, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i124, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ], [ %1, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ] ; 2 uses
  %i.fp = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = zext nneg i32 %.sroa.59.022.i.i.i.i.i120 to i64
  %i.fs = shl nuw i64 1, %i.fr                    ; 2 uses
  %i.ft = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !71
  %i.fu = and i64 %i.ft, %i.fq
  %.not.i.i.i.i.i.i121 = icmp eq i64 %i.fu, 0
  br i1 %.not.i.i.i.i.i.i121, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fv = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !71
  %i.fw = or i64 %i.fv, %i.fs
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = xor i64 %i.fs, -1
  %i.fy = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !71
  %i.fz = and i64 %i.fy, %i.fx
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122:   ; preds = %bb.al, %bb.ak
  %storemerge.i.i.i.i.i123 = phi i64 [ %i.fw, %bb.ak ], [ %i.fz, %bb.al ]
  store i64 %storemerge.i.i.i.i.i123, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !71
  %i.ga = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.gb = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.gb, i64 8, i64 0
  %spec.select.i.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i
  %spec.select19.i.i.i.i.i125 = select i1 %i.gb, i32 0, i32 %i.ga
  %i.gc = add i32 %.sroa.59.022.i.i.i.i.i120, 1
  %i.gd = icmp eq i32 %.sroa.59.022.i.i.i.i.i120, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i126 = select i1 %i.gd, i32 0, i32 %i.gc ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i127 = select i1 %i.gd, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i119, i64 %.sroa.07.1.idx.i.i.i.i.i127 ; 2 uses
  %i.ge = add nsw i64 %.024.i.i.i.i.i118, -1
  %i.gf = icmp sgt i64 %.024.i.i.i.i.i118, 1
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !287

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101
  %.sroa.59.0.lcssa.i.i.i.i.i114 = phi i32 [ %i.ee, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.59.1.i.i.i.i.i126, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %.sroa.07.0.lcssa.i.i.i.i.i115 = phi ptr [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.07.1.i.i.i.i.i128, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122 ]
  %i.gg = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %.not.i129 = icmp eq ptr %i.gg, null
  br i1 %.not.i129, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.gh = load ptr, ptr %i.b, align 8, !tbaa !16  ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = sub i64 %i.gi, %i.gj                    ; 2 uses
  %i.gl = ashr exact i64 %i.gk, 3
  %i.gm = sub nsw i64 0, %i.gl
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gm
  tail call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gk) #12
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.am
  %i.go = lshr i64 %i.cv, 6
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.go
  store ptr %i.gp, ptr %i.b, align 8, !tbaa !16
  store ptr %i.cy, ptr %0, align 8
  %.sroa.5137.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5137.0..sroa_idx138, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i115, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.sroa.59.0.lcssa.i.i.i.i.i114.sink = phi i32 [ %.sroa.59.0.lcssa.i.i.i.i.i114, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.co, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit ]
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i114.sink, ptr %i.k, align 8
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE14_M_fill_assignEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !297
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 12 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.i, label %bb.c, label %.lr.ph.preheader.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b
  %i.j = shl nuw nsw i64 %1, 2
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #14 ; 5 uses
  %.pre.i.i.i.i.i.i = load i32, ptr %2, align 4, !tbaa !73 ; 2 uses
  %min.iters.check59 = icmp ult i64 %1, 8
  br i1 %min.iters.check59, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %n.vec61 = and i64 %1, 2305843009213693944      ; 3 uses
  %i.l = shl nuw nsw i64 %n.vec61, 2
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l     ; 2 uses
  %i.n = and i64 %1, 7
  %broadcast.splatinsert62 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i.i.i, i64 0
  %broadcast.splat63 = shufflevector <4 x i32> %broadcast.splatinsert62, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next67, %vector.body64 ] ; 2 uses
  %i.o = shl i64 %index65, 2
  %next.gep66 = getelementptr i8, ptr %i.k, i64 %i.o ; 2 uses
  %i.p = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %broadcast.splat63, ptr %next.gep66, align 4, !tbaa !73
  store <4 x i32> %broadcast.splat63, ptr %i.p, align 4, !tbaa !73
  %index.next67 = add nuw i64 %index65, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.q, label %middle.block68, label %vector.body64, !llvm.loop !289

middle.block68:                                   ; preds = %vector.body64
  %cmp.n69 = icmp eq i64 %1, %n.vec61
  br i1 %cmp.n69, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %middle.block68
  %.014.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.m, %middle.block68 ]
  %.01113.i.i.i.i.i.i.ph = phi i64 [ %1, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.n, %middle.block68 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.014.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %.014.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.01113.i.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i ], [ %.01113.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ]
  store i32 %.pre.i.i.i.i.i.i, ptr %.014.i.i.i.i.i.i, align 4, !tbaa !73
  %i.r = add i64 %.01113.i.i.i.i.i.i, -1          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !290

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block68
  %.lcssa = phi ptr [ %i.m, %middle.block68 ], [ %i.s, %.lr.ph.i.i.i.i.i.i ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %0, align 8, !tbaa !58
  store ptr %.lcssa, ptr %i.u, align 8, !tbaa !57
  store ptr %i.t, ptr %i.a, align 8, !tbaa !297
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.f) #12
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57   ; 8 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.x, %i.e
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp ugt i64 %1, %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.w
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f
  %.pre.i.i.i.i = load i32, ptr %2, align 4, !tbaa !73 ; 2 uses
  %i.ab = add i64 %i.x, -4
  %i.ac = sub i64 %i.ab, %i.e                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.ac, 28
  br i1 %min.iters.check32, label %.lr.ph.i.i.i.i.preheader, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph.preheader.i.i.i.i
  %n.vec34 = and i64 %i.ae, 9223372036854775800   ; 3 uses
  %i.af = shl i64 %n.vec34, 2
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.af
  %broadcast.splatinsert35 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i, i64 0
  %broadcast.splat36 = shufflevector <4 x i32> %broadcast.splatinsert35, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph33
  %index38 = phi i64 [ 0, %vector.ph33 ], [ %index.next40, %vector.body37 ] ; 2 uses
  %i.ah = shl i64 %index38, 2
  %next.gep39 = getelementptr i8, ptr %i.c, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x i32> %broadcast.splat36, ptr %next.gep39, align 4, !tbaa !73
  store <4 x i32> %broadcast.splat36, ptr %i.ai, align 4, !tbaa !73
  %index.next40 = add nuw i64 %index38, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next40, %n.vec34
  br i1 %i.aj, label %middle.block41, label %vector.body37, !llvm.loop !291

middle.block41:                                   ; preds = %vector.body37
  %cmp.n42 = icmp eq i64 %i.ae, %n.vec34
  br i1 %cmp.n42, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph.preheader.i.i.i.i, %middle.block41
  %.06.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i ], [ %i.ag, %middle.block41 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %.06.i.i.i.i, align 4, !tbaa !73
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ak, %i.w
  br i1 %.not.i.i.i.i11, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !292

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block41, %bb.f
  %3 = sub nuw i64 %1, %i.z                       ; 6 uses
  %.not12.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not12.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit
  %.pre.i.i.i.i13 = load i32, ptr %2, align 4, !tbaa !73 ; 2 uses
  %min.iters.check45 = icmp ult i64 %3, 8
  br i1 %min.iters.check45, label %.lr.ph.i.i.i.i14.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a
  %n.vec47 = and i64 %3, -8                       ; 3 uses
  %i.al = shl i64 %n.vec47, 2
  %i.am = getelementptr i8, ptr %i.w, i64 %i.al   ; 2 uses
  %i.an = and i64 %3, 7
  %broadcast.splatinsert48 = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i13, i64 0
  %broadcast.splat49 = shufflevector <4 x i32> %broadcast.splatinsert48, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph46
  %index51 = phi i64 [ 0, %vector.ph46 ], [ %index.next53, %vector.body50 ] ; 2 uses
  %i.ao = shl i64 %index51, 2
  %next.gep52 = getelementptr i8, ptr %i.w, i64 %i.ao ; 2 uses
  %i.ap = getelementptr i8, ptr %next.gep52, i64 16
  store <4 x i32> %broadcast.splat49, ptr %next.gep52, align 4, !tbaa !73
  store <4 x i32> %broadcast.splat49, ptr %i.ap, align 4, !tbaa !73
  %index.next53 = add nuw i64 %index51, 8         ; 2 uses
  %i.aq = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.aq, label %middle.block54, label %vector.body50, !llvm.loop !293

middle.block54:                                   ; preds = %vector.body50
  %cmp.n55 = icmp eq i64 %3, %n.vec47
  br i1 %cmp.n55, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i14.preheader

.lr.ph.i.i.i.i14.preheader:                       ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a, %middle.block54
  %.014.i.i.i.i.ph = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a ], [ %i.am, %middle.block54 ]
  %.01113.i.i.i.i.ph = phi i64 [ %3, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit.a ], [ %i.an, %middle.block54 ]
  br label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.lr.ph.i.i.i.i14.preheader, %.lr.ph.i.i.i.i14
  %.014.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i14 ], [ %.014.i.i.i.i.ph, %.lr.ph.i.i.i.i14.preheader ] ; 2 uses
  %.01113.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i14 ], [ %.01113.i.i.i.i.ph, %.lr.ph.i.i.i.i14.preheader ]
  store i32 %.pre.i.i.i.i13, ptr %.014.i.i.i.i, align 4, !tbaa !73
  %i.ar = add i64 %.01113.i.i.i.i, -1             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i15 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i.i.i15, label %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i14, !llvm.loop !294

_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i14, %middle.block54, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.w, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN5draco9IndexTypeIjNS2_21VertexIndex_tag_type_EEESt6vectorIS5_SaIS5_EEEES5_EvT_SB_RKT0_.exit ], [ %i.am, %middle.block54 ], [ %i.as, %.lr.ph.i.i.i.i14 ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.v, align 8, !tbaa !57
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.at = icmp eq i64 %1, 0
  br i1 %i.at, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i16

.lr.ph.preheader.i.i.i.i16:                       ; preds = %bb.g
  %.idx.i.i = shl nuw nsw i64 %1, 2               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 3 uses
  %.pre.i.i.i.i17 = load i32, ptr %2, align 4, !tbaa !73 ; 2 uses
  %i.av = add nsw i64 %.idx.i.i, -4               ; 2 uses
  %i.aw = lshr exact i64 %i.av, 2
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i18.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i.i16
  %n.vec = and i64 %i.ax, 9223372036854775800     ; 3 uses
  %i.ay = shl i64 %n.vec, 2
  %i.az = getelementptr i8, ptr %i.c, i64 %i.ay
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre.i.i.i.i17, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !73
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4, !tbaa !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.i.i.i.i18.preheader

.lr.ph.i.i.i.i18.preheader:                       ; preds = %.lr.ph.preheader.i.i.i.i16, %middle.block
  %.06.i.i.i.i19.ph = phi ptr [ %i.c, %.lr.ph.preheader.i.i.i.i16 ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i18

.lr.ph.i.i.i.i18:                                 ; preds = %.lr.ph.i.i.i.i18.preheader, %.lr.ph.i.i.i.i18
  %.06.i.i.i.i19 = phi ptr [ %i.bd, %.lr.ph.i.i.i.i18 ], [ %.06.i.i.i.i19.ph, %.lr.ph.i.i.i.i18.preheader ] ; 2 uses
  store i32 %.pre.i.i.i.i17, ptr %.06.i.i.i.i19, align 4, !tbaa !73
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i19, i64 4 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.bd, %i.au
  br i1 %.not.i.i.i.i20, label %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, label %.lr.ph.i.i.i.i18, !llvm.loop !296

_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit: ; preds = %.lr.ph.i.i.i.i18, %middle.block, %bb.g
  %.0.i.i = phi ptr [ %i.c, %bb.g ], [ %i.au, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i18 ] ; 2 uses
  %.not.i = icmp eq ptr %i.w, %.0.i.i
  br i1 %.not.i, label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit, label %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit
  store ptr %.0.i.i, ptr %i.v, align 8, !tbaa !57
  br label %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt6fill_nIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_ET_S5_T0_RKT1_.exit, %bb.d, %_ZNSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EEC2EmRKS3_RKS4_.exit, %_ZSt24__uninitialized_fill_n_aIPN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !103}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 long", !9, i64 0}
!11 = !{!"_ZTSSt18_Bit_iterator_base", !10, i64 0, !6, i64 8}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !6, i64 8}
!14 = !{!"_ZTSSt13_Bit_iterator", !11, i64 0}
!15 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !14, i64 0, !14, i64 16, !10, i64 32}
!16 = !{!15, !10, i64 32}
!17 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !15, i64 0}
!18 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIbSaIbEE", !18, i64 0}
!20 = !{!"bool", !5, i64 0}
!21 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_21VertexIndex_tag_type_EEE", !9, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIN5draco9IndexTypeIjNS0_21VertexIndex_tag_type_EEESaIS3_EE", !24, i64 0}
!26 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_21CornerIndex_tag_type_EEE", !9, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE12_Vector_implE", !27, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIN5draco9IndexTypeIjNS0_21CornerIndex_tag_type_EEESaIS3_EE", !29, i64 0}
!31 = !{!"p1 _ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !9, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIN5draco9IndexTypeIjNS0_29AttributeValueIndex_tag_type_EEESaIS3_EE", !34, i64 0}
!36 = !{!"p1 _ZTSN5draco11CornerTableE", !9, i64 0}
!37 = !{!"p1 _ZTSN5draco24MeshAttributeCornerTableE", !9, i64 0}
!38 = !{!"p1 omnipotent char", !9, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIaSaIaEE", !41, i64 0}
!43 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEaEE", !42, i64 0}
!44 = !{!"p1 int", !9, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIiSaIiEE", !47, i64 0}
!49 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_21VertexIndex_tag_type_EEEiEE", !48, i64 0}
!50 = !{!"_ZTSN5draco12ValenceCacheINS_24MeshAttributeCornerTableEEE", !37, i64 0, !43, i64 8, !49, i64 32}
!51 = !{!"_ZTSN5draco24MeshAttributeCornerTableE", !19, i64 0, !19, i64 40, !20, i64 80, !25, i64 88, !30, i64 112, !35, i64 136, !36, i64 160, !50, i64 168}
!52 = !{!51, !20, i64 80}
!53 = !{!45, !44, i64 0}
!54 = !{!45, !44, i64 16}
!55 = !{!39, !38, i64 0}
!56 = !{!39, !38, i64 16}
!57 = !{!22, !21, i64 8}
!58 = !{!22, !21, i64 0}
!59 = !{!27, !26, i64 8}
!60 = !{!27, !26, i64 0}
!61 = !{!32, !31, i64 16}
!62 = !{!32, !31, i64 0}
!63 = !{!32, !31, i64 8}
!64 = !{!"_ZTSN5draco9IndexTypeIjNS_29AttributeValueIndex_tag_type_EEE", !6, i64 0}
!65 = !{!64, !6, i64 0}
!66 = !{!27, !26, i64 16}
!67 = !{!"_ZTSN5draco9IndexTypeIjNS_21CornerIndex_tag_type_EEE", !6, i64 0}
!68 = !{!67, !6, i64 0}
!69 = !{!51, !36, i64 160}
!70 = !{!"long", !5, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"_ZTSN5draco9IndexTypeIjNS_21VertexIndex_tag_type_EEE", !6, i64 0}
!73 = !{!72, !6, i64 0}
!74 = !{!"p1 _ZTSSt5arrayIN5draco9IndexTypeIjNS0_20PointIndex_tag_type_EEELm3EE", !9, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseISt5arrayIN5draco9IndexTypeIjNS1_20PointIndex_tag_type_EEELm3EESaIS5_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 0}
!77 = !{!"_ZTSN5draco9IndexTypeIjNS_20PointIndex_tag_type_EEE", !6, i64 0}
!78 = !{!77, !6, i64 0}
!79 = !{!6, !6, i64 0}
!80 = !{!"p1 _ZTSN5draco10DataBufferE", !9, i64 0}
!81 = !{!"_ZTSN5draco20DataBufferDescriptorE", !70, i64 0, !70, i64 8}
!82 = !{!"_ZTSN5draco8DataTypeE", !5, i64 0}
!83 = !{!"_ZTSN5draco17GeometryAttribute4TypeE", !5, i64 0}
!84 = !{!"_ZTSN5draco17GeometryAttributeE", !80, i64 0, !81, i64 8, !5, i64 24, !82, i64 28, !20, i64 32, !70, i64 40, !70, i64 48, !83, i64 56, !6, i64 60}
!85 = !{!"_ZTSSt10_Head_baseILm0EPN5draco10DataBufferELb0EE", !80, i64 0}
!86 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco10DataBufferESt14default_deleteIS1_EEE", !85, i64 0}
!87 = !{!"_ZTSSt5tupleIJPN5draco10DataBufferESt14default_deleteIS1_EEE", !86, i64 0}
!88 = !{!"_ZTSSt15__uniq_ptr_implIN5draco10DataBufferESt14default_deleteIS1_EE", !87, i64 0}
!89 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco10DataBufferESt14default_deleteIS1_ELb1ELb1EE", !88, i64 0}
!90 = !{!"_ZTSSt10unique_ptrIN5draco10DataBufferESt14default_deleteIS1_EE", !89, i64 0}
!91 = !{!"_ZTSN5draco15IndexTypeVectorINS_9IndexTypeIjNS_20PointIndex_tag_type_EEENS1_IjNS_29AttributeValueIndex_tag_type_EEEEE", !35, i64 0}
!92 = !{!"p1 _ZTSN5draco22AttributeTransformDataE", !9, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EPN5draco22AttributeTransformDataELb0EE", !92, i64 0}
!94 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !93, i64 0}
!95 = !{!"_ZTSSt5tupleIJPN5draco22AttributeTransformDataESt14default_deleteIS1_EEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco22AttributeTransformDataESt14default_deleteIS1_ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt10unique_ptrIN5draco22AttributeTransformDataESt14default_deleteIS1_EE", !97, i64 0}
!99 = !{!"_ZTSN5draco14PointAttributeE", !84, i64 0, !90, i64 64, !91, i64 72, !6, i64 96, !20, i64 100, !98, i64 104}
!100 = !{!99, !20, i64 100}
!101 = !{i8 0, i8 2}
!102 = !{}
!103 = !{!"llvm.loop.mustprogress"}
end_hunk_0

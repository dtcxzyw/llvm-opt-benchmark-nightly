Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/attr_value.pb?download=true
inline.NumInlined: 1839
inline.NumDeleted: 851
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN17opencv_tensorflow19AttrValue_ListValue9MergeFromERKS0_:bb.a
  tail call void @_ZN6google8protobuf13RepeatedFieldIfE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef %i.ao)
  %i.ap = load i32, ptr %i.ak, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !59
  %i.as = load i32, ptr %i.am, align 8, !tbaa !57
  %i.at = add nsw i32 %i.as, %i.ap
  store i32 %i.at, ptr %i.am, align 8, !tbaa !57
  %i.au = sext i32 %i.an to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !59
  %i.ay = load i32, ptr %i.ak, align 8, !tbaa !57
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i64 %i.az, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.av, ptr nonnull align 4 %i.ax, i64 %i.ba, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIlE9MergeFromERKS2_.exit, %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !61 ; 2 uses
  %.not.i10 = icmp eq i32 %i.bc, 0
  br i1 %.not.i10, label %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !61 ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.bc
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i32 noundef %i.bf)
  %i.bg = load i32, ptr %i.bb, align 8, !tbaa !61
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63
  %i.bj = load i32, ptr %i.bd, align 8, !tbaa !61
  %i.bk = add nsw i32 %i.bj, %i.bg
  store i32 %i.bk, ptr %i.bd, align 8, !tbaa !61
  %i.bl = sext i32 %i.be to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !63
  %i.bp = load i32, ptr %i.bb, align 8, !tbaa !61
  %i.bq = sext i32 %i.bp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr nonnull align 1 %i.bo, i64 %i.bq, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIfE9MergeFromERKS2_.exit, %bb.f
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !65 ; 2 uses
  %.not.i11 = icmp eq i32 %i.bs, 0
  br i1 %.not.i11, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !65 ; 2 uses
  %i.bv = add nsw i32 %i.bu, %i.bs
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, i32 noundef %i.bv)
  %i.bw = load i32, ptr %i.br, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !67
  %i.bz = load i32, ptr %i.bt, align 8, !tbaa !65
  %i.ca = add nsw i32 %i.bz, %i.bw
  store i32 %i.ca, ptr %i.bt, align 8, !tbaa !65
  %i.cb = sext i32 %i.bu to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !67
  %i.cf = load i32, ptr %i.br, align 8, !tbaa !65
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cc, ptr nonnull align 4 %i.ce, i64 %i.ch, i1 false)
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIbE9MergeFromERKS2_.exit, %bb.g
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !44 ; 4 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow16TensorShapeProtoEE9MergeFromERKS4_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i32 noundef %i.cj)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !45
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !72
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !44
  %i.cv = sub nsw i32 %i.cs, %i.cu
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN17opencv_tensorflow16TensorShapeProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef %i.cp, ptr noundef nonnull %i.co, i32 noundef %i.cj, i32 noundef %i.cv), !inline_history !226
  %i.cw = load i32, ptr %i.ct, align 8, !tbaa !44
  %i.cx = add nsw i32 %i.cw, %i.cj                ; 3 uses
  store i32 %i.cx, ptr %i.ct, align 8, !tbaa !44
  %i.cy = load ptr, ptr %i.cq, align 8, !tbaa !45 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !72
  %i.da = icmp slt i32 %i.cz, %i.cx
  br i1 %i.da, label %bb.i, label %_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow16TensorShapeProtoEE9MergeFromERKS4_.exit

bb.i:                                             ; preds = %bb.h
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !72
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow16TensorShapeProtoEE9MergeFromERKS4_.exit

_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow16TensorShapeProtoEE9MergeFromERKS4_.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit, %bb.h, %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !44 ; 4 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow11TensorProtoEE9MergeFromERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow16TensorShapeProtoEE9MergeFromERKS4_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !45
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEi(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i32 noundef %i.dc)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !45
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !72
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !44
  %i.do = sub nsw i32 %i.dl, %i.dn
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase18MergeFromInnerLoopINS0_16RepeatedPtrFieldIN17opencv_tensorflow11TensorProtoEE11TypeHandlerEEEvPPvSA_ii(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef %i.di, ptr noundef nonnull %i.dh, i32 noundef %i.dc, i32 noundef %i.do), !inline_history !226
  %i.dp = load i32, ptr %i.dm, align 8, !tbaa !44
  %i.dq = add nsw i32 %i.dp, %i.dc                ; 3 uses
  store i32 %i.dq, ptr %i.dm, align 8, !tbaa !44
  %i.dr = load ptr, ptr %i.dj, align 8, !tbaa !45 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !72
  %i.dt = icmp slt i32 %i.ds, %i.dq
  br i1 %i.dt, label %bb.k, label %_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow11TensorProtoEE9MergeFromERKS4_.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !72
  br label %_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow11TensorProtoEE9MergeFromERKS4_.exit

_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow11TensorProtoEE9MergeFromERKS4_.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow16TensorShapeProtoEE9MergeFromERKS4_.exit, %bb.j, %bb.k
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !50 ; 2 uses
  %i.dw = trunc i64 %i.dv to i1
  br i1 %i.dw, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow11TensorProtoEE9MergeFromERKS4_.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = and i64 %i.dv, -4
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  tail call void @_ZN6google8protobuf8internal16InternalMetadata11DoMergeFromINS0_15UnknownFieldSetEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.ea)
  br label %_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit

_ZN6google8protobuf8internal16InternalMetadata9MergeFromINS0_15UnknownFieldSetEEEvRKS2_.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldIN17opencv_tensorflow11TensorProtoEE9MergeFromERKS4_.exit, %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit
  ret void
}

declare void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17opencv_tensorflow19AttrValue_ListValue8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(176) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17opencv_tensorflow19AttrValue_ListValue5ClearEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  tail call void @_ZN17opencv_tensorflow19AttrValue_ListValue9MergeFromERKS0_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK17opencv_tensorflow19AttrValue_ListValue13IsInitializedEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN17opencv_tensorflow19AttrValue_ListValue12InternalSwapEPS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !99
  %i.d = load i64, ptr %i.b, align 8, !tbaa !99
  store i64 %i.d, ptr %i.a, align 8, !tbaa !99
  store i64 %i.c, ptr %i.b, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !239, !noalias !240
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !105, !noalias !240
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !239, !noalias !241
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !105, !noalias !241
  store ptr %i.n, ptr %i.f, align 8, !tbaa !105
  store ptr %i.m, ptr %i.h, align 8, !tbaa !239
  store ptr %i.j, ptr %i.e, align 8, !tbaa !105
  %2 = load <2 x i32>, ptr %i.g, align 8, !tbaa !101, !noalias !240
  %i.o = load <2 x i32>, ptr %i.k, align 8, !tbaa !101, !noalias !241
  store <2 x i32> %i.o, ptr %i.g, align 8, !tbaa !101
  store <2 x i32> %2, ptr %i.k, align 8, !tbaa !101
  store ptr %i.i, ptr %i.l, align 8, !tbaa !239
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.0.copyload.i.i.i = load i128, ptr %i.p, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.0.copyload.i.i.i9 = load i128, ptr %i.r, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i9, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %.0.copyload.i.i.i10 = load i128, ptr %i.t, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i10, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.0.copyload.i.i.i11 = load i128, ptr %i.v, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  store i128 %.0.copyload.i.i.i11, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !105, !noalias !242
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !105, !noalias !243
  store ptr %i.ae, ptr %i.y, align 8, !tbaa !105
  store ptr %i.ab, ptr %i.x, align 8, !tbaa !105
  %3 = load <2 x i32>, ptr %i.z, align 8, !tbaa !101, !noalias !242
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101, !noalias !243
  store <2 x i32> %i.af, ptr %i.z, align 8, !tbaa !101
  store <2 x i32> %3, ptr %i.ac, align 8, !tbaa !101
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ak = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !46, !noalias !106
  %i.al = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !46, !noalias !106
  store <2 x ptr> %i.al, ptr %i.aa, align 8, !tbaa !46
  store <2 x ptr> %i.ak, ptr %i.ad, align 8, !tbaa !46
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !239, !noalias !244
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !239, !noalias !245
  store ptr %i.an, ptr %i.ah, align 8, !tbaa !239
  %4 = load <2 x i32>, ptr %i.ag, align 8, !tbaa !101, !noalias !244
  %i.ao = load <2 x i32>, ptr %i.ai, align 8, !tbaa !101, !noalias !245
  store <2 x i32> %i.ao, ptr %i.ag, align 8, !tbaa !101
  store <2 x i32> %4, ptr %i.ai, align 8, !tbaa !101
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden { ptr, ptr } @_ZNK17opencv_tensorflow19AttrValue_ListValue11GetMetadataEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef nonnull @_Z44descriptor_table_attr_5fvalue_2eproto_getterv, ptr noundef nonnull @_ZL42descriptor_table_attr_5fvalue_2eproto_once, ptr noundef nonnull align 8 dereferenceable(16) @_ZL40file_level_metadata_attr_5fvalue_2eproto)
  ret { ptr, ptr } %i.a
}

declare { ptr, ptr } @_ZN6google8protobuf8internal17AssignDescriptorsEPFPKNS1_15DescriptorTableEvEPSt9once_flagRKNS0_8MetadataE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN17opencv_tensorflow9AttrValue9_Internal5shapeEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(224) ptr @_ZN17opencv_tensorflow9AttrValue9_Internal6tensorEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(176) ptr @_ZN17opencv_tensorflow9AttrValue9_Internal4listEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(152) ptr @_ZN17opencv_tensorflow9AttrValue9_Internal4funcEPKS0_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17opencv_tensorflow9AttrValue19set_allocated_shapeEPNS_16TensorShapeProtoE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  %i.d = and i64 %i.b, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !68

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  tail call void @_ZN17opencv_tensorflow9AttrValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !50   ; 4 uses
  %i.i = and i64 %i.h, 2
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN6google8protobuf5Arena14InternalHelperINS0_11MessageLiteEE14GetOwningArenaEPKS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %i.h to i1
  br i1 %i.j, label %bb.e, label %bb.f, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.k = and i64 %i.h, -4
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  br label %_ZN6google8protobuf5Arena14InternalHelperINS0_11MessageLiteEE14GetOwningArenaEPKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.n = inttoptr i64 %i.h to ptr
  br label %_ZN6google8protobuf5Arena14InternalHelperINS0_11MessageLiteEE14GetOwningArenaEPKS3_.exit

_ZN6google8protobuf5Arena14InternalHelperINS0_11MessageLiteEE14GetOwningArenaEPKS3_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.o = phi ptr [ null, %bb.c ], [ %i.m, %bb.e ], [ %i.n, %bb.f ] ; 2 uses
  %.not12 = icmp eq ptr %.0.i.i, %i.o
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf5Arena14InternalHelperINS0_11MessageLiteEE14GetOwningArenaEPKS3_.exit
  %i.p = tail call noundef ptr @_ZN6google8protobuf8internal23GetOwnedMessageInternalEPNS0_5ArenaEPNS0_11MessageLiteES3_(ptr noundef %.0.i.i, ptr noundef nonnull %1, ptr noundef %i.o)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN6google8protobuf5Arena14InternalHelperINS0_11MessageLiteEE14GetOwningArenaEPKS3_.exit
  %.0 = phi ptr [ %i.p, %bb.g ], [ %1, %_ZN6google8protobuf5Arena14InternalHelperINS0_11MessageLiteEE14GetOwningArenaEPKS3_.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 7, ptr %i.q, align 4, !tbaa !101
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0, ptr %i.r, align 8, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN17opencv_tensorflow9AttrValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !101
  switch i32 %i.b, label %bb.ai [
    i32 2, label %bb.b
    i32 9, label %bb.ag
    i32 10, label %bb.p
    i32 1, label %bb.l
    i32 8, label %bb.h
    i32 7, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !50   ; 2 uses
  %i.f = trunc i64 %i.e to i1
  %i.g = and i64 %i.e, -4
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  br i1 %i.f, label %bb.c, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit, !prof !68

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.c ], [ %i.h, %bb.b ]
  tail call void @_ZN6google8protobuf8internal14ArenaStringPtr7DestroyENS2_12EmptyDefaultEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %.0.i.i)
  br label %bb.ai

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !50   ; 2 uses
  %i.l = trunc i64 %i.k to i1
  %i.m = and i64 %i.k, -4
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  br i1 %i.l, label %bb.e, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit5, !prof !68

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit5

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit5: ; preds = %bb.d, %bb.e
  %.0.i.i4 = phi ptr [ %i.o, %bb.e ], [ %i.n, %bb.d ]
  %i.p = icmp eq ptr %.0.i.i4, null
  br i1 %i.p, label %bb.f, label %bb.ai

bb.f:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81   ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.ai, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN17opencv_tensorflow16TensorShapeProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.r) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 48) #29
  br label %bb.ai

bb.h:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !50   ; 2 uses
  %i.v = trunc i64 %i.u to i1
  %i.w = and i64 %i.u, -4
  %i.x = inttoptr i64 %i.w to ptr                 ; 2 uses
  br i1 %i.v, label %bb.i, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit7, !prof !68

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !70
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit7

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit7: ; preds = %bb.h, %bb.i
  %.0.i.i6 = phi ptr [ %i.y, %bb.i ], [ %i.x, %bb.h ]
  %i.z = icmp eq ptr %.0.i.i6, null
  br i1 %i.z, label %bb.j, label %bb.ai

bb.j:                                             ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.ai, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN17opencv_tensorflow11TensorProtoD1Ev(ptr noundef nonnull align 8 dead_on_return(220) dereferenceable(224) %i.ab) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 224) #29
  br label %bb.ai

bb.l:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !50 ; 2 uses
  %i.af = trunc i64 %i.ae to i1
  %i.ag = and i64 %i.ae, -4
end_hunk_0

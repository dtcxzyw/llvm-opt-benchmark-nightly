inline.NumInlined: 1191
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE:bb.a
  br i1 %.not, label %_ZN8rawspeed10ByteStream6getU16Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.33, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder8parseDRIENS_10ByteStreamE) #15
  unreachable

_ZN8rawspeed10ByteStream6getU16Ev.exit:           ; preds = %bb.a
  %i.h = zext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i16, ptr %i.i, align 4, !tbaa !93
  %i.k = icmp eq i16 %i.j, -8531
  %i.l = load ptr, ptr %1, align 8, !tbaa !5980
  %i.m = add nuw nsw i32 %i.d, 2
  %i.n = icmp samesign ule i32 %i.m, %i.b
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.h
  %.0.copyload.i.i.i.i.i.i = load i16, ptr %i.o, align 1 ; 2 uses
  %i.p = tail call i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i.i)
  %spec.select.i.i.i.i.i.i = select i1 %i.k, i16 %.0.copyload.i.i.i.i.i.i, i16 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i16 %spec.select.i.i.i.i.i.i, ptr %i.q, align 4, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i32 %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5981 ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !76   ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 2                   ; 2 uses
  %i.j = icmp ult i64 %i.i, 17
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 17, %i.i
  call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, i64 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !76
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.h, 68
  br i1 %.not, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 68 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.l, ptr %i.c, align 8, !tbaa !5981
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.m = phi ptr [ %.pre, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 31 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %scevgep = getelementptr nuw i8, ptr %i.m, i64 4
  %scevgep73 = getelementptr i8, ptr %i.m, i64 68
  %scevgep74 = getelementptr i8, ptr %1, i64 16
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %1, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i, label %vector.body

vector.body:                                      ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = getelementptr i8, ptr %1, i64 8
  %wide.load = load <8 x i8>, ptr %1, align 1, !tbaa !62, !alias.scope !6124
  %wide.load75 = load <8 x i8>, ptr %i.p, align 1, !tbaa !62, !alias.scope !6124
  %i.q = zext <8 x i8> %wide.load to <8 x i32>
  %i.r = zext <8 x i8> %wide.load75 to <8 x i32>
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  store <8 x i32> %i.q, ptr %i.o, align 4, !tbaa !63, !alias.scope !6127, !noalias !6124
  store <8 x i32> %i.r, ptr %i.s, align 4, !tbaa !63, !alias.scope !6127, !noalias !6124
  br label %_ZSt4copyIPKhPjET0_T_S4_S3_.exit.preheader

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit
  %.0811.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.t = load i8, ptr %1, align 1, !tbaa !62
  %i.u = zext i8 %i.t to i32
  store i32 %i.u, ptr %.0811.i.i.i.i.i, align 4, !tbaa !63
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.0811.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load i8, ptr %i.v, align 1, !tbaa !62
  %i.x = zext i8 %i.w to i32
  store i32 %i.x, ptr %.0811.i.i.i.i.i.1, align 4, !tbaa !63
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.0811.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.z = load i8, ptr %i.y, align 1, !tbaa !62
  %i.aa = zext i8 %i.z to i32
  store i32 %i.aa, ptr %.0811.i.i.i.i.i.2, align 4, !tbaa !63
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.0811.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !62
  %i.ad = zext i8 %i.ac to i32
  store i32 %i.ad, ptr %.0811.i.i.i.i.i.3, align 4, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.0811.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !62
  %i.ag = zext i8 %i.af to i32
  store i32 %i.ag, ptr %.0811.i.i.i.i.i.4, align 4, !tbaa !63
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.0811.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !62
  %i.aj = zext i8 %i.ai to i32
  store i32 %i.aj, ptr %.0811.i.i.i.i.i.5, align 4, !tbaa !63
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.0811.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !62
  %i.am = zext i8 %i.al to i32
  store i32 %i.am, ptr %.0811.i.i.i.i.i.6, align 4, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.0811.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !62
  %i.ap = zext i8 %i.ao to i32
  store i32 %i.ap, ptr %.0811.i.i.i.i.i.7, align 4, !tbaa !63
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0811.i.i.i.i.i.8 = getelementptr inbounds nuw i8, ptr %i.m, i64 36
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !62
  %i.as = zext i8 %i.ar to i32
  store i32 %i.as, ptr %.0811.i.i.i.i.i.8, align 4, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.0811.i.i.i.i.i.9 = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.au = load i8, ptr %i.at, align 1, !tbaa !62
  %i.av = zext i8 %i.au to i32
  store i32 %i.av, ptr %.0811.i.i.i.i.i.9, align 4, !tbaa !63
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.0811.i.i.i.i.i.10 = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = zext i8 %i.ax to i32
  store i32 %i.ay, ptr %.0811.i.i.i.i.i.10, align 4, !tbaa !63
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 11
  %.0811.i.i.i.i.i.11 = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !62
  %i.bb = zext i8 %i.ba to i32
  store i32 %i.bb, ptr %.0811.i.i.i.i.i.11, align 4, !tbaa !63
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.0811.i.i.i.i.i.12 = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !62
  %i.be = zext i8 %i.bd to i32
  store i32 %i.be, ptr %.0811.i.i.i.i.i.12, align 4, !tbaa !63
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 13
  %.0811.i.i.i.i.i.13 = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !62
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %.0811.i.i.i.i.i.13, align 4, !tbaa !63
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.0811.i.i.i.i.i.14 = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !62
  %i.bk = zext i8 %i.bj to i32
  store i32 %i.bk, ptr %.0811.i.i.i.i.i.14, align 4, !tbaa !63
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 15
  %.0811.i.i.i.i.i.15 = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !62
  %i.bn = zext i8 %i.bm to i32
  store i32 %i.bn, ptr %.0811.i.i.i.i.i.15, align 4, !tbaa !63
  br label %_ZSt4copyIPKhPjET0_T_S4_S3_.exit.preheader

_ZSt4copyIPKhPjET0_T_S4_S3_.exit.preheader:       ; preds = %.lr.ph.i.i.i.i.i, %vector.body
  %.promoted = load ptr, ptr %i.c, align 8, !tbaa !6129 ; 3 uses
  %.promoted76 = ptrtoaddr ptr %.promoted to i64
  %i.bo = icmp eq ptr %i.m, %.promoted
  br i1 %i.bo, label %_ZSt4copyIPKhPjET0_T_S4_S3_.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4copyIPKhPjET0_T_S4_S3_.exit.preheader, %_ZSt4copyIPKhPjET0_T_S4_S3_.exit
  %indvar = phi i64 [ %indvar.next, %_ZSt4copyIPKhPjET0_T_S4_S3_.exit ], [ 0, %_ZSt4copyIPKhPjET0_T_S4_S3_.exit.preheader ] ; 2 uses
  %i.bp = phi ptr [ %i.bq, %_ZSt4copyIPKhPjET0_T_S4_S3_.exit ], [ %.promoted, %_ZSt4copyIPKhPjET0_T_S4_S3_.exit.preheader ] ; 4 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 4 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !63
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZSt4copyIPKhPjET0_T_S4_S3_.exit, label %iter.check

_ZSt4copyIPKhPjET0_T_S4_S3_.exit:                 ; preds = %.lr.ph
  store ptr %i.bq, ptr %i.c, align 8, !tbaa !5981
  %i.bt = icmp eq ptr %i.m, %i.bq
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bt, label %_ZSt4copyIPKhPjET0_T_S4_S3_.exit._crit_edge, label %.lr.ph, !llvm.loop !6130

_ZSt4copyIPKhPjET0_T_S4_S3_.exit._crit_edge:      ; preds = %_ZSt4copyIPKhPjET0_T_S4_S3_.exit, %_ZSt4copyIPKhPjET0_T_S4_S3_.exit.preheader
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.39, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE) #15
  unreachable

iter.check:                                       ; preds = %.lr.ph
  %i.bu = icmp ne ptr %i.m, %i.bp
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add i64 %.promoted76, -4
  %3 = sub i64 %i.bv, %i.n
  %4 = lshr i64 %3, 2
  %5 = add nuw nsw i64 %4, 1
  %6 = mul i64 %indvar, 4611686018427387903
  %i.bw = add i64 %6, %5                          ; 7 uses
  %min.iters.check = icmp ult i64 %i.bw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check78 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph79

vector.ph79:                                      ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, -32                     ; 4 uses
  %i.by = shl i64 %n.vec, 2
  %i.bz = getelementptr i8, ptr %i.m, i64 %i.by
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph79
  %index = phi i64 [ 0, %vector.ph79 ], [ %index.next, %vector.body80 ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph79 ], [ %i.ce, %vector.body80 ]
  %vec.phi81 = phi <8 x i32> [ zeroinitializer, %vector.ph79 ], [ %i.cf, %vector.body80 ]
  %vec.phi82 = phi <8 x i32> [ zeroinitializer, %vector.ph79 ], [ %i.cg, %vector.body80 ]
  %vec.phi83 = phi <8 x i32> [ zeroinitializer, %vector.ph79 ], [ %i.ch, %vector.body80 ]
  %i.ca = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.ca ; 4 uses
  %i.cb = getelementptr i8, ptr %next.gep, i64 32
  %i.cc = getelementptr i8, ptr %next.gep, i64 64
  %i.cd = getelementptr i8, ptr %next.gep, i64 96
  %wide.load84 = load <8 x i32>, ptr %next.gep, align 4, !tbaa !63
  %wide.load85 = load <8 x i32>, ptr %i.cb, align 4, !tbaa !63
  %wide.load86 = load <8 x i32>, ptr %i.cc, align 4, !tbaa !63
  %wide.load87 = load <8 x i32>, ptr %i.cd, align 4, !tbaa !63
  %i.ce = add <8 x i32> %wide.load84, %vec.phi    ; 2 uses
  %i.cf = add <8 x i32> %wide.load85, %vec.phi81  ; 2 uses
  %i.cg = add <8 x i32> %wide.load86, %vec.phi82  ; 2 uses
  %i.ch = add <8 x i32> %wide.load87, %vec.phi83  ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block88, label %vector.body80, !llvm.loop !6131

middle.block88:                                   ; preds = %vector.body80
  %bin.rdx = add <8 x i32> %i.cf, %i.ce
  %bin.rdx89 = add <8 x i32> %i.cg, %bin.rdx
  %bin.rdx90 = add <8 x i32> %i.ch, %bin.rdx89
  %i.cj = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx90) ; 3 uses
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block88
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !6132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.cj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec91 = and i64 %i.bw, -8                    ; 3 uses
  %i.ck = shl i64 %n.vec91, 2
  %i.cl = getelementptr i8, ptr %i.m, i64 %i.ck
  %i.cm = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index92 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi93 = phi <8 x i32> [ %i.cm, %vec.epilog.ph ], [ %i.co, %vec.epilog.vector.body ]
  %i.cn = shl i64 %index92, 2
  %next.gep94 = getelementptr i8, ptr %i.m, i64 %i.cn
  %wide.load95 = load <8 x i32>, ptr %next.gep94, align 4, !tbaa !63
  %i.co = add <8 x i32> %wide.load95, %vec.phi93  ; 2 uses
  %index.next96 = add nuw i64 %index92, 8         ; 2 uses
  %i.cp = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.cp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6133

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cq = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.co) ; 2 uses
  %cmp.n97 = icmp eq i64 %i.bw, %n.vec91
  br i1 %cmp.n97, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.ph = phi i32 [ 0, %iter.check ], [ %i.cj, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  %.sroa.02.05.i.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.cs, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.02.05.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cr = load i32, ptr %.sroa.02.05.i.i, align 4, !tbaa !63
  %i.cs = add i32 %i.cr, %.06.i.i                 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bp
  br i1 %i.cu, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %.lr.ph.i.i, !llvm.loop !6134

_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block88
  %.lcssa70 = phi i32 [ %i.cq, %vec.epilog.middle.block ], [ %i.cj, %middle.block88 ], [ %i.cs, %.lr.ph.i.i ] ; 3 uses
  %i.cv = icmp ne i32 %.lcssa70, 0
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp ugt i32 %.lcssa70, 162
  br i1 %i.cw, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit
  %i.cx = ptrtoint ptr %i.bp to i64
  %i.cy = ptrtoint ptr %i.m to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp ugt i64 %i.da, 1
  br i1 %i.db, label %.lr.ph35, label %._crit_edge

bb.e:                                             ; preds = %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.40, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE) #15
  unreachable

._crit_edge:                                      ; preds = %bb.i, %.preheader
  ret i32 %.lcssa70

.lr.ph35:                                         ; preds = %.preheader, %bb.i
  %.034 = phi i64 [ %i.dk, %bb.i ], [ 1, %.preheader ] ; 5 uses
  %.01933 = phi i32 [ %i.dj, %bb.i ], [ 2, %.preheader ] ; 3 uses
  %i.dc = trunc i64 %.034 to i32
  %i.dd = shl nuw i32 1, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.034
  %i.df = load i32, ptr %i.de, align 4, !tbaa !63 ; 5 uses
  %i.dg = icmp ugt i32 %i.df, %i.dd
  br i1 %i.dg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph35
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.41, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE, i32 noundef %i.df, i64 noundef %.034) #15
  unreachable

bb.g:                                             ; preds = %.lr.ph35
  %i.dh = icmp ugt i32 %i.df, %.01933
  br i1 %i.dh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.42, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE, i32 noundef %.01933, i32 noundef %i.df, i64 noundef %.034) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.di = sub nuw i32 %.01933, %i.df
  %i.dj = shl i32 %i.di, 1
  %i.dk = add nuw i64 %.034, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dk, %i.da
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph35, !llvm.loop !6135
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13setCodeValuesENS_10Array1DRefIKhEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i32 %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp samesign ult i32 %2, 163
  tail call void @llvm.assume(i1 %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !6129 ; 12 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !6129 ; 4 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = icmp eq ptr %i.c, %i.f                   ; 2 uses
  br i1 %i.h, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.i = add i64 %i.g, -4
  %i.j = sub i64 %i.i, %i.d                       ; 3 uses
  %i.k = lshr i64 %i.j, 2
  %i.l = add nuw nsw i64 %i.k, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.j, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i64 %i.j, 124
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %i.l, 24
  %n.vec = and i64 %i.l, 9223372036854775776      ; 4 uses
  %i.n = shl i64 %n.vec, 2
  %i.o = getelementptr i8, ptr %i.c, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi38 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi39 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi40 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.p = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.p ; 4 uses
  %i.q = getelementptr i8, ptr %next.gep, i64 32
  %i.r = getelementptr i8, ptr %next.gep, i64 64
  %i.s = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !63
  %wide.load41 = load <8 x i32>, ptr %i.q, align 4, !tbaa !63
  %wide.load42 = load <8 x i32>, ptr %i.r, align 4, !tbaa !63
  %wide.load43 = load <8 x i32>, ptr %i.s, align 4, !tbaa !63
  %i.t = add <8 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.u = add <8 x i32> %wide.load41, %vec.phi38   ; 2 uses
  %i.v = add <8 x i32> %wide.load42, %vec.phi39   ; 2 uses
  %i.w = add <8 x i32> %wide.load43, %vec.phi40   ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !6136

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.u, %i.t
  %bin.rdx44 = add <8 x i32> %i.v, %bin.rdx
  %bin.rdx45 = add <8 x i32> %i.w, %bin.rdx44
  %i.y = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx45) ; 3 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !6132

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.y, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.l, 9223372036854775800    ; 3 uses
  %i.z = shl i64 %n.vec46, 2
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi48 = phi <8 x i32> [ %i.ab, %vec.epilog.ph ], [ %i.ad, %vec.epilog.vector.body ]
  %i.ac = shl i64 %index47, 2
  %next.gep49 = getelementptr i8, ptr %i.c, i64 %i.ac
  %wide.load50 = load <8 x i32>, ptr %next.gep49, align 4, !tbaa !63
  %i.ad = add <8 x i32> %wide.load50, %vec.phi48  ; 2 uses
  %index.next51 = add nuw i64 %index47, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6137

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.af = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ad) ; 2 uses
  %cmp.n52 = icmp eq i64 %i.l, %n.vec46
  br i1 %cmp.n52, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.ph = phi i32 [ 0, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.sroa.02.05.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.ah, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.02.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.02.05.i.i, align 4, !tbaa !63
  %i.ah = add i32 %i.ag, %.06.i.i                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %.lr.ph.i.i, !llvm.loop !6138

_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.af, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.ah, %.lr.ph.i.i ]
  %i.ak = icmp eq i32 %2, %.0.lcssa.i.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %0, align 8, !tbaa !80    ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
end_hunk_0

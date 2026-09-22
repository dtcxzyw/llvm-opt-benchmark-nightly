Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/mesh_edgebreaker_encoder_impl?download=true
inline.NumInlined: 5079
inline.NumDeleted: 1534
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5draco31MeshEdgebreakerTraversalEncoder22EncodeTraversalSymbolsEv:bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !276  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !146  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !280
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !281
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 2
  %i.r = and i64 %i.q, 4294967295
  %i.s = tail call noundef zeroext i1 @_ZN5draco13EncoderBuffer16StartBitEncodingElb(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i64 noundef %i.r, i1 noundef zeroext true) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !293
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !294
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 2
  %i.ab = trunc i64 %i.aa to i32
  %.04 = add i32 %i.ab, -1                        ; 2 uses
  %i.ac = icmp sgt i32 %.04, -1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !263
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ah = zext nneg i32 %.04 to i64
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit, %.lr.ph, %bb.a
  tail call void @_ZN5draco13EncoderBuffer14EndBitEncodingEv(ptr noundef nonnull align 8 dereferenceable(41) %i.a)
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit ] ; 3 uses
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !294
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !299 ; 2 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZN5dracoL40edge_breaker_topology_bit_pattern_lengthE, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !211
  %i.ao = load i64, ptr %i.ad, align 8, !tbaa !263
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %bb.b, label %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit

bb.b:                                             ; preds = %.lr.ph.split
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !307 ; 3 uses
  %i.ar = shl nuw i64 1, %i.al
  %i.as = and i64 %i.ar, 171
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %.pre.i.i = load i64, ptr %i.at, align 8, !tbaa !309
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.au = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.bo, %bb.c ] ; 2 uses
  %.05.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.bp, %bb.c ] ; 2 uses
  %i.av = lshr i32 %i.ak, %.05.i.i
  %i.aw = and i32 %i.av, 1
  %i.ax = lshr i64 %i.au, 3                       ; 2 uses
  %i.ay = trunc i64 %i.au to i32
  %i.az = and i32 %i.ay, 7                        ; 2 uses
  %i.ba = shl nuw nsw i32 1, %i.az
  %i.bb = load ptr, ptr %i.aq, align 8, !tbaa !310
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ax ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !155
  %i.be = trunc nuw i32 %i.ba to i8
  %i.bf = xor i8 %i.be, -1
  %i.bg = and i8 %i.bd, %i.bf
  store i8 %i.bg, ptr %i.bc, align 1, !tbaa !155
  %i.bh = shl nuw nsw i32 %i.aw, %i.az
  %i.bi = load ptr, ptr %i.aq, align 8, !tbaa !310
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ax ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !155
  %i.bl = trunc nuw i32 %i.bh to i8
  %i.bm = or i8 %i.bk, %i.bl
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !155
  %i.bn = load i64, ptr %i.at, align 8, !tbaa !309
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  store i64 %i.bo, ptr %i.at, align 8, !tbaa !309
  %i.bp = add nuw nsw i32 %.05.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bp, %i.an
  br i1 %exitcond.not.i.i, label %_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit, label %bb.c, !llvm.loop !1048

_ZN5draco13EncoderBuffer28EncodeLeastSignificantBits32Eij.exit: ; preds = %bb.c, %.lr.ph.split, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bq = icmp sgt i64 %indvars.iv, 0
  br i1 %i.bq, label %.lr.ph.split, label %._crit_edge, !llvm.loop !1049
}

declare void @_ZN5draco14RAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !372
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !295  ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.i, %i.k                       ; 18 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !373

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !155
  store i8 %i.s, ptr %i.g, align 1, !tbaa !155
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !295
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !295
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !373

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !155
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !155
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = icmp sgt i64 %i.c, 0
  br i1 %i.ac, label %iter.check166, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check166:                                    ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %min.iters.check149 = icmp ult i64 %i.c, 4
  %i.ad = sub i64 %i.b, %i.k
  %diff.check148 = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check149, %diff.check148
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %iter.check166
  %min.iters.check151 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check151, label %vec.epilog.ph170, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %i.ae = and i64 %i.c, 28
  %n.vec153 = and i64 %i.c, 9223372036854775776   ; 5 uses
  %i.af = and i64 %i.c, 31
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec153
  %i.ah = getelementptr i8, ptr %2, i64 %n.vec153
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph152
  %index155 = phi i64 [ 0, %vector.ph152 ], [ %index.next160, %vector.body154 ] ; 3 uses
  %next.gep156 = getelementptr i8, ptr %1, i64 %index155 ; 2 uses
  %next.gep157 = getelementptr i8, ptr %2, i64 %index155 ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep157, i64 16
  %wide.load158 = load <16 x i8>, ptr %next.gep157, align 1, !tbaa !155
  %wide.load159 = load <16 x i8>, ptr %i.ai, align 1, !tbaa !155
  %i.aj = getelementptr i8, ptr %next.gep156, i64 16
  store <16 x i8> %wide.load158, ptr %next.gep156, align 1, !tbaa !155
  store <16 x i8> %wide.load159, ptr %i.aj, align 1, !tbaa !155
  %index.next160 = add nuw i64 %index155, 32      ; 2 uses
  %i.ak = icmp eq i64 %index.next160, %n.vec153
  br i1 %i.ak, label %middle.block161, label %vector.body154, !llvm.loop !1050

middle.block161:                                  ; preds = %vector.body154
  %cmp.n162 = icmp eq i64 %i.c, %n.vec153
  br i1 %cmp.n162, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block161
  %min.epilog.iters.check169 = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check169, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph170, !prof !1059

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check168
  %vec.epilog.resume.val163 = phi i64 [ %n.vec153, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check150 ]
  %n.vec171 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.al = and i64 %i.c, 3
  %i.am = getelementptr i8, ptr %1, i64 %n.vec171
  %i.an = getelementptr i8, ptr %2, i64 %n.vec171
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph170
  %index173 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph170 ], [ %index.next177, %vec.epilog.vector.body172 ] ; 3 uses
  %next.gep174 = getelementptr i8, ptr %1, i64 %index173
  %next.gep175 = getelementptr i8, ptr %2, i64 %index173
  %wide.load176 = load <4 x i8>, ptr %next.gep175, align 1, !tbaa !155
  store <4 x i8> %wide.load176, ptr %next.gep174, align 1, !tbaa !155
  %index.next177 = add nuw i64 %index173, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next177, %n.vec171
  br i1 %i.ao, label %vec.epilog.middle.block178, label %vec.epilog.vector.body172, !llvm.loop !1051

vec.epilog.middle.block178:                       ; preds = %vec.epilog.vector.body172
  %cmp.n179 = icmp eq i64 %i.c, %n.vec171
  br i1 %cmp.n179, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block178
  %.012.i.i.i.i.i.ph = phi i64 [ %i.c, %iter.check166 ], [ %i.af, %vec.epilog.iter.check168 ], [ %i.al, %vec.epilog.middle.block178 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %iter.check166 ], [ %i.ag, %vec.epilog.iter.check168 ], [ %i.am, %vec.epilog.middle.block178 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %iter.check166 ], [ %i.ah, %vec.epilog.iter.check168 ], [ %i.an, %vec.epilog.middle.block178 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ap = load i8, ptr %.0910.i.i.i.i.i, align 1, !tbaa !155
  store i8 %i.ap, ptr %.0811.i.i.i.i.i, align 1, !tbaa !155
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 1
  %i.as = add nsw i64 %.012.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !1052

_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.au = icmp eq i64 %i.l, 1
  %i.av = getelementptr inbounds i8, ptr %2, i64 %i.l ; 6 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.a, %i.aw                     ; 11 uses
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %iter.check, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit

iter.check:                                       ; preds = %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.ax, 4
  %i.az = sub i64 %i.b, %i.k
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond183 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond183, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check96 = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ba = and i64 %i.ax, 28
  %n.vec = and i64 %i.ax, 9223372036854775776     ; 5 uses
  %i.bb = and i64 %i.ax, 31
  %i.bc = getelementptr i8, ptr %i.g, i64 %n.vec
  %i.bd = getelementptr i8, ptr %i.av, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.g, i64 %index ; 2 uses
  %next.gep97 = getelementptr i8, ptr %i.av, i64 %index ; 2 uses
  %i.be = getelementptr i8, ptr %next.gep97, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep97, align 1, !tbaa !155
  %wide.load98 = load <16 x i8>, ptr %i.be, align 1, !tbaa !155
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !155
  store <16 x i8> %wide.load98, ptr %i.bf, align 1, !tbaa !155
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1053

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ba, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !1059

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec101 = and i64 %i.ax, 9223372036854775804  ; 4 uses
  %i.bh = and i64 %i.ax, 3
  %i.bi = getelementptr i8, ptr %i.g, i64 %n.vec101
  %i.bj = getelementptr i8, ptr %i.av, i64 %n.vec101
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next106, %vec.epilog.vector.body ] ; 3 uses
  %next.gep103 = getelementptr i8, ptr %i.g, i64 %index102
  %next.gep104 = getelementptr i8, ptr %i.av, i64 %index102
  %wide.load105 = load <4 x i8>, ptr %next.gep104, align 1, !tbaa !155
  store <4 x i8> %wide.load105, ptr %next.gep103, align 1, !tbaa !155
  %index.next106 = add nuw i64 %index102, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next106, %n.vec101
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1054

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n107 = icmp eq i64 %i.ax, %n.vec101
  br i1 %cmp.n107, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ax, %iter.check ], [ %i.bb, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.g, %iter.check ], [ %i.bc, %vec.epilog.iter.check ], [ %i.bi, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0811.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.0910.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.bl = load i8, ptr %.0910.i.i.i.i.i.i.i.i, align 1, !tbaa !155
  store i8 %i.bl, ptr %.0811.i.i.i.i.i.i.i.i, align 1, !tbaa !155
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i, i64 1
  %i.bo = add nsw i64 %.012.i.i.i.i.i.i.i.i, -1
  %i.bp = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i, 1
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, !llvm.loop !1055

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !295
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bq = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit.loopexit ], [ %i.g, %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.br = sub nuw i64 %i.c, %i.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br ; 3 uses
  store ptr %i.bs, ptr %i.f, align 8, !tbaa !295
  %i.bt = icmp sgt i64 %i.l, 1
  br i1 %i.bt, label %bb.k, label %bb.l, !prof !373

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit
  br i1 %i.au, label %bb.m, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %1, align 1, !tbaa !155
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !155
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55: ; preds = %bb.k, %bb.l, %bb.m
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !295
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.l
  store ptr %i.bw, ptr %i.f, align 8, !tbaa !295
  %i.bx = icmp sgt i64 %i.l, 0
  br i1 %i.bx, label %iter.check130, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check130:                                    ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  %min.iters.check113 = icmp ult i64 %i.l, 4
  %i.by = sub i64 %i.b, %i.k
  %diff.check112 = icmp ugt i64 %i.by, -32
  %or.cond184 = or i1 %min.iters.check113, %diff.check112
  br i1 %or.cond184, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check130
  %min.iters.check115 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check115, label %vec.epilog.ph134, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %i.bz = and i64 %i.l, 28
  %n.vec117 = and i64 %i.l, 9223372036854775776   ; 5 uses
  %i.ca = and i64 %i.l, 31
  %i.cb = getelementptr i8, ptr %1, i64 %n.vec117
  %i.cc = getelementptr i8, ptr %2, i64 %n.vec117
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %1, i64 %index119 ; 2 uses
  %next.gep121 = getelementptr i8, ptr %2, i64 %index119 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <16 x i8>, ptr %next.gep121, align 1, !tbaa !155
  %wide.load123 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !155
  %i.ce = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load122, ptr %next.gep120, align 1, !tbaa !155
  store <16 x i8> %wide.load123, ptr %i.ce, align 1, !tbaa !155
  %index.next124 = add nuw i64 %index119, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.cf, label %middle.block125, label %vector.body118, !llvm.loop !1056

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.l, %n.vec117
  br i1 %cmp.n126, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block125
  %min.epilog.iters.check133 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph134, !prof !1059

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check132
  %vec.epilog.resume.val127 = phi i64 [ %n.vec117, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec135 = and i64 %i.l, 9223372036854775804   ; 4 uses
  %i.cg = and i64 %i.l, 3
  %i.ch = getelementptr i8, ptr %1, i64 %n.vec135
  %i.ci = getelementptr i8, ptr %2, i64 %n.vec135
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph134
  %index137 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph134 ], [ %index.next141, %vec.epilog.vector.body136 ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %1, i64 %index137
  %next.gep139 = getelementptr i8, ptr %2, i64 %index137
  %wide.load140 = load <4 x i8>, ptr %next.gep139, align 1, !tbaa !155
  store <4 x i8> %wide.load140, ptr %next.gep138, align 1, !tbaa !155
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.cj, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !1057

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body136
  %cmp.n143 = icmp eq i64 %i.l, %n.vec135
  br i1 %cmp.n143, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check130, %vec.epilog.iter.check132, %vec.epilog.middle.block142
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.l, %iter.check130 ], [ %i.ca, %vec.epilog.iter.check132 ], [ %i.cg, %vec.epilog.middle.block142 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check130 ], [ %i.cb, %vec.epilog.iter.check132 ], [ %i.ch, %vec.epilog.middle.block142 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %iter.check130 ], [ %i.cc, %vec.epilog.iter.check132 ], [ %i.ci, %vec.epilog.middle.block142 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %i.ck = load i8, ptr %.0910.i.i.i.i.i60, align 1, !tbaa !155
  store i8 %i.ck, ptr %.0811.i.i.i.i.i59, align 1, !tbaa !155
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 1
  %i.cn = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !1058

bb.n:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !296   ; 5 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cr = sub i64 %i.i, %i.cq                     ; 4 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.c
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #20
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.c)
  %i.cu = add i64 %.sroa.speculated.i, %i.cr      ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807)
  %i.cx = select i1 %i.cv, i64 9223372036854775807, i64 %i.cw ; 3 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #19
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cq                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.r, !prof !373

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cp, i64 %i.db, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cp, align 1, !tbaa !155
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !155
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.db  ; 2 uses
  %i.dg = icmp sgt i64 %i.c, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i63.preheader, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

.lr.ph.i.i.i.i.i.i.i.i63.preheader:               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %2, i64 %i.c, i1 false), !tbaa !155
  %i.dh = add i64 %i.a, %i.da
  %i.di = add i64 %i.b, %i.cq
  %i.dj = sub i64 %i.dh, %i.di
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dj
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63.preheader, %bb.t
  %.08.lcssa.i.i.i.i.i.i.i.i62 = phi ptr [ %i.df, %bb.t ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i63.preheader ] ; 3 uses
  %i.dk = sub i64 %i.i, %i.da                     ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.u, label %bb.v, !prof !373

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i62, ptr align 1 %1, i64 %i.dk, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %1, align 1, !tbaa !155
  store i8 %i.dn, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, align 1, !tbaa !155
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.do = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, i64 %i.dk
  %.not.i69 = icmp eq ptr %i.cp, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = sub i64 %i.h, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dp) #18
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !296
  store ptr %i.do, ptr %i.f, align 8, !tbaa !295
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !372
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block125, %vec.epilog.middle.block142, %middle.block161, %vec.epilog.middle.block178, %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

declare noundef i32 @_ZNK5draco11CornerTable7ValenceENS_9IndexTypeIjNS_21VertexIndex_tag_type_EEE(ptr noundef nonnull align 8 dereferenceable(168), ptr nofreeobj noundef align 4 dead_on_return dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !148  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !121    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !211
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !211
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
end_hunk_0

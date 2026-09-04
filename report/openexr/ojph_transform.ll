Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform?download=true
inline.NumInlined: 19
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ojph5local20gen_irv_vert_times_KEfPKNS_8line_bufEj:bb.a
  %i.j = fmul <4 x float> %broadcast.splat, %wide.load
  %i.k = fmul <4 x float> %broadcast.splat, %wide.load9
  store <4 x float> %i.j, ptr %next.gep, align 4, !tbaa !25
  store <4 x float> %i.k, ptr %i.i, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !315

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader11

.lr.ph.preheader11:                               ; preds = %.lr.ph.preheader, %middle.block
  %.08.ph = phi i32 [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.057.ph = phi ptr [ %i.b, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader11, %.lr.ph
  %.08 = phi i32 [ %i.p, %.lr.ph ], [ %.08.ph, %.lr.ph.preheader11 ]
  %.057 = phi ptr [ %i.m, %.lr.ph ], [ %.057.ph, %.lr.ph.preheader11 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.057, i64 4
  %i.n = load float, ptr %.057, align 4, !tbaa !25
  %i.o = fmul float %0, %i.n
  store float %i.o, ptr %.057, align 4, !tbaa !25
  %i.p = add i32 %.08, -1                         ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !316
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16gen_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %.loopexit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12   ; 3 uses
  br i1 %5, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.i = load float, ptr %i.g, align 4, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float %i.i, ptr %i.c, align 4, !tbaa !25
  %i.k = add i32 %4, -1                           ; 2 uses
  %i.l = icmp ugt i32 %i.k, 1
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %.078144 = phi ptr [ %i.j, %bb.c ], [ %i.c, %bb.b ] ; 7 uses
  %.088143 = phi i32 [ %i.k, %bb.c ], [ %4, %bb.b ] ; 7 uses
  %.090142 = phi ptr [ %i.h, %bb.c ], [ %i.g, %bb.b ] ; 7 uses
  %i.m = icmp ne i32 %.088143, 2
  %.neg = sext i1 %i.m to i32
  %i.n = add i32 %.088143, -1
  %i.o = add i32 %i.n, %.neg                      ; 2 uses
  %i.p = lshr i32 %i.o, 1
  %narrow = add nuw i32 %i.p, 1
  %i.q = zext i32 %narrow to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.o, 70
  br i1 %min.iters.check, label %.lr.ph.preheader241, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.r = add i32 %.088143, -1
  %i.s = icmp ne i32 %.088143, 2
  %umin.neg = sext i1 %i.s to i32
  %i.t = add i32 %i.r, %umin.neg
  %i.u = lshr i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 4                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.e, i64 %i.x ; 2 uses
  %scevgep157 = getelementptr i8, ptr %.078144, i64 %i.x ; 2 uses
  %i.y = shl nuw nsw i64 %i.v, 3
  %i.z = getelementptr i8, ptr %.090142, i64 %i.y
  %scevgep158 = getelementptr i8, ptr %i.z, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %i.e, %scevgep157
  %bound1 = icmp ult ptr %.078144, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0159 = icmp ult ptr %i.e, %scevgep158
  %bound1160 = icmp ult ptr %.090142, %scevgep
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx = or i1 %found.conflict, %found.conflict161
  %bound0162 = icmp ult ptr %.078144, %scevgep158
  %bound1163 = icmp ult ptr %.090142, %scevgep157
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %conflict.rdx, %found.conflict164
  br i1 %conflict.rdx165, label %.lr.ph.preheader241, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.q, 4294967292               ; 5 uses
  %i.aa = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %i.ab = getelementptr i8, ptr %.078144, i64 %i.aa
  %i.ac = trunc nuw i64 %n.vec to i32
  %i.ad = shl i32 %i.ac, 1
  %i.ae = sub i32 %.088143, %i.ad                 ; 2 uses
  %i.af = shl nuw nsw i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %.090142, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.e, i64 %i.aa   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ai = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.078144, i64 %i.ai
  %i.aj = shl i64 %index, 3
  %next.gep166 = getelementptr i8, ptr %.090142, i64 %i.aj
  %next.gep167 = getelementptr i8, ptr %i.e, i64 %i.ai
  %wide.vec = load <8 x float>, ptr %next.gep166, align 4, !tbaa !25, !alias.scope !334 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec168 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %strided.vec, ptr %next.gep167, align 4, !tbaa !25, !alias.scope !335, !noalias !336
  store <4 x float> %strided.vec168, ptr %next.gep, align 4, !tbaa !25, !alias.scope !337, !noalias !334
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.q
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader241

.lr.ph.preheader241:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.179101.ph = phi ptr [ %.078144, %vector.memcheck ], [ %.078144, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  %.189100.ph = phi i32 [ %.088143, %vector.memcheck ], [ %.088143, %.lr.ph.preheader ], [ %i.ae, %middle.block ]
  %.19199.ph = phi ptr [ %.090142, %vector.memcheck ], [ %.090142, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  %.09298.ph = phi ptr [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader241, %.lr.ph
  %.179101 = phi ptr [ %i.aq, %.lr.ph ], [ %.179101.ph, %.lr.ph.preheader241 ] ; 2 uses
  %.189100 = phi i32 [ %i.ar, %.lr.ph ], [ %.189100.ph, %.lr.ph.preheader241 ]
  %.19199 = phi ptr [ %i.ao, %.lr.ph ], [ %.19199.ph, %.lr.ph.preheader241 ] ; 3 uses
  %.09298 = phi ptr [ %i.an, %.lr.ph ], [ %.09298.ph, %.lr.ph.preheader241 ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.19199, i64 4
  %i.am = load float, ptr %.19199, align 4, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %.09298, i64 4 ; 2 uses
  store float %i.am, ptr %.09298, align 4, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %.19199, i64 8 ; 2 uses
  %i.ap = load float, ptr %i.al, align 4, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %.179101, i64 4
  store float %i.ap, ptr %.179101, align 4, !tbaa !25
  %i.ar = add i32 %.189100, -2                    ; 3 uses
  %i.as = icmp ugt i32 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !322

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.lcssa156 = phi ptr [ %i.ah, %middle.block ], [ %i.an, %.lr.ph ]
  %.lcssa155 = phi ptr [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph ]
  %.lcssa = phi i32 [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph ]
  %i.at = icmp eq i32 %.lcssa, 0
  br i1 %i.at, label %bb.d, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.191.lcssa149 = phi ptr [ %.lcssa155, %._crit_edge ], [ %i.h, %bb.c ]
  %.092.lcssa148 = phi ptr [ %.lcssa156, %._crit_edge ], [ %i.e, %bb.c ]
  %i.au = load float, ptr %.191.lcssa149, align 4, !tbaa !25
  store float %i.au, ptr %.092.lcssa148, align 4, !tbaa !25
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !12  ; 2 uses
  %i.ax = zext i1 %5 to i32
  %i.ay = add i32 %4, %i.ax
  %i.az = lshr i32 %i.ay, 1                       ; 2 uses
  %not. = xor i1 %5, true
  %i.ba = zext i1 %not. to i32
  %i.bb = add i32 %4, %i.ba
  %i.bc = lshr i32 %i.bb, 1                       ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !22  ; 2 uses
  %.not94111 = icmp eq i8 %i.be, 0
  br i1 %.not94111, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !23
  %i.bh = zext i8 %i.be to i64
  br label %bb.e

._crit_edge120:                                   ; preds = %._crit_edge110, %bb.d
  %.087.lcssa = phi ptr [ %i.av, %bb.d ], [ %.086113, %._crit_edge110 ] ; 3 uses
  %.086.lcssa = phi ptr [ %i.aw, %bb.d ], [ %.087112, %._crit_edge110 ] ; 3 uses
  %.085.lcssa = phi i32 [ %i.az, %bb.d ], [ %.084115, %._crit_edge110 ] ; 5 uses
  %.084.lcssa = phi i32 [ %i.bc, %bb.d ], [ %.085114, %._crit_edge110 ] ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !26 ; 3 uses
  %i.bk = fdiv float 1.000000e+00, %i.bj          ; 2 uses
  %.not95125 = icmp eq i32 %.085.lcssa, 0
  br i1 %.not95125, label %.preheader, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %._crit_edge120
  %i.bl = zext i32 %.085.lcssa to i64             ; 2 uses
  %min.iters.check207 = icmp ult i32 %.085.lcssa, 8
  br i1 %min.iters.check207, label %.lr.ph129.preheader239, label %vector.ph208

vector.ph208:                                     ; preds = %.lr.ph129.preheader
  %n.vec209 = and i64 %i.bl, 4294967288           ; 4 uses
  %i.bm = trunc nuw i64 %n.vec209 to i32
  %i.bn = sub i32 %.085.lcssa, %i.bm
  %i.bo = shl nuw nsw i64 %n.vec209, 2
  %i.bp = getelementptr i8, ptr %.086.lcssa, i64 %i.bo
  %broadcast.splatinsert210 = insertelement <4 x float> poison, float %i.bk, i64 0
  %broadcast.splat211 = shufflevector <4 x float> %broadcast.splatinsert210, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body212

vector.body212:                                   ; preds = %vector.body212, %vector.ph208
  %index213 = phi i64 [ 0, %vector.ph208 ], [ %index.next217, %vector.body212 ] ; 2 uses
  %i.bq = shl i64 %index213, 2
  %next.gep214 = getelementptr i8, ptr %.086.lcssa, i64 %i.bq ; 3 uses
  %i.br = getelementptr i8, ptr %next.gep214, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %next.gep214, align 4, !tbaa !25
  %wide.load216 = load <4 x float>, ptr %i.br, align 4, !tbaa !25
  %i.bs = fmul <4 x float> %broadcast.splat211, %wide.load215
  %i.bt = fmul <4 x float> %broadcast.splat211, %wide.load216
  store <4 x float> %i.bs, ptr %next.gep214, align 4, !tbaa !25
  store <4 x float> %i.bt, ptr %i.br, align 4, !tbaa !25
  %index.next217 = add nuw i64 %index213, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next217, %n.vec209
  br i1 %i.bu, label %middle.block218, label %vector.body212, !llvm.loop !323

middle.block218:                                  ; preds = %vector.body212
  %cmp.n219 = icmp eq i64 %n.vec209, %i.bl
  br i1 %cmp.n219, label %.preheader, label %.lr.ph129.preheader239

.lr.ph129.preheader239:                           ; preds = %.lr.ph129.preheader, %middle.block218
  %.075127.ph = phi i32 [ %.085.lcssa, %.lr.ph129.preheader ], [ %i.bn, %middle.block218 ]
  %.076126.ph = phi ptr [ %.086.lcssa, %.lr.ph129.preheader ], [ %i.bp, %middle.block218 ]
  br label %.lr.ph129

bb.e:                                             ; preds = %.lr.ph119, %._crit_edge110
  %indvars.iv = phi i64 [ %i.bh, %.lr.ph119 ], [ %i.bw, %._crit_edge110 ]
  %.077.in117 = phi i1 [ %5, %.lr.ph119 ], [ %i.dn, %._crit_edge110 ] ; 3 uses
  %.084115 = phi i32 [ %i.bc, %.lr.ph119 ], [ %.085114, %._crit_edge110 ] ; 9 uses
  %.085114 = phi i32 [ %i.az, %.lr.ph119 ], [ %.084115, %._crit_edge110 ] ; 4 uses
  %.086113 = phi ptr [ %i.aw, %.lr.ph119 ], [ %.087112, %._crit_edge110 ] ; 10 uses
  %.087112 = phi ptr [ %i.av, %.lr.ph119 ], [ %.086113, %._crit_edge110 ] ; 9 uses
  %i.bv = select i1 %.077.in117, i64 4, i64 0     ; 2 uses
  %i.bw = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !12 ; 4 uses
  %i.bz = load float, ptr %.086113, align 4, !tbaa !25
  %i.ca = getelementptr inbounds i8, ptr %.086113, i64 -4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !25
  %i.cb = add nsw i32 %.085114, -1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.086113, i64 %i.cc
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !25
  %i.cf = zext nneg i32 %.085114 to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.086113, i64 %i.cf
  store float %i.ce, ptr %i.cg, align 4, !tbaa !25
  %.not97104 = icmp eq i32 %.084115, 0
  br i1 %.not97104, label %._crit_edge110, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %bb.e
  %i.ch = zext i1 %.077.in117 to i64
  %i.ci = getelementptr [4 x i8], ptr %.086113, i64 %i.ch ; 5 uses
  %i.cj = zext nneg i32 %.084115 to i64           ; 2 uses
  %min.iters.check188 = icmp samesign ult i32 %.084115, 8
  br i1 %min.iters.check188, label %.lr.ph109.preheader240, label %vector.memcheck172

vector.memcheck172:                               ; preds = %.lr.ph109.preheader
  %scevgep173 = getelementptr i8, ptr %.087112, i64 4
  %i.ck = add nsw i32 %.084115, -1
  %i.cl = zext i32 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2                ; 2 uses
  %scevgep174 = getelementptr i8, ptr %scevgep173, i64 %i.cm ; 2 uses
  %scevgep175 = getelementptr i8, ptr %.086113, i64 -4
  %scevgep176 = getelementptr i8, ptr %scevgep175, i64 %i.bv
  %i.cn = add nuw nsw i64 %i.bv, %i.cm            ; 2 uses
  %scevgep177 = getelementptr i8, ptr %.086113, i64 %i.cn
  %scevgep178 = getelementptr i8, ptr %.086113, i64 4
  %scevgep179 = getelementptr i8, ptr %scevgep178, i64 %i.cn
  %bound0180 = icmp ult ptr %.087112, %scevgep177
  %bound1181 = icmp ult ptr %scevgep176, %scevgep174
  %found.conflict182 = and i1 %bound0180, %bound1181
  %bound0183 = icmp ult ptr %.087112, %scevgep179
  %bound1184 = icmp ult ptr %i.ci, %scevgep174
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %found.conflict182, %found.conflict185
  br i1 %conflict.rdx186, label %.lr.ph109.preheader240, label %vector.ph189

vector.ph189:                                     ; preds = %vector.memcheck172
  %n.vec190 = and i64 %i.cj, 2147483640           ; 4 uses
  %i.co = trunc nuw nsw i64 %n.vec190 to i32
  %i.cp = sub nsw i32 %.084115, %i.co
  %i.cq = shl nuw nsw i64 %n.vec190, 2            ; 2 uses
  %i.cr = getelementptr i8, ptr %.087112, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.ci, i64 %i.cq
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next200, %vector.body191 ] ; 2 uses
  %i.ct = shl i64 %index192, 2                    ; 2 uses
  %next.gep193 = getelementptr i8, ptr %.087112, i64 %i.ct ; 3 uses
  %next.gep194 = getelementptr i8, ptr %i.ci, i64 %i.ct ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %next.gep194, i64 -4
  %i.cv = getelementptr inbounds nuw i8, ptr %next.gep194, i64 12
  %wide.load = load <4 x float>, ptr %i.cu, align 4, !tbaa !25, !alias.scope !338
  %wide.load195 = load <4 x float>, ptr %i.cv, align 4, !tbaa !25, !alias.scope !338
  %i.cw = getelementptr i8, ptr %next.gep194, i64 16
  %wide.load196 = load <4 x float>, ptr %next.gep194, align 4, !tbaa !25, !alias.scope !339
  %wide.load197 = load <4 x float>, ptr %i.cw, align 4, !tbaa !25, !alias.scope !339
  %i.cx = fadd <4 x float> %wide.load, %wide.load196
  %i.cy = fadd <4 x float> %wide.load195, %wide.load197
  %i.cz = getelementptr i8, ptr %next.gep193, i64 16 ; 2 uses
  %wide.load198 = load <4 x float>, ptr %next.gep193, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  %wide.load199 = load <4 x float>, ptr %i.cz, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.cx, <4 x float> %wide.load198)
  %i.db = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> %i.cy, <4 x float> %wide.load199)
  store <4 x float> %i.da, ptr %next.gep193, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  store <4 x float> %i.db, ptr %i.cz, align 4, !tbaa !25, !alias.scope !340, !noalias !341
  %index.next200 = add nuw i64 %index192, 8       ; 2 uses
  %i.dc = icmp eq i64 %index.next200, %n.vec190
  br i1 %i.dc, label %middle.block201, label %vector.body191, !llvm.loop !328

middle.block201:                                  ; preds = %vector.body191
  %cmp.n202 = icmp eq i64 %n.vec190, %i.cj
  br i1 %cmp.n202, label %._crit_edge110, label %.lr.ph109.preheader240

.lr.ph109.preheader240:                           ; preds = %vector.memcheck172, %.lr.ph109.preheader, %middle.block201
  %.080107.ph = phi i32 [ %.084115, %vector.memcheck172 ], [ %.084115, %.lr.ph109.preheader ], [ %i.cp, %middle.block201 ] ; 4 uses
  %.081106.ph = phi ptr [ %.087112, %vector.memcheck172 ], [ %.087112, %.lr.ph109.preheader ], [ %i.cr, %middle.block201 ] ; 4 uses
  %.082105.ph = phi ptr [ %i.ci, %vector.memcheck172 ], [ %i.ci, %.lr.ph109.preheader ], [ %i.cs, %middle.block201 ] ; 4 uses
  %xtraiter = and i32 %.080107.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph109.prol.loopexit, label %.lr.ph109.prol

.lr.ph109.prol:                                   ; preds = %.lr.ph109.preheader240
  %i.dd = getelementptr inbounds i8, ptr %.082105.ph, i64 -4
  %i.de = load float, ptr %i.dd, align 4, !tbaa !25
  %i.df = load float, ptr %.082105.ph, align 4, !tbaa !25
  %i.dg = fadd float %i.de, %i.df
  %i.dh = load float, ptr %.081106.ph, align 4, !tbaa !25
  %i.di = tail call float @llvm.fmuladd.f32(float %i.by, float %i.dg, float %i.dh)
  store float %i.di, ptr %.081106.ph, align 4, !tbaa !25
  %i.dj = add nsw i32 %.080107.ph, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %.082105.ph, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %.081106.ph, i64 4
  br label %.lr.ph109.prol.loopexit

.lr.ph109.prol.loopexit:                          ; preds = %.lr.ph109.prol, %.lr.ph109.preheader240
  %.080107.unr = phi i32 [ %.080107.ph, %.lr.ph109.preheader240 ], [ %i.dj, %.lr.ph109.prol ]
  %.081106.unr = phi ptr [ %.081106.ph, %.lr.ph109.preheader240 ], [ %i.dl, %.lr.ph109.prol ]
  %.082105.unr = phi ptr [ %.082105.ph, %.lr.ph109.preheader240 ], [ %i.dk, %.lr.ph109.prol ]
  %i.dm = icmp eq i32 %.080107.ph, 1
  br i1 %i.dm, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %middle.block201, %bb.e
  %i.dn = xor i1 %.077.in117, true
  %.not94.wide = icmp eq i64 %i.bw, 0
  br i1 %.not94.wide, label %._crit_edge120, label %bb.e, !llvm.loop !329

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %.080107 = phi i32 [ %i.eb, %.lr.ph109 ], [ %.080107.unr, %.lr.ph109.prol.loopexit ]
  %.081106 = phi ptr [ %i.ed, %.lr.ph109 ], [ %.081106.unr, %.lr.ph109.prol.loopexit ] ; 4 uses
  %.082105 = phi ptr [ %i.ec, %.lr.ph109 ], [ %.082105.unr, %.lr.ph109.prol.loopexit ] ; 5 uses
  %i.do = getelementptr inbounds i8, ptr %.082105, i64 -4
  %i.dp = load float, ptr %i.do, align 4, !tbaa !25
  %i.dq = load float, ptr %.082105, align 4, !tbaa !25
  %i.dr = fadd float %i.dp, %i.dq
  %i.ds = load float, ptr %.081106, align 4, !tbaa !25
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.by, float %i.dr, float %i.ds)
  store float %i.dt, ptr %.081106, align 4, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %.082105, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.081106, i64 4 ; 2 uses
  %i.dw = load float, ptr %.082105, align 4, !tbaa !25
  %i.dx = load float, ptr %i.du, align 4, !tbaa !25
  %i.dy = fadd float %i.dw, %i.dx
  %i.dz = load float, ptr %i.dv, align 4, !tbaa !25
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.by, float %i.dy, float %i.dz)
  store float %i.ea, ptr %i.dv, align 4, !tbaa !25
  %i.eb = add nsw i32 %.080107, -2                ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.082105, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.081106, i64 8
  %.not97.1 = icmp eq i32 %i.eb, 0
  br i1 %.not97.1, label %._crit_edge110, label %.lr.ph109, !llvm.loop !330

.preheader:                                       ; preds = %.lr.ph129, %middle.block218, %._crit_edge120
  %.not96130 = icmp eq i32 %.084.lcssa, 0
  br i1 %.not96130, label %.loopexit, label %.lr.ph133.preheader

.lr.ph133.preheader:                              ; preds = %.preheader
  %i.ee = zext i32 %.084.lcssa to i64             ; 2 uses
  %min.iters.check223 = icmp ult i32 %.084.lcssa, 8
  br i1 %min.iters.check223, label %.lr.ph133.preheader238, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph133.preheader
  %n.vec225 = and i64 %i.ee, 4294967288           ; 4 uses
  %i.ef = trunc nuw i64 %n.vec225 to i32
  %i.eg = sub i32 %.084.lcssa, %i.ef
  %i.eh = shl nuw nsw i64 %n.vec225, 2
  %i.ei = getelementptr i8, ptr %.087.lcssa, i64 %i.eh
  %broadcast.splatinsert226 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat227 = shufflevector <4 x float> %broadcast.splatinsert226, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph224
  %index229 = phi i64 [ 0, %vector.ph224 ], [ %index.next233, %vector.body228 ] ; 2 uses
  %i.ej = shl i64 %index229, 2
  %next.gep230 = getelementptr i8, ptr %.087.lcssa, i64 %i.ej ; 3 uses
  %i.ek = getelementptr i8, ptr %next.gep230, i64 16 ; 2 uses
  %wide.load231 = load <4 x float>, ptr %next.gep230, align 4, !tbaa !25
  %wide.load232 = load <4 x float>, ptr %i.ek, align 4, !tbaa !25
  %i.el = fmul <4 x float> %broadcast.splat227, %wide.load231
  %i.em = fmul <4 x float> %broadcast.splat227, %wide.load232
  store <4 x float> %i.el, ptr %next.gep230, align 4, !tbaa !25
  store <4 x float> %i.em, ptr %i.ek, align 4, !tbaa !25
  %index.next233 = add nuw i64 %index229, 8       ; 2 uses
  %i.en = icmp eq i64 %index.next233, %n.vec225
  br i1 %i.en, label %middle.block234, label %vector.body228, !llvm.loop !331

middle.block234:                                  ; preds = %vector.body228
  %cmp.n235 = icmp eq i64 %n.vec225, %i.ee
  br i1 %cmp.n235, label %.loopexit, label %.lr.ph133.preheader238

.lr.ph133.preheader238:                           ; preds = %.lr.ph133.preheader, %middle.block234
  %.0132.ph = phi i32 [ %.084.lcssa, %.lr.ph133.preheader ], [ %i.eg, %middle.block234 ]
  %.1131.ph = phi ptr [ %.087.lcssa, %.lr.ph133.preheader ], [ %i.ei, %middle.block234 ]
  br label %.lr.ph133

.lr.ph129:                                        ; preds = %.lr.ph129.preheader239, %.lr.ph129
  %.075127 = phi i32 [ %i.er, %.lr.ph129 ], [ %.075127.ph, %.lr.ph129.preheader239 ]
  %.076126 = phi ptr [ %i.eo, %.lr.ph129 ], [ %.076126.ph, %.lr.ph129.preheader239 ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.076126, i64 4
  %i.ep = load float, ptr %.076126, align 4, !tbaa !25
  %i.eq = fmul float %i.bk, %i.ep
  store float %i.eq, ptr %.076126, align 4, !tbaa !25
  %i.er = add nsw i32 %.075127, -1                ; 2 uses
  %.not95 = icmp eq i32 %i.er, 0
  br i1 %.not95, label %.preheader, label %.lr.ph129, !llvm.loop !332

.lr.ph133:                                        ; preds = %.lr.ph133.preheader238, %.lr.ph133
  %.0132 = phi i32 [ %i.ev, %.lr.ph133 ], [ %.0132.ph, %.lr.ph133.preheader238 ]
  %.1131 = phi ptr [ %i.es, %.lr.ph133 ], [ %.1131.ph, %.lr.ph133.preheader238 ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.1131, i64 4
  %i.et = load float, ptr %.1131, align 4, !tbaa !25
  %i.eu = fmul float %i.bj, %i.et
  store float %i.eu, ptr %.1131, align 4, !tbaa !25
  %i.ev = add nsw i32 %.0132, -1                  ; 2 uses
  %.not96 = icmp eq i32 %i.ev, 0
  br i1 %.not96, label %.loopexit, label %.lr.ph133, !llvm.loop !333

.loopexit.sink.split:                             ; preds = %bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !12
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !25 ; 2 uses
  %i.ez = fmul float %i.ey, 2.000000e+00
  %.sink154 = select i1 %5, ptr %1, ptr %2
  %.sink = select i1 %5, float %i.ey, float %i.ez
  %i.fa = getelementptr inbounds nuw i8, ptr %.sink154, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !12
  store float %.sink, ptr %i.fb, align 4, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph133, %middle.block234, %.loopexit.sink.split, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16gen_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) #1 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12   ; 4 uses
  %i.f = zext i1 %5 to i32
  %i.g = add i32 %4, %i.f                         ; 2 uses
  %i.h = lshr i32 %i.g, 1                         ; 5 uses
  %not. = xor i1 %5, true                         ; 2 uses
  %i.i = zext i1 %not. to i32
  %i.j = add i32 %4, %i.i                         ; 2 uses
  %i.k = lshr i32 %i.j, 1                         ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !26 ; 3 uses
  %i.n = fdiv float 1.000000e+00, %i.m            ; 2 uses
  %.not98 = icmp eq i32 %i.h, 0
  br i1 %.not98, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = zext nneg i32 %i.h to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.g, 16
  br i1 %min.iters.check, label %.lr.ph.preheader233, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.o, 2147483640               ; 4 uses
  %i.p = trunc nuw nsw i64 %n.vec to i32
  %i.q = sub nsw i32 %i.h, %i.p
  %i.r = shl nuw nsw i64 %n.vec, 2
  %i.s = getelementptr i8, ptr %i.e, i64 %i.r
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.m, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.e, i64 %i.t ; 3 uses
  %i.u = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 4, !tbaa !25
  %wide.load146 = load <4 x float>, ptr %i.u, align 4, !tbaa !25
  %i.v = fmul <4 x float> %broadcast.splat, %wide.load
  %i.w = fmul <4 x float> %broadcast.splat, %wide.load146
  store <4 x float> %i.v, ptr %next.gep, align 4, !tbaa !25
  store <4 x float> %i.w, ptr %i.u, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.o
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader233

.lr.ph.preheader233:                              ; preds = %.lr.ph.preheader, %middle.block
  %.088100.ph = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  %.08999.ph = phi ptr [ %i.e, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.b
  %.not95101 = icmp eq i32 %i.k, 0
  br i1 %.not95101, label %._crit_edge, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %.preheader
  %i.y = zext nneg i32 %i.k to i64                ; 2 uses
  %min.iters.check149 = icmp ult i32 %i.j, 16
  br i1 %min.iters.check149, label %.lr.ph104.preheader232, label %vector.ph150

vector.ph150:                                     ; preds = %.lr.ph104.preheader
  %n.vec151 = and i64 %i.y, 2147483640            ; 4 uses
  %i.z = trunc nuw nsw i64 %n.vec151 to i32
  %i.aa = sub nsw i32 %i.k, %i.z
  %i.ab = shl nuw nsw i64 %n.vec151, 2
  %i.ac = getelementptr i8, ptr %i.c, i64 %i.ab
  %broadcast.splatinsert152 = insertelement <4 x float> poison, float %i.n, i64 0
  %broadcast.splat153 = shufflevector <4 x float> %broadcast.splatinsert152, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph150
  %index155 = phi i64 [ 0, %vector.ph150 ], [ %index.next159, %vector.body154 ] ; 2 uses
  %i.ad = shl i64 %index155, 2
  %next.gep156 = getelementptr i8, ptr %i.c, i64 %i.ad ; 3 uses
  %i.ae = getelementptr i8, ptr %next.gep156, i64 16 ; 2 uses
  %wide.load157 = load <4 x float>, ptr %next.gep156, align 4, !tbaa !25
  %wide.load158 = load <4 x float>, ptr %i.ae, align 4, !tbaa !25
  %i.af = fmul <4 x float> %broadcast.splat153, %wide.load157
  %i.ag = fmul <4 x float> %broadcast.splat153, %wide.load158
  store <4 x float> %i.af, ptr %next.gep156, align 4, !tbaa !25
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !25
  %index.next159 = add nuw i64 %index155, 8       ; 2 uses
  %i.ah = icmp eq i64 %index.next159, %n.vec151
  br i1 %i.ah, label %middle.block160, label %vector.body154, !llvm.loop !343

middle.block160:                                  ; preds = %vector.body154
  %cmp.n161 = icmp eq i64 %n.vec151, %i.y
  br i1 %cmp.n161, label %._crit_edge, label %.lr.ph104.preheader232

.lr.ph104.preheader232:                           ; preds = %.lr.ph104.preheader, %middle.block160
  %.087103.ph = phi i32 [ %i.k, %.lr.ph104.preheader ], [ %i.aa, %middle.block160 ]
  %.190102.ph = phi ptr [ %i.c, %.lr.ph104.preheader ], [ %i.ac, %middle.block160 ]
  br label %.lr.ph104

.lr.ph:                                           ; preds = %.lr.ph.preheader233, %.lr.ph
  %.088100 = phi i32 [ %i.al, %.lr.ph ], [ %.088100.ph, %.lr.ph.preheader233 ]
  %.08999 = phi ptr [ %i.ai, %.lr.ph ], [ %.08999.ph, %.lr.ph.preheader233 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.08999, i64 4
  %i.aj = load float, ptr %.08999, align 4, !tbaa !25
  %i.ak = fmul float %i.m, %i.aj
  store float %i.ak, ptr %.08999, align 4, !tbaa !25
  %i.al = add nsw i32 %.088100, -1                ; 2 uses
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !344

._crit_edge:                                      ; preds = %.lr.ph104, %middle.block160, %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i8, ptr %i.am, align 8, !tbaa !22  ; 2 uses
  %.not130 = icmp eq i8 %i.an, 0
  br i1 %.not130, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %wide.trip.count = zext i8 %i.an to i64
  br label %bb.c

.lr.ph104:                                        ; preds = %.lr.ph104.preheader232, %.lr.ph104
  %.087103 = phi i32 [ %i.at, %.lr.ph104 ], [ %.087103.ph, %.lr.ph104.preheader232 ]
end_hunk_0

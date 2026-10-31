Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/AbstractLJpegDecoder?download=true
inline.NumInlined: 1191
inline.NumDeleted: 702
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed20AbstractLJpegDecoder8parseDHTENS_10ByteStreamE:.split
  %.not.i.i.i = icmp samesign ugt i64 %i.af, %i.h
  br i1 %.not.i.i.i, label %.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = add nuw nsw i32 %i.x, 17                ; 3 uses
  %i.ah = icmp samesign ule i32 %i.ag, %i.b
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ae
  %i.aj = invoke noundef i32 @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE18setNCodesPerLengthENS_6BufferE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull %i.ai, i32 16)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.ak = icmp ugt i32 %i.aj, 17
  br i1 %i.ak, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.32, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed20AbstractLJpegDecoder8parseDHTENS_10ByteStreamE) #15
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %narrow = add nuw i32 %i.aj, %i.ag              ; 3 uses
  %.not.i.i.i48 = icmp ugt i32 %narrow, %i.b
  br i1 %.not.i.i.i48, label %.invoke, label %bb.l

.invoke:                                          ; preds = %bb.k, %bb.f
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.35, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #15
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.al = zext nneg i32 %i.ag to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.al
  invoke void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13setCodeValuesENS_10Array1DRefIKhEE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull %i.am, i32 %i.aj)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.l
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !274 ; 2 uses
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !273 ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 3
  %.not39107 = icmp eq ptr %i.an, %i.ao
  br i1 %.not39107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.at = load ptr, ptr %i.k, align 8, !tbaa !279
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !5961
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !285 ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = load ptr, ptr %i.n, align 8
  %i.ba = load ptr, ptr %3, align 8               ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread, %.preheader
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !276
  %.not40 = icmp eq ptr %i.be, null
  br i1 %.not40, label %bb.p, label %bb.af

bb.m:                                             ; preds = %.lr.ph, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !282 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !5961 ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !285 ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp eq i64 %i.bn, %i.ay
  br i1 %i.bo, label %bb.n, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread

bb.n:                                             ; preds = %bb.m
  %.not.not.i.i.i.i.i.i = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.not.i.i.i.i.i.i, label %_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread.i, label %_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.i

_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.i:      ; preds = %bb.n
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.bk, ptr %i.av, i64 %i.ay)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i, label %_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread.i, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread

_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread.i: ; preds = %_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.i, %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !5962 ; 2 uses
  %i.br = load ptr, ptr %i.bg, align 8, !tbaa !288 ; 3 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = icmp eq i64 %i.bu, %i.bd
  br i1 %i.bv, label %bb.o, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread

bb.o:                                             ; preds = %_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread.i
  %.not.not.i.i.i.i.i3.i = icmp eq ptr %i.bq, %i.br
  br i1 %.not.not.i.i.i.i.i3.i, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread83, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit

_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit: ; preds = %bb.o
  %bcmp.i.i.i.i.i4.i = call i32 @bcmp(ptr %i.br, ptr %i.ba, i64 %i.bd)
  %.not9.i.i.i.i.i5.i = icmp eq i32 %bcmp.i.i.i.i.i4.i, 0
  br i1 %.not9.i.i.i.i.i5.i, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread83, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread

_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread83: ; preds = %bb.o, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !276
  store ptr %i.bx, ptr %i.ac, align 8, !tbaa !276
  br label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g, %bb.l, %.invoke, %bb.i
  %lpad.loopexit.split-lp280 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread: ; preds = %bb.m, %_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.thread.i, %_ZSteqIjSaIjEEbRKSt6vectorIT_T0_ES6_.exit.i, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEeqERKS2_.exit.thread83
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.by = and i64 %indvars.iv.next, 4294967295
  %.not39 = icmp eq i64 %i.as, %i.by
  br i1 %.not39, label %._crit_edge, label %bb.m, !llvm.loop !6025

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !6049)
  %i.bz = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %.noexc53 unwind label %bb.ad  ; 5 uses

.noexc53:                                         ; preds = %bb.p
  invoke void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.r unwind label %bb.q, !noalias !6049

bb.q:                                             ; preds = %.noexc53
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bz, i64 noundef 48) #26, !noalias !6049
  br label %.body

bb.r:                                             ; preds = %.noexc53
  store ptr %i.bz, ptr %4, align 8, !tbaa !282, !alias.scope !6049
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !280 ; 6 uses
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !290
  %.not.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !6051
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cd, ptr %i.o, align 8, !tbaa !280
  br label %_ZNSt10unique_ptrIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEESt14default_deleteIS3_EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !279 ; 12 uses
  %i.cf = ptrtoint ptr %i.cb to i64               ; 3 uses
  %i.cg = ptrtoint ptr %i.ce to i64               ; 4 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 9223372036854775800
  br i1 %i.ci, label %bb.u, label %_ZNKSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #25
          to label %.noexc64 unwind label %.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.cj = ashr exact i64 %i.ch, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cj, i64 1)
  %i.ck = add nsw i64 %.sroa.speculated.i.i, %i.cj ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.cj
  %i.cm = call i64 @llvm.umin.i64(i64 %i.ck, i64 1152921504606846975)
  %i.cn = select i1 %i.cl, i64 1152921504606846975, i64 %i.cm ; 3 uses
  %.not.i.i = icmp ne i64 %i.cn, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.co = shl nuw nsw i64 %i.cn, 3
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.co) #27
          to label %.noexc65 unwind label %.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc65:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ch
  store ptr %i.bz, ptr %i.cq, align 8, !tbaa !6051
  %.not10.i.i.i.i = icmp eq ptr %i.ce, %i.cb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %iter.check263

iter.check263:                                    ; preds = %.noexc65
  %i.cr = add i64 %i.cf, -8
  %i.cs = sub i64 %i.cr, %i.cg                    ; 3 uses
  %i.ct = lshr i64 %i.cs, 3
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 5 uses
  %min.iters.check247 = icmp ult i64 %i.cs, 24
  br i1 %min.iters.check247, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck239

vector.memcheck239:                               ; preds = %iter.check263
  %i.cv = add i64 %i.cf, -8
  %i.cw = sub i64 %i.cv, %i.cg
  %i.cx = and i64 %i.cw, -8
  %6 = add i64 %i.cx, 8                           ; 2 uses
  %scevgep242 = getelementptr i8, ptr %i.cp, i64 %6
  %scevgep243 = getelementptr i8, ptr %i.ce, i64 %6
  %bound0244 = icmp ult ptr %i.cp, %scevgep243
  %bound1245 = icmp ult ptr %i.ce, %scevgep242
  %found.conflict246 = and i1 %bound0244, %bound1245
  br i1 %found.conflict246, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check248

vector.main.loop.iter.check248:                   ; preds = %vector.memcheck239
  %min.iters.check249 = icmp ult i64 %i.cs, 120
  br i1 %min.iters.check249, label %vec.epilog.ph267, label %vector.ph250

vector.ph250:                                     ; preds = %vector.main.loop.iter.check248
  %i.cy = and i64 %i.cu, 12
  %n.vec251 = and i64 %i.cu, 4611686018427387888  ; 4 uses
  %i.cz = shl i64 %n.vec251, 3                    ; 2 uses
  %i.da = getelementptr i8, ptr %i.cp, i64 %i.cz  ; 2 uses
  %i.db = getelementptr i8, ptr %i.ce, i64 %i.cz
  br label %vector.body252

vector.body252:                                   ; preds = %vector.ph250, %vector.body252
  %index253 = phi i64 [ 0, %vector.ph250 ], [ %index.next260, %vector.body252 ] ; 2 uses
  %i.dc = shl i64 %index253, 3                    ; 2 uses
  %next.gep254 = getelementptr i8, ptr %i.cp, i64 %i.dc ; 4 uses
  %next.gep255 = getelementptr i8, ptr %i.ce, i64 %i.dc ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6052)
  call void @llvm.experimental.noalias.scope.decl(metadata !6053)
  %i.dd = getelementptr i8, ptr %next.gep255, i64 32
  %i.de = getelementptr i8, ptr %next.gep255, i64 64
  %i.df = getelementptr i8, ptr %next.gep255, i64 96
  %wide.load256 = load <4 x i64>, ptr %next.gep255, align 8, !tbaa !282, !alias.scope !6054
  %wide.load257 = load <4 x i64>, ptr %i.dd, align 8, !tbaa !282, !alias.scope !6054
  %wide.load258 = load <4 x i64>, ptr %i.de, align 8, !tbaa !282, !alias.scope !6054
  %wide.load259 = load <4 x i64>, ptr %i.df, align 8, !tbaa !282, !alias.scope !6054
  %i.dg = getelementptr i8, ptr %next.gep254, i64 32
  %i.dh = getelementptr i8, ptr %next.gep254, i64 64
  %i.di = getelementptr i8, ptr %next.gep254, i64 96
  store <4 x i64> %wide.load256, ptr %next.gep254, align 8, !tbaa !282, !alias.scope !6055, !noalias !6056
  store <4 x i64> %wide.load257, ptr %i.dg, align 8, !tbaa !282, !alias.scope !6055, !noalias !6056
  store <4 x i64> %wide.load258, ptr %i.dh, align 8, !tbaa !282, !alias.scope !6055, !noalias !6056
  store <4 x i64> %wide.load259, ptr %i.di, align 8, !tbaa !282, !alias.scope !6055, !noalias !6056
  %i.dj = getelementptr i8, ptr %next.gep255, i64 32
  %i.dk = getelementptr i8, ptr %next.gep255, i64 64
  %i.dl = getelementptr i8, ptr %next.gep255, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep255, align 8, !tbaa !282, !alias.scope !6054
  store <4 x ptr> splat (ptr null), ptr %i.dj, align 8, !tbaa !282, !alias.scope !6054
  store <4 x ptr> splat (ptr null), ptr %i.dk, align 8, !tbaa !282, !alias.scope !6054
  store <4 x ptr> splat (ptr null), ptr %i.dl, align 8, !tbaa !282, !alias.scope !6054
  %index.next260 = add nuw i64 %index253, 16      ; 2 uses
  %i.dm = icmp eq i64 %index.next260, %n.vec251
  br i1 %i.dm, label %middle.block261, label %vector.body252, !llvm.loop !6034

middle.block261:                                  ; preds = %vector.body252
  %cmp.n262 = icmp eq i64 %i.cu, %n.vec251
  br i1 %cmp.n262, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %vec.epilog.iter.check264

vec.epilog.iter.check264:                         ; preds = %middle.block261
  %min.epilog.iters.check266 = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check266, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph267, !prof !6057

vec.epilog.ph267:                                 ; preds = %vector.main.loop.iter.check248, %vec.epilog.iter.check264
  %vec.epilog.resume.val268 = phi i64 [ %n.vec251, %vec.epilog.iter.check264 ], [ 0, %vector.main.loop.iter.check248 ]
  %n.vec269 = and i64 %i.cu, 4611686018427387900  ; 3 uses
  %i.dn = shl i64 %n.vec269, 3                    ; 2 uses
  %i.do = getelementptr i8, ptr %i.cp, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.ce, i64 %i.dn
  br label %vec.epilog.vector.body270

vec.epilog.vector.body270:                        ; preds = %vec.epilog.vector.body270, %vec.epilog.ph267
  %index271 = phi i64 [ %vec.epilog.resume.val268, %vec.epilog.ph267 ], [ %index.next275, %vec.epilog.vector.body270 ] ; 2 uses
  %i.dq = shl i64 %index271, 3                    ; 2 uses
  %next.gep272 = getelementptr i8, ptr %i.cp, i64 %i.dq
  %next.gep273 = getelementptr i8, ptr %i.ce, i64 %i.dq ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6052)
  call void @llvm.experimental.noalias.scope.decl(metadata !6053)
  %wide.load274 = load <4 x i64>, ptr %next.gep273, align 8, !tbaa !282, !alias.scope !6054
  store <4 x i64> %wide.load274, ptr %next.gep272, align 8, !tbaa !282, !alias.scope !6055, !noalias !6056
  store <4 x ptr> splat (ptr null), ptr %next.gep273, align 8, !tbaa !282, !alias.scope !6054
  %index.next275 = add nuw i64 %index271, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next275, %n.vec269
  br i1 %i.dr, label %vec.epilog.middle.block276, label %vec.epilog.vector.body270, !llvm.loop !6035

vec.epilog.middle.block276:                       ; preds = %vec.epilog.vector.body270
  %cmp.n277 = icmp eq i64 %i.cu, %n.vec269
  br i1 %cmp.n277, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check263, %vector.memcheck239, %vec.epilog.iter.check264, %vec.epilog.middle.block276
  %.012.i.i.i.i.ph = phi ptr [ %i.cp, %iter.check263 ], [ %i.cp, %vector.memcheck239 ], [ %i.da, %vec.epilog.iter.check264 ], [ %i.do, %vec.epilog.middle.block276 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ce, %iter.check263 ], [ %i.ce, %vector.memcheck239 ], [ %i.db, %vec.epilog.iter.check264 ], [ %i.dp, %vec.epilog.middle.block276 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6052)
  call void @llvm.experimental.noalias.scope.decl(metadata !6053)
  %i.ds = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !282, !alias.scope !6053
  store i64 %i.ds, ptr %.012.i.i.i.i, align 8, !tbaa !282, !alias.scope !6052
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !282, !alias.scope !6053
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i63 = icmp eq ptr %i.dt, %i.cb
  br i1 %.not.i.i.i.i63, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !6036

_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block261, %vec.epilog.middle.block276, %.noexc65
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cp, %.noexc65 ], [ %i.do, %vec.epilog.middle.block276 ], [ %i.da, %middle.block261 ], [ %i.du, %.lr.ph.i.i.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ce, null
  br i1 %.not.i23.i, label %.noexc54, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i
  %i.dw = load ptr, ptr %i.p, align 8, !tbaa !290
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.dy) #26
  br label %.noexc54

.noexc54:                                         ; preds = %bb.v, %_ZNSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i
  store ptr %i.cp, ptr %i.k, align 8, !tbaa !279
  store ptr %i.dv, ptr %i.o, align 8, !tbaa !280
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cn
  store ptr %i.dz, ptr %i.p, align 8, !tbaa !290
  br label %_ZNSt10unique_ptrIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.s, %.noexc54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !6058)
  %i.ea = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #27
          to label %.noexc56 unwind label %bb.ae  ; 13 uses

.noexc56:                                         ; preds = %_ZNSt10unique_ptrIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEESt14default_deleteIS3_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !6058
  invoke void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEcvNS_10PrefixCodeIS1_EEEv(ptr dead_on_unwind nonnull writable sret(%"class.rawspeed::PrefixCode") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.x unwind label %bb.w, !noalias !6058

bb.w:                                             ; preds = %.noexc56
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 152) #26, !noalias !6058
  br label %.body57

bb.x:                                             ; preds = %.noexc56
  store i8 1, ptr %i.ea, align 8, !tbaa !5979, !noalias !6058
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 0, ptr %i.ec, align 1, !tbaa !5980, !noalias !6058
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ee = load <4 x ptr>, ptr %2, align 8, !tbaa !255, !noalias !6058
  store <4 x ptr> %i.ee, ptr %i.ed, align 8, !tbaa !255, !noalias !6058
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.eg = load <4 x ptr>, ptr %i.q, align 8, !tbaa !255, !noalias !6058
  store <4 x ptr> %i.eg, ptr %i.ef, align 8, !tbaa !255, !noalias !6058
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 72
  %i.ei = load ptr, ptr %i.r, align 8, !tbaa !5981, !noalias !6058
  store ptr %i.ei, ptr %i.eh, align 8, !tbaa !5981, !noalias !6058
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ej, i8 0, i64 48, i1 false), !noalias !6058
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !6058
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i8 0, i64 24, i1 false), !noalias !6058
  store ptr %i.ea, ptr %5, align 8, !tbaa !276, !alias.scope !6058
  %i.el = load i8, ptr %i.s, align 1, !tbaa !253, !range !5982, !noundef !788
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = load i8, ptr %i.t, align 8, !tbaa !6059, !range !5982, !noundef !788
  %i.eo = trunc nuw i8 %i.en to i1
  invoke void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(152) %i.ea, i1 noundef zeroext %i.em, i1 noundef zeroext %i.eo)
          to label %bb.y unwind label %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  store ptr %i.ea, ptr %i.ac, align 8, !tbaa !276
  %i.ep = load ptr, ptr %i.j, align 8, !tbaa !274 ; 6 uses
  %i.eq = load ptr, ptr %i.u, align 8, !tbaa !278
  %.not.i59 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i59, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.ea, ptr %i.ep, align 8, !tbaa !6061
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %i.er, ptr %i.j, align 8, !tbaa !274
  br label %_ZNSt10unique_ptrIN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEESt14default_deleteIS5_EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.es = load ptr, ptr %i.i, align 8, !tbaa !273 ; 12 uses
  %i.et = ptrtoint ptr %i.ep to i64               ; 3 uses
  %i.eu = ptrtoint ptr %i.es to i64               ; 4 uses
  %i.ev = sub i64 %i.et, %i.eu                    ; 3 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775800
  br i1 %i.ew, label %bb.ab, label %_ZNKSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #25
          to label %.noexc81 unwind label %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aa
  %i.ex = ashr exact i64 %i.ev, 3                 ; 3 uses
  %.sroa.speculated.i.i66 = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %i.ey = add nsw i64 %.sroa.speculated.i.i66, %i.ex ; 2 uses
  %i.ez = icmp ult i64 %i.ey, %i.ex
  %i.fa = call i64 @llvm.umin.i64(i64 %i.ey, i64 1152921504606846975)
  %i.fb = select i1 %i.ez, i64 1152921504606846975, i64 %i.fa ; 3 uses
  %.not.i.i67 = icmp ne i64 %i.fb, 0
  call void @llvm.assume(i1 %.not.i.i67)
  %i.fc = shl nuw nsw i64 %i.fb, 3
  %i.fd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fc) #27
          to label %.noexc82 unwind label %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp ; 12 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ev
  store ptr %i.ea, ptr %i.fe, align 8, !tbaa !6061
  %.not10.i.i.i.i68 = icmp eq ptr %i.es, %i.ep
  br i1 %.not10.i.i.i.i68, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc82
  %i.ff = add i64 %i.et, -8
  %i.fg = sub i64 %i.ff, %i.eu                    ; 3 uses
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = add nuw nsw i64 %i.fh, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.fg, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i69.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fj = add i64 %i.et, -8
  %i.fk = sub i64 %i.fj, %i.eu
  %i.fl = and i64 %i.fk, -8
  %7 = add i64 %i.fl, 8                           ; 2 uses
  %scevgep224 = getelementptr i8, ptr %i.fd, i64 %7
  %scevgep225 = getelementptr i8, ptr %i.es, i64 %7
  %bound0 = icmp ult ptr %i.fd, %scevgep225
  %bound1 = icmp ult ptr %i.es, %scevgep224
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i69.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check226 = icmp ult i64 %i.fg, 120
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fm = and i64 %i.fi, 12
  %n.vec = and i64 %i.fi, 4611686018427387888     ; 4 uses
  %i.fn = shl i64 %n.vec, 3                       ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fd, i64 %i.fn  ; 2 uses
  %i.fp = getelementptr i8, ptr %i.es, i64 %i.fn
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fd, i64 %i.fq ; 4 uses
  %next.gep227 = getelementptr i8, ptr %i.es, i64 %i.fq ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6062)
  call void @llvm.experimental.noalias.scope.decl(metadata !6063)
  %i.fr = getelementptr i8, ptr %next.gep227, i64 32
  %i.fs = getelementptr i8, ptr %next.gep227, i64 64
  %i.ft = getelementptr i8, ptr %next.gep227, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep227, align 8, !tbaa !276, !alias.scope !6064
  %wide.load228 = load <4 x i64>, ptr %i.fr, align 8, !tbaa !276, !alias.scope !6064
  %wide.load229 = load <4 x i64>, ptr %i.fs, align 8, !tbaa !276, !alias.scope !6064
  %wide.load230 = load <4 x i64>, ptr %i.ft, align 8, !tbaa !276, !alias.scope !6064
  %i.fu = getelementptr i8, ptr %next.gep, i64 32
  %i.fv = getelementptr i8, ptr %next.gep, i64 64
  %i.fw = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !276, !alias.scope !6065, !noalias !6066
  store <4 x i64> %wide.load228, ptr %i.fu, align 8, !tbaa !276, !alias.scope !6065, !noalias !6066
  store <4 x i64> %wide.load229, ptr %i.fv, align 8, !tbaa !276, !alias.scope !6065, !noalias !6066
  store <4 x i64> %wide.load230, ptr %i.fw, align 8, !tbaa !276, !alias.scope !6065, !noalias !6066
  %i.fx = getelementptr i8, ptr %next.gep227, i64 32
  %i.fy = getelementptr i8, ptr %next.gep227, i64 64
  %i.fz = getelementptr i8, ptr %next.gep227, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep227, align 8, !tbaa !276, !alias.scope !6064
  store <4 x ptr> splat (ptr null), ptr %i.fx, align 8, !tbaa !276, !alias.scope !6064
  store <4 x ptr> splat (ptr null), ptr %i.fy, align 8, !tbaa !276, !alias.scope !6064
  store <4 x ptr> splat (ptr null), ptr %i.fz, align 8, !tbaa !276, !alias.scope !6064
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ga = icmp eq i64 %index.next, %n.vec
  br i1 %i.ga, label %middle.block, label %vector.body, !llvm.loop !6045

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fm, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i69.preheader, label %vec.epilog.ph, !prof !6057

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec231 = and i64 %i.fi, 4611686018427387900  ; 3 uses
  %i.gb = shl i64 %n.vec231, 3                    ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fd, i64 %i.gb  ; 2 uses
  %i.gd = getelementptr i8, ptr %i.es, i64 %i.gb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index232 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next236, %vec.epilog.vector.body ] ; 2 uses
  %i.ge = shl i64 %index232, 3                    ; 2 uses
  %next.gep233 = getelementptr i8, ptr %i.fd, i64 %i.ge
  %next.gep234 = getelementptr i8, ptr %i.es, i64 %i.ge ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6062)
  call void @llvm.experimental.noalias.scope.decl(metadata !6063)
  %wide.load235 = load <4 x i64>, ptr %next.gep234, align 8, !tbaa !276, !alias.scope !6064
  store <4 x i64> %wide.load235, ptr %next.gep233, align 8, !tbaa !276, !alias.scope !6065, !noalias !6066
  store <4 x ptr> splat (ptr null), ptr %next.gep234, align 8, !tbaa !276, !alias.scope !6064
  %index.next236 = add nuw i64 %index232, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next236, %n.vec231
  br i1 %i.gf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6046

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n237 = icmp eq i64 %i.fi, %n.vec231
  br i1 %cmp.n237, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, label %.lr.ph.i.i.i.i69.preheader

.lr.ph.i.i.i.i69.preheader:                       ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i70.ph = phi ptr [ %i.fd, %iter.check ], [ %i.fd, %vector.memcheck ], [ %i.fo, %vec.epilog.iter.check ], [ %i.gc, %vec.epilog.middle.block ]
  %.0911.i.i.i.i71.ph = phi ptr [ %i.es, %iter.check ], [ %i.es, %vector.memcheck ], [ %i.fp, %vec.epilog.iter.check ], [ %i.gd, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i69

.lr.ph.i.i.i.i69:                                 ; preds = %.lr.ph.i.i.i.i69.preheader, %.lr.ph.i.i.i.i69
  %.012.i.i.i.i70 = phi ptr [ %i.gi, %.lr.ph.i.i.i.i69 ], [ %.012.i.i.i.i70.ph, %.lr.ph.i.i.i.i69.preheader ] ; 2 uses
  %.0911.i.i.i.i71 = phi ptr [ %i.gh, %.lr.ph.i.i.i.i69 ], [ %.0911.i.i.i.i71.ph, %.lr.ph.i.i.i.i69.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6062)
  call void @llvm.experimental.noalias.scope.decl(metadata !6063)
  %i.gg = load i64, ptr %.0911.i.i.i.i71, align 8, !tbaa !276, !alias.scope !6063
  store i64 %i.gg, ptr %.012.i.i.i.i70, align 8, !tbaa !276, !alias.scope !6062
  store ptr null, ptr %.0911.i.i.i.i71, align 8, !tbaa !276, !alias.scope !6063
  %i.gh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i71, i64 8 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i70, i64 8 ; 2 uses
  %.not.i.i.i.i72 = icmp eq ptr %i.gh, %i.ep
  br i1 %.not.i.i.i.i72, label %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i, label %.lr.ph.i.i.i.i69, !llvm.loop !6047

_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i: ; preds = %.lr.ph.i.i.i.i69, %middle.block, %vec.epilog.middle.block, %.noexc82
  %.0.lcssa.i.i.i.i73 = phi ptr [ %i.fd, %.noexc82 ], [ %i.gc, %vec.epilog.middle.block ], [ %i.fo, %middle.block ], [ %i.gi, %.lr.ph.i.i.i.i69 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i73, i64 8
  %.not.i23.i80 = icmp eq ptr %i.es, null
  br i1 %.not.i23.i80, label %.noexc61, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i
  %i.gk = load ptr, ptr %i.u, align 8, !tbaa !278
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.gl, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.gm) #26
  br label %.noexc61

.noexc61:                                         ; preds = %bb.ac, %_ZNSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i
  store ptr %i.fd, ptr %i.i, align 8, !tbaa !273
  store ptr %i.gj, ptr %i.j, align 8, !tbaa !274
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fb
  store ptr %i.gn, ptr %i.u, align 8, !tbaa !278
  br label %_ZNSt10unique_ptrIN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.z, %.noexc61
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.af

bb.ad:                                            ; preds = %bb.p
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8rawspeed11HuffmanCodeINS1_15BaselineCodeTagEEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i, %bb.u
  %lpad.loopexit.split-lp282 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.q, %.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp282, %.loopexit.split-lp85.loopexit.split-lp.loopexit.split-lp ], [ %i.go, %bb.ad ], [ %i.ca, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.ai

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEESt14default_deleteIS3_EED2Ev.exit
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIKN8rawspeed20PrefixCodeLUTDecoderINS1_15BaselineCodeTagENS1_23PrefixCodeLookupDecoderIS3_EEEESt14default_deleteIS7_EESaISA_EE12_M_check_lenEmPKc.exit.i, %bb.x, %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  br label %.body57

.body57:                                          ; preds = %bb.ae, %bb.w, %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp
  %.pn42 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp90.loopexit.split-lp.loopexit.split-lp ], [ %i.gp, %bb.ae ], [ %i.eb, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ai

bb.af:                                            ; preds = %_ZNSt10unique_ptrIN8rawspeed20PrefixCodeLUTDecoderINS0_15BaselineCodeTagENS0_23PrefixCodeLookupDecoderIS2_EEEESt14default_deleteIS5_EED2Ev.exit, %._crit_edge
  %i.gq = load ptr, ptr %i.l, align 8, !tbaa !285 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gr = load ptr, ptr %i.v, align 8, !tbaa !286
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gq to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gu) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.ag, %bb.af
  %i.gv = load ptr, ptr %3, align 8, !tbaa !288   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i, label %_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.gw = load ptr, ptr %i.w, align 8, !tbaa !289
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gz) #26
  br label %_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit

_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %.not = icmp eq i32 %i.b, %narrow
  br i1 %.not, label %._crit_edge124, label %_ZN8rawspeed10ByteStream7getByteEv.exit, !llvm.loop !6048

bb.ai:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body, %.body57
  %.pn46 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn42, %.body57 ], [ %lpad.loopexit.split-lp280, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn46

._crit_edge124:                                   ; preds = %_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEED2Ev.exit, %.split
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed20AbstractLJpegDecoder8parseSOFENS_10ByteStreamEPNS_7SOFInfoE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(236) %0, ptr nofree noundef readonly byval(%"class.rawspeed::ByteStream") align 8 captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0

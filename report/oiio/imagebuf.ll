Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebuf?download=true
inline.NumInlined: 16785
inline.NumDeleted: 5500
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 112
loop-unroll.NumUnrolled: 138
begin_hunk_0_@_ZN11OpenImageIO4v3_1L11set_pixels_IffEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ed = landingpad { ptr, i32 }
          catch ptr null
  %i.ee = extractvalue { ptr, i32 } %i.ed, 0
  call void @__clang_call_terminate(ptr %i.ee) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split25, !llvm.loop !1163

.split25:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split25, %.split25.us, %.split23.us
  %.pn = phi { ptr, i32 } [ %i.dp, %.split23.us ], [ %i.ef, %.split25 ], [ %i.dq, %.split25.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IfhEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.633", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr27 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr27, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr27 to i64  ; 7 uses
  %wide.trip.count34 = zext nneg i32 %.fr27 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 2
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr27, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.ba = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !338
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bo = sub i32 %i.bn, %i.at
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %5, %i.bp                       ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bs = sub i32 %i.br, %i.av
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %4, %i.bt                       ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bw = sub i32 %i.bv, %i.k
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %3, %i.bx                       ; 2 uses
  %i.bz = getelementptr i8, ptr %2, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by  ; 7 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ch, i64 %i.ax ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.az
  %7 = add i64 %i.bq, %i.bu
  %8 = add i64 %7, %i.by                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %wide.load = load <4 x i8>, ptr %i.ci, align 1, !tbaa !172, !alias.scope !1172
  %wide.load6 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !172, !alias.scope !1172
  %i.ck = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cl = uitofp <4 x i8> %wide.load to <4 x float>
  %i.cm = uitofp <4 x i8> %wide.load6 to <4 x float>
  %i.cn = fmul nnan <4 x float> %i.cl, splat (float f0x3B808081)
  %i.co = fmul nnan <4 x float> %i.cm, splat (float f0x3B808081)
  %i.cp = getelementptr i8, ptr %i.ck, i64 16
  store <4 x float> %i.cn, ptr %i.ck, align 4, !tbaa !329, !alias.scope !1173, !noalias !1172
  store <4 x float> %i.co, ptr %i.cp, align 4, !tbaa !329, !alias.scope !1173, !noalias !1172
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !1167

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.prol
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !172
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ct = uitofp i8 %i.cs to float
  %i.cu = fmul nnan float %i.ct, f0x3B808081
  store float %i.cu, ptr %gep.prol, align 4, !tbaa !329
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1168

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cv = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %..loopexit_crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !172
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cz = uitofp i8 %i.cy to float
  %i.da = fmul nnan float %i.cz, f0x3B808081
  store float %i.da, ptr %gep, align 4, !tbaa !329
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !172
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dd = uitofp i8 %i.dc to float
  %i.de = fmul nnan float %i.dd, f0x3B808081
  store float %i.de, ptr %gep.1, align 4, !tbaa !329
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next.1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !172
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dh = uitofp i8 %i.dg to float
  %i.di = fmul nnan float %i.dh, f0x3B808081
  store float %i.di, ptr %gep.2, align 4, !tbaa !329
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next.2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !172
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.dl = uitofp i8 %i.dk to float
  %i.dm = fmul nnan float %i.dl, f0x3B808081
  store float %i.dm, ptr %gep.3, align 4, !tbaa !329
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1169

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv31
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !172
  %i.dp = load ptr, ptr %6, align 8, !tbaa !324
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !229
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !147
  %i.dt = icmp eq i32 %i.ds, 3
  br i1 %i.dt, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split23.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.du = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dv = getelementptr [4 x i8], ptr %i.du, i64 %indvars.iv31
  %i.dw = getelementptr [4 x i8], ptr %i.dv, i64 %i.ax
  %i.dx = uitofp i8 %i.do to float
  %i.dy = fmul nnan float %i.dx, f0x3B808081
  store float %i.dy, ptr %i.dw, align 4, !tbaa !329
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1170

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split25.us, !llvm.loop !1171

.split23.us:                                      ; preds = %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split25.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.eb = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.ed = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.ee = load i32, ptr %i.x, align 4, !tbaa !338
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.eg = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.eh = load i32, ptr %i.z, align 4, !tbaa !340
  %i.ei = icmp eq i32 %i.eg, %i.eh
  br i1 %i.ei, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.ej = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.ek = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.em, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split25, !llvm.loop !1171

.split25:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split25, %.split25.us, %.split23.us
  %.pn = phi { ptr, i32 } [ %i.dz, %.split23.us ], [ %i.ep, %.split25 ], [ %i.ea, %.split25.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IfN9Imath_3_14halfEEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.637", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr33 = freeze i32 %i.e                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L11set_pixels_IftEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIftEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIftEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split25, !llvm.loop !1180

.split25:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split25, %.split25.us, %.split23.us
  %.pn = phi { ptr, i32 } [ %i.df, %.split23.us ], [ %i.dv, %.split25 ], [ %i.dg, %.split25.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IfcEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.645", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr27 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr27, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr27 to i64  ; 7 uses
  %wide.trip.count34 = zext nneg i32 %.fr27 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 2
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr27, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.ba = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !338
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bo = sub i32 %i.bn, %i.at
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %5, %i.bp                       ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bs = sub i32 %i.br, %i.av
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %4, %i.bt                       ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bw = sub i32 %i.bv, %i.k
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %3, %i.bx                       ; 2 uses
  %i.bz = getelementptr i8, ptr %2, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by  ; 7 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ch, i64 %i.ax ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.az
  %7 = add i64 %i.bq, %i.bu
  %8 = add i64 %7, %i.by                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %wide.load = load <4 x i8>, ptr %i.ci, align 1, !tbaa !172, !alias.scope !1189
  %wide.load6 = load <4 x i8>, ptr %i.cj, align 1, !tbaa !172, !alias.scope !1189
  %i.ck = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cl = sitofp <4 x i8> %wide.load to <4 x float>
  %i.cm = sitofp <4 x i8> %wide.load6 to <4 x float>
  %i.cn = fmul nnan <4 x float> %i.cl, splat (float f0x3C010204)
  %i.co = fmul nnan <4 x float> %i.cm, splat (float f0x3C010204)
  %i.cp = getelementptr i8, ptr %i.ck, i64 16
  store <4 x float> %i.cn, ptr %i.ck, align 4, !tbaa !329, !alias.scope !1190, !noalias !1189
  store <4 x float> %i.co, ptr %i.cp, align 4, !tbaa !329, !alias.scope !1190, !noalias !1189
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !1184

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.prol
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !172
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ct = sitofp i8 %i.cs to float
  %i.cu = fmul nnan float %i.ct, f0x3C010204
  store float %i.cu, ptr %gep.prol, align 4, !tbaa !329
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1185

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cv = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %..loopexit_crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !172
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cz = sitofp i8 %i.cy to float
  %i.da = fmul nnan float %i.cz, f0x3C010204
  store float %i.da, ptr %gep, align 4, !tbaa !329
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !172
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dd = sitofp i8 %i.dc to float
  %i.de = fmul nnan float %i.dd, f0x3C010204
  store float %i.de, ptr %gep.1, align 4, !tbaa !329
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next.1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !172
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dh = sitofp i8 %i.dg to float
  %i.di = fmul nnan float %i.dh, f0x3C010204
  store float %i.di, ptr %gep.2, align 4, !tbaa !329
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next.2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !172
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.dl = sitofp i8 %i.dk to float
  %i.dm = fmul nnan float %i.dl, f0x3C010204
  store float %i.dm, ptr %gep.3, align 4, !tbaa !329
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1186

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv31
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !172
  %i.dp = load ptr, ptr %6, align 8, !tbaa !324
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !229
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !147
  %i.dt = icmp eq i32 %i.ds, 3
  br i1 %i.dt, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split23.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.du = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dv = getelementptr [4 x i8], ptr %i.du, i64 %indvars.iv31
  %i.dw = getelementptr [4 x i8], ptr %i.dv, i64 %i.ax
  %i.dx = sitofp i8 %i.do to float
  %i.dy = fmul nnan float %i.dx, f0x3C010204
  store float %i.dy, ptr %i.dw, align 4, !tbaa !329
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1187

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split25.us, !llvm.loop !1188

.split23.us:                                      ; preds = %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split25.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.eb = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.ed = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.ee = load i32, ptr %i.x, align 4, !tbaa !338
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.eg = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.eh = load i32, ptr %i.z, align 4, !tbaa !340
  %i.ei = icmp eq i32 %i.eg, %i.eh
  br i1 %i.ei, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.ej = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.ek = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.em, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIfcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split25, !llvm.loop !1188

.split25:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split25, %.split25.us, %.split23.us
  %.pn = phi { ptr, i32 } [ %i.dz, %.split23.us ], [ %i.ep, %.split25 ], [ %i.ea, %.split25.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IfsEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.649", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr27 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L11set_pixels_ItfEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1256

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dq, %.split26.us ], [ %i.eg, %.split28 ], [ %i.dr, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IthEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.721", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr28 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr28, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr28 to i64  ; 7 uses
  %wide.trip.count35 = zext nneg i32 %.fr28 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 1
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr28, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ba = add nsw i64 %wide.trip.count, -1
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.bb = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bd = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.be = load i32, ptr %i.x, align 4, !tbaa !338
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bg = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bh = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bj = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bk = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bm = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bo = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bp = sub i32 %i.bo, %i.at
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %5, %i.bq                       ; 2 uses
  %i.bs = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bt = sub i32 %i.bs, %i.av
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %4, %i.bu                       ; 2 uses
  %i.bw = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bx = sub i32 %i.bw, %i.k
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul i64 %3, %i.by                       ; 2 uses
  %i.ca = getelementptr i8, ptr %2, i64 %i.br
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bv
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bz  ; 5 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !324
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !229
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !147
  %i.ch = icmp eq i32 %i.cg, 3
  br i1 %i.ch, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ci, i64 %i.ax ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ci, i64 %i.az
  %7 = add i64 %i.br, %i.bv
  %8 = add i64 %7, %i.bz                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %index
  %wide.load = load <8 x i8>, ptr %i.cj, align 1, !tbaa !172, !alias.scope !1264
  %i.ck = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %i.cl = uitofp <8 x i8> %wide.load to <8 x float>
  %i.cm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cl, <8 x float> splat (float 2.570000e+02), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cn = fcmp ogt <8 x float> %i.cm, splat (float 6.553500e+04)
  %i.co = select <8 x i1> %i.cn, <8 x float> splat (float 6.553500e+04), <8 x float> %i.cm
  %i.cp = fptoui <8 x float> %i.co to <8 x i16>
  store <8 x i16> %i.cp, ptr %i.ck, align 2, !tbaa !332, !alias.scope !1265, !noalias !1264
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !1260

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.ph
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !172
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.ct = uitofp i8 %i.cs to float
  %i.cu = call float @llvm.fmuladd.f32(float %i.ct, float 2.570000e+02, float 5.000000e-01) ; 2 uses
  %i.cv = fcmp ogt float %i.cu, 6.553500e+04
  %.1.i.i.i.i.i.i.us.us.prol = select i1 %i.cv, float 6.553500e+04, float %i.cu
  %i.cw = fptoui float %.1.i.i.i.i.i.i.us.us.prol to i16
  store i16 %i.cw, ptr %gep.prol, align 2, !tbaa !332
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cx = icmp eq i64 %indvars.iv.ph, %i.ba
  br i1 %i.cx, label %..loopexit_crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !172
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.da = uitofp i8 %i.cz to float
  %i.db = call float @llvm.fmuladd.f32(float %i.da, float 2.570000e+02, float 5.000000e-01) ; 2 uses
  %i.dc = fcmp ogt float %i.db, 6.553500e+04
  %.1.i.i.i.i.i.i.us.us = select i1 %i.dc, float 6.553500e+04, float %i.db
  %i.dd = fptoui float %.1.i.i.i.i.i.i.us.us to i16
  store i16 %i.dd, ptr %gep, align 2, !tbaa !332
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.next
  %i.df = load i8, ptr %i.de, align 1, !tbaa !172
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dg = uitofp i8 %i.df to float
  %i.dh = call float @llvm.fmuladd.f32(float %i.dg, float 2.570000e+02, float 5.000000e-01) ; 2 uses
  %i.di = fcmp ogt float %i.dh, 6.553500e+04
  %.1.i.i.i.i.i.i.us.us.1 = select i1 %i.di, float 6.553500e+04, float %i.dh
  %i.dj = fptoui float %.1.i.i.i.i.i.i.us.us.1 to i16
  store i16 %i.dj, ptr %gep.1, align 2, !tbaa !332
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1261

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv32
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !172
  %i.dm = load ptr, ptr %6, align 8, !tbaa !324
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !229
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !147
  %i.dq = icmp eq i32 %i.dp, 3
  br i1 %i.dq, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split24.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.dr = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.ds = getelementptr [2 x i8], ptr %i.dr, i64 %indvars.iv32
  %i.dt = getelementptr [2 x i8], ptr %i.ds, i64 %i.ax
  %i.du = uitofp i8 %i.dl to float
  %i.dv = call float @llvm.fmuladd.f32(float %i.du, float 2.570000e+02, float 5.000000e-01) ; 2 uses
  %i.dw = fcmp ogt float %i.dv, 6.553500e+04
  %.1.i.i.i.i.i.i.us21 = select i1 %i.dw, float 6.553500e+04, float %i.dv
  %i.dx = fptoui float %.1.i.i.i.i.i.i.us21 to i16
  store i16 %i.dx, ptr %i.dt, align 2, !tbaa !332
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1262

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split26.us, !llvm.loop !1263

.split24.us:                                      ; preds = %bb.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split26.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ea = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.ec = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.ed = load i32, ptr %i.x, align 4, !tbaa !338
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ef = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.eg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.ei = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.ej = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.ek = icmp eq i32 %i.ei, %i.ej
  br i1 %i.ek, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.el = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.el, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIthEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split26, !llvm.loop !1263

.split26:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split26, %.split26.us, %.split24.us
  %.pn = phi { ptr, i32 } [ %i.dy, %.split24.us ], [ %i.eo, %.split26 ], [ %i.dz, %.split26.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_ItN9Imath_3_14halfEEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.725", align 8 ; 36 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr25 = freeze i32 %i.e                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_1L11set_pixels_IttEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIttEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIttEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split25, !llvm.loop !1273

.split25:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split25, %.split25.us, %.split23.us
  %.pn = phi { ptr, i32 } [ %i.dt, %.split23.us ], [ %i.ej, %.split25 ], [ %i.du, %.split25.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_ItcEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.729", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr30 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr30, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr30 to i64  ; 5 uses
  %wide.trip.count37 = zext nneg i32 %.fr30 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 1
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr30, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.ba = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !338
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bo = sub i32 %i.bn, %i.at
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %5, %i.bp                       ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bs = sub i32 %i.br, %i.av
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %4, %i.bt                       ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bw = sub i32 %i.bv, %i.k
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %3, %i.bx                       ; 2 uses
  %i.bz = getelementptr i8, ptr %2, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by  ; 3 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ch, i64 %i.ax ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.az
  %7 = add i64 %i.bq, %i.bu
  %8 = add i64 %7, %i.by                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index
  %wide.load = load <8 x i8>, ptr %i.ci, align 1, !tbaa !172, !alias.scope !1281
  %i.cj = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %i.ck = sitofp <8 x i8> %wide.load to <8 x float>
  %i.cl = fmul nnan <8 x float> %i.ck, splat (float f0x44010183) ; 2 uses
  %i.cm = fcmp olt <8 x float> %i.cl, zeroinitializer
  %i.cn = select <8 x i1> %i.cm, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01)
  %i.co = fadd <8 x float> %i.cl, %i.cn           ; 2 uses
  %i.cp = fcmp oge <8 x float> %i.co, zeroinitializer
  %i.cq = select <8 x i1> %i.cp, <8 x float> %i.co, <8 x float> zeroinitializer ; 2 uses
  %i.cr = fcmp ogt <8 x float> %i.cq, splat (float 6.553500e+04)
  %i.cs = select <8 x i1> %i.cr, <8 x float> splat (float 6.553500e+04), <8 x float> %i.cq
  %i.ct = fptoui <8 x float> %i.cs to <8 x i16>
  store <8 x i16> %i.ct, ptr %i.cj, align 2, !tbaa !332, !alias.scope !1282, !noalias !1281
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !1277

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !172
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cx = sitofp i8 %i.cw to float
  %i.cy = fmul nnan float %i.cx, f0x44010183      ; 2 uses
  %i.cz = fcmp olt float %i.cy, 0.000000e+00
  %i.da = select i1 %i.cz, float -5.000000e-01, float 5.000000e-01
  %i.db = fadd float %i.cy, %i.da                 ; 2 uses
  %.inv.i.i.i.i.i.us.us = fcmp oge float %i.db, 0.000000e+00
  %.0.i.i.i.i.i.i.us.us = select i1 %.inv.i.i.i.i.i.us.us, float %i.db, float 0.000000e+00 ; 2 uses
  %i.dc = fcmp ogt float %.0.i.i.i.i.i.i.us.us, 6.553500e+04
  %.1.i.i.i.i.i.i.us.us = select i1 %i.dc, float 6.553500e+04, float %.0.i.i.i.i.i.i.us.us
  %i.dd = fptoui float %.1.i.i.i.i.i.i.us.us to i16
  store i16 %i.dd, ptr %gep, align 2, !tbaa !332
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1278

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv34
  %i.df = load i8, ptr %i.de, align 1, !tbaa !172
  %i.dg = load ptr, ptr %6, align 8, !tbaa !324
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !229
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !147
  %i.dk = icmp eq i32 %i.dj, 3
  br i1 %i.dk, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split26.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.dl = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dm = getelementptr [2 x i8], ptr %i.dl, i64 %indvars.iv34
  %i.dn = getelementptr [2 x i8], ptr %i.dm, i64 %i.ax
  %i.do = sitofp i8 %i.df to float
  %i.dp = fmul nnan float %i.do, f0x44010183      ; 2 uses
  %i.dq = fcmp olt float %i.dp, 0.000000e+00
  %i.dr = select i1 %i.dq, float -5.000000e-01, float 5.000000e-01
  %i.ds = fadd float %i.dp, %i.dr                 ; 2 uses
  %.inv.i.i.i.i.i.us21 = fcmp oge float %i.ds, 0.000000e+00
  %.0.i.i.i.i.i.i.us22 = select i1 %.inv.i.i.i.i.i.us21, float %i.ds, float 0.000000e+00 ; 2 uses
  %i.dt = fcmp ogt float %.0.i.i.i.i.i.i.us22, 6.553500e+04
  %.1.i.i.i.i.i.i.us23 = select i1 %i.dt, float 6.553500e+04, float %.0.i.i.i.i.i.i.us22
  %i.du = fptoui float %.1.i.i.i.i.i.i.us23 to i16
  store i16 %i.du, ptr %i.dn, align 2, !tbaa !332
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1279

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split28.us, !llvm.loop !1280

.split26.us:                                      ; preds = %bb.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split28.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dx = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.dz = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.ea = load i32, ptr %i.x, align 4, !tbaa !338
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ec = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.ed = load i32, ptr %i.z, align 4, !tbaa !340
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.ef = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.eg = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1280

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dv, %.split26.us ], [ %i.el, %.split28 ], [ %i.dw, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_ItsEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.733", align 8 ; 37 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !277
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !276  ; 2 uses
  %i.f = sub nsw i32 %i.c, %i.e
  %.fr30 = freeze i32 %i.f                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !325
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.g, align 8
  store i32 1, ptr %i.j, align 8, !tbaa !327
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.k, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.l = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.l, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !353
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 28
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_1L11set_pixels_IsfEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIsfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIsfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1320

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dq, %.split26.us ], [ %i.eg, %.split28 ], [ %i.dr, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IshEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.777", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr30 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr30, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr30 to i64  ; 5 uses
  %wide.trip.count37 = zext nneg i32 %.fr30 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 1
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr30, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.ba = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !338
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bo = sub i32 %i.bn, %i.at
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %5, %i.bp                       ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bs = sub i32 %i.br, %i.av
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %4, %i.bt                       ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bw = sub i32 %i.bv, %i.k
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %3, %i.bx                       ; 2 uses
  %i.bz = getelementptr i8, ptr %2, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by  ; 3 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ch, i64 %i.ax ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.az
  %7 = add i64 %i.bq, %i.bu
  %8 = add i64 %7, %i.by                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index
  %wide.load = load <8 x i8>, ptr %i.ci, align 1, !tbaa !172, !alias.scope !1328
  %i.cj = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %i.ck = uitofp <8 x i8> %wide.load to <8 x float>
  %i.cl = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ck, <8 x float> splat (float f0x43007F80), <8 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.cm = fcmp oge <8 x float> %i.cl, splat (float -3.276800e+04)
  %i.cn = select <8 x i1> %i.cm, <8 x float> %i.cl, <8 x float> splat (float -3.276800e+04) ; 2 uses
  %i.co = fcmp ogt <8 x float> %i.cn, splat (float 3.276700e+04)
  %i.cp = select <8 x i1> %i.co, <8 x float> splat (float 3.276700e+04), <8 x float> %i.cn
  %i.cq = fptosi <8 x float> %i.cp to <8 x i16>
  store <8 x i16> %i.cq, ptr %i.cj, align 2, !tbaa !332, !alias.scope !1329, !noalias !1328
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !1324

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !172
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cu = uitofp i8 %i.ct to float
  %i.cv = call float @llvm.fmuladd.f32(float %i.cu, float f0x43007F80, float 5.000000e-01) ; 2 uses
  %.inv.i.i.i.i.i.us.us = fcmp oge float %i.cv, -3.276800e+04
  %.0.i.i.i.i.i.i.us.us = select i1 %.inv.i.i.i.i.i.us.us, float %i.cv, float -3.276800e+04 ; 2 uses
  %i.cw = fcmp ogt float %.0.i.i.i.i.i.i.us.us, 3.276700e+04
  %.1.i.i.i.i.i.i.us.us = select i1 %i.cw, float 3.276700e+04, float %.0.i.i.i.i.i.i.us.us
  %i.cx = fptosi float %.1.i.i.i.i.i.i.us.us to i16
  store i16 %i.cx, ptr %gep, align 2, !tbaa !332
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1325

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv34
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !172
  %i.da = load ptr, ptr %6, align 8, !tbaa !324
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !229
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !147
  %i.de = icmp eq i32 %i.dd, 3
  br i1 %i.de, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split26.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.df = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dg = getelementptr [2 x i8], ptr %i.df, i64 %indvars.iv34
  %i.dh = getelementptr [2 x i8], ptr %i.dg, i64 %i.ax
  %i.di = uitofp i8 %i.cz to float
  %i.dj = call float @llvm.fmuladd.f32(float %i.di, float f0x43007F80, float 5.000000e-01) ; 2 uses
  %.inv.i.i.i.i.i.us21 = fcmp oge float %i.dj, -3.276800e+04
  %.0.i.i.i.i.i.i.us22 = select i1 %.inv.i.i.i.i.i.us21, float %i.dj, float -3.276800e+04 ; 2 uses
  %i.dk = fcmp ogt float %.0.i.i.i.i.i.i.us22, 3.276700e+04
  %.1.i.i.i.i.i.i.us23 = select i1 %i.dk, float 3.276700e+04, float %.0.i.i.i.i.i.i.us22
  %i.dl = fptosi float %.1.i.i.i.i.i.i.us23 to i16
  store i16 %i.dl, ptr %i.dh, align 2, !tbaa !332
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1326

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split28.us, !llvm.loop !1327

.split26.us:                                      ; preds = %bb.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split28.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.do = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.dq = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.dr = load i32, ptr %i.x, align 4, !tbaa !338
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dt = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.du = load i32, ptr %i.z, align 4, !tbaa !340
  %i.dv = icmp eq i32 %i.dt, %i.du
  br i1 %i.dv, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.dw = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.dx = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIshEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1327

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dm, %.split26.us ], [ %i.ec, %.split28 ], [ %i.dn, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IsN9Imath_3_14halfEEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.781", align 8 ; 36 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr25 = freeze i32 %i.e                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_1L11set_pixels_IstEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIstEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIstEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1335

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.ds, %.split26.us ], [ %i.ei, %.split28 ], [ %i.dt, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IscEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.789", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr30 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr30, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr30 to i64  ; 5 uses
  %wide.trip.count37 = zext nneg i32 %.fr30 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 1
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr30, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.ba = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !338
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bo = sub i32 %i.bn, %i.at
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %5, %i.bp                       ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bs = sub i32 %i.br, %i.av
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %4, %i.bt                       ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bw = sub i32 %i.bv, %i.k
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %3, %i.bx                       ; 2 uses
  %i.bz = getelementptr i8, ptr %2, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by  ; 3 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ch, i64 %i.ax ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.az
  %7 = add i64 %i.bq, %i.bu
  %8 = add i64 %7, %i.by                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index
  %wide.load = load <8 x i8>, ptr %i.ci, align 1, !tbaa !172, !alias.scope !1343
  %i.cj = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  %i.ck = sitofp <8 x i8> %wide.load to <8 x float>
  %i.cl = fmul nnan <8 x float> %i.ck, splat (float f0x43810102) ; 2 uses
  %i.cm = fcmp olt <8 x float> %i.cl, zeroinitializer
  %i.cn = select <8 x i1> %i.cm, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01)
  %i.co = fadd <8 x float> %i.cl, %i.cn           ; 2 uses
  %i.cp = fcmp oge <8 x float> %i.co, splat (float -3.276800e+04)
  %i.cq = select <8 x i1> %i.cp, <8 x float> %i.co, <8 x float> splat (float -3.276800e+04) ; 2 uses
  %i.cr = fcmp ogt <8 x float> %i.cq, splat (float 3.276700e+04)
  %i.cs = select <8 x i1> %i.cr, <8 x float> splat (float 3.276700e+04), <8 x float> %i.cq
  %i.ct = fptosi <8 x float> %i.cs to <8 x i16>
  store <8 x i16> %i.ct, ptr %i.cj, align 2, !tbaa !332, !alias.scope !1344, !noalias !1343
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !1339

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !172
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cx = sitofp i8 %i.cw to float
  %i.cy = fmul nnan float %i.cx, f0x43810102      ; 2 uses
  %i.cz = fcmp olt float %i.cy, 0.000000e+00
  %i.da = select i1 %i.cz, float -5.000000e-01, float 5.000000e-01
  %i.db = fadd float %i.cy, %i.da                 ; 2 uses
  %.inv.i.i.i.i.i.us.us = fcmp oge float %i.db, -3.276800e+04
  %.0.i.i.i.i.i.i.us.us = select i1 %.inv.i.i.i.i.i.us.us, float %i.db, float -3.276800e+04 ; 2 uses
  %i.dc = fcmp ogt float %.0.i.i.i.i.i.i.us.us, 3.276700e+04
  %.1.i.i.i.i.i.i.us.us = select i1 %i.dc, float 3.276700e+04, float %.0.i.i.i.i.i.i.us.us
  %i.dd = fptosi float %.1.i.i.i.i.i.i.us.us to i16
  store i16 %i.dd, ptr %gep, align 2, !tbaa !332
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1340

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv34
  %i.df = load i8, ptr %i.de, align 1, !tbaa !172
  %i.dg = load ptr, ptr %6, align 8, !tbaa !324
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !229
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !147
  %i.dk = icmp eq i32 %i.dj, 3
  br i1 %i.dk, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split26.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.dl = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dm = getelementptr [2 x i8], ptr %i.dl, i64 %indvars.iv34
  %i.dn = getelementptr [2 x i8], ptr %i.dm, i64 %i.ax
  %i.do = sitofp i8 %i.df to float
  %i.dp = fmul nnan float %i.do, f0x43810102      ; 2 uses
  %i.dq = fcmp olt float %i.dp, 0.000000e+00
  %i.dr = select i1 %i.dq, float -5.000000e-01, float 5.000000e-01
  %i.ds = fadd float %i.dp, %i.dr                 ; 2 uses
  %.inv.i.i.i.i.i.us21 = fcmp oge float %i.ds, -3.276800e+04
  %.0.i.i.i.i.i.i.us22 = select i1 %.inv.i.i.i.i.i.us21, float %i.ds, float -3.276800e+04 ; 2 uses
  %i.dt = fcmp ogt float %.0.i.i.i.i.i.i.us22, 3.276700e+04
  %.1.i.i.i.i.i.i.us23 = select i1 %i.dt, float 3.276700e+04, float %.0.i.i.i.i.i.i.us22
  %i.du = fptosi float %.1.i.i.i.i.i.i.us23 to i16
  store i16 %i.du, ptr %i.dn, align 2, !tbaa !332
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1341

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split28.us, !llvm.loop !1342

.split26.us:                                      ; preds = %bb.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split28.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dx = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.dz = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.ea = load i32, ptr %i.x, align 4, !tbaa !338
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ec = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.ed = load i32, ptr %i.z, align 4, !tbaa !340
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.ef = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.eg = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIscEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1342

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dv, %.split26.us ], [ %i.el, %.split28 ], [ %i.dw, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IssEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.512", align 8 ; 37 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !277
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !276  ; 2 uses
  %i.f = sub nsw i32 %i.c, %i.e
  %.fr27 = freeze i32 %i.f                        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !325
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.g, align 8
  store i32 1, ptr %i.j, align 8, !tbaa !327
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.k, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.l = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.l, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !353
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 28
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_1L11set_pixels_IjfEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1366

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dt, %.split26.us ], [ %i.ej, %.split28 ], [ %i.du, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IjhEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.805", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr28 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr28, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr28 to i64  ; 7 uses
  %wide.trip.count35 = zext nneg i32 %.fr28 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 2
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr28, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ba = add nsw i64 %wide.trip.count, -1
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.bb = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bd = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.be = load i32, ptr %i.x, align 4, !tbaa !338
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bg = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bh = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bi = icmp eq i32 %i.bg, %i.bh
  br i1 %i.bi, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bj = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bk = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bl = icmp eq i32 %i.bj, %i.bk
  br i1 %i.bl, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bm = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bo = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bp = sub i32 %i.bo, %i.at
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %5, %i.bq                       ; 2 uses
  %i.bs = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bt = sub i32 %i.bs, %i.av
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %4, %i.bu                       ; 2 uses
  %i.bw = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bx = sub i32 %i.bw, %i.k
  %i.by = sext i32 %i.bx to i64
  %i.bz = mul i64 %3, %i.by                       ; 2 uses
  %i.ca = getelementptr i8, ptr %2, i64 %i.br
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.bv
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bz  ; 5 uses
  %i.cd = load ptr, ptr %6, align 8, !tbaa !324
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !229
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !147
  %i.ch = icmp eq i32 %i.cg, 3
  br i1 %i.ch, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ci, i64 %i.ax ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ci, i64 %i.az
  %7 = add i64 %i.br, %i.bv
  %8 = add i64 %7, %i.bz                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %index
  %wide.load = load <4 x i8>, ptr %i.cj, align 1, !tbaa !172, !alias.scope !1374
  %i.ck = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.cl = uitofp <4 x i8> %wide.load to <4 x double>
  %i.cm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cl, <4 x double> splat (double f0x4170101010000000), <4 x double> splat (double 5.000000e-01)) ; 2 uses
  %i.cn = fcmp ogt <4 x double> %i.cm, splat (double f0x41EFFFFFFFE00000)
  %i.co = select <4 x i1> %i.cn, <4 x double> splat (double f0x41EFFFFFFFE00000), <4 x double> %i.cm
  %i.cp = fptoui <4 x double> %i.co to <4 x i32>
  store <4 x i32> %i.cp, ptr %i.ck, align 4, !tbaa !83, !alias.scope !1375, !noalias !1374
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !1370

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.ph
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !172
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.ct = uitofp i8 %i.cs to double
  %i.cu = call double @llvm.fmuladd.f64(double %i.ct, double f0x4170101010000000, double 5.000000e-01) ; 2 uses
  %i.cv = fcmp ogt double %i.cu, f0x41EFFFFFFFE00000
  %.1.i.i.i.i.i.i.us.us.prol = select i1 %i.cv, double f0x41EFFFFFFFE00000, double %i.cu
  %i.cw = fptoui double %.1.i.i.i.i.i.i.us.us.prol to i32
  store i32 %i.cw, ptr %gep.prol, align 4, !tbaa !83
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cx = icmp eq i64 %indvars.iv.ph, %i.ba
  br i1 %i.cx, label %..loopexit_crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !172
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.da = uitofp i8 %i.cz to double
  %i.db = call double @llvm.fmuladd.f64(double %i.da, double f0x4170101010000000, double 5.000000e-01) ; 2 uses
  %i.dc = fcmp ogt double %i.db, f0x41EFFFFFFFE00000
  %.1.i.i.i.i.i.i.us.us = select i1 %i.dc, double f0x41EFFFFFFFE00000, double %i.db
  %i.dd = fptoui double %.1.i.i.i.i.i.i.us.us to i32
  store i32 %i.dd, ptr %gep, align 4, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.next
  %i.df = load i8, ptr %i.de, align 1, !tbaa !172
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dg = uitofp i8 %i.df to double
  %i.dh = call double @llvm.fmuladd.f64(double %i.dg, double f0x4170101010000000, double 5.000000e-01) ; 2 uses
  %i.di = fcmp ogt double %i.dh, f0x41EFFFFFFFE00000
  %.1.i.i.i.i.i.i.us.us.1 = select i1 %i.di, double f0x41EFFFFFFFE00000, double %i.dh
  %i.dj = fptoui double %.1.i.i.i.i.i.i.us.us.1 to i32
  store i32 %i.dj, ptr %gep.1, align 4, !tbaa !83
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1371

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv32
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !172
  %i.dm = load ptr, ptr %6, align 8, !tbaa !324
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !229
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !147
  %i.dq = icmp eq i32 %i.dp, 3
  br i1 %i.dq, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split24.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.dr = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.ds = getelementptr [4 x i8], ptr %i.dr, i64 %indvars.iv32
  %i.dt = getelementptr [4 x i8], ptr %i.ds, i64 %i.ax
  %i.du = uitofp i8 %i.dl to double
  %i.dv = call double @llvm.fmuladd.f64(double %i.du, double f0x4170101010000000, double 5.000000e-01) ; 2 uses
  %i.dw = fcmp ogt double %i.dv, f0x41EFFFFFFFE00000
  %.1.i.i.i.i.i.i.us21 = select i1 %i.dw, double f0x41EFFFFFFFE00000, double %i.dv
  %i.dx = fptoui double %.1.i.i.i.i.i.i.us21 to i32
  store i32 %i.dx, ptr %i.dt, align 4, !tbaa !83
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1372

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split26.us, !llvm.loop !1373

.split24.us:                                      ; preds = %bb.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split26.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ea = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.eb = icmp eq i8 %i.ea, 0
  br i1 %i.eb, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.ec = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.ed = load i32, ptr %i.x, align 4, !tbaa !338
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ef = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.eg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.ei = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.ej = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.ek = icmp eq i32 %i.ei, %i.ej
  br i1 %i.ek, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.el = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.el, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.em = landingpad { ptr, i32 }
          catch ptr null
  %i.en = extractvalue { ptr, i32 } %i.em, 0
  call void @__clang_call_terminate(ptr %i.en) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split26, !llvm.loop !1373

.split26:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split26, %.split26.us, %.split24.us
  %.pn = phi { ptr, i32 } [ %i.dy, %.split24.us ], [ %i.eo, %.split26 ], [ %i.dz, %.split26.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IjN9Imath_3_14halfEEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.809", align 8 ; 36 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr25 = freeze i32 %i.e                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_1L11set_pixels_IjtEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjtEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjtEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split26, !llvm.loop !1381

.split26:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split26, %.split26.us, %.split24.us
  %.pn = phi { ptr, i32 } [ %i.di, %.split24.us ], [ %i.dy, %.split26 ], [ %i.dj, %.split26.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IjcEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.817", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr30 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr30, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr30 to i64  ; 5 uses
  %wide.trip.count37 = zext nneg i32 %.fr30 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 2
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr30, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.ba = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !338
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bo = sub i32 %i.bn, %i.at
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %5, %i.bp                       ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bs = sub i32 %i.br, %i.av
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %4, %i.bt                       ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bw = sub i32 %i.bv, %i.k
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %3, %i.bx                       ; 2 uses
  %i.bz = getelementptr i8, ptr %2, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by  ; 3 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ch, i64 %i.ax ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.az
  %7 = add i64 %i.bq, %i.bu
  %8 = add i64 %7, %i.by                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index
  %wide.load = load <4 x i8>, ptr %i.ci, align 1, !tbaa !172, !alias.scope !1389
  %i.cj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.ck = sitofp <4 x i8> %wide.load to <4 x double>
  %i.cl = fmul nnan <4 x double> %i.ck, splat (double f0x4180204080F1E3C7) ; 2 uses
  %i.cm = fcmp olt <4 x double> %i.cl, zeroinitializer
  %i.cn = select <4 x i1> %i.cm, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.co = fadd <4 x double> %i.cl, %i.cn          ; 2 uses
  %i.cp = fcmp oge <4 x double> %i.co, zeroinitializer
  %i.cq = select <4 x i1> %i.cp, <4 x double> %i.co, <4 x double> zeroinitializer ; 2 uses
  %i.cr = fcmp ogt <4 x double> %i.cq, splat (double f0x41EFFFFFFFE00000)
  %i.cs = select <4 x i1> %i.cr, <4 x double> splat (double f0x41EFFFFFFFE00000), <4 x double> %i.cq
  %i.ct = fptoui <4 x double> %i.cs to <4 x i32>
  store <4 x i32> %i.ct, ptr %i.cj, align 4, !tbaa !83, !alias.scope !1390, !noalias !1389
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !1385

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !172
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cx = sitofp i8 %i.cw to double
  %i.cy = fmul nnan double %i.cx, f0x4180204080F1E3C7 ; 2 uses
  %i.cz = fcmp olt double %i.cy, 0.000000e+00
  %i.da = select i1 %i.cz, double -5.000000e-01, double 5.000000e-01
  %i.db = fadd double %i.cy, %i.da                ; 2 uses
  %.inv.i.i.i.i.i.us.us = fcmp oge double %i.db, 0.000000e+00
  %.0.i.i.i.i.i.i.us.us = select i1 %.inv.i.i.i.i.i.us.us, double %i.db, double 0.000000e+00 ; 2 uses
  %i.dc = fcmp ogt double %.0.i.i.i.i.i.i.us.us, f0x41EFFFFFFFE00000
  %.1.i.i.i.i.i.i.us.us = select i1 %i.dc, double f0x41EFFFFFFFE00000, double %.0.i.i.i.i.i.i.us.us
  %i.dd = fptoui double %.1.i.i.i.i.i.i.us.us to i32
  store i32 %i.dd, ptr %gep, align 4, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1386

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv34
  %i.df = load i8, ptr %i.de, align 1, !tbaa !172
  %i.dg = load ptr, ptr %6, align 8, !tbaa !324
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !229
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !147
  %i.dk = icmp eq i32 %i.dj, 3
  br i1 %i.dk, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split26.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.dl = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %indvars.iv34
  %i.dn = getelementptr [4 x i8], ptr %i.dm, i64 %i.ax
  %i.do = sitofp i8 %i.df to double
  %i.dp = fmul nnan double %i.do, f0x4180204080F1E3C7 ; 2 uses
  %i.dq = fcmp olt double %i.dp, 0.000000e+00
  %i.dr = select i1 %i.dq, double -5.000000e-01, double 5.000000e-01
  %i.ds = fadd double %i.dp, %i.dr                ; 2 uses
  %.inv.i.i.i.i.i.us21 = fcmp oge double %i.ds, 0.000000e+00
  %.0.i.i.i.i.i.i.us22 = select i1 %.inv.i.i.i.i.i.us21, double %i.ds, double 0.000000e+00 ; 2 uses
  %i.dt = fcmp ogt double %.0.i.i.i.i.i.i.us22, f0x41EFFFFFFFE00000
  %.1.i.i.i.i.i.i.us23 = select i1 %i.dt, double f0x41EFFFFFFFE00000, double %.0.i.i.i.i.i.i.us22
  %i.du = fptoui double %.1.i.i.i.i.i.i.us23 to i32
  store i32 %i.du, ptr %i.dn, align 4, !tbaa !83
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1387

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split28.us, !llvm.loop !1388

.split26.us:                                      ; preds = %bb.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split28.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dx = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.dz = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.ea = load i32, ptr %i.x, align 4, !tbaa !338
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ec = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.ed = load i32, ptr %i.z, align 4, !tbaa !340
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.ef = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.eg = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIjcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1388

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dv, %.split26.us ], [ %i.el, %.split28 ], [ %i.dw, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IjsEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.821", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr30 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_1L11set_pixels_IifEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIifEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIifEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1411

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dt, %.split26.us ], [ %i.ej, %.split28 ], [ %i.du, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IihEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.833", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr30 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr30, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr30 to i64  ; 5 uses
  %wide.trip.count37 = zext nneg i32 %.fr30 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 2
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr30, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.ba = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !338
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bo = sub i32 %i.bn, %i.at
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %5, %i.bp                       ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bs = sub i32 %i.br, %i.av
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %4, %i.bt                       ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bw = sub i32 %i.bv, %i.k
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %3, %i.bx                       ; 2 uses
  %i.bz = getelementptr i8, ptr %2, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by  ; 3 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ch, i64 %i.ax ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.az
  %7 = add i64 %i.bq, %i.bu
  %8 = add i64 %7, %i.by                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index
  %wide.load = load <4 x i8>, ptr %i.ci, align 1, !tbaa !172, !alias.scope !1419
  %i.cj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.ck = uitofp <4 x i8> %wide.load to <4 x double>
  %i.cl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ck, <4 x double> splat (double f0x416010100FEFEFF0), <4 x double> splat (double 5.000000e-01)) ; 2 uses
  %i.cm = fcmp oge <4 x double> %i.cl, splat (double f0xC1E0000000000000)
  %i.cn = select <4 x i1> %i.cm, <4 x double> %i.cl, <4 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.co = fcmp ogt <4 x double> %i.cn, splat (double f0x41DFFFFFFFC00000)
  %i.cp = select <4 x i1> %i.co, <4 x double> splat (double f0x41DFFFFFFFC00000), <4 x double> %i.cn
  %i.cq = fptosi <4 x double> %i.cp to <4 x i32>
  store <4 x i32> %i.cq, ptr %i.cj, align 4, !tbaa !83, !alias.scope !1420, !noalias !1419
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !1415

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !172
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cu = uitofp i8 %i.ct to double
  %i.cv = call double @llvm.fmuladd.f64(double %i.cu, double f0x416010100FEFEFF0, double 5.000000e-01) ; 2 uses
  %.inv.i.i.i.i.i.us.us = fcmp oge double %i.cv, f0xC1E0000000000000
  %.0.i.i.i.i.i.i.us.us = select i1 %.inv.i.i.i.i.i.us.us, double %i.cv, double f0xC1E0000000000000 ; 2 uses
  %i.cw = fcmp ogt double %.0.i.i.i.i.i.i.us.us, f0x41DFFFFFFFC00000
  %.1.i.i.i.i.i.i.us.us = select i1 %i.cw, double f0x41DFFFFFFFC00000, double %.0.i.i.i.i.i.i.us.us
  %i.cx = fptosi double %.1.i.i.i.i.i.i.us.us to i32
  store i32 %i.cx, ptr %gep, align 4, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1416

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv34
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !172
  %i.da = load ptr, ptr %6, align 8, !tbaa !324
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !229
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !147
  %i.de = icmp eq i32 %i.dd, 3
  br i1 %i.de, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split26.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.df = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %indvars.iv34
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.ax
  %i.di = uitofp i8 %i.cz to double
  %i.dj = call double @llvm.fmuladd.f64(double %i.di, double f0x416010100FEFEFF0, double 5.000000e-01) ; 2 uses
  %.inv.i.i.i.i.i.us21 = fcmp oge double %i.dj, f0xC1E0000000000000
  %.0.i.i.i.i.i.i.us22 = select i1 %.inv.i.i.i.i.i.us21, double %i.dj, double f0xC1E0000000000000 ; 2 uses
  %i.dk = fcmp ogt double %.0.i.i.i.i.i.i.us22, f0x41DFFFFFFFC00000
  %.1.i.i.i.i.i.i.us23 = select i1 %i.dk, double f0x41DFFFFFFFC00000, double %.0.i.i.i.i.i.i.us22
  %i.dl = fptosi double %.1.i.i.i.i.i.i.us23 to i32
  store i32 %i.dl, ptr %i.dh, align 4, !tbaa !83
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1417

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split28.us, !llvm.loop !1418

.split26.us:                                      ; preds = %bb.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split28.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.do = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.dq = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.dr = load i32, ptr %i.x, align 4, !tbaa !338
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.dt = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.du = load i32, ptr %i.z, align 4, !tbaa !340
  %i.dv = icmp eq i32 %i.dt, %i.du
  br i1 %i.dv, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.dw = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.dx = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.dy = icmp eq i32 %i.dw, %i.dx
  br i1 %i.dy, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIihEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1418

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dm, %.split26.us ], [ %i.ec, %.split28 ], [ %i.dn, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IiN9Imath_3_14halfEEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.837", align 8 ; 36 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr25 = freeze i32 %i.e                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_1L11set_pixels_IitEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIitEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIitEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1426

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dk, %.split26.us ], [ %i.ea, %.split28 ], [ %i.dl, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IicEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.845", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr30 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr30, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr30 to i64  ; 5 uses
  %wide.trip.count37 = zext nneg i32 %.fr30 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 2
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr30, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.ba = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !338
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bo = sub i32 %i.bn, %i.at
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %5, %i.bp                       ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bs = sub i32 %i.br, %i.av
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %4, %i.bt                       ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bw = sub i32 %i.bv, %i.k
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %3, %i.bx                       ; 2 uses
  %i.bz = getelementptr i8, ptr %2, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by  ; 3 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ch, i64 %i.ax ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.az
  %7 = add i64 %i.bq, %i.bu
  %8 = add i64 %7, %i.by                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index
  %wide.load = load <4 x i8>, ptr %i.ci, align 1, !tbaa !172, !alias.scope !1434
  %i.cj = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.ck = sitofp <4 x i8> %wide.load to <4 x double>
  %i.cl = fmul nnan <4 x double> %i.ck, splat (double f0x4170204080E1C387) ; 2 uses
  %i.cm = fcmp olt <4 x double> %i.cl, zeroinitializer
  %i.cn = select <4 x i1> %i.cm, <4 x double> splat (double -5.000000e-01), <4 x double> splat (double 5.000000e-01)
  %i.co = fadd <4 x double> %i.cl, %i.cn          ; 2 uses
  %i.cp = fcmp oge <4 x double> %i.co, splat (double f0xC1E0000000000000)
  %i.cq = select <4 x i1> %i.cp, <4 x double> %i.co, <4 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.cr = fcmp ogt <4 x double> %i.cq, splat (double f0x41DFFFFFFFC00000)
  %i.cs = select <4 x i1> %i.cr, <4 x double> splat (double f0x41DFFFFFFFC00000), <4 x double> %i.cq
  %i.ct = fptosi <4 x double> %i.cs to <4 x i32>
  store <4 x i32> %i.ct, ptr %i.cj, align 4, !tbaa !83, !alias.scope !1435, !noalias !1434
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !1430

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !172
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cx = sitofp i8 %i.cw to double
  %i.cy = fmul nnan double %i.cx, f0x4170204080E1C387 ; 2 uses
  %i.cz = fcmp olt double %i.cy, 0.000000e+00
  %i.da = select i1 %i.cz, double -5.000000e-01, double 5.000000e-01
  %i.db = fadd double %i.cy, %i.da                ; 2 uses
  %.inv.i.i.i.i.i.us.us = fcmp oge double %i.db, f0xC1E0000000000000
  %.0.i.i.i.i.i.i.us.us = select i1 %.inv.i.i.i.i.i.us.us, double %i.db, double f0xC1E0000000000000 ; 2 uses
  %i.dc = fcmp ogt double %.0.i.i.i.i.i.i.us.us, f0x41DFFFFFFFC00000
  %.1.i.i.i.i.i.i.us.us = select i1 %i.dc, double f0x41DFFFFFFFC00000, double %.0.i.i.i.i.i.i.us.us
  %i.dd = fptosi double %.1.i.i.i.i.i.i.us.us to i32
  store i32 %i.dd, ptr %gep, align 4, !tbaa !83
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1431

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv34
  %i.df = load i8, ptr %i.de, align 1, !tbaa !172
  %i.dg = load ptr, ptr %6, align 8, !tbaa !324
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !229
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !147
  %i.dk = icmp eq i32 %i.dj, 3
  br i1 %i.dk, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split26.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.dl = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %indvars.iv34
  %i.dn = getelementptr [4 x i8], ptr %i.dm, i64 %i.ax
  %i.do = sitofp i8 %i.df to double
  %i.dp = fmul nnan double %i.do, f0x4170204080E1C387 ; 2 uses
  %i.dq = fcmp olt double %i.dp, 0.000000e+00
  %i.dr = select i1 %i.dq, double -5.000000e-01, double 5.000000e-01
  %i.ds = fadd double %i.dp, %i.dr                ; 2 uses
  %.inv.i.i.i.i.i.us21 = fcmp oge double %i.ds, f0xC1E0000000000000
  %.0.i.i.i.i.i.i.us22 = select i1 %.inv.i.i.i.i.i.us21, double %i.ds, double f0xC1E0000000000000 ; 2 uses
  %i.dt = fcmp ogt double %.0.i.i.i.i.i.i.us22, f0x41DFFFFFFFC00000
  %.1.i.i.i.i.i.i.us23 = select i1 %i.dt, double f0x41DFFFFFFFC00000, double %.0.i.i.i.i.i.i.us22
  %i.du = fptosi double %.1.i.i.i.i.i.i.us23 to i32
  store i32 %i.du, ptr %i.dn, align 4, !tbaa !83
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1432

..loopexit_crit_edge.us:                          ; preds = %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split28.us, !llvm.loop !1433

.split26.us:                                      ; preds = %bb.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split28.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dx = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.dz = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.ea = load i32, ptr %i.x, align 4, !tbaa !338
  %i.eb = icmp eq i32 %i.dz, %i.ea
  br i1 %i.eb, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.ec = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.ed = load i32, ptr %i.z, align 4, !tbaa !340
  %i.ee = icmp eq i32 %i.ec, %i.ed
  br i1 %i.ee, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.ef = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.eg = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.eh = icmp eq i32 %i.ef, %i.eg
  br i1 %i.eh, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.ei = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.ei, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIicEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split28, !llvm.loop !1433

.split28:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split28, %.split28.us, %.split26.us
  %.pn = phi { ptr, i32 } [ %i.dv, %.split26.us ], [ %i.el, %.split28 ], [ %i.dw, %.split28.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IisEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.849", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr30 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_1L11set_pixels_IdfEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dp = landingpad { ptr, i32 }
          catch ptr null
  %i.dq = extractvalue { ptr, i32 } %i.dp, 0
  call void @__clang_call_terminate(ptr %i.dq) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split25, !llvm.loop !1456

.split25:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split25, %.split25.us, %.split23.us
  %.pn = phi { ptr, i32 } [ %i.db, %.split23.us ], [ %i.dr, %.split25 ], [ %i.dc, %.split25.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IdhEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.861", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr27 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr27, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr27 to i64  ; 7 uses
  %wide.trip.count34 = zext nneg i32 %.fr27 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 3
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr27, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.ba = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !338
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bo = sub i32 %i.bn, %i.at
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %5, %i.bp                       ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bs = sub i32 %i.br, %i.av
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %4, %i.bt                       ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bw = sub i32 %i.bv, %i.k
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %3, %i.bx                       ; 2 uses
  %i.bz = getelementptr i8, ptr %2, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by  ; 7 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ch, i64 %i.ax ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.az
  %7 = add i64 %i.bq, %i.bu
  %8 = add i64 %7, %i.by                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %wide.load = load <2 x i8>, ptr %i.ci, align 1, !tbaa !172, !alias.scope !1465
  %wide.load6 = load <2 x i8>, ptr %i.cj, align 1, !tbaa !172, !alias.scope !1465
  %i.ck = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cl = uitofp <2 x i8> %wide.load to <2 x double>
  %i.cm = uitofp <2 x i8> %wide.load6 to <2 x double>
  %i.cn = fmul nnan <2 x double> %i.cl, splat (double f0x3F70101010101010)
  %i.co = fmul nnan <2 x double> %i.cm, splat (double f0x3F70101010101010)
  %i.cp = getelementptr i8, ptr %i.ck, i64 16
  store <2 x double> %i.cn, ptr %i.ck, align 8, !tbaa !252, !alias.scope !1466, !noalias !1465
  store <2 x double> %i.co, ptr %i.cp, align 8, !tbaa !252, !alias.scope !1466, !noalias !1465
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !1460

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.prol
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !172
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ct = uitofp i8 %i.cs to double
  %i.cu = fmul nnan double %i.ct, f0x3F70101010101010
  store double %i.cu, ptr %gep.prol, align 8, !tbaa !252
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1461

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cv = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %..loopexit_crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !172
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cz = uitofp i8 %i.cy to double
  %i.da = fmul nnan double %i.cz, f0x3F70101010101010
  store double %i.da, ptr %gep, align 8, !tbaa !252
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !172
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dd = uitofp i8 %i.dc to double
  %i.de = fmul nnan double %i.dd, f0x3F70101010101010
  store double %i.de, ptr %gep.1, align 8, !tbaa !252
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next.1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !172
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dh = uitofp i8 %i.dg to double
  %i.di = fmul nnan double %i.dh, f0x3F70101010101010
  store double %i.di, ptr %gep.2, align 8, !tbaa !252
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next.2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !172
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.dl = uitofp i8 %i.dk to double
  %i.dm = fmul nnan double %i.dl, f0x3F70101010101010
  store double %i.dm, ptr %gep.3, align 8, !tbaa !252
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1462

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv31
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !172
  %i.dp = load ptr, ptr %6, align 8, !tbaa !324
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !229
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !147
  %i.dt = icmp eq i32 %i.ds, 3
  br i1 %i.dt, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split23.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.du = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %indvars.iv31
  %i.dw = getelementptr [8 x i8], ptr %i.dv, i64 %i.ax
  %i.dx = uitofp i8 %i.do to double
  %i.dy = fmul nnan double %i.dx, f0x3F70101010101010
  store double %i.dy, ptr %i.dw, align 8, !tbaa !252
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1463

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split25.us, !llvm.loop !1464

.split23.us:                                      ; preds = %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split25.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.eb = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.ed = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.ee = load i32, ptr %i.x, align 4, !tbaa !338
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.eg = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.eh = load i32, ptr %i.z, align 4, !tbaa !340
  %i.ei = icmp eq i32 %i.eg, %i.eh
  br i1 %i.ei, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.ej = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.ek = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.em, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdhEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split25, !llvm.loop !1464

.split25:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split25, %.split25.us, %.split23.us
  %.pn = phi { ptr, i32 } [ %i.dz, %.split23.us ], [ %i.ep, %.split25 ], [ %i.ea, %.split25.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IdN9Imath_3_14halfEEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.865", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr33 = freeze i32 %i.e                        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
end_hunk_10
begin_hunk_11_@_ZN11OpenImageIO4v3_1L11set_pixels_IdtEEbRNS0_8ImageBufENS0_3ROIEPKvlll:bb.a
bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdtEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdtEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split25, !llvm.loop !1473

.split25:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split25, %.split25.us, %.split23.us
  %.pn = phi { ptr, i32 } [ %i.df, %.split23.us ], [ %i.dv, %.split25 ], [ %i.dg, %.split25.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IdcEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.873", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr27 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.j, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef 0, i1 zeroext poison)
  %i.k = load i32, ptr %1, align 8, !tbaa !232    ; 3 uses
  %.not.i.i = icmp eq i32 %i.k, -2147483648
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !353
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink14.i.i = phi i32 [ %i.r, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.sink13.in.i.i = phi ptr [ %i.s, %bb.c ], [ %i.l, %bb.b ]
  %.sink12.in.i.i = phi ptr [ %i.t, %bb.c ], [ %i.m, %bb.b ]
  %.sink11.in.i.i = phi ptr [ %i.u, %bb.c ], [ %i.n, %bb.b ]
  %.sink10.in.i.i = phi ptr [ %i.v, %bb.c ], [ %i.o, %bb.b ]
  %.sink.in.i.i = phi ptr [ %i.w, %bb.c ], [ %i.p, %bb.b ]
  %.sink.i.i = load i32, ptr %.sink.in.i.i, align 4, !tbaa !83
  %.sink10.i.i = load i32, ptr %.sink10.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink11.i.i = load i32, ptr %.sink11.in.i.i, align 4, !tbaa !83
  %.sink12.i.i = load i32, ptr %.sink12.in.i.i, align 4, !tbaa !83 ; 2 uses
  %.sink13.i.i = load i32, ptr %.sink13.in.i.i, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 4 uses
  store i32 %.sink14.i.i, ptr %i.x, align 4, !tbaa !338
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store i32 %.sink13.i.i, ptr %i.y, align 8, !tbaa !339
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  store i32 %.sink12.i.i, ptr %i.z, align 4, !tbaa !340
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %.sink11.i.i, ptr %i.aa, align 8, !tbaa !341
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %.sink10.i.i, ptr %i.ab, align 4, !tbaa !336
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  store i32 %.sink.i.i, ptr %i.ac, align 8, !tbaa !337
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %.sink14.i.i, i32 noundef %.sink12.i.i, i32 noundef %.sink10.i.i)
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !338 ; 2 uses
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !339
  %i.af = icmp eq i32 %i.ad, %i.ae
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !340 ; 2 uses
  br i1 %i.af, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre15.i.i = load i32, ptr %i.ac, align 8, !tbaa !337
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load i32, ptr %i.aa, align 8, !tbaa !341
  %i.ah = icmp eq i32 %.pre.i.i, %i.ag
  %.pre16.i.i = load i32, ptr %i.ac, align 8, !tbaa !337 ; 2 uses
  %i.ai = load i32, ptr %i.ab, align 4
  %i.aj = icmp eq i32 %i.ai, %.pre16.i.i
  %or.cond = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond, label %bb.f, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i
  %i.ak = phi i32 [ %.pre15.i.i, %._crit_edge.i.i ], [ %.pre16.i.i, %bb.e ]
  store i8 0, ptr %i.f, align 8, !tbaa !342
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.ad, ptr %i.al, align 4, !tbaa !343
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.am, align 8, !tbaa !344
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ak, ptr %i.an, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.e, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 68 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp sgt i32 %.fr27, 0
  br i1 %i.aw, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ax = sext i32 %i.d to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %.fr27 to i64  ; 7 uses
  %wide.trip.count34 = zext nneg i32 %.fr27 to i64
  %i.ay = add nsw i64 %i.ax, %wide.trip.count
  %i.az = shl nsw i64 %i.ay, 3
  %scevgep4.a = getelementptr i8, ptr %2, i64 %wide.trip.count
  %min.iters.check = icmp ult i32 %.fr27, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader, %..loopexit_crit_edge.us
  %i.ba = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.g, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bc = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !338
  %i.be = icmp eq i32 %i.bc, %i.bd
  br i1 %i.be, label %bb.h, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !340
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us: ; preds = %bb.h
  %i.bi = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bj = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.bk = icmp eq i32 %i.bi, %i.bj
  br i1 %i.bk, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us: ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us, %bb.h, %bb.g, %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us
  %i.bl = load i8, ptr %i.ar, align 1, !tbaa !346, !range !209, !noundef !210
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.us, label %..loopexit_crit_edge.us

.lr.ph.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  %i.bn = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.bo = sub i32 %i.bn, %i.at
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul i64 %5, %i.bp                       ; 2 uses
  %i.br = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.bs = sub i32 %i.br, %i.av
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul i64 %4, %i.bt                       ; 2 uses
  %i.bv = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.bw = sub i32 %i.bv, %i.k
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul i64 %3, %i.bx                       ; 2 uses
  %i.bz = getelementptr i8, ptr %2, i64 %i.bq
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bu
  %i.cb = getelementptr i8, ptr %i.ca, i64 %i.by  ; 7 uses
  %i.cc = load ptr, ptr %6, align 8, !tbaa !324
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !229
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !147
  %i.cg = icmp eq i32 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.split.us19, label %.lr.ph.split.us.us, !prof !189

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us
  %i.ch = load ptr, ptr %i.h, align 8, !tbaa !326 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ch, i64 %i.ax ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.us
  %scevgep = getelementptr i8, ptr %i.ch, i64 %i.az
  %7 = add i64 %i.bq, %i.bu
  %8 = add i64 %7, %i.by                          ; 2 uses
  %scevgep3 = getelementptr i8, ptr %2, i64 %8
  %scevgep5 = getelementptr i8, ptr %scevgep4.a, i64 %8
  %bound0 = icmp ult ptr %invariant.gep, %scevgep5
  %bound1 = icmp ult ptr %scevgep3, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  %wide.load = load <2 x i8>, ptr %i.ci, align 1, !tbaa !172, !alias.scope !1482
  %wide.load6 = load <2 x i8>, ptr %i.cj, align 1, !tbaa !172, !alias.scope !1482
  %i.ck = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.cl = sitofp <2 x i8> %wide.load to <2 x double>
  %i.cm = sitofp <2 x i8> %wide.load6 to <2 x double>
  %i.cn = fmul nnan <2 x double> %i.cl, splat (double f0x3F80204081020408)
  %i.co = fmul nnan <2 x double> %i.cm, splat (double f0x3F80204081020408)
  %i.cp = getelementptr i8, ptr %i.ck, i64 16
  store <2 x double> %i.cn, ptr %i.ck, align 8, !tbaa !252, !alias.scope !1483, !noalias !1482
  store <2 x double> %i.co, ptr %i.cp, align 8, !tbaa !252, !alias.scope !1483, !noalias !1482
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !1477

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.split.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.prol
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !172
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ct = sitofp i8 %i.cs to double
  %i.cu = fmul nnan double %i.ct, f0x3F80204081020408
  store double %i.cu, ptr %gep.prol, align 8, !tbaa !252
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1478

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cv = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %..loopexit_crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !172
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cz = sitofp i8 %i.cy to double
  %i.da = fmul nnan double %i.cz, f0x3F80204081020408
  store double %i.da, ptr %gep, align 8, !tbaa !252
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !172
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dd = sitofp i8 %i.dc to double
  %i.de = fmul nnan double %i.dd, f0x3F80204081020408
  store double %i.de, ptr %gep.1, align 8, !tbaa !252
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next.1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !172
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.dh = sitofp i8 %i.dg to double
  %i.di = fmul nnan double %i.dh, f0x3F80204081020408
  store double %i.di, ptr %gep.2, align 8, !tbaa !252
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv.next.2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !172
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.dl = sitofp i8 %i.dk to double
  %i.dm = fmul nnan double %i.dl, f0x3F80204081020408
  store double %i.dm, ptr %gep.3, align 8, !tbaa !252
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %..loopexit_crit_edge.us, label %scalar.ph, !llvm.loop !1479

.lr.ph.split.us19:                                ; preds = %.lr.ph.us, %bb.j
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %bb.j ], [ 0, %.lr.ph.us ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv31
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !172
  %i.dp = load ptr, ptr %6, align 8, !tbaa !324
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !229
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !147
  %i.dt = icmp eq i32 %i.ds, 3
  br i1 %i.dt, label %bb.i, label %bb.j, !prof !189

bb.i:                                             ; preds = %.lr.ph.split.us19
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase13make_writableEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %bb.j unwind label %.split23.us

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us19
  %i.du = load ptr, ptr %i.h, align 8, !tbaa !326
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %indvars.iv31
  %i.dw = getelementptr [8 x i8], ptr %i.dv, i64 %i.ax
  %i.dx = sitofp i8 %i.do to double
  %i.dy = fmul nnan double %i.dx, f0x3F80204081020408
  store double %i.dy, ptr %i.dw, align 8, !tbaa !252
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1 ; 2 uses
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %..loopexit_crit_edge.us, label %.lr.ph.split.us19, !llvm.loop !1480

..loopexit_crit_edge.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.j, %middle.block, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us unwind label %.split25.us, !llvm.loop !1481

.split23.us:                                      ; preds = %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.split25.us:                                      ; preds = %..loopexit_crit_edge.us
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.eb = load i8, ptr %i.f, align 8, !tbaa !342, !range !209, !noundef !210
  %i.ec = icmp eq i8 %i.eb, 0
  br i1 %i.ec, label %bb.k, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split
  %i.ed = load i32, ptr %i.ao, align 4, !tbaa !343
  %i.ee = load i32, ptr %i.x, align 4, !tbaa !338
  %i.ef = icmp eq i32 %i.ed, %i.ee
  br i1 %i.ef, label %bb.l, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.eg = load i32, ptr %i.ap, align 8, !tbaa !344
  %i.eh = load i32, ptr %i.z, align 4, !tbaa !340
  %i.ei = icmp eq i32 %i.eg, %i.eh
  br i1 %i.ei, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.l
  %i.ej = load i32, ptr %i.aq, align 4, !tbaa !345
  %i.ek = load i32, ptr %i.ac, align 8, !tbaa !337
  %i.el = icmp eq i32 %i.ej, %i.ek
  br i1 %i.el, label %.split.us, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

.split.us:                                        ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.us
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !325
  %.not.i = icmp eq ptr %i.em, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.split.us
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.en = landingpad { ptr, i32 }
          catch ptr null
  %i.eo = extractvalue { ptr, i32 } %i.en, 0
  call void @__clang_call_terminate(ptr %i.eo) #46
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %.split.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  ret void

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split, %bb.k, %bb.l, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIdcEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.split unwind label %.split25, !llvm.loop !1481

.split25:                                         ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.split25, %.split25.us, %.split23.us
  %.pn = phi { ptr, i32 } [ %i.dz, %.split23.us ], [ %i.ep, %.split25 ], [ %i.ea, %.split25.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L11set_pixels_IdsEEbRNS0_8ImageBufENS0_3ROIEPKvlll(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.877", align 8 ; 37 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !277
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !276  ; 2 uses
  %i.e = sub nsw i32 %i.b, %i.d
  %.fr27 = freeze i32 %i.e                        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store ptr %0, ptr %6, align 8, !tbaa !324
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !325
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.f, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !327
end_hunk_11
begin_hunk_12_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IhhEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  store i32 %i.fu, ptr %i.am, align 4, !tbaa !343
  %i.fv = load i32, ptr %i.t, align 8, !tbaa !339
  %i.fw = icmp slt i32 %i.fu, %i.fv
  br i1 %i.fw, label %bb.q, label %bb.x

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  %i.fx = load i8, ptr %i.aw, align 1, !tbaa !346, !range !209, !noundef !210
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.r, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.q
  %.pre.i2.i.i = load i32, ptr %i.an, align 8, !tbaa !344
  %.pre31.i.i = load i32, ptr %i.ao, align 4, !tbaa !345
  br label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.fz = load i8, ptr %i.ax, align 1, !tbaa !347, !range !209, !noundef !210
  %i.ga = trunc nuw i8 %i.fz to i1
  br i1 %i.ga, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.gb = load i64, ptr %i.az, align 8, !tbaa !348
  %i.gc = load ptr, ptr %i.j, align 8, !tbaa !326
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %i.gb
  store ptr %i.gd, ptr %i.j, align 8, !tbaa !326
  %i.ge = load i32, ptr %i.ba, align 8, !tbaa !349
  %.not.i.i3.i.i = icmp slt i32 %i.fu, %i.ge
  br i1 %.not.i.i3.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i, label %bb.t, !prof !212

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i unwind label %.split16.i.i.i

bb.u:                                             ; preds = %bb.r
  %i.gf = load i8, ptr %i.ay, align 2, !tbaa !350, !range !209, !noundef !210
  %i.gg = trunc nuw i8 %i.gf to i1
  br i1 %i.gg, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gh = load i64, ptr %i.az, align 8, !tbaa !348
  %i.gi = load ptr, ptr %i.j, align 8, !tbaa !326
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 %i.gh
  store ptr %i.gj, ptr %i.j, align 8, !tbaa !326
  %i.gk = load i32, ptr %i.ba, align 8, !tbaa !349
  %i.gl = icmp slt i32 %i.fu, %i.gk               ; 3 uses
  %i.gm = load i32, ptr %i.bb, align 4
  %i.gn = icmp sge i32 %i.fu, %i.gm
  %not..i.i.i.i = xor i1 %i.gl, true
  %or.cond.i.i.i.i = select i1 %not..i.i.i.i, i1 true, i1 %i.gn, !prof !351
  %i.go = load ptr, ptr %i.i, align 8
  %i.gp = icmp eq ptr %i.go, null
  %i.gq = select i1 %or.cond.i.i.i.i, i1 true, i1 %i.gp, !prof !351
  br i1 %i.gq, label %bb.w, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i, !prof !189

bb.w:                                             ; preds = %bb.v
  %i.gr = load ptr, ptr %2, align 8, !tbaa !324
  %i.gs = load i32, ptr %i.an, align 8, !tbaa !344
  %i.gt = load i32, ptr %i.ao, align 4, !tbaa !345
  %i.gu = load i32, ptr %i.k, align 8, !tbaa !327
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !229
  %i.gx = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.gw, i32 noundef %i.fu, i32 noundef %i.gs, i32 noundef %i.gt, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %i.l, i1 noundef zeroext %i.gl, i32 noundef %i.gu)
          to label %.noexc4.i.i unwind label %.split16.i.i.i

.noexc4.i.i:                                      ; preds = %bb.w
  %i.gy = zext i1 %i.gl to i8
  store ptr %i.gx, ptr %i.j, align 8, !tbaa !326
  store i8 %i.gy, ptr %i.aw, align 1, !tbaa !346
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.x:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.i.i.i
  store i32 %i.fk, ptr %i.am, align 4, !tbaa !343
  %i.gz = load i32, ptr %i.an, align 8, !tbaa !344
  %i.ha = add nsw i32 %i.gz, 1                    ; 3 uses
  store i32 %i.ha, ptr %i.an, align 8, !tbaa !344
  %i.hb = load i32, ptr %i.v, align 8, !tbaa !341
  %.not.i.i.i = icmp slt i32 %i.ha, %i.hb
  %.pre32.i.i = load i32, ptr %i.ao, align 4, !tbaa !345 ; 2 uses
  br i1 %.not.i.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hc = load i32, ptr %i.u, align 4, !tbaa !340 ; 2 uses
  store i32 %i.hc, ptr %i.an, align 8, !tbaa !344
  %i.hd = add nsw i32 %.pre32.i.i, 1              ; 3 uses
  store i32 %i.hd, ptr %i.ao, align 4, !tbaa !345
  %i.he = load i32, ptr %i.x, align 8, !tbaa !337
  %.not1.i.i.i = icmp slt i32 %i.hd, %i.he
  br i1 %.not1.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.h, align 8, !tbaa !342
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i

bb.aa:                                            ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i
  %i.hf = phi i32 [ %.pre32.i.i, %bb.x ], [ %i.hd, %bb.y ], [ %.pre31.i.i, %._crit_edge.i.i.i ]
  %i.hg = phi i32 [ %i.ha, %bb.x ], [ %i.hc, %bb.y ], [ %.pre.i2.i.i, %._crit_edge.i.i.i ]
  %i.hh = phi i32 [ %i.fk, %bb.x ], [ %i.fk, %bb.y ], [ %i.fu, %._crit_edge.i.i.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.hh, i32 noundef %i.hg, i32 noundef %i.hf)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i unwind label %.split16.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.i.i: ; preds = %bb.aa, %bb.z, %.noexc4.i.i, %bb.v, %bb.u, %bb.t, %bb.s
  %.pre.i = load i32, ptr %i.s, align 4
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

.split16.i.i.i:                                   ; preds = %bb.aa, %bb.w, %bb.t
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.split16.i.i.i, %.split16.us.i.i.i
  %.us-phi.i.i.i = phi { ptr, i32 } [ %i.hi, %.split16.i.i.i ], [ %i.fj, %.split16.us.i.i.i ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  resume { ptr, i32 } %.us-phi.i.i.i

.split.us.i.i.i:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.i.i.i, %bb.d
  %i.hj = load i8, ptr %i.l, align 4, !tbaa !328, !range !209, !noundef !210
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.split.us.i.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !3235, !nonnull !210
  store atomic i8 0, ptr %i.hm seq_cst, align 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.split.us.i.i.i
  %i.hn = load ptr, ptr %i.i, align 8, !tbaa !325
  %.not.i.i.i.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i, label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS1_8ImageBufES5_NS1_3ROIES6_PvllliEUlS6_E_JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS1_8ImageBufES5_NS1_3ROIES6_PvllliEUlS6_E_JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  tail call void @__clang_call_terminate(ptr %i.hp) #46
  unreachable

_ZSt10__invoke_rIvRZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS1_8ImageBufES5_NS1_3ROIES6_PvllliEUlS6_E_JS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESB_E4typeEOSC_DpOSD_.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IhhEEbRKNS1_8ImageBufES7_S2_S2_PvllliEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #3 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS0_8ImageBufES4_NS0_3ROIES5_PvllliEUlS5_E_, ptr %0, align 8, !tbaa !683
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !171
  store ptr %.val, ptr %0, align 8, !tbaa !171
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %.val6, i64 80, i1 false), !tbaa.struct !844
  store ptr %i.a, ptr %0, align 8, !tbaa !171
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !171 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 80) #42
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L11get_pixels_IhhEEbRKNS2_8ImageBufES6_NS2_3ROIES7_PvllliEUlS7_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L11get_pixels_IhN9Imath_3_14halfEEEbRKNS1_8ImageBufES9_S2_S2_PvllliEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.600", align 8 ; 51 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !171   ; 9 uses
  %i.a = load <4 x i32>, ptr %1, align 4, !tbaa !83
  %.sroa.023.0.copyload.i.i = load i32, ptr %1, align 4, !tbaa !83
  %.sroa.525.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load <2 x i32>, ptr %.sroa.525.0..sroa_idx.i.i, align 4, !tbaa !83
  %.sroa.727.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.727.0.copyload.i.i = load i32, ptr %.sroa.727.0..sroa_idx.i.i, align 4, !tbaa !83 ; 2 uses
  %.sroa.828.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.828.0.copyload.i.i = load i32, ptr %.sroa.828.0..sroa_idx.i.i, align 4, !tbaa !83
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3242 ; 3 uses
  %i.e = sub nsw i32 %.sroa.828.0.copyload.i.i, %.sroa.727.0.copyload.i.i
  %.fr17.i.i.i = freeze i32 %i.e                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.f = load ptr, ptr %.val, align 8, !tbaa !3243, !nonnull !210, !align !429
  store ptr %i.f, ptr %2, align 8, !tbaa !324
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 6 uses
  store ptr null, ptr %i.h, align 8, !tbaa !325
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 12 uses
  store ptr null, ptr %i.i, align 8, !tbaa !326
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  store i32 0, ptr %i.g, align 8
  store i32 1, ptr %i.j, align 8, !tbaa !327
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 124 ; 4 uses
  store i8 0, ptr %i.k, align 4, !tbaa !328
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef 0, i1 zeroext poison)
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.023.0.copyload.i.i, -2147483648 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load <2 x i32>, ptr %i.m, align 4
  %i.o = load <4 x i32>, ptr %i.l, align 4
  %i.p = select i1 %.not.i.i.i.i.i, <4 x i32> %i.o, <4 x i32> %i.a ; 3 uses
  %i.q = select i1 %.not.i.i.i.i.i, <2 x i32> %i.n, <2 x i32> %i.b ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  store <4 x i32> %i.p, ptr %i.r, align 4, !tbaa !83
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 6 uses
  store <2 x i32> %i.q, ptr %i.v, align 4, !tbaa !83
  %i.x = extractelement <4 x i32> %i.p, i64 0
  %i.y = extractelement <4 x i32> %i.p, i64 2
  %i.z = extractelement <2 x i32> %i.q, i64 0
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.x, i32 noundef %i.y, i32 noundef %i.z)
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  %i.ab = load i32, ptr %i.s, align 8, !tbaa !339
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %.pre.i.i.i.i.i = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  br i1 %i.ac, label %._crit_edge.i.i.i.i.i, label %bb.b

._crit_edge.i.i.i.i.i:                            ; preds = %bb.a
  %.pre15.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ad = load i32, ptr %i.u, align 8, !tbaa !341
  %i.ae = icmp eq i32 %.pre.i.i.i.i.i, %i.ad
  %.pre16.i.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !337 ; 2 uses
  %i.af = load i32, ptr %i.v, align 4
  %i.ag = icmp eq i32 %i.af, %.pre16.i.i.i.i.i
  %or.cond.i.i.i = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %i.ah = phi i32 [ %.pre15.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %.pre16.i.i.i.i.i, %bb.b ]
  store i8 0, ptr %i.g, align 8, !tbaa !342
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.aa, ptr %i.ai, align 4, !tbaa !343
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 %.pre.i.i.i.i.i, ptr %i.aj, align 8, !tbaa !344
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 %i.ah, ptr %i.ak, align 4, !tbaa !345
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 13 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.au = icmp sgt i32 %.fr17.i.i.i, 0
  br i1 %i.au, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.preheader.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.i.i.i
  %i.be = sext i32 %.sroa.727.0.copyload.i.i to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.fr17.i.i.i to i64 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 88
  %scevgep12.a = getelementptr i8, ptr %i.d, i64 %wide.trip.count.i.i.i
  %i.bo = add nsw i64 %i.be, %wide.trip.count.i.i.i
  %i.bp = shl nsw i64 %i.bo, 1
  %min.iters.check = icmp ult i32 %.fr17.i.i.i, 8
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.preheader.i.i.i
  %i.bq = load i8, ptr %i.g, align 8, !tbaa !342, !range !209, !noundef !210
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %bb.d, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre21.i.i.i = load i32, ptr %i.al, align 4, !tbaa !343
  %.pre33.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i
  %i.bs = load i32, ptr %i.al, align 4, !tbaa !343 ; 2 uses
  %i.bt = load i32, ptr %i.r, align 4, !tbaa !338
  %i.bu = icmp eq i32 %i.bs, %i.bt
  %.pre20.i.i.i = load i32, ptr %i.am, align 8, !tbaa !344 ; 2 uses
  %i.bv = load i32, ptr %i.t, align 4
  %i.bw = icmp eq i32 %.pre20.i.i.i, %i.bv
  %or.cond28.i.i.i = select i1 %i.bu, i1 %i.bw, i1 false
  %.pre34.i.i = load i32, ptr %i.an, align 4, !tbaa !345 ; 2 uses
  %i.bx = load i32, ptr %i.w, align 8
  %i.by = icmp eq i32 %.pre34.i.i, %i.bx
  %or.cond.i.i = select i1 %or.cond28.i.i.i, i1 %i.by, i1 false
  br i1 %or.cond.i.i, label %.split.us.i.i.i, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i: ; preds = %bb.d, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i
  %i.bz = phi i32 [ %.pre33.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre34.i.i, %bb.d ]
  %i.ca = phi i32 [ %.pre21.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %i.bs, %bb.d ]
  %i.cb = phi i32 [ %.pre.i.i.i, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us_crit_edge.i.i.i ], [ %.pre20.i.i.i, %bb.d ]
  %i.cc = load i32, ptr %i.ap, align 8, !tbaa !3244
  %i.cd = sub i32 %i.bz, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = load i64, ptr %i.aq, align 8, !tbaa !3245
  %i.cg = mul i64 %i.cf, %i.ce                    ; 2 uses
  %i.ch = load i32, ptr %i.ar, align 8, !tbaa !3246
  %i.ci = sub i32 %i.cb, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load i64, ptr %i.as, align 8, !tbaa !3247
  %i.cl = mul i64 %i.ck, %i.cj                    ; 2 uses
  %i.cm = load i32, ptr %i.ao, align 8, !tbaa !3248
  %i.cn = sub i32 %i.ca, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = load i64, ptr %i.at, align 8, !tbaa !3249
  %i.cq = mul i64 %i.cp, %i.co                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.d, i64 %i.cg
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cl
  %i.ct = getelementptr i8, ptr %i.cs, i64 %i.cq  ; 2 uses
  %.pre22.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !326 ; 2 uses
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %.pre22.i.i.i, i64 %i.be ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i
  %3 = add i64 %i.cq, %i.cl
  %4 = add i64 %3, %i.cg                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.d, i64 %4
  %scevgep13.a = getelementptr i8, ptr %scevgep12.a, i64 %4
  %scevgep14 = getelementptr i8, ptr %.pre22.i.i.i, i64 %i.bp
  %bound0 = icmp ult ptr %scevgep, %scevgep14
  %bound1 = icmp ult ptr %invariant.gep.i.i.i, %scevgep13.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cu = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %index
  %wide.load = load <8 x i16>, ptr %i.cu, align 2, !tbaa !331, !alias.scope !3250 ; 2 uses
  %i.cv = zext <8 x i16> %wide.load to <8 x i32>
  %i.cw = shl nuw nsw <8 x i32> %i.cv, splat (i32 13)
  %i.cx = and <8 x i32> %i.cw, splat (i32 268427264) ; 6 uses
  %i.cy = sext <8 x i16> %wide.load to <8 x i32>
  %i.cz = and <8 x i32> %i.cy, splat (i32 -2147483648) ; 3 uses
  %i.da = icmp samesign ugt <8 x i32> %i.cx, splat (i32 8388607)
  %i.db = icmp eq <8 x i32> %i.cx, zeroinitializer
  %i.dc = tail call range(i32 4, 33) <8 x i32> @llvm.ctlz.v8i32(<8 x i32> %i.cx, i1 true)
  %i.dd = add nsw <8 x i32> %i.dc, splat (i32 -8) ; 2 uses
  %i.de = shl <8 x i32> %i.cx, %i.dd
  %i.df = or <8 x i32> %i.cz, %i.de
  %i.dg = or <8 x i32> %i.df, splat (i32 947912704)
  %i.dh = shl nuw nsw <8 x i32> %i.dd, splat (i32 23)
  %i.di = sub nuw <8 x i32> %i.dg, %i.dh
  %i.dj = or disjoint <8 x i32> %i.cx, %i.cz      ; 2 uses
  %i.dk = icmp samesign ugt <8 x i32> %i.cx, splat (i32 260046847)
  %i.dl = or <8 x i32> %i.dj, splat (i32 2139095040)
  %i.dm = add nuw nsw <8 x i32> %i.dj, splat (i32 939524096)
  %predphi = select <8 x i1> %i.dk, <8 x i32> %i.dl, <8 x i32> %i.dm
  %predphi15.a = select <8 x i1> %i.da, <8 x i32> %predphi, <8 x i32> %i.di
  %predphi16 = select <8 x i1> %i.db, <8 x i32> %i.cz, <8 x i32> %predphi15.a
  %i.dn = bitcast <8 x i32> %predphi16 to <8 x float>
  %i.do = fmul <8 x float> %i.dn, splat (float 2.550000e+02) ; 2 uses
  %i.dp = fcmp olt <8 x float> %i.do, zeroinitializer
  %i.dq = select <8 x i1> %i.dp, <8 x float> splat (float -5.000000e-01), <8 x float> splat (float 5.000000e-01)
  %i.dr = fadd <8 x float> %i.do, %i.dq           ; 2 uses
  %i.ds = fcmp oge <8 x float> %i.dr, zeroinitializer
  %i.dt = select <8 x i1> %i.ds, <8 x float> %i.dr, <8 x float> zeroinitializer ; 2 uses
  %i.du = fcmp ogt <8 x float> %i.dt, splat (float 2.550000e+02)
  %i.dv = select <8 x i1> %i.du, <8 x float> splat (float 2.550000e+02), <8 x float> %i.dt
  %i.dw = fptoui <8 x float> %i.dv to <8 x i8>
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %index
  store <8 x i8> %i.dw, ptr %i.dx, align 1, !tbaa !172, !alias.scope !3251, !noalias !3250
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !3239

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread.us.i.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.j
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.j ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i.i.i = getelementptr [2 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.dz = load i16, ptr %gep.i.i.i, align 2, !tbaa !331 ; 2 uses
  %i.ea = zext i16 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 13
  %i.ec = and i32 %i.eb, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.i.us.i.i.i = sext i16 %i.dz to i32
  %i.ed = and i32 %.signext.i.i.i.i.i.i.us.i.i.i, -2147483648 ; 3 uses
  %i.ee = icmp samesign ugt i32 %i.ec, 8388607
  br i1 %i.ee, label %bb.g, label %bb.e, !prof !212

bb.e:                                             ; preds = %scalar.ph
  %.not.i.i.i.i.i.i.us.i.i.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i.us.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ef = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ec, i1 true)
  %i.eg = add nsw i32 %i.ef, -8                   ; 2 uses
  %i.eh = shl i32 %i.ec, %i.eg
  %i.ei = or i32 %i.ed, %i.eh
  %i.ej = or i32 %i.ei, 947912704
  %i.ek = shl nuw nsw i32 %i.eg, 23
  %i.el = sub nuw i32 %i.ej, %i.ek
  br label %bb.j

bb.g:                                             ; preds = %scalar.ph
  %i.em = or disjoint i32 %i.ec, %i.ed            ; 2 uses
  %i.en = icmp samesign ult i32 %i.ec, 260046848
  br i1 %i.en, label %bb.i, label %bb.h, !prof !212

bb.h:                                             ; preds = %bb.g
  %i.eo = or i32 %i.em, 2139095040
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ep = add nuw nsw i32 %i.em, 939524096
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i.us.i.i.i = phi i32 [ %i.ep, %bb.i ], [ %i.eo, %bb.h ], [ %i.el, %bb.f ], [ %i.ed, %bb.e ]
  %i.eq = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.us.i.i.i to float
  %i.er = fmul float %i.eq, 2.550000e+02          ; 2 uses
  %i.es = fcmp olt float %i.er, 0.000000e+00
  %i.et = select i1 %i.es, float -5.000000e-01, float 5.000000e-01
  %i.eu = fadd float %i.er, %i.et                 ; 2 uses
  %.inv.i.i.i.i.us.i.i.i = fcmp oge float %i.eu, 0.000000e+00
  %.0.i.i.i.i.i.us.i.i.i = select i1 %.inv.i.i.i.i.us.i.i.i, float %i.eu, float 0.000000e+00 ; 2 uses
  %i.ev = fcmp ogt float %.0.i.i.i.i.i.us.i.i.i, 2.550000e+02
  %.1.i.i.i.i.i.us.i.i.i = select i1 %i.ev, float 2.550000e+02, float %.0.i.i.i.i.i.us.i.i.i
  %i.ew = fptoui float %.1.i.i.i.i.i.us.i.i.i to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ct, i64 %indvars.iv.i.i.i
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !172
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.i.i.i, label %scalar.ph, !llvm.loop !3240

._crit_edge.us.i.i.i:                             ; preds = %bb.j, %middle.block
  %i.ey = load i32, ptr %i.al, align 4, !tbaa !343
  %i.ez = add nsw i32 %i.ey, 1                    ; 7 uses
  store i32 %i.ez, ptr %i.al, align 4, !tbaa !343
  %i.fa = load i32, ptr %i.s, align 8, !tbaa !339
  %i.fb = icmp slt i32 %i.ez, %i.fa
  br i1 %i.fb, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge.us.i.i.i
  %i.fc = load i8, ptr %i.bf, align 1, !tbaa !346, !range !209, !noundef !210
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.l, label %._crit_edge.i8.i.i

._crit_edge.i8.i.i:                               ; preds = %bb.k
  %.pre.i10.i.i = load i32, ptr %i.am, align 8, !tbaa !344
  %.pre35.i.i = load i32, ptr %i.an, align 4, !tbaa !345
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.fe = load i8, ptr %i.bg, align 1, !tbaa !347, !range !209, !noundef !210
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.fg = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.fh = load ptr, ptr %i.i, align 8, !tbaa !326
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %i.fg
  store ptr %i.fi, ptr %i.i, align 8, !tbaa !326
  %i.fj = load i32, ptr %i.bj, align 8, !tbaa !349
  %.not.i.i13.i.i = icmp slt i32 %i.ez, %i.fj
  br i1 %.not.i.i13.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.n, !prof !212

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge unwind label %.split16.us.i.i.i

bb.o:                                             ; preds = %bb.l
  %i.fk = load i8, ptr %i.bh, align 2, !tbaa !350, !range !209, !noundef !210
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fm = load i64, ptr %i.bi, align 8, !tbaa !348
  %i.fn = load ptr, ptr %i.i, align 8, !tbaa !326
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 %i.fm
  store ptr %i.fo, ptr %i.i, align 8, !tbaa !326
  %i.fp = load i32, ptr %i.bj, align 8, !tbaa !349
  %i.fq = icmp slt i32 %i.ez, %i.fp               ; 3 uses
  %i.fr = load i32, ptr %i.bk, align 4
  %i.fs = icmp sge i32 %i.ez, %i.fr
  %not..i.i11.i.i = xor i1 %i.fq, true
  %or.cond.i.i12.i.i = select i1 %not..i.i11.i.i, i1 true, i1 %i.fs, !prof !351
  %i.ft = load ptr, ptr %i.h, align 8
  %i.fu = icmp eq ptr %i.ft, null
  %i.fv = select i1 %or.cond.i.i12.i.i, i1 true, i1 %i.fu, !prof !351
  br i1 %i.fv, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge, !prof !189

bb.q:                                             ; preds = %bb.p
  %i.fw = load ptr, ptr %2, align 8, !tbaa !324
  %i.fx = load i32, ptr %i.am, align 8, !tbaa !344
  %i.fy = load i32, ptr %i.an, align 4, !tbaa !345
  %i.fz = load i32, ptr %i.j, align 8, !tbaa !327
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !229
  %i.gc = invoke noundef ptr @_ZNK11OpenImageIO4v3_112ImageBufImpl6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS0_8ImageBuf8WrapModeE(ptr noundef nonnull align 8 dereferenceable(696) %i.gb, i32 noundef %i.ez, i32 noundef %i.fx, i32 noundef %i.fy, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.bl, ptr noundef nonnull align 4 dereferenceable(4) %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.bk, ptr noundef nonnull align 1 dereferenceable(1) %i.k, i1 noundef zeroext %i.fq, i32 noundef %i.fz)
          to label %.noexc15.i.i unwind label %.split16.us.i.i.i

.noexc15.i.i:                                     ; preds = %bb.q
  %i.gd = zext i1 %i.fq to i8
  store ptr %i.gc, ptr %i.i, align 8, !tbaa !326
  store i8 %i.gd, ptr %i.bf, align 1, !tbaa !346
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEhEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit.split.us.i.i.i.backedge

bb.r:                                             ; preds = %._crit_edge.us.i.i.i
  %i.ge = load i32, ptr %i.r, align 4, !tbaa !338 ; 3 uses
  store i32 %i.ge, ptr %i.al, align 4, !tbaa !343
  %i.gf = load i32, ptr %i.am, align 8, !tbaa !344
  %i.gg = add nsw i32 %i.gf, 1                    ; 3 uses
  store i32 %i.gg, ptr %i.am, align 8, !tbaa !344
  %i.gh = load i32, ptr %i.u, align 8, !tbaa !341
  %.not.i6.i.i = icmp slt i32 %i.gg, %i.gh
  %.pre36.i.i = load i32, ptr %i.an, align 4, !tbaa !345 ; 2 uses
  br i1 %.not.i6.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gi = load i32, ptr %i.t, align 4, !tbaa !340 ; 2 uses
  store i32 %i.gi, ptr %i.am, align 8, !tbaa !344
  %i.gj = add nsw i32 %.pre36.i.i, 1              ; 3 uses
  store i32 %i.gj, ptr %i.an, align 4, !tbaa !345
  %i.gk = load i32, ptr %i.w, align 8, !tbaa !337
  %.not1.i7.i.i = icmp slt i32 %i.gj, %i.gk
end_hunk_12

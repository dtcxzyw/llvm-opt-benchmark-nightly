inline.NumInlined: 142
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN7Imf_3_413hufUncompressEPKciPti:bb.a
  %4 = alloca %"class.Imf_3_4::FastHufDecoder", align 8 ; 7 uses
  %i.c = icmp slt i32 %1, 20
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not61 = icmp eq i32 %3, 0
  br i1 %.not61, label %bb.dy, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #14
  unreachable

common.resume:                                    ; preds = %bb.dz, %bb.m, %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.m, %bb.i ], [ %i.v, %bb.m ], [ %.pn59, %bb.dz ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #13
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 1                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 1              ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 1              ; 6 uses
  %or.cond = icmp ugt i32 %i.f, 65536
  %i.k = icmp ugt i32 %i.h, 65536
  %or.cond5 = or i1 %or.cond, %i.k
  br i1 %or.cond5, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull @.str.1)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #13
  br label %common.resume

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !36
  %i.o = sext i32 %i.j to i64                     ; 2 uses
  %i.p = add nsw i64 %i.o, 7
  %i.q = lshr i64 %i.p, 3                         ; 2 uses
  %i.r = zext nneg i32 %1 to i64                  ; 3 uses
  %i.s = add nuw nsw i64 %i.q, 20
  %i.t = icmp samesign ugt i64 %i.s, %i.r
  br i1 %i.t, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.u = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull @.str)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #14
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.u) #13
  br label %common.resume

bb.n:                                             ; preds = %bb.j
  %i.w = tail call noundef zeroext i1 @_ZN7Imf_3_414FastHufDecoder7enabledEv()
  %i.x = icmp sgt i32 %i.j, 128
  %or.cond7 = and i1 %i.x, %i.w
  br i1 %or.cond7, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.y = ptrtoint ptr %0 to i64
  %i.z = add nsw i32 %1, -20
  call void @_ZN7Imf_3_414FastHufDecoderC1ERPKciiii(ptr noundef nonnull align 8 dereferenceable(21456) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.z, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.h)
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !36  ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.q, %i.y
  %i.ad = add i64 %i.ac, %i.ab
  %.not = icmp ugt i64 %i.ad, %i.r
  br i1 %.not, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ae = call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull @.str)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #14
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ae) #13
  br label %.body

bb.s:                                             ; preds = %bb.q, %bb.t
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.s ], [ %i.af, %bb.r ]
  call void @_ZN7Imf_3_414FastHufDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(21456) dereferenceable(21456) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.dz

bb.t:                                             ; preds = %bb.o
  invoke void @_ZN7Imf_3_414FastHufDecoder6decodeEPKhiPti(ptr noundef nonnull align 8 dereferenceable(21456) %4, ptr noundef %i.aa, i32 noundef %i.j, ptr noundef %2, i32 noundef %3)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  call void @_ZN7Imf_3_414FastHufDecoderD1Ev(ptr noundef nonnull align 8 dead_on_return(21456) dereferenceable(21456) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.dx

bb.v:                                             ; preds = %bb.n
  %i.ah = tail call noalias noundef nonnull dereferenceable(524296) ptr @_Znam(i64 noundef 524296) #11 ; 14 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %i.ah, i8 0, i64 524296, i1 false)
  %i.ai = invoke noalias noundef nonnull dereferenceable(262144) ptr @_Znam(i64 noundef 262144) #11
          to label %bb.w unwind label %bb.ar      ; 9 uses

bb.w:                                             ; preds = %bb.v
  %i.aj = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.ak = ptrtoint ptr %0 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(262144) %i.ai, i8 0, i64 262144, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524296) %i.ah, i8 0, i64 524296, i1 false)
  %.not74.i = icmp samesign ugt i32 %i.f, %i.h    ; 2 uses
  br i1 %.not74.i, label %._crit_edge81.i, label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %bb.w
  %i.al = add nsw i32 %1, -20
  %i.am = zext nneg i32 %i.al to i64              ; 2 uses
  %i.an = add nuw nsw i32 %i.h, 1                 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.al, %.lr.ph80.i
  %.03078.i = phi i32 [ %i.f, %.lr.ph80.i ], [ %i.db, %bb.al ] ; 5 uses
  %.04977.i = phi i32 [ 0, %.lr.ph80.i ], [ %.150.i, %bb.al ] ; 3 uses
  %.05176.i = phi i64 [ 0, %.lr.ph80.i ], [ %.152.i, %bb.al ] ; 2 uses
  %.05575.i = phi ptr [ %i.n, %.lr.ph80.i ], [ %.156.i, %bb.al ] ; 3 uses
  %i.ao = ptrtoint ptr %.05575.i to i64
  %i.ap = sub i64 %i.ao, %i.aj
  %i.aq = icmp sgt i64 %i.ap, %i.am
  br i1 %i.aq, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ar = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ar, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %bb.z

common.resume.i:                                  ; preds = %bb.ak, %bb.ag, %bb.ad, %bb.z
  %.sink.i = phi ptr [ %i.ct, %bb.ak ], [ %i.cm, %bb.ag ], [ %i.bo, %bb.ad ], [ %i.ar, %bb.z ]
  %common.resume.op.i = phi { ptr, i32 } [ %i.cv, %bb.ak ], [ %i.cn, %bb.ag ], [ %i.bp, %bb.ad ], [ %i.as, %bb.z ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink.i) #13
  br label %_ZN7Imf_3_49AutoArrayINS_12_GLOBAL__N_16HufDecELi16384EED2Ev.exit127

bb.z:                                             ; preds = %bb.y
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.aa:                                            ; preds = %bb.x
  %i.at = icmp slt i32 %.04977.i, 6
  br i1 %i.at, label %.lr.ph.i.i, label %_ZN7Imf_3_412_GLOBAL__N_17getBitsEiRmRiRPKc.exit.i

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.i.i
  %i.au = phi i32 [ %i.bc, %.lr.ph.i.i ], [ %.04977.i, %bb.aa ] ; 2 uses
  %i.av = phi i64 [ %i.bb, %.lr.ph.i.i ], [ %.05176.i, %bb.aa ]
  %i.aw = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.05575.i, %bb.aa ] ; 2 uses
  %i.ax = shl i64 %i.av, 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !31
  %i.ba = zext i8 %i.az to i64
  %i.bb = or disjoint i64 %i.ax, %i.ba            ; 2 uses
  %i.bc = add nsw i32 %i.au, 8                    ; 2 uses
  %i.bd = icmp slt i32 %i.au, -2
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZN7Imf_3_412_GLOBAL__N_17getBitsEiRmRiRPKc.exit.i, !llvm.loop !38

_ZN7Imf_3_412_GLOBAL__N_17getBitsEiRmRiRPKc.exit.i: ; preds = %.lr.ph.i.i, %bb.aa
  %.257.i = phi ptr [ %.05575.i, %bb.aa ], [ %i.ay, %.lr.ph.i.i ] ; 6 uses
  %.253.i = phi i64 [ %.05176.i, %bb.aa ], [ %i.bb, %.lr.ph.i.i ] ; 5 uses
  %.lcssa.i.i = phi i32 [ %.04977.i, %bb.aa ], [ %i.bc, %.lr.ph.i.i ] ; 3 uses
  %i.be = add nsw i32 %.lcssa.i.i, -6             ; 4 uses
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = lshr i64 %.253.i, %i.bf
  %i.bh = and i64 %i.bg, 63                       ; 4 uses
  %i.bi = sext i32 %.03078.i to i64               ; 4 uses
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bi
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !10
  %i.bk = icmp eq i64 %i.bh, 63
  br i1 %i.bk, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_17getBitsEiRmRiRPKc.exit.i
  %i.bl = ptrtoint ptr %.257.i to i64
  %i.bm = sub i64 %i.bl, %i.aj
  %i.bn = icmp sgt i64 %i.bm, %i.am
  br i1 %i.bn, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull @.str.2)
          to label %.invoke unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.ae:                                            ; preds = %bb.ab
  %i.bq = icmp samesign ult i32 %.lcssa.i.i, 14
  br i1 %i.bq, label %.lr.ph.i41.i, label %_ZN7Imf_3_412_GLOBAL__N_17getBitsEiRmRiRPKc.exit42.i

.lr.ph.i41.i:                                     ; preds = %bb.ae
  %i.br = shl i64 %.253.i, 8
  %i.bs = getelementptr inbounds nuw i8, ptr %.257.i, i64 1
  %i.bt = load i8, ptr %.257.i, align 1, !tbaa !31
  %i.bu = zext i8 %i.bt to i64
  %i.bv = or disjoint i64 %i.br, %i.bu
  %i.bw = add nuw nsw i32 %.lcssa.i.i, 2
  br label %_ZN7Imf_3_412_GLOBAL__N_17getBitsEiRmRiRPKc.exit42.i, !llvm.loop !38

_ZN7Imf_3_412_GLOBAL__N_17getBitsEiRmRiRPKc.exit42.i: ; preds = %.lr.ph.i41.i, %bb.ae
  %.358.i = phi ptr [ %i.bs, %.lr.ph.i41.i ], [ %.257.i, %bb.ae ]
  %.354.i = phi i64 [ %i.bv, %.lr.ph.i41.i ], [ %.253.i, %bb.ae ] ; 2 uses
  %.lcssa.i38.i = phi i32 [ %i.bw, %.lr.ph.i41.i ], [ %i.be, %bb.ae ]
  %i.bx = add nsw i32 %.lcssa.i38.i, -8           ; 2 uses
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = lshr i64 %.354.i, %i.by                 ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 255
  %i.cc = add i32 %.03078.i, 6
  %i.cd = add i32 %i.cc, %i.cb
  %i.ce = icmp sgt i32 %i.cd, %i.an
  br i1 %i.ce, label %bb.af, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %_ZN7Imf_3_412_GLOBAL__N_17getBitsEiRmRiRPKc.exit42.i
  %i.cf = shl nsw i64 %i.bi, 3
  %scevgep90.i = getelementptr i8, ptr %i.ah, i64 %i.cf
  %i.cg = and i64 %i.bz, 255                      ; 2 uses
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = add nuw nsw i64 %i.ch, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep90.i, i8 0, i64 %i.ci, i1 false), !tbaa !10
  %i.cj = add nsw i64 %i.bi, 5
  %i.ck = add nsw i64 %i.cj, %i.cg
  %i.cl = trunc nsw i64 %i.ck to i32
  br label %bb.al

bb.af:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_17getBitsEiRmRiRPKc.exit42.i
  %i.cm = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cm, ptr noundef nonnull @.str.3)
          to label %.invoke unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

bb.ah:                                            ; preds = %_ZN7Imf_3_412_GLOBAL__N_17getBitsEiRmRiRPKc.exit.i
  %i.co = icmp samesign ugt i64 %i.bh, 58
  br i1 %i.co, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cp = trunc nuw nsw i64 %i.bh to i32          ; 2 uses
  %i.cq = add nsw i32 %i.cp, -57                  ; 2 uses
  %i.cr = add nsw i32 %i.cq, %.03078.i
  %i.cs = icmp sgt i32 %i.cr, %i.an
  br i1 %i.cs, label %bb.aj, label %._crit_edge.i

bb.aj:                                            ; preds = %bb.ai
  %i.ct = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, ptr noundef nonnull @.str.3)
          to label %.invoke unwind label %bb.ak

.invoke:                                          ; preds = %bb.aj, %bb.af, %bb.ac, %bb.y
  %i.cu = phi ptr [ %i.cm, %bb.af ], [ %i.bo, %bb.ac ], [ %i.ar, %bb.y ], [ %i.ct, %bb.aj ]
  invoke void @__cxa_throw(ptr nonnull %i.cu, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #14
          to label %.cont unwind label %bb.as

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i

._crit_edge.i:                                    ; preds = %bb.ai
  %i.cw = shl nsw i64 %i.bi, 3
  %scevgep.i = getelementptr i8, ptr %i.ah, i64 %i.cw
  %i.cx = zext nneg i32 %i.cq to i64
  %i.cy = shl nuw nsw i64 %i.cx, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.cy, i1 false), !tbaa !10
  %i.cz = add i32 %.03078.i, -58
  %i.da = add i32 %i.cz, %i.cp
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.i, %bb.ah, %.preheader.preheader.i
  %.156.i = phi ptr [ %.358.i, %.preheader.preheader.i ], [ %.257.i, %._crit_edge.i ], [ %.257.i, %bb.ah ] ; 2 uses
  %.152.i = phi i64 [ %.354.i, %.preheader.preheader.i ], [ %.253.i, %._crit_edge.i ], [ %.253.i, %bb.ah ]
  %.150.i = phi i32 [ %i.bx, %.preheader.preheader.i ], [ %i.be, %._crit_edge.i ], [ %i.be, %bb.ah ]
  %.3.i = phi i32 [ %i.cl, %.preheader.preheader.i ], [ %i.da, %._crit_edge.i ], [ %.03078.i, %bb.ah ] ; 2 uses
  %i.db = add nsw i32 %.3.i, 1
  %.not.not.i = icmp slt i32 %.3.i, %i.h
  br i1 %.not.not.i, label %bb.x, label %._crit_edge81.i, !llvm.loop !39

._crit_edge81.i:                                  ; preds = %bb.al, %bb.w
  %i.dc = phi ptr [ %i.n, %bb.w ], [ %.156.i, %bb.al ] ; 5 uses
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(472) %i.a, i8 0, i64 472, i1 false), !tbaa !10
  br label %.preheader28.i.i

.preheader28.i.i:                                 ; preds = %.preheader28.i.i.1, %._crit_edge81.i
  %indvars.iv.i.i = phi i64 [ 0, %._crit_edge81.i ], [ %indvars.iv.next.i.i.3, %.preheader28.i.i.1 ] ; 6 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.de ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !10
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.df, align 8, !tbaa !10
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, 65536
  br i1 %exitcond.not.i.i, label %.preheader27.i.i, label %.preheader28.i.i.1

.preheader28.i.i.1:                               ; preds = %.preheader28.i.i
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dk ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !10
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.dl, align 8, !tbaa !10
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dq ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !10
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dw ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !10
  %i.dz = add i64 %i.dy, 1
  store i64 %i.dz, ptr %i.dx, align 8, !tbaa !10
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %.preheader28.i.i

.preheader27.i.i:                                 ; preds = %.preheader28.i.i, %.preheader27.i.i
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.1, %.preheader27.i.i ], [ 58, %.preheader28.i.i ] ; 3 uses
  %.02431.i.i = phi i64 [ %i.eh, %.preheader27.i.i ], [ 0, %.preheader28.i.i ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv36.i.i ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 16, !tbaa !10
  %i.ec = add i64 %i.eb, %.02431.i.i
  %i.ed = lshr i64 %i.ec, 1                       ; 2 uses
  store i64 %.02431.i.i, ptr %i.ea, align 16, !tbaa !10
  %indvars.iv.next37.i.i = add nsw i64 %indvars.iv36.i.i, -1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next37.i.i ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !10
  %i.eg = add i64 %i.ef, %i.ed
  %i.eh = lshr i64 %i.eg, 1
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !10
  %indvars.iv.next37.i.i.1 = add nsw i64 %indvars.iv36.i.i, -2
  %.not353 = icmp eq i64 %indvars.iv.next37.i.i, 1
  br i1 %.not353, label %.preheader.i.i, label %.preheader27.i.i, !llvm.loop !28

.preheader.i.i:                                   ; preds = %.preheader27.i.i, %bb.an
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i, %bb.an ], [ 0, %.preheader27.i.i ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv39.i.i ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !10 ; 2 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.preheader.i.i
  %i.em = and i64 %i.ej, 2147483647               ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.em ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10 ; 2 uses
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !10
  %i.eq = shl i64 %i.eo, 6
  %i.er = or i64 %i.eq, %i.em
  store i64 %i.er, ptr %i.ei, align 8, !tbaa !10
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader.i.i
  %indvars.iv.next40.i.i = add nuw nsw i64 %indvars.iv39.i.i, 1 ; 2 uses
  %exitcond42.not.i.i = icmp eq i64 %indvars.iv.next40.i.i, 65537
  br i1 %exitcond42.not.i.i, label %bb.ao, label %.preheader.i.i, !llvm.loop !29

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.es = ptrtoint ptr %i.dc to i64
  %.neg55 = add i64 %i.r, %i.ak
  %i.et = sub i64 %.neg55, %i.es
  %i.eu = shl nsw i64 %i.et, 3
  %i.ev = icmp slt i64 %i.eu, %i.o
  br i1 %i.ev, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.ew = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ew, ptr noundef nonnull @.str.4)
          to label %.invoke224 unwind label %bb.aq

.invoke224:                                       ; preds = %bb.ap, %bb.ds, %bb.dq, %bb.do, %bb.dj, %bb.dg, %bb.da, %.thread.thread.i, %bb.cv, %bb.cq, %bb.cn, %bb.cg, %bb.cd, %bb.by, %bb.bv, %bb.bp, %bb.bl, %bb.bb, %bb.ax
  %i.ex = phi ptr [ %i.qn, %bb.ds ], [ %i.qg, %bb.dq ], [ %i.fo, %bb.ax ], [ %i.fw, %bb.bb ], [ %i.ib, %bb.bl ], [ %i.jd, %bb.bp ], [ %i.jv, %bb.bv ], [ %i.jz, %bb.by ], [ %i.kv, %bb.cd ], [ %i.kz, %bb.cg ], [ %i.mr, %bb.cn ], [ %i.mv, %bb.cq ], [ %i.nr, %bb.cv ], [ %i.nu, %.thread.thread.i ], [ %i.om, %bb.da ], [ %i.pe, %bb.dg ], [ %i.pi, %bb.dj ], [ %i.qe, %bb.do ], [ %i.ew, %bb.ap ]
  invoke void @__cxa_throw(ptr nonnull %i.ex, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #14
          to label %.cont225 unwind label %.loopexit.split-lp

.cont225:                                         ; preds = %.invoke224
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.ew) #13
  br label %.body78

bb.ar:                                            ; preds = %bb.v
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7Imf_3_49AutoArrayImLi65537EED2Ev.exit128

bb.as:                                            ; preds = %.invoke
  %i.fa = landingpad { ptr, i32 }
end_hunk_0

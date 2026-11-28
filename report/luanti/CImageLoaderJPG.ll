Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CImageLoaderJPG?download=true
inline.NumInlined: 107
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5video15CImageLoaderJPG9loadImageEPN2io9IReadFileE:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @_ZN5video15CImageLoaderJPG11init_sourceEP22jpeg_decompress_struct, ptr %i.al, align 8, !tbaa !66
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @_ZN5video15CImageLoaderJPG17fill_input_bufferEP22jpeg_decompress_struct, ptr %i.am, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @_ZN5video15CImageLoaderJPG15skip_input_dataEP22jpeg_decompress_structl, ptr %i.an, align 8, !tbaa !68
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @jpeg_resync_to_restart, ptr %i.ao, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @_ZN5video15CImageLoaderJPG11term_sourceEP22jpeg_decompress_struct, ptr %i.ap, align 8, !tbaa !70
  %i.aq = invoke i32 @jpeg_read_header(ptr noundef nonnull %3, i32 noundef 1)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !71
  %i.at = icmp eq i32 %i.as, 4                    ; 3 uses
  %spec.select = select i1 %i.at, i32 4, i32 2
  %spec.select122 = select i1 %i.at, i32 4, i32 3
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 %spec.select, ptr %i.au, align 8, !tbaa !72
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  store i32 %spec.select122, ptr %i.av, align 8, !tbaa !73
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 80
  store double 2.200000e+00, ptr %i.aw, align 8, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 100
  store i32 0, ptr %i.ax, align 4, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !76
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !77
  %i.bc = icmp ult i32 %i.az, 23001
  %i.bd = icmp ult i32 %i.bb, 23001
  %i.be = and i1 %i.bc, %i.bd
  br i1 %i.be, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @longjmp(ptr noundef nonnull %i.ab, i32 noundef 1) #23
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bf = invoke i32 @jpeg_start_decompress(ptr noundef nonnull %3)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.bg = load i32, ptr %i.ay, align 8, !tbaa !76 ; 4 uses
  %i.bh = load i32, ptr %i.av, align 8, !tbaa !73
  %i.bi = mul i32 %i.bh, %i.bg                    ; 6 uses
  %i.bj = load i32, ptr %i.ba, align 4, !tbaa !77 ; 7 uses
  %i.bk = mul i32 %i.bi, %i.bj
  %i.bl = zext i32 %i.bk to i64
  %i.bm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #25
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

bb.u:                                             ; preds = %bb.t
  %i.bn = zext i32 %i.bj to i64                   ; 3 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bo) #25
          to label %.preheader101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.preheader101:                                    ; preds = %bb.u
  %.not108 = icmp eq i32 %i.bj, 0
  br i1 %.not108, label %.preheader99, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader101
  %xtraiter = and i64 %i.bn, 3                    ; 3 uses
  %i.bq = icmp ult i32 %i.bj, 4
  br i1 %i.bq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bn, 4294967292
  br label %.lr.ph

.preheader99.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader99, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader99.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader99.loopexit.unr-lcssa ]
  %lcmp.mod124 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod124)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.br = trunc nuw i64 %indvars.iv.epil to i32
  %i.bs = mul i32 %i.bi, %i.br
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.epil
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !78
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader99, label %.lr.ph.epil, !llvm.loop !60

.preheader99:                                     ; preds = %.preheader99.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader101
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 168 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 140 ; 2 uses
  %i.by = load i32, ptr %i.bw, align 8, !tbaa !80
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !81 ; 2 uses
  %i.ca = icmp ult i32 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph104, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.cb = trunc nuw i64 %indvars.iv to i32
  %i.cc = mul i32 %i.bi, %i.cb
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !78
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.cg = trunc nuw i64 %indvars.iv.next to i32
  %i.ch = mul i32 %i.bi, %i.cg
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !78
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.cl = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.cm = mul i32 %i.bi, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.1
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !78
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.next.2 to i32
  %i.cr = mul i32 %i.bi, %i.cq
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next.2
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !78
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader99.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !61

.lr.ph104:                                        ; preds = %.preheader99, %bb.v
  %i.cv = phi i32 [ %i.dc, %bb.v ], [ %i.bz, %.preheader99 ]
  %.058103 = phi i32 [ %i.da, %bb.v ], [ 0, %.preheader99 ] ; 3 uses
  %i.cw = zext i32 %.058103 to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.cw
  %i.cy = sub i32 %i.cv, %.058103
  %i.cz = invoke i32 @jpeg_read_scanlines(ptr noundef nonnull %3, ptr noundef nonnull %i.cx, i32 noundef %i.cy)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.lr.ph104
  %i.da = add i32 %i.cz, %.058103
  %i.db = load i32, ptr %i.bw, align 8, !tbaa !80
  %i.dc = load i32, ptr %i.bx, align 4, !tbaa !81 ; 2 uses
  %i.dd = icmp ult i32 %i.db, %i.dc
  br i1 %i.dd, label %.lr.ph104, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.v, %.preheader99
  call void @_ZdaPv(ptr noundef nonnull %i.bp) #21
  %i.de = invoke i32 @jpeg_finish_decompress(ptr noundef nonnull %3)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.w:                                             ; preds = %._crit_edge
  invoke void @jpeg_destroy_decompress(ptr noundef nonnull %3)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  br i1 %i.at, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.df = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i32 %i.bg, ptr %6, align 4, !tbaa !83
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.bj, ptr %i.dg, align 4, !tbaa !84
  invoke void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEE(ptr noundef nonnull align 8 dereferenceable(64) %i.df, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.dh = mul i32 %i.bg, 3
  %i.di = mul i32 %i.dh, %i.bj                    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !88 ; 4 uses
  %.not76 = icmp ne ptr %i.dk, null
  %i.dl = icmp ne i32 %i.di, 0
  %or.cond = and i1 %.not76, %i.dl
  br i1 %or.cond, label %.lr.ph107, label %.loopexit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph104, %bb.s, %bb.p, %bb.o, %._crit_edge, %bb.w, %bb.u, %bb.t, %bb.ac, %bb.y
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit.split-lp.sink.split

.lr.ph107:                                        ; preds = %bb.aa, %.lr.ph107
  %.0106 = phi i32 [ %i.fc, %.lr.ph107 ], [ 0, %bb.aa ] ; 5 uses
  %.056105 = phi i32 [ %i.fb, %.lr.ph107 ], [ 0, %bb.aa ] ; 4 uses
  %i.dn = or disjoint i32 %.0106, 2
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !19
  %i.dr = uitofp i8 %i.dq to float
  %i.ds = or disjoint i32 %.0106, 3
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dt ; 3 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !19
  %i.dw = uitofp i8 %i.dv to float
  %i.dx = fdiv nnan float %i.dw, 2.550000e+02
  %i.dy = fmul float %i.dx, %i.dr
  %i.dz = fptosi float %i.dy to i8
  %i.ea = zext i32 %.056105 to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ea
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !19
  %i.ec = or disjoint i32 %.0106, 1
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !19
  %i.eg = uitofp i8 %i.ef to float
  %i.eh = load i8, ptr %i.du, align 1, !tbaa !19
  %i.ei = uitofp i8 %i.eh to float
  %i.ej = fdiv nnan float %i.ei, 2.550000e+02
  %i.ek = fmul float %i.ej, %i.eg
  %i.el = fptosi float %i.ek to i8
  %i.em = add nuw i32 %.056105, 1
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.en
  store i8 %i.el, ptr %i.eo, align 1, !tbaa !19
  %i.ep = zext i32 %.0106 to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !19
  %i.es = uitofp i8 %i.er to float
  %i.et = load i8, ptr %i.du, align 1, !tbaa !19
  %i.eu = uitofp i8 %i.et to float
  %i.ev = fdiv nnan float %i.eu, 2.550000e+02
  %i.ew = fmul float %i.ev, %i.es
  %i.ex = fptosi float %i.ew to i8
  %i.ey = add i32 %.056105, 2
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  store i8 %i.ex, ptr %i.fa, align 1, !tbaa !19
  %i.fb = add i32 %.056105, 3                     ; 2 uses
  %i.fc = add i32 %.0106, 4
  %i.fd = icmp ult i32 %i.fb, %i.di
  br i1 %i.fd, label %.lr.ph107, label %.loopexit, !llvm.loop !63

.loopexit:                                        ; preds = %.lr.ph107, %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #21
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x
  %i.fe = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i32 %i.bg, ptr %7, align 4, !tbaa !83
  %i.ff = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %i.bj, ptr %i.ff, align 4, !tbaa !84
  invoke void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEEPvbb(ptr noundef nonnull align 8 dereferenceable(64) %i.fe, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull %i.bm, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.loopexit.split-lp.sink.split

bb.ag:                                            ; preds = %.loopexit, %bb.ae
  %.057 = phi ptr [ %i.df, %.loopexit ], [ %i.fe, %bb.ae ]
  call void @_ZdaPv(ptr noundef nonnull %i.q) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ah

.loopexit.split-lp.sink.split:                    ; preds = %bb.af, %bb.ab
  %.sink = phi ptr [ %i.df, %bb.ab ], [ %i.fe, %bb.af ]
  %.pn77.pn.pn.pn.ph = phi { ptr, i32 } [ %i.dm, %bb.ab ], [ %i.fg, %bb.af ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 64) #21
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.sink.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp123, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn77.pn.pn.pn.ph, %.loopexit.split-lp.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.k
  %.069 = phi ptr [ null, %bb.k ], [ %.057, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.fh = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.e
  br i1 %i.fi, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.ah
  %i.fj = load i64, ptr %i.e, align 8, !tbaa !19
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #21
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ak

bb.ai:                                            ; preds = %.loopexit.split-lp, %bb.m
  %.pn82 = phi { ptr, i32 } [ %i.ae, %bb.m ], [ %.pn77.pn.pn.pn, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.l
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.ai ], [ %i.ad, %bb.l ]
  %i.fl = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.e
  br i1 %i.fm, label %_ZN4core6stringIcED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %bb.aj
  %i.fn = load i64, ptr %i.e, align 8, !tbaa !19
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #21
  br label %_ZN4core6stringIcED2Ev.exit91

_ZN4core6stringIcED2Ev.exit91:                    ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

bb.ak:                                            ; preds = %bb.a, %_ZN4core6stringIcED2Ev.exit
  %.170 = phi ptr [ %.069, %_ZN4core6stringIcED2Ev.exit ], [ null, %bb.a ]
  ret ptr %.170
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #13

declare void @jpeg_destroy_decompress(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare i32 @jpeg_resync_to_restart(ptr noundef, i32 noundef) #11

declare i32 @jpeg_read_header(ptr noundef, i32 noundef) local_unnamed_addr #11

declare i32 @jpeg_start_decompress(ptr noundef) local_unnamed_addr #11

declare i32 @jpeg_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

declare i32 @jpeg_finish_decompress(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #12

declare void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #11

declare void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEEPvbb(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define noalias noundef nonnull ptr @_ZN5video20createImageLoaderJPGEv() local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 1, ptr %i.c, align 8, !tbaa !11
  store ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTVN5video15CImageLoaderJPGE, i64 24), ptr %i.a, align 8, !tbaa !9
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5video15CImageLoaderJPGE, i64 88), ptr %i.b, align 8, !tbaa !9
  ret ptr %i.a
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video12IImageLoaderD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video12IImageLoaderD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5video12IImageLoaderD1Ev(ptr noundef %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5video12IImageLoaderD0Ev(ptr noundef %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #23
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN4core15isFileExtensionERKNS_6stringIcEES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext 46, i64 noundef -1) #22
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit42.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i32 %i.b, 1                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, 1
  %.not.i = icmp ult i32 %i.d, %i.h
  br i1 %.not.i, label %bb.c, label %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit42.thread

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !20     ; 4 uses
  %i.j = zext nneg i32 %i.d to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !19    ; 4 uses
  %.not2025.i = icmp eq i8 %i.l, 0                ; 3 uses
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !20  ; 2 uses
  br i1 %.not2025.i, label %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %i.m = phi i8 [ %i.ac, %bb.e ], [ %i.l, %bb.c ]
  %.026.i = phi i32 [ %i.y, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.n = zext i32 %.026.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19    ; 2 uses
  %.not21.i = icmp eq i8 %i.p, 0
  br i1 %.not21.i, label %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = sext i8 %i.m to i32                      ; 3 uses
  %i.r = add nsw i32 %i.q, -65
  %or.cond.i.i = icmp ult i32 %i.r, 26
  %i.s = add nuw nsw i32 %i.q, 32
  %i.t = select i1 %or.cond.i.i, i32 %i.s, i32 %i.q
  %i.u = sext i8 %i.p to i32                      ; 3 uses
  %i.v = add nsw i32 %i.u, -65
  %or.cond.i23.i = icmp ult i32 %i.v, 26
  %i.w = add nuw nsw i32 %i.u, 32
  %i.x = select i1 %or.cond.i23.i, i32 %i.w, i32 %i.u
  %.not22.i = icmp eq i32 %i.t, %i.x
  br i1 %.not22.i, label %bb.e, label %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.y = add i32 %.026.i, 1                       ; 3 uses
  %i.z = add i32 %i.y, %i.d
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19  ; 2 uses
  %.not20.i = icmp eq i8 %i.ac, 0
  br i1 %.not20.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !89

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %i.ad = zext i32 %i.y to i64
  br label %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit

_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit: ; preds = %bb.c, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %i.ad, %._crit_edge.loopexit.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.0.lcssa.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit42.thread, label %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit.thread

_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit.thread: ; preds = %bb.d, %.lr.ph.i, %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit
  %.pre.i16 = load ptr, ptr %2, align 8, !tbaa !20 ; 2 uses
  br i1 %.not2025.i, label %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit27, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit.thread, %bb.g
  %i.ah = phi i8 [ %i.ax, %bb.g ], [ %i.l, %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit.thread ]
  %.026.i18 = phi i32 [ %i.at, %bb.g ], [ 0, %_ZNK4core6stringIcE28equals_substring_ignore_caseERKS1_j.exit.thread ] ; 2 uses
  %i.ai = zext i32 %.026.i18 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre.i16, i64 %i.ai
end_hunk_0

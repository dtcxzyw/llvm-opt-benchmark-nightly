Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tf_importer?download=true
inline.NumInlined: 8193
inline.NumDeleted: 1952
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseL2NormalizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE:bb.a
  %i.bb = icmp slt i32 %i.ba, 2                   ; 2 uses
  br i1 %i.bb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.u:                                             ; preds = %bb.s
  %i.bd = load i32, ptr %7, align 8, !tbaa !290
  %i.be = and i32 %i.bd, 16384
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = load i32, ptr %i.at, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  %or.cond.i = select i1 %i.bf, i1 true, i1 %i.bh
  br i1 %or.cond.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.w:                                             ; preds = %bb.u
  %i.bj = load i32, ptr %i.au, align 8, !tbaa !40
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = mul i64 %i.az, %indvars.iv
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bl
  br label %_ZN2cv3Mat2atIiEERT_i.exit

bb.y:                                             ; preds = %bb.w
  %i.bn = load i32, ptr %i.av, align 4, !tbaa !300 ; 3 uses
  %i.bo = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bp = sdiv i32 %i.bo, %i.bn                   ; 2 uses
  %i.bq = mul nsw i32 %i.bp, %i.bn                ; 0 uses
  %.recomposed = srem i32 %i.bo, %i.bn
  %i.br = sext i32 %i.bp to i64
  %i.bs = mul i64 %i.az, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bs
  %i.bu = sext i32 %.recomposed to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu
  br label %_ZN2cv3Mat2atIiEERT_i.exit

_ZN2cv3Mat2atIiEERT_i.exit:                       ; preds = %bb.t, %bb.v, %bb.x, %bb.y
  %.0.i = phi ptr [ %i.bc, %bb.t ], [ %i.bi, %bb.v ], [ %i.bm, %bb.x ], [ %i.bv, %bb.y ]
  %i.bw = load i32, ptr %.0.i, align 4, !tbaa !40 ; 6 uses
  %i.bx = add i32 %i.bw, 4                        ; 3 uses
  %or.cond.i66 = icmp ult i32 %i.bx, 8
  br i1 %or.cond.i66, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %_ZN2cv3Mat2atIiEERT_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.249, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.z
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_16toNCHWEi, ptr noundef nonnull @.str.2, i32 noundef 58) #29
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc
  unreachable

bb.ab:                                            ; preds = %.noexc
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ab
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !56
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %.body

bb.ac:                                            ; preds = %_ZN2cv3Mat2atIiEERT_i.exit
  %i.ce = icmp eq i32 %i.bw, 0
  br i1 %i.ce, label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_16toNCHWEi.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = icmp sgt i32 %i.bw, 0
  br i1 %i.cf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.cmp.i = icmp samesign ult i32 %i.bw, 3
  %i.cg = select i1 %.cmp.i, i32 1, i32 -2
  %i.ch = add nsw i32 %i.cg, %i.bw
  br label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_16toNCHWEi.exit

bb.af:                                            ; preds = %bb.ad
  %.urem13.i = add nsw i32 %i.bw, 1
  %.cmp14.i = icmp samesign ult i32 %i.bx, 3
  %i.ci = select i1 %.cmp14.i, i32 %i.bx, i32 %.urem13.i
  %i.cj = add nuw nsw i32 %i.ci, 1
  br label %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_16toNCHWEi.exit

_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_16toNCHWEi.exit: ; preds = %bb.af, %bb.ae, %bb.ac
  %.010.i = phi i32 [ %i.cj, %bb.af ], [ %i.ch, %bb.ae ], [ 0, %bb.ac ]
  br i1 %i.bb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_16toNCHWEi.exit
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIiEERT_i.exit69

bb.ah:                                            ; preds = %_ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_16toNCHWEi.exit
  %i.cl = load i32, ptr %7, align 8, !tbaa !290
  %i.cm = and i32 %i.cl, 16384
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = load i32, ptr %i.at, align 4
  %i.cp = icmp eq i32 %i.co, 1
  %or.cond.i67 = select i1 %i.cn, i1 true, i1 %i.cp
  br i1 %or.cond.i67, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  br label %_ZN2cv3Mat2atIiEERT_i.exit69

bb.aj:                                            ; preds = %bb.ah
  %i.cr = load i32, ptr %i.au, align 8, !tbaa !40
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ct = mul i64 %i.az, %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ct
  br label %_ZN2cv3Mat2atIiEERT_i.exit69

bb.al:                                            ; preds = %bb.aj
  %i.cv = load i32, ptr %i.av, align 4, !tbaa !300 ; 3 uses
  %i.cw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cx = sdiv i32 %i.cw, %i.cv                   ; 2 uses
  %i.cy = mul nsw i32 %i.cx, %i.cv                ; 0 uses
  %.recomposed222.a = srem i32 %i.cw, %i.cv
  %i.cz = sext i32 %i.cx to i64
  %i.da = mul i64 %i.az, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.da
  %i.dc = sext i32 %.recomposed222.a to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.dc
  br label %_ZN2cv3Mat2atIiEERT_i.exit69

_ZN2cv3Mat2atIiEERT_i.exit69:                     ; preds = %bb.ag, %bb.ai, %bb.ak, %bb.al
  %.0.i68 = phi ptr [ %i.ck, %bb.ag ], [ %i.cq, %bb.ai ], [ %i.cu, %bb.ak ], [ %i.dd, %bb.al ]
  store i32 %.010.i, ptr %.0.i68, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit139, label %bb.s, !llvm.loop !794

bb.am:                                            ; preds = %bb.z, %bb.p, %bb.q
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit139:                                     ; preds = %_ZN2cv3Mat2atIiEERT_i.exit69, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 0, ptr %i.df, align 8, !tbaa !339
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 0, ptr %i.dg, align 4, !tbaa !340
  store i32 16842752, ptr %11, align 8, !tbaa !314
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %7, ptr %i.dh, align 8, !tbaa !315
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.di = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 0, ptr %i.dj, align 8
  store i32 33619968, ptr %12, align 8, !tbaa !314
  store ptr %7, ptr %i.di, align 8, !tbaa !315
  invoke void @_ZN2cv4sortERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 0)
          to label %bb.an unwind label %bb.aq

bb.an:                                            ; preds = %.loopexit139
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.dk = icmp sgt i32 %i.an, 1
  br i1 %i.dk, label %.lr.ph143, label %._crit_edge

.lr.ph143:                                        ; preds = %bb.an
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !299
  %i.dn = icmp slt i32 %i.dm, 2
  %i.do = load i32, ptr %7, align 8
  %i.dp = and i32 %i.do, 16384
  %i.dq = icmp ne i32 %i.dp, 0
  %i.dr = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.ds = load i32, ptr %i.dr, align 4
  %i.dt = icmp eq i32 %i.ds, 1                    ; 2 uses
  %or.cond.i71 = select i1 %i.dq, i1 true, i1 %i.dt
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.dv = load i32, ptr %i.du, align 8
  %i.dw = icmp eq i32 %i.dv, 1                    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.dy = load i32, ptr %i.dx, align 4            ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8            ; 14 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.ec = load i64, ptr %i.eb, align 8            ; 8 uses
  %wide.trip.count158 = and i64 %i.am, 2147483647 ; 2 uses
  br i1 %i.dn, label %_ZN2cv3Mat2atIiEERT_i.exit76.thread.us, label %.lr.ph143.split

_ZN2cv3Mat2atIiEERT_i.exit76.thread.us:           ; preds = %.lr.ph143, %bb.ao
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %bb.ao ], [ 1, %.lr.ph143 ] ; 3 uses
  %22 = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv155
  %23 = load i32, ptr %22, align 4, !tbaa !40     ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %i.ea, i64 %indvars.iv155
  %24 = getelementptr i8, ptr %i.ed, i64 -4
  %i.ee = load i32, ptr %24, align 4, !tbaa !40   ; 2 uses
  %i.ef = add nsw i32 %i.ee, 1
  %i.eg = icmp eq i32 %23, %i.ef
  br i1 %i.eg, label %.thread.us, label %.split.us

bb.ao:                                            ; preds = %.thread.us
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge, label %_ZN2cv3Mat2atIiEERT_i.exit76.thread.us, !llvm.loop !795

.thread.us:                                       ; preds = %_ZN2cv3Mat2atIiEERT_i.exit76.thread.us
  %i.eh = mul nsw i32 %i.ee, %23
  %i.ei = icmp sgt i32 %i.eh, -1
  br i1 %i.ei, label %bb.ao, label %.split145.us

bb.ap:                                            ; preds = %_ZN2cv3Mat2atIiEERT_i.exit85
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count158
  br i1 %exitcond154.not, label %._crit_edge, label %.lr.ph143.split, !llvm.loop !795

bb.aq:                                            ; preds = %.loopexit139
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body

.lr.ph143.split:                                  ; preds = %.lr.ph143, %bb.ap
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %bb.ap ], [ 1, %.lr.ph143 ] ; 12 uses
  br i1 %or.cond.i71, label %_ZN2cv3Mat2atIiEERT_i.exit76.thread, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph143.split
  br i1 %i.dw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ek = mul i64 %i.ec, %indvars.iv150
  %i.el = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ek
  %i.em = add nsw i64 %indvars.iv150, -1          ; 2 uses
  %i.en = mul i64 %i.ec, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.en
  br label %_ZN2cv3Mat2atIiEERT_i.exit76

bb.at:                                            ; preds = %bb.ar
  %i.ep = trunc nuw nsw i64 %indvars.iv150 to i32
  %i.eq = sdiv i32 %i.ep, %i.dy                   ; 2 uses
  %i.er = mul nsw i32 %i.eq, %i.dy
  %i.es = sext i32 %i.er to i64
  %i.et = sub nsw i64 %indvars.iv150, %i.es
  %i.eu = sext i32 %i.eq to i64
  %i.ev = mul i64 %i.ec, %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ev
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.et
  %i.ey = add nsw i64 %indvars.iv150, -1          ; 3 uses
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = sdiv i32 %i.ez, %i.dy                   ; 2 uses
  %i.fb = mul nsw i32 %i.fa, %i.dy
  %i.fc = sext i32 %i.fb to i64
  %i.fd = sub nsw i64 %i.ey, %i.fc
  %i.fe = sext i32 %i.fa to i64
  %i.ff = mul i64 %i.ec, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ff
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fd
  br label %_ZN2cv3Mat2atIiEERT_i.exit76

_ZN2cv3Mat2atIiEERT_i.exit76:                     ; preds = %bb.as, %bb.at
  %i.fi = phi i64 [ %i.ey, %bb.at ], [ %i.em, %bb.as ] ; 4 uses
  %.in = phi ptr [ %i.ex, %bb.at ], [ %i.el, %bb.as ]
  %.0.i75 = phi ptr [ %i.fh, %bb.at ], [ %i.eo, %bb.as ]
  %i.fj = load i32, ptr %.in, align 4, !tbaa !40
  %i.fk = load i32, ptr %.0.i75, align 4, !tbaa !40
  %i.fl = add nsw i32 %i.fk, 1
  %i.fm = icmp eq i32 %i.fj, %i.fl
  br i1 %i.fm, label %bb.ay, label %.split.us

_ZN2cv3Mat2atIiEERT_i.exit76.thread:              ; preds = %.lr.ph143.split
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv150
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !40
  %i.fp = add nsw i64 %indvars.iv150, -1          ; 2 uses
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !40
  %i.fs = add nsw i32 %i.fr, 1
  %i.ft = icmp eq i32 %i.fo, %i.fs
  br i1 %i.ft, label %.thread204, label %.split.us

.split.us:                                        ; preds = %_ZN2cv3Mat2atIiEERT_i.exit76.thread, %_ZN2cv3Mat2atIiEERT_i.exit76, %_ZN2cv3Mat2atIiEERT_i.exit76.thread.us
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.363, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.au unwind label %bb.aw

bb.au:                                            ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseL2NormalizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE, ptr noundef nonnull @.str.2, i32 noundef 2228) #29
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  unreachable

bb.aw:                                            ; preds = %.split.us
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.ax:                                            ; preds = %bb.au
  %i.fv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fw = load ptr, ptr %13, align 8, !tbaa !46   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ax
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !56
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.aw
  %.pn57 = phi { ptr, i32 } [ %i.fu, %bb.aw ], [ %i.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.fv, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.body

bb.ay:                                            ; preds = %_ZN2cv3Mat2atIiEERT_i.exit76
  br i1 %i.dt, label %.thread204, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.dw, label %bb.ba, label %bb.bb

.thread204:                                       ; preds = %_ZN2cv3Mat2atIiEERT_i.exit76.thread, %bb.ay
  %i.gb = phi i64 [ %i.fi, %bb.ay ], [ %i.fp, %_ZN2cv3Mat2atIiEERT_i.exit76.thread ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv150
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.gb
  br label %_ZN2cv3Mat2atIiEERT_i.exit85

bb.ba:                                            ; preds = %bb.az
  %i.ge = mul i64 %i.ec, %indvars.iv150
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ge
  %i.gg = mul i64 %i.ec, %i.fi
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gg
  br label %_ZN2cv3Mat2atIiEERT_i.exit85

bb.bb:                                            ; preds = %bb.az
  %i.gi = trunc nuw nsw i64 %indvars.iv150 to i32
  %i.gj = sdiv i32 %i.gi, %i.dy                   ; 2 uses
  %i.gk = mul nsw i32 %i.gj, %i.dy
  %i.gl = sext i32 %i.gk to i64
  %i.gm = sub nsw i64 %indvars.iv150, %i.gl
  %i.gn = sext i32 %i.gj to i64
  %i.go = mul i64 %i.ec, %i.gn
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.go
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.gm
  %i.gr = trunc nuw nsw i64 %i.fi to i32
  %i.gs = sdiv i32 %i.gr, %i.dy                   ; 2 uses
  %i.gt = mul nsw i32 %i.gs, %i.dy
  %i.gu = sext i32 %i.gt to i64
  %i.gv = sub nsw i64 %i.fi, %i.gu
  %i.gw = sext i32 %i.gs to i64
  %i.gx = mul i64 %i.ec, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.gx
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.gv
  br label %_ZN2cv3Mat2atIiEERT_i.exit85

_ZN2cv3Mat2atIiEERT_i.exit85:                     ; preds = %.thread204, %bb.ba, %bb.bb
  %.in215 = phi ptr [ %i.gq, %bb.bb ], [ %i.gc, %.thread204 ], [ %i.gf, %bb.ba ]
  %.0.i84 = phi ptr [ %i.gz, %bb.bb ], [ %i.gd, %.thread204 ], [ %i.gh, %bb.ba ]
  %i.ha = load i32, ptr %.in215, align 4, !tbaa !40
  %i.hb = load i32, ptr %.0.i84, align 4, !tbaa !40
  %i.hc = mul nsw i32 %i.hb, %i.ha
  %i.hd = icmp sgt i32 %i.hc, -1
  br i1 %i.hd, label %bb.ap, label %.split145.us

.split145.us:                                     ; preds = %_ZN2cv3Mat2atIiEERT_i.exit85, %.thread.us
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.364, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %.split145.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv3dnn14dnn5_v2026060512_GLOBAL__N_110TFImporter16parseL2NormalizeERN17opencv_tensorflow8GraphDefERKNS4_7NodeDefERNS1_11LayerParamsE, ptr noundef nonnull @.str.2, i32 noundef 2230) #29
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %.split145.us
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.bf:                                            ; preds = %bb.bc
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %15, align 8, !tbaa !46   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.bf
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !56
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.be
  %.pn59 = phi { ptr, i32 } [ %i.he, %bb.be ], [ %i.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.hf, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %.body

._crit_edge:                                      ; preds = %bb.ap, %bb.ao, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  %i.hl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
end_hunk_0

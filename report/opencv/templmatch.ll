Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/templmatch?download=true
inline.NumInlined: 638
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv9crossCorrERKNS_3MatES2_RS0_NS_6Point_IiEEdi:bb.a
bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

bb.w:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %bb.w
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !22
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295, %bb.v
  %.pn198 = phi { ptr, i32 } [ %i.bg, %bb.v ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295 ], [ %i.bh, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %.thread693

bb.x:                                             ; preds = %bb.r
  %i.bn = and i32 %i.m, 4064
  %i.bo = icmp eq i32 %i.bn, 0                    ; 2 uses
  %i.bp = fcmp oeq double %4, 0.000000e+00
  %or.cond6 = or i1 %i.bp, %i.bo
  br i1 %or.cond6, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv9crossCorrERKNS_3MatES2_RS0_NS_6Point_IiEEdi, ptr noundef nonnull @.str.1, i32 noundef 590) #22
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

bb.ac:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %18, align 8, !tbaa !21   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298: ; preds = %bb.ac
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !22
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit300: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298, %bb.ab
  %.pn200 = phi { ptr, i32 } [ %i.bq, %bb.ab ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i298 ], [ %i.br, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.thread693

bb.ad:                                            ; preds = %bb.x
  %i.bx = icmp samesign ugt i32 %i.e, 1
  br i1 %i.bx, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated581 = call i32 @llvm.umax.i32(i32 %.0614774, i32 %i.n)
  %.sroa.speculated560 = call i32 @llvm.umax.i32(i32 %.sroa.speculated581, i32 5)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.by = phi i32 [ %.sroa.speculated560, %bb.ae ], [ 6, %bb.ad ] ; 7 uses
  %i.bz = sitofp i32 %i.be to double
  %i.ca = fmul nnan double %i.bz, 4.500000e+00
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.cb)
  %i.cd = sub i32 257, %i.be
  %.sroa.speculated471 = call i32 @llvm.smax.i32(i32 %i.cc, i32 %i.cd)
  %.sroa.speculated511 = call i32 @llvm.smin.i32(i32 %i.ba, i32 %.sroa.speculated471)
  %i.ce = add i32 %i.be, -1
  %i.cf = add i32 %i.ce, %.sroa.speculated511
  %i.cg = invoke noundef i32 @_ZN2cv17getOptimalDFTSizeEi(i32 noundef %i.cf)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.ch = sitofp i32 %i.ax to double
  %i.ci = fmul nnan double %i.ch, 4.500000e+00
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.cj)
  %i.cl = sub i32 257, %i.ax
  %.sroa.speculated467 = call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.cl)
  %.sroa.speculated508 = call i32 @llvm.smin.i32(i32 %i.at, i32 %.sroa.speculated467)
  %.sroa.speculated461 = call i32 @llvm.smax.i32(i32 %i.cg, i32 2) ; 8 uses
  %i.cm = load i32, ptr %i.aw, align 8, !tbaa !27
  %i.cn = add i32 %i.cm, -1
  %i.co = add i32 %i.cn, %.sroa.speculated508
  %i.cp = invoke noundef i32 @_ZN2cv17getOptimalDFTSizeEi(i32 noundef %i.co)
          to label %bb.ah unwind label %bb.al     ; 11 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -211, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv9crossCorrERKNS_3MatES2_RS0_NS_6Point_IiEEdi, ptr noundef nonnull @.str.1, i32 noundef 605) #22
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ag
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.thread693

bb.am:                                            ; preds = %bb.af
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.thread693

bb.an:                                            ; preds = %bb.ai
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

bb.ao:                                            ; preds = %bb.aj
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %20, align 8, !tbaa !21   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308: ; preds = %bb.ao
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !22
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit310: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308, %bb.an
  %.pn281 = phi { ptr, i32 } [ %i.ct, %bb.an ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i308 ], [ %i.cu, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %.thread693

bb.ap:                                            ; preds = %bb.ah
  %i.da = load i32, ptr %i.bd, align 4, !tbaa !28
  %i.db = sub nsw i32 %.sroa.speculated461, %i.da ; 2 uses
  %i.dc = add nsw i32 %i.db, 1
  %i.dd = load i32, ptr %i.az, align 4, !tbaa !28 ; 2 uses
  %.not202 = icmp slt i32 %i.db, %i.dd
  %. = select i1 %.not202, i32 %i.dc, i32 %i.dd   ; 6 uses
  %i.de = load i32, ptr %i.aw, align 8, !tbaa !27
  %i.df = sub nsw i32 %i.cp, %i.de                ; 2 uses
  %i.dg = add nsw i32 %i.df, 1
  %i.dh = load i32, ptr %i.as, align 8, !tbaa !27 ; 2 uses
  %.not203 = icmp slt i32 %i.df, %i.dh
  %i.di = select i1 %.not203, i32 %i.dg, i32 %i.dh ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.dj = mul nuw nsw i32 %i.cp, %i.l
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef %i.dj, i32 noundef %.sroa.speculated461, i32 noundef %i.by)
          to label %bb.aq unwind label %.thread698

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %.sroa.13.0.insert.ext = zext nneg i32 %i.cp to i64
  %.sroa.13.0.insert.shift = shl nuw nsw i64 %.sroa.13.0.insert.ext, 32
  %.sroa.0474.0.insert.ext = zext nneg i32 %.sroa.speculated461 to i64
  %.sroa.0474.0.insert.insert = or disjoint i64 %.sroa.13.0.insert.shift, %.sroa.0474.0.insert.ext
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %23, i64 %.sroa.0474.0.insert.insert, i32 noundef %i.by)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %.not708 = icmp eq i32 %i.k, 0                  ; 3 uses
  %.not204 = icmp eq i32 %.0614774, %i.by         ; 2 uses
  %or.cond707 = select i1 %.not708, i1 true, i1 %.not204
  br i1 %or.cond707, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dk = load i32, ptr %i.bd, align 4, !tbaa !28
  %i.dl = load i32, ptr %i.aw, align 8, !tbaa !27
  %i.dm = shl nuw nsw i32 %.0614774, 2
  %76 = and i32 %i.dm, 124
  %i.dn = zext nneg i32 %76 to i64
  %i.do = lshr i64 1275511473185297, %i.dn
  %i.dp = trunc i64 %i.do to i32
  %i.dq = and i32 %i.dp, 15
  %i.dr = mul i32 %i.dq, %i.dk
  %i.ds = mul i32 %i.dr, %i.dl
  br label %bb.au

.thread698:                                       ; preds = %bb.ap
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit383

bb.at:                                            ; preds = %bb.aq
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.jd

bb.au:                                            ; preds = %bb.as, %bb.ar
  %.0615 = phi i32 [ 0, %bb.ar ], [ %i.ds, %bb.as ] ; 2 uses
  %i.dv = icmp ne i32 %i.g, 0                     ; 2 uses
  %.not205 = icmp ne i32 %i.e, %i.by              ; 2 uses
  %or.cond287.not = select i1 %i.dv, i1 %.not205, i1 false
  br i1 %or.cond287.not, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dw = load i32, ptr %i.bd, align 4, !tbaa !28
  %i.dx = add i32 %., -1
  %i.dy = add i32 %i.dx, %i.dw
  %i.dz = load i32, ptr %i.aw, align 8, !tbaa !27
  %i.ea = add i32 %i.di, -1
  %i.eb = add i32 %i.ea, %i.dz
  %i.ec = shl nuw nsw i32 %i.e, 2
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = lshr i64 1275511473185297, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 15
  %i.eh = mul i32 %i.dy, %i.eg
  %i.ei = mul i32 %i.eh, %i.eb
  %.sroa.speculated452 = call i32 @llvm.smax.i32(i32 %.0615, i32 %i.ei)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.1616 = phi i32 [ %.0615, %bb.au ], [ %.sroa.speculated452, %bb.av ] ; 2 uses
  %i.ej = or i32 %i.m, %i.d
  %i.ek = and i32 %i.ej, 4064
  %or.cond11.not709 = icmp eq i32 %i.ek, 0
  %.not206 = icmp eq i32 %i.n, %i.by              ; 3 uses
  %or.cond288 = select i1 %or.cond11.not709, i1 true, i1 %.not206
  br i1 %or.cond288, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.el = shl nuw nsw i32 %i.n, 2
  %i.em = zext nneg i32 %i.el to i64
  %i.en = lshr i64 1275511473185297, %i.em
  %i.eo = trunc i64 %i.en to i32
  %i.ep = and i32 %i.eo, 15
  %i.eq = mul i32 %., %i.ep
  %i.er = mul i32 %i.eq, %i.di
  %.sroa.speculated448 = call i32 @llvm.smax.i32(i32 %.1616, i32 %i.er)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.2 = phi i32 [ %.1616, %bb.aw ], [ %.sroa.speculated448, %bb.ax ] ; 3 uses
  %i.es = sext i32 %.2 to i64                     ; 3 uses
  %.not711 = icmp eq i32 %.2, 0
  br i1 %.not711, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.et = icmp slt i32 %.2, 0
  br i1 %i.et, label %bb.ba, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #22
          to label %.noexc386 unwind label %bb.bt

.noexc386:                                        ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.az
  %i.eu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.es) #24
          to label %.noexc387 unwind label %bb.bt ; 4 uses

.noexc387:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  store i8 0, ptr %i.eu, align 1, !tbaa !22
  %i.ev = add nsw i64 %i.es, -1                   ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %.noexc, label %bb.bb

bb.bb:                                            ; preds = %.noexc387
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ex, i8 0, i64 %i.ev, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %bb.bb, %.noexc387
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.es
  %i.ez = ptrtoint ptr %i.ey to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %.noexc, %bb.ay
  %.sroa.18.6 = phi i64 [ %i.ez, %.noexc ], [ 0, %bb.ay ] ; 2 uses
  %.sroa.0601.6 = phi ptr [ %i.eu, %.noexc ], [ null, %bb.ay ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.fa = load i32, ptr %22, align 8, !tbaa !17
  %i.fb = and i32 %i.fa, 31
  %i.fc = load i32, ptr %i.aw, align 8, !tbaa !27
  invoke void @_ZN2cv3hal5DFT2D6createEiiiiiii(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %24, i32 noundef %.sroa.speculated461, i32 noundef %i.cp, i32 noundef %i.fb, i32 noundef 1, i32 noundef 1, i32 noundef 1024, i32 noundef %i.fc)
          to label %.preheader unwind label %bb.bu

.preheader:                                       ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.fe = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.fg = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 84
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fl = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.fn = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.fq = getelementptr inbounds nuw i8, ptr %33, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %26, i64 128
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader, %bb.cm
  %.0726 = phi i32 [ 0, %.preheader ], [ %i.hp, %bb.cm ] ; 4 uses
  %i.fu = mul nuw nsw i32 %.0726, %i.cp           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.bd unwind label %bb.bv

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  store i32 0, ptr %27, align 4, !tbaa !53
  store i32 %i.fu, ptr %i.fd, align 4, !tbaa !54
  store i32 %.sroa.speculated461, ptr %i.fe, align 4, !tbaa !55
  store i32 %i.cp, ptr %i.ff, align 4, !tbaa !56
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 4 dereferenceable(16) %27)
          to label %bb.be unwind label %bb.bw

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  store i32 0, ptr %29, align 4, !tbaa !53
  store i32 %i.fu, ptr %i.fg, align 4, !tbaa !54
  %i.fv = load <2 x i32>, ptr %i.aw, align 8, !tbaa !29
  %i.fw = shufflevector <2 x i32> %i.fv, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.fw, ptr %i.fh, align 4, !tbaa !29
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 4 dereferenceable(16) %29)
          to label %bb.bf unwind label %bb.bx

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br i1 %.not708, label %bb.ca, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  br i1 %.not204, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(208) %28)
          to label %bb.bq unwind label %.loopexit

bb.bi:                                            ; preds = %bb.bg
  %i.fx = load i32, ptr %i.fi, align 8, !tbaa !57 ; 6 uses
  %i.fy = icmp slt i32 %i.fx, 3
  br i1 %i.fy, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc313 unwind label %.loopexit.split-lp

.noexc313:                                        ; preds = %bb.bj
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.11, i32 noundef 109) #22
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %.noexc313
  unreachable

bb.bl:                                            ; preds = %.noexc313
  %i.fz = landingpad { ptr, i32 }
          cleanup
  %i.ga = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bl
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !22
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
end_hunk_0

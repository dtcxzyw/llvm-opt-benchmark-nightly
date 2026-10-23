Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/templmatch?download=true
inline.NumInlined: 638
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv9crossCorrERKNS_3MatES2_RS0_NS_6Point_IiEEdi:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv9crossCorrERKNS_3MatES2_RS0_NS_6Point_IiEEdi, ptr noundef nonnull @.str.1, i32 noundef 588) #22
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

bb.w:                                             ; preds = %bb.t
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bi = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290: ; preds = %bb.w
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !22
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit292: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290, %bb.v
  %.pn198 = phi { ptr, i32 } [ %i.bg, %bb.v ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i290 ], [ %i.bh, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %.thread685

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
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

bb.ac:                                            ; preds = %bb.z
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %18, align 8, !tbaa !21   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293: ; preds = %bb.ac
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !22
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit295: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293, %bb.ab
  %.pn200 = phi { ptr, i32 } [ %i.bq, %bb.ab ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i293 ], [ %i.br, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.thread685

bb.ad:                                            ; preds = %bb.x
  %i.bx = icmp samesign ugt i32 %i.e, 1
  br i1 %i.bx, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculated573 = call i32 @llvm.umax.i32(i32 %.0606768, i32 %i.n)
  %.sroa.speculated552 = call i32 @llvm.umax.i32(i32 %.sroa.speculated573, i32 5)
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.by = phi i32 [ %.sroa.speculated552, %bb.ae ], [ 6, %bb.ad ] ; 7 uses
  %i.bz = sitofp i32 %i.be to double
  %i.ca = fmul nnan double %i.bz, 4.500000e+00
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.cb)
  %i.cd = sub i32 257, %i.be
  %.sroa.speculated463 = call i32 @llvm.smax.i32(i32 %i.cc, i32 %i.cd)
  %.sroa.speculated503 = call i32 @llvm.smin.i32(i32 %i.ba, i32 %.sroa.speculated463)
  %i.ce = add i32 %i.be, -1
  %i.cf = add i32 %i.ce, %.sroa.speculated503
  %i.cg = invoke noundef i32 @_ZN2cv17getOptimalDFTSizeEi(i32 noundef %i.cf)
          to label %bb.ag unwind label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.ch = sitofp i32 %i.ax to double
  %i.ci = fmul nnan double %i.ch, 4.500000e+00
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.cj)
  %i.cl = sub i32 257, %i.ax
  %.sroa.speculated459 = call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.cl)
  %.sroa.speculated500 = call i32 @llvm.smin.i32(i32 %i.at, i32 %.sroa.speculated459)
  %.sroa.speculated453 = call i32 @llvm.smax.i32(i32 %i.cg, i32 2) ; 8 uses
  %i.cm = load i32, ptr %i.aw, align 8, !tbaa !27
  %i.cn = add i32 %i.cm, -1
  %i.co = add i32 %i.cn, %.sroa.speculated500
  %i.cp = invoke noundef i32 @_ZN2cv17getOptimalDFTSizeEi(i32 noundef %i.co)
          to label %bb.ah unwind label %bb.al     ; 11 uses

bb.ah:                                            ; preds = %bb.ag
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %bb.ai, label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -211, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv9crossCorrERKNS_3MatES2_RS0_NS_6Point_IiEEdi, ptr noundef nonnull @.str.1, i32 noundef 605) #22
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %bb.ag, %bb.af
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.thread685

bb.am:                                            ; preds = %bb.ai
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

bb.an:                                            ; preds = %bb.aj
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cu = load ptr, ptr %20, align 8, !tbaa !21   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %bb.an
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !22
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303, %bb.am
  %.pn276 = phi { ptr, i32 } [ %i.cs, %bb.am ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303 ], [ %i.ct, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %.thread685

bb.ao:                                            ; preds = %bb.ah
  %i.cz = load <2 x i32>, ptr %i.aw, align 8, !tbaa !29
  %i.da = insertelement <2 x i32> poison, i32 %i.cp, i64 0
  %i.db = insertelement <2 x i32> %i.da, i32 %.sroa.speculated453, i64 1
  %i.dc = sub nsw <2 x i32> %i.db, %i.cz          ; 2 uses
  %i.dd = add nsw <2 x i32> %i.dc, splat (i32 1)
  %i.de = load <2 x i32>, ptr %i.as, align 8, !tbaa !29 ; 2 uses
  %i.df = icmp slt <2 x i32> %i.dc, %i.de
  %i.dg = select <2 x i1> %i.df, <2 x i32> %i.dd, <2 x i32> %i.de ; 6 uses
  %i.dh = extractelement <2 x i32> %i.dg, i64 0   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.di = mul nuw nsw i32 %i.cp, %i.l
  invoke void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %22, i32 noundef %i.di, i32 noundef %.sroa.speculated453, i32 noundef %i.by)
          to label %bb.ap unwind label %.thread690

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  %.sroa.13.0.insert.ext = zext nneg i32 %i.cp to i64
  %.sroa.13.0.insert.shift = shl nuw nsw i64 %.sroa.13.0.insert.ext, 32
  %.sroa.0466.0.insert.ext = zext nneg i32 %.sroa.speculated453 to i64
  %.sroa.0466.0.insert.insert = or disjoint i64 %.sroa.13.0.insert.shift, %.sroa.0466.0.insert.ext
  invoke void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %23, i64 %.sroa.0466.0.insert.insert, i32 noundef %i.by)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %.not700 = icmp eq i32 %i.k, 0                  ; 3 uses
  %.not204 = icmp eq i32 %.0606768, %i.by         ; 2 uses
  %or.cond699 = select i1 %.not700, i1 true, i1 %.not204
  br i1 %or.cond699, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dj = load i32, ptr %i.bd, align 4, !tbaa !28
  %i.dk = load i32, ptr %i.aw, align 8, !tbaa !27
  %i.dl = shl nuw nsw i32 %.0606768, 2
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = lshr i64 1275511473185297, %i.dm
  %i.do = trunc i64 %i.dn to i32
  %i.dp = and i32 %i.do, 15
  %i.dq = mul i32 %i.dj, %i.dp
  %i.dr = mul i32 %i.dq, %i.dk
  br label %bb.at

.thread690:                                       ; preds = %bb.ao
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit376

bb.as:                                            ; preds = %bb.ap
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.0607 = phi i32 [ 0, %bb.aq ], [ %i.dr, %bb.ar ] ; 2 uses
  %i.du = icmp ne i32 %i.g, 0                     ; 2 uses
  %.not205 = icmp ne i32 %i.e, %i.by              ; 2 uses
  %or.cond282.not = select i1 %i.du, i1 %.not205, i1 false
  br i1 %or.cond282.not, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dv = load <2 x i32>, ptr %i.aw, align 8, !tbaa !29
  %i.dw = add <2 x i32> %i.dg, splat (i32 -1)
  %i.dx = add <2 x i32> %i.dw, %i.dv              ; 2 uses
  %i.dy = shl nuw nsw i32 %i.e, 2
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = lshr i64 1275511473185297, %i.dz
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = and i32 %i.eb, 15
  %i.ed = extractelement <2 x i32> %i.dx, i64 1
  %i.ee = mul i32 %i.ed, %i.ec
  %i.ef = extractelement <2 x i32> %i.dx, i64 0
  %i.eg = mul i32 %i.ee, %i.ef
  %.sroa.speculated444 = call i32 @llvm.smax.i32(i32 %.0607, i32 %i.eg)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1608 = phi i32 [ %.0607, %bb.at ], [ %.sroa.speculated444, %bb.au ] ; 2 uses
  %i.eh = or i32 %i.m, %i.d
  %i.ei = and i32 %i.eh, 4064
  %or.cond11.not701 = icmp eq i32 %i.ei, 0
  %.not206 = icmp eq i32 %i.n, %i.by              ; 3 uses
  %or.cond283 = select i1 %or.cond11.not701, i1 true, i1 %.not206
  br i1 %or.cond283, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ej = shl nuw nsw i32 %i.n, 2
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = lshr i64 1275511473185297, %i.ek
  %i.em = trunc i64 %i.el to i32
  %i.en = and i32 %i.em, 15
  %i.eo = extractelement <2 x i32> %i.dg, i64 1
  %i.ep = mul i32 %i.eo, %i.en
  %i.eq = mul i32 %i.ep, %i.dh
  %.sroa.speculated440 = call i32 @llvm.smax.i32(i32 %.1608, i32 %i.eq)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.2 = phi i32 [ %.1608, %bb.av ], [ %.sroa.speculated440, %bb.aw ] ; 3 uses
  %i.er = sext i32 %.2 to i64                     ; 3 uses
  %.not703 = icmp eq i32 %.2, 0
  br i1 %.not703, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.es = icmp slt i32 %.2, 0
  br i1 %i.es, label %bb.az, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #22
          to label %.noexc378 unwind label %bb.bs

.noexc378:                                        ; preds = %bb.az
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ay
  %i.et = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.er) #24
          to label %.noexc379 unwind label %bb.bs ; 4 uses

.noexc379:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  store i8 0, ptr %i.et, align 1, !tbaa !22
  %i.eu = add nsw i64 %i.er, -1                   ; 2 uses
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %.noexc, label %bb.ba

bb.ba:                                            ; preds = %.noexc379
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ew, i8 0, i64 %i.eu, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %bb.ba, %.noexc379
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  %i.ey = ptrtoint ptr %i.ex to i64
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %.noexc, %bb.ax
  %.sroa.18.6 = phi i64 [ %i.ey, %.noexc ], [ 0, %bb.ax ] ; 2 uses
  %.sroa.0593.6 = phi ptr [ %i.et, %.noexc ], [ null, %bb.ax ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21
  %i.ez = load i32, ptr %22, align 8, !tbaa !17
  %i.fa = and i32 %i.ez, 31
  %i.fb = load i32, ptr %i.aw, align 8, !tbaa !27
  invoke void @_ZN2cv3hal5DFT2D6createEiiiiiii(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %24, i32 noundef %.sroa.speculated453, i32 noundef %i.cp, i32 noundef %i.fa, i32 noundef 1, i32 noundef 1, i32 noundef 1024, i32 noundef %i.fb)
          to label %.preheader unwind label %bb.bt

.preheader:                                       ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.ff = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %26, i64 12
  %i.fp = getelementptr inbounds nuw i8, ptr %33, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %34, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %26, i64 128
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %10, i64 88
  br label %bb.bb

bb.bb:                                            ; preds = %.preheader, %bb.cl
  %.0718 = phi i32 [ 0, %.preheader ], [ %i.hq, %bb.cl ] ; 4 uses
  %i.ft = mul nuw nsw i32 %.0718, %i.cp           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %25, ptr noundef nonnull align 8 dereferenceable(208) %10)
          to label %bb.bc unwind label %bb.bu

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  store i32 0, ptr %27, align 4, !tbaa !53
  store i32 %i.ft, ptr %i.fc, align 4, !tbaa !54
  store i32 %.sroa.speculated453, ptr %i.fd, align 4, !tbaa !55
  store i32 %i.cp, ptr %i.fe, align 4, !tbaa !56
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %26, ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 4 dereferenceable(16) %27)
          to label %bb.bd unwind label %bb.bv

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  store i32 0, ptr %29, align 4, !tbaa !53
  store i32 %i.ft, ptr %i.ff, align 4, !tbaa !54
  %i.fu = load <2 x i32>, ptr %i.aw, align 8, !tbaa !29
  %i.fv = shufflevector <2 x i32> %i.fu, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.fv, ptr %i.fg, align 4, !tbaa !29
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %28, ptr noundef nonnull align 8 dereferenceable(208) %22, ptr noundef nonnull align 4 dereferenceable(16) %29)
          to label %bb.be unwind label %bb.bw

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br i1 %.not700, label %bb.bz, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  br i1 %.not204, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %30, ptr noundef nonnull align 8 dereferenceable(208) %28)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bf
  %i.fw = load i32, ptr %i.fh, align 8, !tbaa !57 ; 6 uses
  %i.fx = icmp slt i32 %i.fw, 3
  br i1 %i.fx, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc308 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc308:                                        ; preds = %bb.bi
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.11, i32 noundef 109) #22
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %.noexc308
  unreachable

bb.bk:                                            ; preds = %.noexc308
  %i.fy = landingpad { ptr, i32 }
          cleanup
  %i.fz = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bk
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !22
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
end_hunk_0

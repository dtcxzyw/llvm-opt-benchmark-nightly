Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_angle?download=true
inline.NumInlined: 170
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z11gmx_g_angleiPPc:bb.a
  %i.bp = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.51, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  br i1 %i.bp, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  br i1 %.not248, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 1 dereferenceable(65) @.str.53, i8 noundef zeroext 2)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 231, ptr noundef nonnull @.str.54) #16
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn284 = phi { ptr, i32 } [ %i.br, %bb.q ], [ %i.bq, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.body

bb.s:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !59
  invoke void @_Z11please_citeP8_IO_FILEPKc(ptr noundef %i.bs, ptr noundef nonnull @.str.55)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s, %bb.k
  %i.bt = load float, ptr @_ZZ11gmx_g_angleiPPcE8binwidth, align 4, !tbaa !61
  %i.bu = fdiv float %.0246, %i.bt
  %i.bv = call float @llvm.rint.f32(float %i.bu)
  %i.bw = fptosi float %i.bv to i32               ; 11 uses
  %i.bx = sitofp i32 %i.bw to float
  %i.by = fdiv float %.0246, %i.bx
  store float %i.by, ptr @_ZZ11gmx_g_angleiPPcE8binwidth, align 4, !tbaa !61
  %i.bz = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 23, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  invoke void @_Z8rd_indexPKciPiPS1_PPc(ptr noundef %i.bz, i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  %i.ca = load i32, ptr %i.d, align 4, !tbaa !49  ; 2 uses
  %i.cb = sdiv i32 %i.ca, %.0244                  ; 16 uses
  %i.cc = srem i32 %i.ca, %.0244
  %.not249 = icmp eq i32 %i.cc, 0
  br i1 %.not249, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(65) @.str.53, i8 noundef zeroext 2)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cd = select i1 %i.bo, ptr @.str.57, ptr @.str.58
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 247, ptr noundef nonnull @.str.56, i32 noundef %.0244, ptr noundef nonnull %i.cd) #16
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.w
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn282 = phi { ptr, i32 } [ %i.cf, %bb.aa ], [ %i.ce, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.body

bb.ac:                                            ; preds = %bb.v
  %i.cg = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.49, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ch = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.41, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ci = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.45, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

bb.af:                                            ; preds = %bb.ae
  %i.cj = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.47, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.ck = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.43, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ah:                                            ; preds = %bb.ag
  %or.cond = or i1 %i.cg, %i.ci
  %or.cond3 = or i1 %or.cond, %i.cj
  %or.cond5 = or i1 %or.cond3, %i.ck
  br i1 %or.cond5, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.cl = load ptr, ptr @_ZZ11gmx_g_angleiPPcE3opt, align 16, !tbaa !15
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !16
  %i.cn = icmp eq i8 %i.cm, 97
  br i1 %i.cn, label %bb.aj, label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA65_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(65) @.str.53, i8 noundef zeroext 2)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 264, ptr noundef nonnull @.str.59) #16
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  unreachable

bb.am:                                            ; preds = %bb.aj
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn280 = phi { ptr, i32 } [ %i.cp, %bb.an ], [ %i.co, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %.body

bb.ap:                                            ; preds = %bb.ah, %bb.ai
  %.not = xor i1 %i.ci, true
  %or.cond7 = and i1 %i.cj, %.not
  br i1 %or.cond7, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cq = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite = call i64 @fwrite(ptr nonnull @.str.60, i64 65, i64 1, ptr %i.cq) #17 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cr = load i8, ptr @_ZZ11gmx_g_angleiPPcE9bChandler, align 1, !tbaa !63, !range !64, !noundef !65
  %i.cs = trunc nuw i8 %i.cr to i1
  %narrow = or i1 %i.cg, %i.cs                    ; 3 uses
  %.not11 = xor i1 %i.ck, true
  %or.cond13 = or i1 %.0241, %.not11
  br i1 %or.cond13, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !59
  %fwrite251 = call i64 @fwrite(ptr nonnull @.str.61, i64 84, i64 1, ptr %i.ct) #17 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0240 = phi i1 [ %i.ck, %bb.ar ], [ false, %bb.as ]
  %or.cond15 = select i1 %i.ci, i1 true, i1 %narrow ; 2 uses
  %i.cu = load i8, ptr @_ZZ11gmx_g_angleiPPcE4bALL, align 1, !range !64
  %i.cv = trunc nuw i8 %i.cu to i1
  %or.cond17 = select i1 %or.cond15, i1 true, i1 %i.cv
  br i1 %or.cond17, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cw = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.51, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.av:                                            ; preds = %bb.au
  br i1 %i.cw, label %bb.aw, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit

bb.aw:                                            ; preds = %bb.av, %bb.at
  %i.cx = sext i32 %i.cb to i64
  %i.cy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.53, i32 noundef 294, i64 noundef range(i64 -715827882, 715827883) %i.cx, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit:         ; preds = %bb.aw, %bb.av
  %.0387 = phi ptr [ null, %bb.av ], [ %i.cy, %bb.aw ] ; 11 uses
  %i.cz = sext i32 %i.bw to i64
  %i.da = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.53, i32 noundef 297, i64 noundef range(i64 -2147483648, 2147483648) %i.cz, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 15 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  %i.db = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 1, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.dc = load i8, ptr @_ZZ11gmx_g_angleiPPcE4bALL, align 1, !tbaa !63, !range !64, !noundef !65
  %i.dd = trunc nuw i8 %i.dc to i1
  %or.cond19 = select i1 %i.dd, i1 true, i1 %narrow
  %or.cond21 = or i1 %i.ci, %or.cond19
  br i1 %or.cond21, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.de = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.51, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.df = phi i1 [ true, %bb.ax ], [ %i.de, %bb.ay ]
  %i.dg = load i8, ptr @_ZZ11gmx_g_angleiPPcE4bPBC, align 1, !tbaa !63, !range !64, !noundef !65
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = load i32, ptr %i.d, align 4, !tbaa !49
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.dk = load ptr, ptr %i.n, align 8, !tbaa !69
  invoke void @_Z12read_ang_dihPKcbbbbiPiS1_PPfiS1_S3_S3_S3_PK16gmx_output_env_t(ptr noundef %i.db, i1 noundef zeroext %i.bo, i1 noundef zeroext %i.df, i1 noundef zeroext %.0241, i1 noundef zeroext %i.dh, i32 noundef %i.bw, ptr noundef %i.da, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, i32 noundef %i.di, ptr noundef %i.dj, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef %.0387, ptr noundef %i.dk)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ba:                                            ; preds = %bb.az
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !71  ; 2 uses
  %i.dm = load i32, ptr %i.h, align 4, !tbaa !49
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !61
  %i.dr = load float, ptr %i.dl, align 4, !tbaa !61
  %i.ds = fsub float %i.dq, %i.dr
  %i.dt = sitofp i32 %i.dn to float
  %i.du = fdiv float %i.ds, %i.dt
  br i1 %i.ch, label %bb.bb, label %bb.bm

bb.bb:                                            ; preds = %bb.ba
  %i.dv = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.dw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.64, ptr noundef %i.dv) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #15
  %i.dx = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.41, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.dx, ptr %i.o, align 8, !tbaa !15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i8 noundef zeroext 2)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.dy, ptr %9, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.dy, ptr noundef nonnull align 1 dereferenceable(9) @.str.65, i64 9, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 9, ptr %i.dz, align 8, !tbaa !20
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 25
  store i8 0, ptr %i.ea, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.eb, ptr %10, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.eb, ptr noundef nonnull align 1 dereferenceable(15) @.str.66, i64 15, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 15, ptr %i.ec, align 8, !tbaa !20
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 31
  store i8 0, ptr %i.ed, align 1, !tbaa !16
  %i.ee = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.ef = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.ee)
          to label %bb.be unwind label %bb.bh     ; 4 uses

bb.be:                                            ; preds = %bb.bd
  %i.eg = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.eb
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.be
  %i.ei = load i64, ptr %i.eb, align 8, !tbaa !16
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.ek = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dy
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.em = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.en) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %i.eo = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull %i.ep) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  %i.eq = load ptr, ptr %8, align 8, !tbaa !21    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.et = load i64, ptr %i.er, align 8, !tbaa !16
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.ev = load i32, ptr %i.h, align 4, !tbaa !49
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph412, label %._crit_edge

.lr.ph412:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.ex = icmp sgt i32 %i.cb, 0
  %wide.trip.count = zext nneg i32 %i.cb to i64
  br label %bb.bj

._crit_edge:                                      ; preds = %.loopexit405, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.ef)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %bb.bc, %bb.bb
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.ez = landingpad { ptr, i32 }
          cleanup
  %i.fa = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.eb
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %bb.bh
  %i.fc = load i64, ptr %i.eb, align 8, !tbaa !16
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.fe = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.dy
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  %i.fg = load i64, ptr %i.dy, align 8, !tbaa !16
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #15
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %bb.bg
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %i.ey, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.body

bb.bj:                                            ; preds = %.lr.ph412, %.loopexit405
  %indvars.iv481 = phi i64 [ 0, %.lr.ph412 ], [ %indvars.iv.next482, %.loopexit405 ] ; 4 uses
  %i.fi = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv481
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !61
  %i.fl = fpext float %i.fk to double
  %i.fm = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv481
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !61
  %i.fp = fpext float %i.fo to double
  %i.fq = fmul double %i.fp, f0x404CA5DC1A63C1F8
  %i.fr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.67, double noundef %i.fl, double noundef %i.fq) #15 ; 0 uses
  %i.fs = load i8, ptr @_ZZ11gmx_g_angleiPPcE4bALL, align 1, !tbaa !63, !range !64, !noundef !65
  %i.ft = trunc nuw i8 %i.fs to i1
  %brmerge.not = and i1 %i.ex, %i.ft
  br i1 %brmerge.not, label %.lr.ph, label %.loopexit405

.lr.ph:                                           ; preds = %bb.bj, %bb.bl
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bl ], [ 0, %bb.bj ] ; 2 uses
  %i.fu = load i8, ptr @_ZZ11gmx_g_angleiPPcE4bPBC, align 1, !tbaa !63, !range !64, !noundef !65
  %i.fv = trunc nuw i8 %i.fu to i1
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.0387, i64 %indvars.iv
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !71
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv481
end_hunk_0
begin_hunk_1_@_Z11gmx_g_angleiPPc:bb.a
.lr.ph432:                                        ; preds = %.lr.ph432.preheader, %bb.cw
  %indvars.iv515 = phi i64 [ 0, %.lr.ph432.preheader ], [ %indvars.iv.next516, %bb.cw ] ; 2 uses
  %.0205429 = phi float [ %i.sg, %.lr.ph432.preheader ], [ %i.sm, %bb.cw ] ; 2 uses
  %.1211428 = phi double [ 0.000000e+00, %.lr.ph432.preheader ], [ %i.so, %bb.cw ]
  %i.sh = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %indvars.iv515
  %i.sj = load float, ptr %i.si, align 4, !tbaa !61
  %i.sk = fsub float %i.sj, %.0205429
  %i.sl = invoke noundef float @_Z23correctRadianAngleRangef(float noundef %i.sk)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cw:                                            ; preds = %.lr.ph432
  %i.sm = fadd float %.0205429, %i.sl             ; 2 uses
  %i.sn = fpext float %i.sm to double
  %i.so = fadd double %.1211428, %i.sn            ; 2 uses
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1 ; 2 uses
  %i.sp = load i32, ptr %i.h, align 4, !tbaa !49  ; 2 uses
  %i.sq = sext i32 %i.sp to i64
  %i.sr = icmp slt i64 %indvars.iv.next516, %i.sq
  br i1 %i.sr, label %.lr.ph432, label %.loopexit388, !llvm.loop !45

.loopexit388:                                     ; preds = %bb.cw, %._crit_edge438, %bb.cv, %bb.cr
  %i.ss = phi i32 [ %i.rt, %._crit_edge438 ], [ %i.re, %bb.cr ], [ %i.sd, %bb.cv ], [ %i.sp, %bb.cw ]
  %.2 = phi double [ %i.rs, %._crit_edge438 ], [ 0.000000e+00, %bb.cr ], [ 0.000000e+00, %bb.cv ], [ %i.so, %bb.cw ]
  %i.st = sitofp i32 %i.ss to double
  %i.su = fdiv double %.2, %i.st                  ; 2 uses
  %i.sv = fptrunc double %i.su to float
  %i.sw = invoke noundef float @_Z23correctRadianAngleRangef(float noundef %i.sv)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %.loopexit388
  %i.sx = fpext float %i.sw to double
  %i.sy = fmul double %i.sx, f0x404CA5DC1A63C1F8
  %i.sz = fmul double %i.su, f0x404CA5DC1A63C1F8
  %i.ta = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, double noundef %i.sy) ; 0 uses
  %i.tb = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  br i1 %i.bo, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.tc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.79, ptr noundef %i.tb) #15 ; 0 uses
  br label %bb.db

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.us.i, %.lr.ph432, %.lr.ph437, %bb.cs, %.preheader45.i, %bb.f, %bb.cd, %.noexc307, %._crit_edge53.i, %.noexc303, %bb.bp, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit, %bb.aw, %bb.d, %bb.cp, %bb.cl, %.loopexit397, %bb.cg, %bb.cf, %bb.ce, %._crit_edge416, %bb.bo, %bb.bm, %._crit_edge, %bb.az, %bb.ay, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %bb.au, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.u, %bb.t, %bb.s, %bb.j, %bb.b, %bb.a, %bb.dw, %bb.dv, %bb.dt, %bb.ds, %bb.dr, %._crit_edge451, %_ZNSt10filesystem7__cxx114pathD2Ev.exit353, %bb.cz, %.loopexit388
  %lpad.loopexit.split-lp751 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cz:                                            ; preds = %bb.cx
  %i.td = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef %i.tb) #15 ; 0 uses
  invoke void @_Z23calc_distribution_propsiPKifiP9t_karplusPf(i32 noundef %i.bw, ptr noundef %i.da, float noundef -1.800000e+02, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.g)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.da:                                            ; preds = %bb.cz
  %i.te = load ptr, ptr @stderr, align 8, !tbaa !59
  %i.tf = load float, ptr %i.g, align 4, !tbaa !61
  %i.tg = fpext float %i.tf to double
  %i.th = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.te, ptr noundef nonnull @.str.81, double noundef %i.tg) #19 ; 0 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cy
  %i.ti = icmp eq i32 %.0243.lcssa, 0
  %i.tj = icmp eq i32 %.0242.lcssa, %i.qn
  %i.tk = and i1 %i.ti, %i.tj
  %spec.select = and i1 %.not248, %i.tk           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #15
  %i.tl = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.39, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.dc unwind label %bb.di

bb.dc:                                            ; preds = %bb.db
  store ptr %i.tl, ptr %i.q, align 8, !tbaa !15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext 2)
          to label %bb.dd unwind label %bb.di

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.tm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.tm, ptr %15, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.tm, ptr noundef nonnull align 1 dereferenceable(7) @.str.82, i64 7, i1 false)
  %i.tn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 7, ptr %i.tn, align 8, !tbaa !20
  %i.to = getelementptr inbounds nuw i8, ptr %15, i64 23
  store i8 0, ptr %i.to, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.tp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.tp, ptr %16, align 8, !tbaa !18
  %i.tq = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 0, ptr %i.tq, align 8, !tbaa !20
  store i8 0, ptr %i.tp, align 8, !tbaa !16
  %i.tr = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.ts = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef %i.tr)
          to label %bb.de unwind label %bb.dj     ; 13 uses

bb.de:                                            ; preds = %bb.dd
  %i.tt = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.tu = icmp eq ptr %i.tt, %i.tp
  br i1 %i.tu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343: ; preds = %bb.de
  %i.tv = load i64, ptr %i.tp, align 8, !tbaa !16
  %i.tw = add i64 %i.tv, 1
  call void @_ZdlPvm(ptr noundef %i.tt, i64 noundef %i.tw) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.tx = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.tm
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345
  %i.tz = load i64, ptr %i.tm, align 8, !tbaa !16
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ua) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.ub = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !23 ; 2 uses
  %.not.i.i.i349 = icmp eq ptr %i.uc, null
  br i1 %.not.i.i.i349, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i350, label %bb.df

bb.df:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ub, ptr noundef nonnull %i.uc) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i350

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i350: ; preds = %bb.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348
  %i.ud = load ptr, ptr %14, align 8, !tbaa !21   ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.uf = icmp eq ptr %i.ud, %i.ue
  br i1 %i.uf, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit353, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i351

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i351: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i350
  %i.ug = load i64, ptr %i.ue, align 8, !tbaa !16
  %i.uh = add i64 %i.ug, 1
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.uh) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit353

_ZNSt10filesystem7__cxx114pathD2Ev.exit353:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i350, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.ui = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.uj = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.ui)
          to label %bb.dg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit353
  br i1 %i.uj, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  %i.uk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ts, ptr noundef nonnull @.str.84, double noundef %i.sz) #15 ; 0 uses
  br label %bb.dl

bb.di:                                            ; preds = %bb.dc, %bb.db
  %i.ul = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dd
  %i.um = landingpad { ptr, i32 }
          cleanup
  %i.un = load ptr, ptr %16, align 8, !tbaa !21   ; 2 uses
  %i.uo = icmp eq ptr %i.un, %i.tp
  br i1 %i.uo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354: ; preds = %bb.dj
  %i.up = load i64, ptr %i.tp, align 8, !tbaa !16
  %i.uq = add i64 %i.up, 1
  call void @_ZdlPvm(ptr noundef %i.un, i64 noundef %i.uq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i354
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.ur = load ptr, ptr %15, align 8, !tbaa !21   ; 2 uses
  %i.us = icmp eq ptr %i.ur, %i.tm
  br i1 %i.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356
  %i.ut = load i64, ptr %i.tm, align 8, !tbaa !16
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.ur, i64 noundef %i.uu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #15
  br label %bb.dk

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359, %bb.di
  %.pn260.pn.pn = phi { ptr, i32 } [ %i.um, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit359 ], [ %i.ul, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  br label %.body

bb.dl:                                            ; preds = %bb.dh, %bb.dg
  %i.uv = load i32, ptr %i.h, align 4, !tbaa !49
  %i.uw = mul nsw i32 %i.uv, %i.cb
  %i.ux = sitofp i32 %i.uw to float
  %i.uy = load float, ptr @_ZZ11gmx_g_angleiPPcE8binwidth, align 4, !tbaa !61
  %i.uz = fmul float %i.uy, %i.ux
  %i.va = fdiv float 1.000000e+00, %i.uz          ; 11 uses
  br i1 %spec.select, label %.preheader, label %bb.do

.preheader:                                       ; preds = %bb.dl
  %.not264447 = icmp slt i32 %i.bw, 1
  br i1 %.not264447, label %._crit_edge451, label %.lr.ph450.preheader

.lr.ph450.preheader:                              ; preds = %.preheader
  %wide.trip.count529 = zext nneg i32 %i.bw to i64 ; 2 uses
  %xtraiter755 = and i64 %wide.trip.count529, 7   ; 3 uses
  %i.vb = icmp ult i32 %i.bw, 8
  br i1 %i.vb, label %.lr.ph450.epil.preheader, label %.lr.ph450.preheader.new

.lr.ph450.preheader.new:                          ; preds = %.lr.ph450.preheader
  %unroll_iter759 = and i64 %wide.trip.count529, 2147483640
  br label %.lr.ph450.a

._crit_edge451.loopexit.unr-lcssa:                ; preds = %.lr.ph450.a
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %._crit_edge451.loopexit.a, label %.lr.ph450.epil.preheader

.lr.ph450.epil.preheader:                         ; preds = %._crit_edge451.loopexit.unr-lcssa, %.lr.ph450.preheader
  %indvars.iv526.epil.init = phi i64 [ 0, %.lr.ph450.preheader ], [ %indvars.iv.next527.7, %._crit_edge451.loopexit.unr-lcssa ]
  %.0386448.epil.init = phi float [ 0.000000e+00, %.lr.ph450.preheader ], [ %.sroa.speculated.7, %._crit_edge451.loopexit.unr-lcssa ]
  %lcmp.mod758 = icmp ne i64 %xtraiter755, 0
  call void @llvm.assume(i1 %lcmp.mod758)
  br label %.lr.ph450.epil

.lr.ph450.epil:                                   ; preds = %.lr.ph450.epil, %.lr.ph450.epil.preheader
  %indvars.iv526.epil = phi i64 [ %indvars.iv526.epil.init, %.lr.ph450.epil.preheader ], [ %indvars.iv.next527.epil, %.lr.ph450.epil ] ; 2 uses
  %.0386448.epil = phi float [ %.0386448.epil.init, %.lr.ph450.epil.preheader ], [ %.sroa.speculated.epil, %.lr.ph450.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph450.epil.preheader ], [ %epil.iter.next, %.lr.ph450.epil ]
  %17 = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv526.epil
  %18 = load i32, ptr %17, align 4, !tbaa !49
  %19 = sitofp i32 %18 to float
  %20 = fmul float %i.va, %19                     ; 2 uses
  %21 = fcmp olt float %.0386448.epil, %20
  %.sroa.speculated.epil = select i1 %21, float %20, float %.0386448.epil ; 2 uses
  %indvars.iv.next527.epil = add nuw nsw i64 %indvars.iv526.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter755
  br i1 %epil.iter.cmp.not, label %._crit_edge451.loopexit.a, label %.lr.ph450.epil, !llvm.loop !46

._crit_edge451.loopexit.a:                        ; preds = %.lr.ph450.epil, %._crit_edge451.loopexit.unr-lcssa
  %.sroa.speculated.lcssa = phi float [ %.sroa.speculated.7, %._crit_edge451.loopexit.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph450.epil ]
  %22 = fpext float %.sroa.speculated.lcssa to double
  %23 = fmul double %22, 1.050000e+00
  br label %._crit_edge451

._crit_edge451:                                   ; preds = %._crit_edge451.loopexit.a, %.preheader
  %.0386.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %23, %._crit_edge451.loopexit.a ]
  %24 = load ptr, ptr %i.n, align 8, !tbaa !69
  %25 = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %24)
          to label %bb.dm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph450.a:                                      ; preds = %.lr.ph450.a, %.lr.ph450.preheader.new
  %indvars.iv526 = phi i64 [ 0, %.lr.ph450.preheader.new ], [ %indvars.iv.next527.7, %.lr.ph450.a ] ; 9 uses
  %.0386448 = phi float [ 0.000000e+00, %.lr.ph450.preheader.new ], [ %.sroa.speculated.7, %.lr.ph450.a ] ; 2 uses
  %niter760 = phi i64 [ 0, %.lr.ph450.preheader.new ], [ %niter760.next.7, %.lr.ph450.a ]
  %26 = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv526
  %27 = load i32, ptr %26, align 4, !tbaa !49
  %28 = sitofp i32 %27 to float
  %29 = fmul float %i.va, %28                     ; 2 uses
  %30 = fcmp olt float %.0386448, %29
  %.sroa.speculated = select i1 %30, float %29, float %.0386448 ; 2 uses
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv526
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 4
  %31 = load i32, ptr %i.vd, align 4, !tbaa !49
  %32 = sitofp i32 %31 to float
  %33 = fmul float %i.va, %32                     ; 2 uses
  %34 = fcmp olt float %.sroa.speculated, %33
  %.sroa.speculated.1 = select i1 %34, float %33, float %.sroa.speculated ; 2 uses
  %35 = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv526
  %i.ve = getelementptr inbounds nuw i8, ptr %35, i64 8
  %36 = load i32, ptr %i.ve, align 4, !tbaa !49
  %37 = sitofp i32 %36 to float
  %38 = fmul float %i.va, %37                     ; 2 uses
  %39 = fcmp olt float %.sroa.speculated.1, %38
  %.sroa.speculated.2 = select i1 %39, float %38, float %.sroa.speculated.1 ; 2 uses
  %40 = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv526
  %i.vf = getelementptr inbounds nuw i8, ptr %40, i64 12
  %41 = load i32, ptr %i.vf, align 4, !tbaa !49
  %42 = sitofp i32 %41 to float
  %43 = fmul float %i.va, %42                     ; 2 uses
  %44 = fcmp olt float %.sroa.speculated.2, %43
  %.sroa.speculated.3 = select i1 %44, float %43, float %.sroa.speculated.2 ; 2 uses
  %45 = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv526
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 16
  %47 = load i32, ptr %46, align 4, !tbaa !49
  %48 = sitofp i32 %47 to float
  %49 = fmul float %i.va, %48                     ; 2 uses
  %50 = fcmp olt float %.sroa.speculated.3, %49
  %.sroa.speculated.4 = select i1 %50, float %49, float %.sroa.speculated.3 ; 2 uses
  %51 = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv526
  %52 = getelementptr inbounds nuw i8, ptr %51, i64 20
  %53 = load i32, ptr %52, align 4, !tbaa !49
  %54 = sitofp i32 %53 to float
  %55 = fmul float %i.va, %54                     ; 2 uses
  %56 = fcmp olt float %.sroa.speculated.4, %55
  %.sroa.speculated.5 = select i1 %56, float %55, float %.sroa.speculated.4 ; 2 uses
  %57 = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv526
  %58 = getelementptr inbounds nuw i8, ptr %57, i64 24
  %59 = load i32, ptr %58, align 4, !tbaa !49
  %60 = sitofp i32 %59 to float
  %61 = fmul float %i.va, %60                     ; 2 uses
  %62 = fcmp olt float %.sroa.speculated.5, %61
  %.sroa.speculated.6 = select i1 %62, float %61, float %.sroa.speculated.5 ; 2 uses
  %63 = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv526
  %64 = getelementptr inbounds nuw i8, ptr %63, i64 28
  %65 = load i32, ptr %64, align 4, !tbaa !49
  %66 = sitofp i32 %65 to float
  %67 = fmul float %i.va, %66                     ; 2 uses
  %68 = fcmp olt float %.sroa.speculated.6, %67
  %.sroa.speculated.7 = select i1 %68, float %67, float %.sroa.speculated.6 ; 3 uses
  %indvars.iv.next527.7 = add nuw nsw i64 %indvars.iv526, 8 ; 2 uses
  %niter760.next.7 = add i64 %niter760, 8         ; 2 uses
  %niter760.ncmp.7 = icmp eq i64 %niter760.next.7, %unroll_iter759
  br i1 %niter760.ncmp.7, label %._crit_edge451.loopexit.unr-lcssa, label %.lr.ph450.a, !llvm.loop !47

bb.dm:                                            ; preds = %._crit_edge451
  br i1 %25, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %fwrite265 = call i64 @fwrite(ptr nonnull @.str.85, i64 9, i64 1, ptr %i.ts) ; 0 uses
  %fwrite266 = call i64 @fwrite(ptr nonnull @.str.86, i64 21, i64 1, ptr %i.ts) ; 0 uses
  %fwrite267 = call i64 @fwrite(ptr nonnull @.str.87, i64 21, i64 1, ptr %i.ts) ; 0 uses
  %fwrite268 = call i64 @fwrite(ptr nonnull @.str.88, i64 18, i64 1, ptr %i.ts) ; 0 uses
  %i.vg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ts, ptr noundef nonnull @.str.89, double noundef %.0386.lcssa) #15 ; 0 uses
  %fwrite269 = call i64 @fwrite(ptr nonnull @.str.90, i64 26, i64 1, ptr %i.ts) ; 0 uses
  %fwrite270 = call i64 @fwrite(ptr nonnull @.str.91, i64 26, i64 1, ptr %i.ts) ; 0 uses
  %fwrite271 = call i64 @fwrite(ptr nonnull @.str.92, i64 29, i64 1, ptr %i.ts) ; 0 uses
  %fwrite272 = call i64 @fwrite(ptr nonnull @.str.93, i64 30, i64 1, ptr %i.ts) ; 0 uses
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn, %bb.dl
  %.not273453 = icmp sgt i32 %.0243.lcssa, %.0242.lcssa
  br i1 %.not273453, label %._crit_edge457, label %.lr.ph456

.lr.ph456:                                        ; preds = %bb.do
  %i.vh = fpext float %.0246 to double
  %i.vi = zext nneg i32 %.0243.lcssa to i64
  %i.vj = add i32 %.0242.lcssa, 1
  %wide.trip.count534 = zext i32 %i.vj to i64
  br label %bb.dp

._crit_edge457:                                   ; preds = %bb.dp, %bb.do
  br i1 %spec.select, label %bb.dq, label %bb.dr

bb.dp:                                            ; preds = %.lr.ph456, %bb.dp
  %indvars.iv531 = phi i64 [ %i.vi, %.lr.ph456 ], [ %indvars.iv.next532, %bb.dp ] ; 3 uses
  %i.vk = trunc nuw nsw i64 %indvars.iv531 to i32
  %i.vl = uitofp nneg i32 %i.vk to float
  %i.vm = load float, ptr @_ZZ11gmx_g_angleiPPcE8binwidth, align 4, !tbaa !61
  %i.vn = fmul float %i.vm, %i.vl
  %i.vo = fpext float %i.vn to double
  %i.vp = fadd double %i.vo, 1.800000e+02
  %i.vq = fsub double %i.vp, %i.vh
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv531
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !49
  %i.vt = sitofp i32 %i.vs to float
  %i.vu = fmul float %i.va, %i.vt
  %i.vv = fpext float %i.vu to double
  %i.vw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ts, ptr noundef nonnull @.str.94, double noundef %i.vq, double noundef %i.vv) #15 ; 0 uses
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %exitcond535.not = icmp eq i64 %indvars.iv.next532, %wide.trip.count534
  br i1 %exitcond535.not, label %._crit_edge457, label %bb.dp, !llvm.loop !48

bb.dq:                                            ; preds = %._crit_edge457
  %i.vx = load i32, ptr %i.da, align 4, !tbaa !49
  %i.vy = sitofp i32 %i.vx to float
  %i.vz = fmul float %i.va, %i.vy
  %i.wa = fpext float %i.vz to double
  %i.wb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ts, ptr noundef nonnull @.str.94, double noundef 1.800000e+02, double noundef %i.wa) #15 ; 0 uses
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %._crit_edge457
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.ts)
          to label %bb.ds unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ds:                                            ; preds = %bb.dr
  %i.wc = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.wd = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.39, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.dt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dt:                                            ; preds = %bb.ds
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.wc, ptr noundef %i.wd, ptr noundef nonnull @.str.95)
          to label %bb.du unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.du:                                            ; preds = %bb.dt
  br i1 %i.ch, label %bb.dv, label %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit

bb.dv:                                            ; preds = %bb.du
  %i.we = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.wf = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.41, i32 noundef 9, ptr noundef nonnull %4)
          to label %bb.dw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %bb.dv
  invoke void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef %i.we, ptr noundef %i.wf, ptr noundef nonnull @.str.95)
          to label %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit:    ; preds = %bb.d, %bb.du, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  %i.wg = getelementptr inbounds nuw i8, ptr %4, i64 480 ; 2 uses
  %i.wh = load ptr, ptr %i.wg, align 16, !tbaa !25 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %4, i64 488
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !26 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.wh, %i.wj
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bs, %bb.dk, %bb.cb, %bb.bi, %bb.ao, %bb.ab, %bb.r
  %.pn284.pn = phi { ptr, i32 } [ %.pn284, %bb.r ], [ %.pn282, %bb.ab ], [ %.pn280, %bb.ao ], [ %i.ju, %bb.bs ], [ %.pn260.pn.pn, %bb.dk ], [ %.pn255.pn.pn, %bb.cb ], [ %.pn.pn.pn, %bb.bi ], [ %lpad.loopexit.split-lp751, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  %i.wk = getelementptr inbounds nuw i8, ptr %4, i64 448
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.wk) #15
  %i.wl = getelementptr inbounds nuw i8, ptr %4, i64 392
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.wl) #15
  %i.wm = getelementptr inbounds nuw i8, ptr %4, i64 336
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.wm) #15
  %i.wn = getelementptr inbounds nuw i8, ptr %4, i64 280
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.wn) #15
  %i.wo = getelementptr inbounds nuw i8, ptr %4, i64 224
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.wo) #15
  %i.wp = getelementptr inbounds nuw i8, ptr %4, i64 168
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.wp) #15
  %i.wq = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.wq) #15
  %i.wr = getelementptr inbounds nuw i8, ptr %4, i64 56
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.wr) #15
  call void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %.pn284.pn

.lr.ph.i.i.i.i:                                   ; preds = %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.wx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.wh, %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit ] ; 3 uses
  %i.ws = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.wu = icmp eq ptr %i.ws, %i.wt
  br i1 %i.wu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.wv = load i64, ptr %i.wt, align 8, !tbaa !16
  %i.ww = add i64 %i.wv, 1
  call void @_ZdlPvm(ptr noundef %i.ws, i64 noundef %i.ww) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.wx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i360 = icmp eq ptr %i.wx, %i.wj
  br i1 %.not.i.i.i.i360, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.wg, align 16, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit
  %i.wy = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.wh, %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.wy, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.dx

bb.dx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %4, i64 496
  %i.xa = load ptr, ptr %i.wz, align 16, !tbaa !27
  %i.xb = ptrtoint ptr %i.xa to i64
  %i.xc = ptrtoint ptr %i.wy to i64
  %i.xd = sub i64 %i.xb, %i.xc
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef %i.xd) #18
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.dx
  %i.xe = getelementptr inbounds nuw i8, ptr %4, i64 424 ; 2 uses
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !25 ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.xh = load ptr, ptr %i.xg, align 16, !tbaa !26 ; 2 uses
  %.not4.i.i.i.i.1 = icmp eq ptr %i.xf, %i.xh
  br i1 %.not4.i.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZN8t_filenmD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1
  %.05.i.i.i.i.1 = phi ptr [ %i.xn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1 ], [ %i.xf, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %i.xi = load ptr, ptr %.05.i.i.i.i.1, align 8, !tbaa !21 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 16 ; 2 uses
  %i.xk = icmp eq ptr %i.xi, %i.xj
  br i1 %i.xk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1
  %i.xl = load i64, ptr %i.xj, align 8, !tbaa !16
  %i.xm = add i64 %i.xl, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xm) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1
  %i.xn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 32 ; 2 uses
  %.not.i.i.i.i360.1 = icmp eq ptr %i.xn, %i.xh
  br i1 %.not.i.i.i.i360.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, label %.lr.ph.i.i.i.i.1, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1
  %.pr.i.i.1 = load ptr, ptr %i.xe, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, %_ZN8t_filenmD2Ev.exit
  %i.xo = phi ptr [ %.pr.i.i.1, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1 ], [ %i.xf, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i.1 = icmp eq ptr %i.xo, null
  br i1 %.not.i.i1.i.i.1, label %_ZN8t_filenmD2Ev.exit.1, label %bb.dy

bb.dy:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1
  %i.xp = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !27
  %i.xr = ptrtoint ptr %i.xq to i64
  %i.xs = ptrtoint ptr %i.xo to i64
  %i.xt = sub i64 %i.xr, %i.xs
end_hunk_1
begin_hunk_2_@_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE:bb.a
  store ptr %i.f, ptr %0, align 8, !tbaa !21
  %i.g = load i64, ptr %i.a, align 8, !tbaa !28
  store i64 %i.g, ptr %i.d, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !16
  store i8 %i.i, ptr %i.h, align 1, !tbaa !16
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !20
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !16
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_Z9xvgrcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z13ana_dih_transPKcS0_PPfiiS0_S1_bPK16gmx_output_env_t(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @_Z11do_autocorrPKcPK16gmx_output_env_tS0_iiPPffmb(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare noundef float @_Z23correctRadianAngleRangef(float noundef) local_unnamed_addr #3

declare void @_Z23calc_distribution_propsiPKifiP9t_karplusPf(i32 noundef, ptr noundef, float noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef) local_unnamed_addr #3

declare void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8t_filenmD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !16
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #11

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #12

declare noundef ptr @_Z12gmx_trr_openRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare void @_Z19gmx_trr_write_frameP8t_fileiolffPA3_KfiS3_S3_S3_(ptr noundef, i64 noundef, float noundef, float noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z13gmx_trr_closeP8t_fileio(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
attributes #18 = { builtin nounwind }
attributes #19 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !24}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!11, !11, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!18 = !{!17, !11, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !12, i64 8, !6, i64 16}
!20 = !{!19, !12, i64 8}
!21 = !{!19, !11, i64 0}
!22 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!14, !13, i64 0}
!26 = !{!14, !13, i64 8}
!27 = !{!14, !13, i64 16}
!28 = !{!12, !12, i64 0}
!29 = distinct !{!29, !24}
!30 = distinct !{!30, !24}
!31 = distinct !{!31, !24}
!32 = distinct !{!32, !24}
!33 = distinct !{!33, !24}
!34 = distinct !{!34, !24, !72, !73}
!35 = distinct !{!35, !24, !72, !73}
!36 = distinct !{!36, !24, !73, !72}
!37 = distinct !{!37, !24}
!38 = distinct !{!38, !24, !72, !73}
!39 = distinct !{!39, !24, !72, !73}
!40 = distinct !{!40, !24, !73, !72}
!41 = distinct !{!41, !24}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = distinct !{!44, !24}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !75}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
!49 = !{!7, !7, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !14, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !50, i64 0}
!52 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !51, i64 0}
!53 = !{!"_ZTS8t_filenm", !7, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !52, i64 32}
!54 = !{!53, !7, i64 0}
!55 = !{!53, !11, i64 8}
!56 = !{!53, !11, i64 16}
!57 = !{!53, !12, i64 24}
!58 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"float", !6, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!"bool", !6, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{i8 0, i8 2}
!65 = !{}
!66 = !{!"p1 int", !10, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"p1 _ZTS16gmx_output_env_t", !10, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"p1 float", !10, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"llvm.loop.isvectorized", i32 1}
!73 = !{!"llvm.loop.unroll.runtime.disable"}
!74 = !{!"branch_weights", i32 4, i32 28}
!75 = !{!"llvm.loop.unroll.disable"}
end_hunk_2

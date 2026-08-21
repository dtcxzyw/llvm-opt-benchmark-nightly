Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/persistence_xml?download=true
inline.NumInlined: 499
inline.NumDeleted: 168
begin_hunk_0_@_ZN2cv10XMLEmitter8writeTagEPKciRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE:bb.a
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125, %bb.t
  %.pn120 = phi { ptr, i32 } [ %i.an, %bb.t ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125 ], [ %i.ao, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bg

bb.v:                                             ; preds = %bb.n, %bb.o, %bb.p
  %.198 = phi ptr [ %.097, %bb.p ], [ %.097, %bb.o ], [ @.str.5, %bb.n ] ; 3 uses
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.198) #19 ; 3 uses
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.093, i64 1 ; 2 uses
  store i8 60, ptr %.093, align 1, !tbaa !44
  %i.ax = icmp eq i32 %2, 2
  br i1 %i.ax, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.ay = load ptr, ptr %3, align 8, !tbaa !65
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !65
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv10XMLEmitter8writeTagEPKciRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE, ptr noundef nonnull @.str.4, i32 noundef 71) #18
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

bb.ab:                                            ; preds = %bb.y
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !50    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %bb.ab
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !44
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.aa ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128 ], [ %i.bd, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.bg

bb.ac:                                            ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %.093, i64 2
  store i8 47, ptr %i.aw, align 1, !tbaa !44
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.v
  %.194 = phi ptr [ %i.bj, %bb.ac ], [ %i.aw, %bb.v ]
  %i.bk = load i8, ptr %.198, align 1, !tbaa !44  ; 2 uses
  %i.bl = and i8 %i.bk, -33
  %i.bm = add i8 %i.bl, -65
  %i.bn = icmp ult i8 %i.bm, 26
  %.not108 = icmp eq i8 %i.bk, 95
  %or.cond = or i1 %.not108, %i.bn
  br i1 %or.cond, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv10XMLEmitter8writeTagEPKciRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE, ptr noundef nonnull @.str.4, i32 noundef 76) #18
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  unreachable

bb.ah:                                            ; preds = %bb.ae
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

bb.ai:                                            ; preds = %bb.af
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %10, align 8, !tbaa !50   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.ai
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !44
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.ah
  %.pn109 = phi { ptr, i32 } [ %i.bo, %bb.ah ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %i.bp, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bg

bb.aj:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull %.194, i32 noundef %i.av) ; 2 uses
  %i.ca = icmp sgt i32 %i.av, 0
  br i1 %i.ca, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.aj
  %wide.trip.count = and i64 %i.au, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ap
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ap ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.198, i64 %indvars.iv
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !44  ; 4 uses
  %i.cd = add i8 %i.cc, -58
  %or.cond.i = icmp ult i8 %i.cd, -10
  %i.ce = and i8 %i.cc, -33
  %i.cf = add i8 %i.ce, -91
  %i.cg = icmp ult i8 %i.cf, -26
  %.not144 = and i1 %or.cond.i, %i.cg
  br i1 %.not144, label %switch.early.test, label %bb.ap

switch.early.test:                                ; preds = %.lr.ph
  switch i8 %i.cc, label %bb.ak [
    i8 95, label %bb.ap
    i8 45, label %bb.ap
  ]

bb.ak:                                            ; preds = %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv10XMLEmitter8writeTagEPKciRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE, ptr noundef nonnull @.str.4, i32 noundef 83) #18
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

bb.ao:                                            ; preds = %bb.al
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %12, align 8, !tbaa !50   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %bb.ao
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !44
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134, %bb.an
  %.pn118 = phi { ptr, i32 } [ %i.ch, %bb.an ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134 ], [ %i.ci, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.bg

bb.ap:                                            ; preds = %switch.early.test, %switch.early.test, %.lr.ph
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  store i8 %i.cc, ptr %i.co, align 1, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

._crit_edge:                                      ; preds = %bb.ap, %bb.aj
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !52
  %i.cr = load ptr, ptr %3, align 8, !tbaa !60
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = lshr exact i64 %i.cu, 5                 ; 2 uses
  %i.cw = trunc i64 %i.cv to i32                  ; 2 uses
  %i.cx = and i32 %i.cw, 1
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv10XMLEmitter8writeTagEPKciRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE, ptr noundef nonnull @.str.4, i32 noundef 89) #18
          to label %bb.as unwind label %bb.au

bb.as:                                            ; preds = %bb.ar
  unreachable

bb.at:                                            ; preds = %bb.aq
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.au:                                            ; preds = %bb.ar
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %14, align 8, !tbaa !50   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.au
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !44
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.at
  %.pn111 = phi { ptr, i32 } [ %i.cz, %bb.at ], [ %i.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %i.da, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.bg

bb.av:                                            ; preds = %._crit_edge
  %sext = shl i64 %i.au, 32
  %i.dg = ashr exact i64 %sext, 32
  %i.dh = getelementptr inbounds i8, ptr %i.bz, i64 %i.dg ; 2 uses
  %i.di = icmp sgt i32 %i.cw, 0
  br i1 %i.di, label %.lr.ph150.preheader, label %._crit_edge151

.lr.ph150.preheader:                              ; preds = %bb.av
  %sext155 = and i64 %i.cv, 2147483647
  br label %.lr.ph150

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %bb.bd
  %indvars.iv153 = phi i64 [ 0, %.lr.ph150.preheader ], [ %indvars.iv.next154, %bb.bd ] ; 4 uses
  %.295147 = phi ptr [ %i.dh, %.lr.ph150.preheader ], [ %i.er, %bb.bd ]
  %i.dj = load ptr, ptr %3, align 8, !tbaa !60    ; 2 uses
  %i.dk = getelementptr inbounds nuw [32 x i8], ptr %i.dj, i64 %indvars.iv153
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !47 ; 4 uses
  %i.dn = or disjoint i64 %indvars.iv153, 1       ; 2 uses
  %i.do = getelementptr inbounds nuw [32 x i8], ptr %i.dj, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !47 ; 4 uses
  %.not113 = icmp eq i64 %i.dm, 0
  br i1 %.not113, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %.lr.ph150
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ax unwind label %bb.az

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv10XMLEmitter8writeTagEPKciRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE, ptr noundef nonnull @.str.4, i32 noundef 95) #18
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  unreachable

bb.az:                                            ; preds = %bb.aw
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.ba:                                            ; preds = %bb.ax
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %16, align 8, !tbaa !50   ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.ba
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !44
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.az
  %.pn114 = phi { ptr, i32 } [ %i.dr, %bb.az ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.ds, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.bg

bb.bb:                                            ; preds = %.lr.ph150
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.dz = add i64 %i.dq, %i.dm
  %i.ea = trunc i64 %i.dz to i32
  %i.eb = add i32 %i.ea, 4
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 80
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = tail call noundef ptr %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef %.295147, i32 noundef %i.eb) ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  store i8 32, ptr %i.ef, align 1, !tbaa !44
  %i.eh = load ptr, ptr %3, align 8, !tbaa !60
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %indvars.iv153
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr align 1 %i.ej, i64 %i.dm, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dm ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  store i8 61, ptr %i.ek, align 1, !tbaa !44
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 2 ; 2 uses
  store i8 34, ptr %i.el, align 1, !tbaa !44
  %.not117 = icmp eq i64 %i.dq, 0
  br i1 %.not117, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.en = load ptr, ptr %3, align 8, !tbaa !60
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.en, i64 %i.dn
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !50
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %i.ep, i64 %i.dq, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.dq ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  store i8 34, ptr %i.eq, align 1, !tbaa !44
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 2 ; 2 uses
  %18 = icmp samesign ult i64 %indvars.iv.next154, %sext155
  br i1 %18, label %.lr.ph150, label %._crit_edge151, !llvm.loop !67

._crit_edge151:                                   ; preds = %bb.bd, %bb.av
  %.295.lcssa = phi ptr [ %i.dh, %bb.av ], [ %i.er, %bb.bd ] ; 3 uses
  br i1 %i.p, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %._crit_edge151
  %i.es = getelementptr inbounds nuw i8, ptr %.295.lcssa, i64 1
  store i8 47, ptr %.295.lcssa, align 1, !tbaa !44
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge151
  %.396 = phi ptr [ %i.es, %bb.be ], [ %.295.lcssa, %._crit_edge151 ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.396, i64 1
  store i8 62, ptr %.396, align 1, !tbaa !44
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 112
  %i.ex = load ptr, ptr %i.ew, align 8
  tail call void %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull %i.et)
  %i.ey = and i32 %.190, -17
  store i32 %i.ey, ptr %i.l, align 8, !tbaa !56
  ret void

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn122.pn = phi { ptr, i32 } [ %.pn122, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127 ], [ %.pn118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130 ], [ %.pn109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %.pn114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %.pn111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ]
  resume { ptr, i32 } %.pn122.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !50 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !44
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #16
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !61

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !60
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #16
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !60     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #15 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !45
  %i.s = load ptr, ptr %2, align 8, !tbaa !50     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !47   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !50
  %i.z = load i64, ptr %i.t, align 8, !tbaa !44
  store i64 %i.z, ptr %i.r, align 8, !tbaa !44
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !47
  store ptr %i.t, ptr %2, align 8, !tbaa !50
  store i64 0, ptr %i.ab, align 8, !tbaa !47
  store i8 0, ptr %i.t, align 8, !tbaa !44
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !68, !noalias !71
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !71, !noalias !68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47, !alias.scope !71, !noalias !68 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !73
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !50, !alias.scope !68, !noalias !71
  %i.al = load i64, ptr %i.af, align 8, !tbaa !44, !alias.scope !71, !noalias !68
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !44, !alias.scope !68, !noalias !71
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !47, !alias.scope !71, !noalias !68
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !47, !alias.scope !68, !noalias !71
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !50, !alias.scope !71, !noalias !68
  store i64 0, ptr %i.an, align 8, !tbaa !47, !alias.scope !71, !noalias !68
  store i8 0, ptr %i.af, align 8, !tbaa !44, !alias.scope !71, !noalias !68
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !74

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !45, !alias.scope !75, !noalias !78
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !50, !alias.scope !78, !noalias !75 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
end_hunk_0

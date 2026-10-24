Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cap_images?download=true
inline.NumInlined: 642
inline.NumDeleted: 236
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv17icvExtractPatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj:bb.a

.noexc.i:                                         ; preds = %bb.aj
  %i.bj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.bj, ptr %0, align 8, !tbaa !14
  %i.bk = load i64, ptr %i.d, align 8, !tbaa !32
  store i64 %i.bk, ptr %i.bg, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.aj
  %i.bl = phi ptr [ %i.bj, %.noexc.i ], [ %i.bg, %bb.aj ] ; 2 uses
  switch i64 %i.bh, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.bm = load i8, ptr %i.af, align 1, !tbaa !15
  store i8 %i.bm, ptr %i.bl, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.al:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr nonnull align 1 %i.af, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.ak, %bb.al
  %i.bn = load i64, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !13
  %i.bp = load ptr, ptr %0, align 8, !tbaa !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 0, ptr %i.bq, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.dm

bb.am:                                            ; preds = %bb.ai
  %i.br = icmp ult i64 %i.be, %i.f
  br i1 %i.br, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv17icvExtractPatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj, ptr noundef nonnull @.str.1, i32 noundef 227) #21
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.ar:                                            ; preds = %bb.ao
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = load ptr, ptr %13, align 8, !tbaa !14   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.ar
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !15
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.aq
  %.pn154 = phi { ptr, i32 } [ %i.bs, %bb.aq ], [ %i.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %i.bt, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.as:                                            ; preds = %bb.am
  %i.bz = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 37, i64 noundef %i.be) #20
  %i.ca = icmp eq i64 %i.bz, -1
  br i1 %i.ca, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cb, ptr %0, align 8, !tbaa !31
  %i.cc = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !13  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %i.cd, ptr %i.c, align 8, !tbaa !32
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %.noexc.i177, label %._crit_edge.i.i176

.noexc.i177:                                      ; preds = %bb.at
  %i.cf = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) ; 2 uses
  store ptr %i.cf, ptr %0, align 8, !tbaa !14
  %i.cg = load i64, ptr %i.c, align 8, !tbaa !32
  store i64 %i.cg, ptr %i.cb, align 8, !tbaa !15
  br label %._crit_edge.i.i176

._crit_edge.i.i176:                               ; preds = %.noexc.i177, %bb.at
  %i.ch = phi ptr [ %i.cf, %.noexc.i177 ], [ %i.cb, %bb.at ] ; 2 uses
  switch i64 %i.cd, label %bb.av [
    i64 1, label %bb.au
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit178
  ]

bb.au:                                            ; preds = %._crit_edge.i.i176
  %i.ci = load i8, ptr %i.cc, align 1, !tbaa !15
  store i8 %i.ci, ptr %i.ch, align 1, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit178

bb.av:                                            ; preds = %._crit_edge.i.i176
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ch, ptr align 1 %i.cc, i64 %i.cd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit178: ; preds = %._crit_edge.i.i176, %bb.au, %bb.av
  %i.cj = load i64, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !13
  %i.cl = load ptr, ptr %0, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 0, ptr %i.cm, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.dm

bb.aw:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  %i.cn = load ptr, ptr %1, align 8, !tbaa !14
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.10, ptr noundef %i.cn)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv17icvExtractPatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj, ptr noundef nonnull @.str.1, i32 noundef 230) #21
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %15, align 8, !tbaa !14   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.ay
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !15
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.az:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.af)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv17icvExtractPatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj, ptr noundef nonnull @.str.1, i32 noundef 232) #21
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %bb.bb
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !15
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.bc:                                            ; preds = %bb.m
  %i.da = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 47, i64 noundef -1) #20 ; 2 uses
  %i.db = add i64 %i.da, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.db) ; 2 uses
  %.3334 = add i64 %i.da, 1                       ; 2 uses
  %i.dc = icmp ult i64 %.3334, %i.f
  br i1 %i.dc, label %.lr.ph337.preheader, label %.critedge

.lr.ph337.preheader:                              ; preds = %bb.bc
  %i.dd = load ptr, ptr %1, align 8, !tbaa !14
  br label %.lr.ph337

bb.bd:                                            ; preds = %.lr.ph337
  %.3 = add i64 %.3335, 1                         ; 2 uses
  %i.de = icmp ult i64 %.3, %i.f
  br i1 %i.de, label %.lr.ph337, label %.critedge, !llvm.loop !133

.lr.ph337:                                        ; preds = %.lr.ph337.preheader, %bb.bd
  %.3335 = phi i64 [ %.3, %bb.bd ], [ %.3334, %.lr.ph337.preheader ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.3335
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !15
  %28 = add i8 %i.dg, -58
  %isdigit = icmp ult i8 %28, -10
  br i1 %isdigit, label %bb.bd, label %..critedge_crit_edge338, !llvm.loop !133

..critedge_crit_edge338:                          ; preds = %.lr.ph337
  br label %.critedge, !llvm.loop !133

.critedge:                                        ; preds = %bb.bd, %..critedge_crit_edge338, %bb.bc
  %.3.lcssa = phi i64 [ %umax, %bb.bc ], [ %.3335, %..critedge_crit_edge338 ], [ %umax, %bb.bd ] ; 6 uses
  %i.dh = icmp eq i64 %.3.lcssa, %i.f
  br i1 %i.dh, label %._crit_edge.i.i185, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.di = icmp ult i64 %.3.lcssa, %i.f
  br i1 %i.di, label %.lr.ph, label %.critedge2.thread

.lr.ph:                                           ; preds = %.preheader
  %i.dj = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %i.dk = trunc i64 %i.f to i32
  %i.dl = trunc i64 %.3.lcssa to i32
  %i.dm = sub i32 %i.dk, %i.dl                    ; 2 uses
  br label %bb.be

._crit_edge.i.i185:                               ; preds = %.critedge
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.dn, ptr %0, align 8, !tbaa !31
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.do, align 8, !tbaa !13
  store i8 0, ptr %i.dn, align 8, !tbaa !15
  br label %bb.dm

bb.be:                                            ; preds = %bb.bu, %.lr.ph
  %.081255 = phi i64 [ 0, %.lr.ph ], [ %i.eo, %bb.bu ] ; 2 uses
  %.082254 = phi i32 [ 0, %.lr.ph ], [ %i.eq, %bb.bu ] ; 4 uses
  %.4253 = phi i64 [ %.3.lcssa, %.lr.ph ], [ %i.er, %bb.bu ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.4253
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15  ; 2 uses
  %29 = add i8 %i.dq, -58
  %isdigit124 = icmp ult i8 %29, -10
  br i1 %isdigit124, label %.critedge2, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dr = mul i64 %.081255, 10
  %30 = zext nneg i8 %i.dq to i64
  %i.ds = add i64 %i.dr, -48
  %i.dt = add i64 %i.ds, %30                      ; 4 uses
  %i.du = icmp ult i64 %i.dt, 1000000000
  br i1 %i.du, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bt, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.bh unwind label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv17icvExtractPatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj, ptr noundef nonnull @.str.1, i32 noundef 262) #21
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  unreachable

bb.bj:                                            ; preds = %bb.bg
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

bb.bk:                                            ; preds = %bb.bh
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dx = load ptr, ptr %17, align 8, !tbaa !14   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187: ; preds = %bb.bk
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !15
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit189: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187, %bb.bj
  %.pn142 = phi { ptr, i32 } [ %i.dv, %bb.bj ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187 ], [ %i.dw, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.bl:                                            ; preds = %bb.bf
  %exitcond.not = icmp eq i32 %.082254, 64
  br i1 %exitcond.not, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv17icvExtractPatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj, ptr noundef nonnull @.str.1, i32 noundef 264) #21
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  unreachable

bb.bp:                                            ; preds = %bb.bm
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

bb.bq:                                            ; preds = %bb.bn
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load ptr, ptr %19, align 8, !tbaa !14   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190: ; preds = %bb.bq
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !15
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190, %bb.bp
  %.pn144 = phi { ptr, i32 } [ %i.ec, %bb.bp ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190 ], [ %i.ed, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.br:                                            ; preds = %bb.bl
  %i.ej = add nuw i64 %.4253, 1                   ; 3 uses
  %exitcond264.not = icmp eq i64 %i.ej, %i.f
  br i1 %exitcond264.not, label %.critedge2, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !15  ; 2 uses
  %31 = add i8 %i.el, -58
  %isdigit124.1 = icmp ult i8 %31, -10
  br i1 %isdigit124.1, label %.critedge2.split.loop.exit346, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.em = mul nuw nsw i64 %i.dt, 10
  %32 = zext nneg i8 %i.el to i64
  %i.en = add nsw i64 %i.em, -48
  %i.eo = add nsw i64 %i.en, %32                  ; 3 uses
  %i.ep = icmp ult i64 %i.eo, 1000000000
  br i1 %i.ep, label %bb.bu, label %bb.bg

bb.bu:                                            ; preds = %bb.bt
  %i.eq = add nuw nsw i32 %.082254, 2
  %i.er = add nuw i64 %.4253, 2                   ; 2 uses
  %exitcond264.not.1 = icmp eq i64 %i.er, %i.f
  br i1 %exitcond264.not.1, label %.critedge2, label %bb.be, !llvm.loop !134

.critedge2.split.loop.exit346:                    ; preds = %bb.bs
  %i.es = or disjoint i32 %.082254, 1
  br label %.critedge2

.critedge2:                                       ; preds = %bb.be, %bb.br, %bb.bu, %.critedge2.split.loop.exit346
  %isdigit124.lcssa = phi i1 [ true, %.critedge2.split.loop.exit346 ], [ false, %bb.bu ], [ false, %bb.br ], [ true, %bb.be ]
  %.4.lcssa = phi i64 [ %i.ej, %.critedge2.split.loop.exit346 ], [ %i.f, %bb.bu ], [ %i.f, %bb.br ], [ %.4253, %bb.be ] ; 4 uses
  %.082.lcssa = phi i32 [ %i.es, %.critedge2.split.loop.exit346 ], [ %i.dm, %bb.bu ], [ %i.dm, %bb.br ], [ %.082254, %bb.be ] ; 2 uses
  %.081.lcssa = phi i64 [ %i.dt, %.critedge2.split.loop.exit346 ], [ %i.eo, %bb.bu ], [ %i.dt, %bb.br ], [ %.081255, %bb.be ] ; 2 uses
  %.not125 = icmp eq i32 %.082.lcssa, 0
  br i1 %.not125, label %.critedge2.thread, label %bb.bz

.critedge2.thread:                                ; preds = %.preheader, %.critedge2
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %.critedge2.thread
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @__func__._ZN2cv17icvExtractPatternERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj, ptr noundef nonnull @.str.1, i32 noundef 267) #21
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  unreachable

bb.bx:                                            ; preds = %.critedge2.thread
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

bb.by:                                            ; preds = %bb.bv
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load ptr, ptr %21, align 8, !tbaa !14   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ex = icmp eq ptr %i.ev, %i.ew
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %bb.by
  %i.ey = load i64, ptr %i.ew, align 8, !tbaa !15
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ez) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193, %bb.bx
  %.pn126 = phi { ptr, i32 } [ %i.et, %bb.bx ], [ %i.eu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193 ], [ %i.eu, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.bz:                                            ; preds = %.critedge2
  %i.fa = trunc i64 %.081.lcssa to i32
  store i32 %i.fa, ptr %2, align 4, !tbaa !46
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.fb, ptr %0, align 8, !tbaa !31
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.fc, align 8, !tbaa !13
  store i8 0, ptr %i.fb, align 8, !tbaa !15
  %.not128 = icmp eq i64 %.3.lcssa, 0
  br i1 %.not128, label %bb.ch, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.fd = load i64, ptr %i.e, align 8, !tbaa !13, !noalias !143
  %i.fe = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  store ptr %i.fe, ptr %23, align 8, !tbaa !31, !alias.scope !143
  %i.ff = load ptr, ptr %1, align 8, !tbaa !14, !noalias !143 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.3.lcssa, i64 %i.fd) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !143
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !32, !noalias !143
  %i.fg = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.fg, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.ca
  %i.fh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc196 unwind label %bb.cf ; 2 uses

.noexc196:                                        ; preds = %.noexc10.i.i
  store ptr %i.fh, ptr %23, align 8, !tbaa !14, !alias.scope !143
  %i.fi = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !143
  store i64 %i.fi, ptr %i.fe, align 8, !tbaa !15, !alias.scope !143
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc196, %bb.ca
  %i.fj = phi ptr [ %i.fh, %.noexc196 ], [ %i.fe, %bb.ca ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.cc [
    i64 1, label %bb.cb
    i64 0, label %bb.cd
  ]

bb.cb:                                            ; preds = %._crit_edge.i.i.i
  %i.fk = load i8, ptr %i.ff, align 1, !tbaa !15
  store i8 %i.fk, ptr %i.fj, align 1, !tbaa !15
  br label %bb.cd

bb.cc:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fj, ptr align 1 %i.ff, i64 %spec.select.i.i.i, i1 false)
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %._crit_edge.i.i.i
  %i.fl = load i64, ptr %i.b, align 8, !tbaa !32, !noalias !143 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !13, !alias.scope !143
  %i.fn = load ptr, ptr %23, align 8, !tbaa !14, !alias.scope !143
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fl
  store i8 0, ptr %i.fo, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !143
  %i.fp = load i64, ptr %i.fm, align 8, !tbaa !13 ; 2 uses
  %i.fq = load i64, ptr %i.fc, align 8, !tbaa !13
  %i.fr = sub i64 4611686018427387903, %i.fq
  %i.fs = icmp ult i64 %i.fr, %i.fp
  br i1 %i.fs, label %bb.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #21
          to label %.noexc197 unwind label %bb.cg

.noexc197:                                        ; preds = %bb.ce
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.cd
  %i.ft = load ptr, ptr %23, align 8, !tbaa !14
  %i.fu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ft, i64 noundef %i.fp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.cg ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.fv = load ptr, ptr %23, align 8, !tbaa !14   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fe
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.fx = load i64, ptr %i.fe, align 8, !tbaa !15
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.ch

bb.cf:                                            ; preds = %.noexc10.i.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

bb.cg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.ce
  %i.ga = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gb = load ptr, ptr %23, align 8, !tbaa !14   ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fe
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %bb.cg
  %i.gd = load i64, ptr %i.fe, align 8, !tbaa !15
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202, %bb.cf
  %.pn129 = phi { ptr, i32 } [ %i.fz, %bb.cf ], [ %i.ga, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202 ], [ %i.ga, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20
  br label %bb.dl

bb.ch:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit201, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  invoke void (ptr, ptr, ...) @_ZN2cv6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull @.str.16, i32 noundef %.082.lcssa)
          to label %bb.ci unwind label %bb.cq

bb.ci:                                            ; preds = %bb.ch
  %i.gf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !13 ; 2 uses
  %i.gh = load i64, ptr %i.fc, align 8, !tbaa !13
  %i.gi = sub i64 4611686018427387903, %i.gh
  %i.gj = icmp ult i64 %i.gi, %i.gg
  br i1 %i.gj, label %bb.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i205

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #21
          to label %.noexc206 unwind label %bb.cr

.noexc206:                                        ; preds = %bb.cj
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i205: ; preds = %bb.ci
  %i.gk = load ptr, ptr %24, align 8, !tbaa !14
  %i.gl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.gk, i64 noundef %i.gg)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit208 unwind label %bb.cr ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i205
  %i.gm = load ptr, ptr %24, align 8, !tbaa !14   ; 2 uses
end_hunk_0

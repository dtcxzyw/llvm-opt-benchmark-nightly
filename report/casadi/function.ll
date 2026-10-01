Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/function?download=true
inline.NumInlined: 7683
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK6casadi8Function8mapaccumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS0_SaIS0_EExRKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SF_EEE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  %i.ck = load ptr, ptr %17, align 8, !tbaa !41   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !42
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171, %bb.ab
  %.596 = phi i1 [ true, %bb.ab ], [ %.495, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %.495, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ] ; 2 uses
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.ab ], [ %.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i171 ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ] ; 4 uses
  %i.cp = load ptr, ptr %18, align 8, !tbaa !41   ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !42
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  %i.cu = load ptr, ptr %19, align 8, !tbaa !41   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread: ; preds = %bb.t
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %19, align 8, !tbaa !41   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %.sink.split588, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !42
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #30
  br label %.sink.split588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.dd = load i64, ptr %i.cv, align 8, !tbaa !42
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.de) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br i1 %.596, label %bb.ah, label %bb.cx

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br i1 %.596, label %bb.ah, label %bb.cx

.sink.split588:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.thread
  %.pn.pn.pn.pn.pn.pn.pn342.ph = phi { ptr, i32 } [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.thread ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.thread ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split588, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179
  %.pn.pn.pn.pn.pn.pn.pn342 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177 ], [ %.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179 ], [ %.pn.pn.pn.pn.pn.pn.pn342.ph, %.sink.split588 ]
  call void @__cxa_free_exception(ptr %i.bi) #29
  br label %bb.cx

bb.ai:                                            ; preds = %bb.r
  %i.df = ptrtoint ptr %i.j to i64
  %i.dg = ptrtoint ptr %i.h to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = icmp eq i64 %i.dh, 8
  br i1 %i.di, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dj = load ptr, ptr %i.h, align 8, !tbaa !52
  store ptr %i.dj, ptr %0, align 8, !tbaa !52
  tail call void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.cw

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #29
  %i.dk = tail call noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %1), !noalias !536 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !54, !noalias !536
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 432
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !536
  call void %i.dn(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.12") align 8 %26, ptr noundef nonnull align 8 dereferenceable(1312) %i.dk), !inline_history !244
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %27, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29
  %i.do = icmp ugt i64 %i.d, 384307168202282325
  br i1 %i.do, label %bb.al, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.302) #28
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.al
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.ak
  store i64 0, ptr %28, align 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.dp = mul nuw nsw i64 %i.d, 24                ; 3 uses
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #32
          to label %.noexc180 unwind label %bb.an ; 5 uses

.noexc180:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.dq, ptr %28, align 8, !tbaa !257
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.d
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dq, i8 0, i64 %i.dp, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.dq, i64 %i.dp
  br label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i

_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i: ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.noexc180
  %.pr.i287 = phi ptr [ %i.dq, %.noexc180 ], [ null, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 8 uses
  %i.ds = phi ptr [ %i.dr, %.noexc180 ], [ null, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 2 uses
  %i.dt = phi ptr [ %scevgep.i.i.i.i.i, %.noexc180 ], [ null, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %i.ds, ptr %i.dv, align 8, !tbaa !258
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29
  %i.dw = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.dw, label %bb.am, label %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i181

bb.am:                                            ; preds = %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.302) #28
          to label %.noexc188 unwind label %bb.ao

.noexc188:                                        ; preds = %bb.am
  unreachable

_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i181: ; preds = %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i
  store i64 0, ptr %29, align 8
  %.not.i.i.i.i182 = icmp eq i64 %i.g, 0          ; 3 uses
  br i1 %.not.i.i.i.i182, label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i187, label %.lr.ph.preheader.i.i.i.i.i183

.lr.ph.preheader.i.i.i.i.i183:                    ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i181
  %i.dx = mul nuw nsw i64 %i.g, 24                ; 3 uses
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #32
          to label %.noexc189 unwind label %bb.ao ; 5 uses

.noexc189:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i183
  store ptr %i.dy, ptr %29, align 8, !tbaa !257
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.g
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dy, i8 0, i64 %i.dx, i1 false)
  %scevgep.i.i.i.i.i184 = getelementptr i8, ptr %i.dy, i64 %i.dx
  br label %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i187

_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i187: ; preds = %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i181, %.noexc189
  %.pr.i271 = phi ptr [ %i.dy, %.noexc189 ], [ null, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i181 ] ; 7 uses
  %i.ea = phi ptr [ %i.dz, %.noexc189 ], [ null, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i181 ] ; 2 uses
  %i.eb = phi ptr [ %scevgep.i.i.i.i.i184, %.noexc189 ], [ null, %_ZNSt6vectorIS_IN6casadi2MXESaIS1_EESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i181 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %i.ea, ptr %i.ed, align 8, !tbaa !258
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !259
  %i.ee = icmp sgt i64 %4, 0                      ; 2 uses
  br i1 %i.ee, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i187
  %i.ef = load ptr, ptr %3, align 8, !tbaa !254   ; 2 uses
  %i.eg = load ptr, ptr %i.i, align 8, !tbaa !254 ; 2 uses
  %.not356423 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not356423, label %.preheader357, label %.lr.ph426

.lr.ph426:                                        ; preds = %._crit_edge
  %i.eh = icmp slt i64 %4, %i.d
  %i.ei = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 10 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 10 uses
  %i.en = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.es = icmp slt i64 %4, 1
  %i.et = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %35, i64 16
  br label %bb.as

bb.an:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.al
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.ao:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i183, %bb.am
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i187, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit
  %.0100412 = phi i64 [ %i.fj, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit ], [ 0, %_ZNSt12_Vector_baseISt6vectorIN6casadi2MXESaIS2_EESaIS4_EEC2EmRKS5_.exit.thread.i187 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %.pr.i287, i64 %.0100412 ; 3 uses
  %i.fa = load ptr, ptr %26, align 8, !tbaa !97
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.0100412 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !99 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !98
  %.not.i = icmp eq ptr %i.fd, %i.ff
  br i1 %.not.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph
  %i.fg = load ptr, ptr %i.fb, align 8, !tbaa !52
  store ptr %i.fg, ptr %i.fd, align 8, !tbaa !52
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fd)
          to label %.noexc191 unwind label %bb.ar

.noexc191:                                        ; preds = %bb.ap
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !99
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fi, ptr %i.fc, align 8, !tbaa !99
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit

bb.aq:                                            ; preds = %.lr.ph
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr %i.fd, ptr noundef nonnull align 8 dereferenceable(8) %i.fb)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit unwind label %bb.ar

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc191, %bb.aq
  %i.fj = add nuw nsw i64 %.0100412, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.fj, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !519

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.preheader357:                                    ; preds = %._crit_edge422, %._crit_edge
  br i1 %.not.i.i.i.i, label %.preheader, label %.lr.ph428

bb.as:                                            ; preds = %.lr.ph426, %._crit_edge422
  %.sroa.0311.0424 = phi ptr [ %i.ef, %.lr.ph426 ], [ %i.kw, %._crit_edge422 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %4, ptr %i.a, align 8, !tbaa !169
  br i1 %i.eh, label %.lr.ph415, label %._crit_edge416

._crit_edge416:                                   ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit215, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %34, i8 0, i64 24, i1 false), !alias.scope !537
  invoke void @_ZNK6casadi8Function4callERKSt6vectorINS_2MXESaIS2_EERS4_bb(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0311.0424, ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef nonnull align 8 dereferenceable(24) %34, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZNK6casadi8FunctionclERKSt6vectorINS_2MXESaIS2_EE.exit unwind label %.body

.body:                                            ; preds = %._crit_edge416
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %34) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  br label %bb.ct

.lr.ph415:                                        ; preds = %bb.as, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit215
  %storemerge413 = phi i64 [ %i.it, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit215 ], [ %4, %bb.as ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  %i.fm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6casadi8Function7name_inB5cxx11Ex(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %storemerge413)
          to label %bb.at unwind label %bb.bf     ; 2 uses

bb.at:                                            ; preds = %.lr.ph415
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !41, !noalias !538
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !43, !noalias !538 ; 3 uses
  store ptr %i.ei, ptr %32, align 8, !tbaa !37, !alias.scope !539
  store i64 0, ptr %i.ej, align 8, !tbaa !43, !alias.scope !539
  store i8 0, ptr %i.ei, align 8, !tbaa !42, !alias.scope !539
  %i.fq = add i64 %i.fp, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %32, i64 noundef %i.fq)
          to label %bb.au unwind label %.loopexit363

bb.au:                                            ; preds = %bb.at
  %i.fr = load i64, ptr %i.ej, align 8, !tbaa !43, !alias.scope !539
  %i.fs = sub i64 4611686018427387903, %i.fr
  %i.ft = icmp ult i64 %i.fs, %i.fp
  br i1 %i.ft, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.au
  %i.fu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef %i.fn, i64 noundef %i.fp)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit363 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fv = load i64, ptr %i.ej, align 8, !tbaa !43, !alias.scope !539
  %i.fw = icmp eq i64 %i.fv, 4611686018427387903
  br i1 %i.fw, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.au
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.300) #28
          to label %.cont.i.i unwind label %.loopexit.split-lp364

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.fx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.78, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit363 ; 0 uses

.loopexit363:                                     ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit365 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp364:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp366 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp364, %.loopexit363
  %lpad.phi367 = phi { ptr, i32 } [ %lpad.loopexit365, %.loopexit363 ], [ %lpad.loopexit.split-lp366, %.loopexit.split-lp364 ] ; 2 uses
  %i.fy = load ptr, ptr %32, align 8, !tbaa !41, !alias.scope !539 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.ei
  br i1 %i.fz, label %.body193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.av
  %i.ga = load i64, ptr %i.ei, align 8, !tbaa !42, !alias.scope !539
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #30
  br label %.body193

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #29
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.aw unwind label %bb.bg

bb.aw:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.gc = load i64, ptr %i.ej, align 8, !tbaa !43, !noalias !540 ; 4 uses
  %i.gd = load i64, ptr %i.ek, align 8, !tbaa !43, !noalias !540 ; 4 uses
  %i.ge = add i64 %i.gd, %i.gc                    ; 2 uses
  %i.gf = load ptr, ptr %32, align 8, !tbaa !41, !noalias !540 ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.ei
  br i1 %i.gg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197: ; preds = %bb.aw
  %i.gh = icmp ult i64 %i.gc, 16
  call void @llvm.assume(i1 %i.gh)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %bb.aw
  %i.gi = load i64, ptr %i.ei, align 8, !tbaa !42, !noalias !540
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197
  %i.gj = phi i64 [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i197 ]
  %i.gk = icmp ugt i64 %i.ge, %i.gj
  br i1 %i.gk, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.gl = load ptr, ptr %33, align 8, !tbaa !41, !noalias !540
  %i.gm = icmp eq ptr %i.gl, %i.el
  br i1 %i.gm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i: ; preds = %bb.ax
  %i.gn = icmp ult i64 %i.gd, 16
  call void @llvm.assume(i1 %i.gn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i: ; preds = %bb.ax
  %i.go = load i64, ptr %i.el, align 8, !tbaa !42, !noalias !540
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i
  %i.gp = phi i64 [ %i.go, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13.i ]
  %.not.i196 = icmp ugt i64 %i.ge, %i.gp
  br i1 %.not.i196, label %bb.az, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14.i
  %i.gq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, i64 noundef 0, i64 noundef 0, ptr noundef %i.gf, i64 noundef %i.gc)
          to label %.noexc198 unwind label %.loopexit368 ; 5 uses

.noexc198:                                        ; preds = %.critedge.i
  store ptr %i.em, ptr %31, align 8, !tbaa !37, !alias.scope !540
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !41 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 5 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15.i

bb.ay:                                            ; preds = %.noexc198
end_hunk_0
begin_hunk_1_@_ZNK6casadi8Function8mapaccumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS0_SaIS0_EExRKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SF_EEE:bb.a

bb.bg:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

.loopexit368:                                     ; preds = %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit370 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

.loopexit.split-lp369:                            ; preds = %bb.ba
  %lpad.loopexit.split-lp371 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

bb.bh:                                            ; preds = %bb.bc, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #29
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn120 = phi { ptr, i32 } [ %i.iy, %bb.bi ], [ %i.ix, %bb.bh ] ; 2 uses
  %i.iz = load ptr, ptr %31, align 8, !tbaa !41   ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.em
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %bb.bj
  %i.jb = load i64, ptr %i.em, align 8, !tbaa !42
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %bb.bj, %.loopexit368, %.loopexit.split-lp369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  %.pn120.pn = phi { ptr, i32 } [ %.pn120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216 ], [ %lpad.loopexit.split-lp371, %.loopexit.split-lp369 ], [ %lpad.loopexit370, %.loopexit368 ], [ %.pn120, %bb.bj ] ; 2 uses
  %i.jd = load ptr, ptr %33, align 8, !tbaa !41   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.el
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %i.jf = load i64, ptr %i.el, align 8, !tbaa !42
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219, %bb.bg
  %.pn120.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.bg ], [ %.pn120.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %.pn120.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #29
  %i.jh = load ptr, ptr %32, align 8, !tbaa !41   ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.ei
  br i1 %i.ji, label %.body193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %i.jj = load i64, ptr %i.ei, align 8, !tbaa !42
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #30
  br label %.body193

.body193:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222, %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn120.pn.pn.pn = phi { ptr, i32 } [ %.pn120.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222 ], [ %i.iv, %bb.bf ], [ %lpad.phi367, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %lpad.phi367, %bb.av ], [ %.pn120.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #29
  br label %bb.bl

bb.bk:                                            ; preds = %bb.be, %bb.bd
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.body193
  %.pn125 = phi { ptr, i32 } [ %i.jl, %bb.bk ], [ %.pn120.pn.pn.pn, %.body193 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.ct

_ZNK6casadi8FunctionclERKSt6vectorINS_2MXESaIS2_EE.exit: ; preds = %._crit_edge416
  %i.jm = load ptr, ptr %27, align 16, !tbaa !97  ; 5 uses
  %i.jn = load ptr, ptr %i.eo, align 8, !tbaa !99 ; 2 uses
  %i.jo = load ptr, ptr %i.ep, align 16, !tbaa !98
  %i.jp = load <2 x ptr>, ptr %34, align 16, !tbaa !193
  store <2 x ptr> %i.jp, ptr %27, align 16, !tbaa !193
  %i.jq = load ptr, ptr %i.er, align 16, !tbaa !98
  store ptr %i.jq, ptr %i.ep, align 16, !tbaa !98
  %.not4.i.i.i.i.i = icmp eq ptr %i.jm, %i.jn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6casadi8FunctionclERKSt6vectorINS_2MXESaIS2_EE.exit, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i ], [ %i.jm, %_ZNK6casadi8FunctionclERKSt6vectorINS_2MXESaIS2_EE.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #29
  %i.jr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jr, %i.jn
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNK6casadi8FunctionclERKSt6vectorINS_2MXESaIS2_EE.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.js = ptrtoint ptr %i.jo to i64
  %i.jt = ptrtoint ptr %i.jm to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jm, i64 noundef %i.ju) #30
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.bm
  %i.jv = load ptr, ptr %34, align 16, !tbaa !97  ; 3 uses
  %i.jw = load ptr, ptr %i.eq, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jv, %i.jw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.jx, %.lr.ph.i.i.i ], [ %i.jv, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #29
  %i.jx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jx, %i.jw
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !6

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %34, align 16, !tbaa !97
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit
  %i.jy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.jv, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.jz = load ptr, ptr %i.er, align 16, !tbaa !98
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kc) #30
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #29
  br i1 %.not.i.i.i.i182, label %._crit_edge419, label %.lr.ph418

._crit_edge419:                                   ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit229, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  br i1 %i.es, label %._crit_edge422, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %._crit_edge419
  %i.kd = load ptr, ptr %26, align 8, !tbaa !193
  %i.ke = load ptr, ptr %27, align 16, !tbaa !193
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.noexc225
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ki, %.noexc225 ], [ %4, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.kh, %.noexc225 ], [ %i.kd, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.kg, %.noexc225 ], [ %i.ke, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.kf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %.0910.i.i.i.i.i.i.i)
          to label %.noexc225 unwind label %bb.br ; 0 uses

.noexc225:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.kh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.ki = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.kj = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.kj, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPN6casadi2MXESt6vectorIS3_SaIS3_EEEExS8_ET1_T_T0_S9_.exit, !llvm.loop !529

_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPN6casadi2MXESt6vectorIS3_SaIS3_EEEExS8_ET1_T_T0_S9_.exit: ; preds = %.noexc225
  br i1 %i.ee, label %.lr.ph421, label %._crit_edge422

.lr.ph418:                                        ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit229
  %.099417 = phi i64 [ %i.ku, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit229 ], [ 0, %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [24 x i8], ptr %.pr.i271, i64 %.099417 ; 3 uses
  %i.kl = load ptr, ptr %27, align 16, !tbaa !97
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.kl, i64 %.099417 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8 ; 3 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !99 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !98
  %.not.i226 = icmp eq ptr %i.ko, %i.kq
  br i1 %.not.i226, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph418
  %i.kr = load ptr, ptr %i.km, align 8, !tbaa !52
  store ptr %i.kr, ptr %i.ko, align 8, !tbaa !52
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ko)
          to label %.noexc227 unwind label %bb.bq

.noexc227:                                        ; preds = %bb.bo
  %i.ks = load ptr, ptr %i.kn, align 8, !tbaa !99
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  store ptr %i.kt, ptr %i.kn, align 8, !tbaa !99
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit229

bb.bp:                                            ; preds = %.lr.ph418
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, ptr %i.ko, ptr noundef nonnull align 8 dereferenceable(8) %i.km)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit229 unwind label %bb.bq

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backERKS1_.exit229: ; preds = %.noexc227, %bb.bp
  %i.ku = add nuw nsw i64 %.099417, 1             ; 2 uses
  %exitcond453.not = icmp eq i64 %i.ku, %i.g
  br i1 %exitcond453.not, label %._crit_edge419, label %.lr.ph418, !llvm.loop !530

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

._crit_edge422:                                   ; preds = %bb.cc, %._crit_edge419, %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPN6casadi2MXESt6vectorIS3_SaIS3_EEEExS8_ET1_T_T0_S9_.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0311.0424, i64 8 ; 2 uses
  %.not356 = icmp eq ptr %i.kw, %i.eg
  br i1 %.not356, label %.preheader357, label %bb.as

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.lr.ph421:                                        ; preds = %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPN6casadi2MXESt6vectorIS3_SaIS3_EEEExS8_ET1_T_T0_S9_.exit, %bb.cc
  %.082420 = phi i64 [ %i.nb, %bb.cc ], [ 0, %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPN6casadi2MXESt6vectorIS3_SaIS3_EEEExS8_ET1_T_T0_S9_.exit ] ; 9 uses
  %i.ky = invoke noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0311.0424)
          to label %.noexc231 unwind label %.loopexit ; 2 uses

.noexc231:                                        ; preds = %.lr.ph421
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 296
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 304
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !156
  %i.lc = load ptr, ptr %i.kz, align 8, !tbaa !155 ; 2 uses
  %i.ld = ptrtoint ptr %i.lb to i64
  %i.le = ptrtoint ptr %i.lc to i64
  %i.lf = sub i64 %i.ld, %i.le
  %i.lg = ashr exact i64 %i.lf, 3                 ; 2 uses
  %.not.i.i.i.i.i230 = icmp ult i64 %.082420, %i.lg
  br i1 %.not.i.i.i.i.i230, label %_ZNK6casadi16FunctionInternal9size2_outEx.exit.i, label %bb.bs

bb.bs:                                            ; preds = %.noexc231
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.291, i64 noundef %.082420, i64 noundef %i.lg) #28
          to label %.noexc232 unwind label %.loopexit.split-lp

.noexc232:                                        ; preds = %bb.bs
  unreachable

_ZNK6casadi16FunctionInternal9size2_outEx.exit.i: ; preds = %.noexc231
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %.082420
  %i.li = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.lh)
          to label %_ZNK6casadi8Function9size2_outEx.exit unwind label %.loopexit ; 3 uses

_ZNK6casadi8Function9size2_outEx.exit:            ; preds = %_ZNK6casadi16FunctionInternal9size2_outEx.exit.i
  %i.lj = invoke noundef ptr @_ZNK6casadi8FunctionptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc235 unwind label %.loopexit358 ; 2 uses

.noexc235:                                        ; preds = %_ZNK6casadi8Function9size2_outEx.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 272
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 280
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !156
  %i.ln = load ptr, ptr %i.lk, align 8, !tbaa !155 ; 2 uses
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = ashr exact i64 %i.lq, 3                 ; 2 uses
  %.not.i.i.i.i.i234 = icmp ult i64 %.082420, %i.lr
  br i1 %.not.i.i.i.i.i234, label %_ZNK6casadi16FunctionInternal8size2_inEx.exit.i, label %bb.bt

bb.bt:                                            ; preds = %.noexc235
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.291, i64 noundef %.082420, i64 noundef %i.lr) #28
          to label %.noexc236 unwind label %.loopexit.split-lp359

.noexc236:                                        ; preds = %bb.bt
  unreachable

_ZNK6casadi16FunctionInternal8size2_inEx.exit.i:  ; preds = %.noexc235
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.082420
  %i.lt = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ls)
          to label %_ZNK6casadi8Function8size2_inEx.exit unwind label %.loopexit358 ; 2 uses

_ZNK6casadi8Function8size2_inEx.exit:             ; preds = %_ZNK6casadi16FunctionInternal8size2_inEx.exit.i
  %i.lu = icmp sgt i64 %i.li, %i.lt
  br i1 %i.lu, label %bb.bu, label %bb.cc

bb.bu:                                            ; preds = %_ZNK6casadi8Function8size2_inEx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #29
  %i.lv = load ptr, ptr %26, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  %i.lw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %bb.bw unwind label %bb.bv     ; 5 uses

bb.bv:                                            ; preds = %bb.bu
  %i.lx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ly = load ptr, ptr %36, align 8, !tbaa !182  ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.ly, null
  br i1 %.not.i.i4.i, label %.body238, label %.body238.sink.split

bb.bw:                                            ; preds = %bb.bu
  %i.lz = sub nsw i64 %i.li, %i.lt
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %.082420
  store ptr %i.lw, ptr %36, align 8, !tbaa !182
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 24 ; 2 uses
  store ptr %i.mb, ptr %i.et, align 8, !tbaa !183
  store i64 0, ptr %i.lw, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store i64 %i.lz, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store i64 %i.li, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %i.mb, ptr %i.eu, align 8, !tbaa !260
  invoke void @_ZN6casadi2MX9horzsplitERKS0_RKSt6vectorIxSaIxEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.12") align 8 %35, ptr noundef nonnull align 8 dereferenceable(8) %i.ma, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %_ZN6casadi9horzsplitERKNS_2MXERKSt6vectorIxSaIxEE.exit unwind label %bb.bz

_ZN6casadi9horzsplitERKNS_2MXERKSt6vectorIxSaIxEE.exit: ; preds = %bb.bw
  %i.mc = load ptr, ptr %i.ev, align 8, !tbaa !193
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 -8
  %i.me = load ptr, ptr %26, align 8, !tbaa !97
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %.082420
  %i.mg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.mf, ptr noundef nonnull align 8 dereferenceable(8) %i.md)
          to label %_ZN6casadi2MXaSERKS0_.exit242 unwind label %bb.ca ; 0 uses

_ZN6casadi2MXaSERKS0_.exit242:                    ; preds = %_ZN6casadi9horzsplitERKNS_2MXERKSt6vectorIxSaIxEE.exit
  %i.mh = load ptr, ptr %35, align 8, !tbaa !97   ; 3 uses
  %i.mi = load ptr, ptr %i.ev, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i243 = icmp eq ptr %i.mh, %i.mi
  br i1 %.not4.i.i.i243, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i249, label %.lr.ph.i.i.i244

.lr.ph.i.i.i244:                                  ; preds = %_ZN6casadi2MXaSERKS0_.exit242, %.lr.ph.i.i.i244
  %.05.i.i.i245 = phi ptr [ %i.mj, %.lr.ph.i.i.i244 ], [ %i.mh, %_ZN6casadi2MXaSERKS0_.exit242 ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i245) #29
  %i.mj = getelementptr inbounds nuw i8, ptr %.05.i.i.i245, i64 8 ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %i.mj, %i.mi
  br i1 %.not.i.i.i246, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i247, label %.lr.ph.i.i.i244, !llvm.loop !6

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i247: ; preds = %.lr.ph.i.i.i244
  %.pr.i248 = load ptr, ptr %35, align 8, !tbaa !97
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i249

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i249: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i247, %_ZN6casadi2MXaSERKS0_.exit242
  %i.mk = phi ptr [ %.pr.i248, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i247 ], [ %i.mh, %_ZN6casadi2MXaSERKS0_.exit242 ] ; 3 uses
  %.not.i.i1.i250 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i1.i250, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit251, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i249
  %i.ml = load ptr, ptr %i.ew, align 8, !tbaa !98
  %i.mm = ptrtoint ptr %i.ml to i64
  %i.mn = ptrtoint ptr %i.mk to i64
  %i.mo = sub i64 %i.mm, %i.mn
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef %i.mo) #30
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit251

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit251:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i249, %bb.bx
  %i.mp = load ptr, ptr %36, align 8, !tbaa !182  ; 3 uses
  %.not.i.i.i252 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i252, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit251
  %i.mq = load ptr, ptr %i.et, align 8, !tbaa !183
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.mp to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef %i.mt) #30
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit251, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #29
  br label %bb.cc

.loopexit:                                        ; preds = %.lr.ph421, %_ZNK6casadi16FunctionInternal9size2_outEx.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp:                               ; preds = %bb.bs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit358:                                     ; preds = %_ZNK6casadi8Function9size2_outEx.exit, %_ZNK6casadi16FunctionInternal8size2_inEx.exit.i
  %lpad.loopexit360 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp359:                            ; preds = %bb.bt
  %lpad.loopexit.split-lp361 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.bz:                                            ; preds = %bb.bw
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %_ZN6casadi9horzsplitERKNS_2MXERKSt6vectorIxSaIxEE.exit
  %i.mv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %35) #29
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn115 = phi { ptr, i32 } [ %i.mv, %bb.ca ], [ %i.mu, %bb.bz ] ; 2 uses
  %i.mw = load ptr, ptr %36, align 8, !tbaa !182  ; 2 uses
  %.not.i.i.i254 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i254, label %.body238, label %.body238.sink.split
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/model_v2_pp?download=true
inline.NumInlined: 120
inline.NumDeleted: 72
begin_hunk_0_@_Z11model_v2_ppRSoRK10model_coreb:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22.i
  %i.be = load i64, ptr %i.l, align 8, !tbaa !53
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL17display_constantsRSoRK10model_core.exit, label %bb.b, !llvm.loop !10

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %bb.b
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %_ZNK10model_core16get_const_interpEP9func_decl.exit.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #6
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi { ptr, i32 } [ %i.bi, %bb.l ], [ %i.bh, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.m ], [ %i.bg, %bb.j ]
  %i.bj = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.l
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i: ; preds = %bb.n
  %i.bl = load i64, ptr %i.l, align 8, !tbaa !53
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i

common.resume:                                    ; preds = %.split.us.i.i, %bb.ac, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i ], [ %i.fh, %bb.ah ], [ %i.em, %.split.us.i.i ], [ %.us-phi64.i.i, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %common.resume

_ZL17display_constantsRSoRK10model_core.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a, %_ZNK10model_core17get_num_constantsEv.exit.i
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZL17display_functionsRSoRK10model_coreb.exit, label %_ZNK10model_core17get_num_functionsEv.exit.i

_ZNK10model_core17get_num_functionsEv.exit.i:     ; preds = %_ZL17display_constantsRSoRK10model_core.exit
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !33 ; 2 uses
  %.not.i4 = icmp eq i32 %i.br, 0
  br i1 %.not.i4, label %_ZL17display_functionsRSoRK10model_coreb.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZNK10model_core17get_num_functionsEv.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %wide.trip.count.i6 = zext i32 %i.br to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZL16display_functionRSoRK10model_coreP9func_declb.exit.i, %.lr.ph.i5
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i5 ], [ %indvars.iv.next.i8, %_ZL16display_functionRSoRK10model_coreP9func_declb.exit.i ] ; 2 uses
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i7
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !35 ; 4 uses
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !29, !nonnull !30, !align !31 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !43 ; 3 uses
  %i.cd = load i32, ptr %i.bt, align 8, !tbaa !54 ; 3 uses
  %i.ce = add i32 %i.cd, -1
  %i.cf = and i32 %i.ce, %i.cc                    ; 3 uses
  %i.cg = load ptr, ptr %i.bs, align 8, !tbaa !55 ; 3 uses
  %i.ch = zext i32 %i.cf to i64
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.ch, 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i.i.i.i.i ; 3 uses
  %i.cj = zext i32 %i.cd to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cj
  %.not34.i.i.i.i.i.i = icmp eq i32 %i.cf, %i.cd
  br i1 %.not34.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.r, %bb.o
  %.not2736.i.i.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not2736.i.i.i.i.i.i, label %_ZNK10model_core15get_func_interpEP9func_decl.exit.i.i, label %.lr.ph38.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %bb.r
  %.035.i.i.i.i.i.i = phi ptr [ %i.cs, %bb.r ], [ %i.ci, %bb.o ] ; 3 uses
  %i.cl = load ptr, ptr %.035.i.i.i.i.i.i, align 8, !tbaa !59 ; 4 uses
  %i.cm = icmp ult ptr %i.cl, inttoptr (i64 2 to ptr)
  br i1 %i.cm, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !43
  %i.cp = icmp eq i32 %i.co, %i.cc
  %i.cq = icmp eq ptr %i.cl, %i.bz
  %or.cond.i.i.i.i.i.i = and i1 %i.cq, %i.cp
  br i1 %or.cond.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cr = icmp eq ptr %i.cl, null
  br i1 %i.cr, label %_ZNK10model_core15get_func_interpEP9func_decl.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cs, %i.ck
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !11

.lr.ph38.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph38.i.i.i.i.i.i.backedge
  %.137.i.i.i.i.i.i = phi ptr [ %.137.i.i.i.i.i.i.be, %.lr.ph38.i.i.i.i.i.i.backedge ], [ %i.cg, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ct = load ptr, ptr %.137.i.i.i.i.i.i, align 8, !tbaa !59 ; 4 uses
  %i.cu = icmp ult ptr %i.ct, inttoptr (i64 2 to ptr)
  br i1 %i.cu, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph38.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !43
  %i.cx = icmp eq i32 %i.cw, %i.cc
  %i.cy = icmp eq ptr %i.ct, %i.bz
  %or.cond31.i.i.i.i.i.i = and i1 %i.cy, %i.cx
  br i1 %or.cond31.i.i.i.i.i.i, label %.loopexit.i.i.i, label %bb.u

bb.t:                                             ; preds = %.lr.ph38.i.i.i.i.i.i
  %i.cz = icmp eq ptr %i.ct, null
  %i.da = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not27.i.i.i.i.i.i = icmp eq ptr %i.da, %i.ci
  %or.cond43.i.i.i.i.i.i = select i1 %i.cz, i1 true, i1 %.not27.i.i.i.i.i.i
  br i1 %or.cond43.i.i.i.i.i.i, label %_ZNK10model_core15get_func_interpEP9func_decl.exit.i.i, label %.lr.ph38.i.i.i.i.i.i.backedge

bb.u:                                             ; preds = %bb.s
  %.old.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.137.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not27.old.i.i.i.i.i.i = icmp eq ptr %.old.i.i.i.i.i.i, %i.ci
  br i1 %.not27.old.i.i.i.i.i.i, label %_ZNK10model_core15get_func_interpEP9func_decl.exit.i.i, label %.lr.ph38.i.i.i.i.i.i.backedge

.lr.ph38.i.i.i.i.i.i.backedge:                    ; preds = %bb.u, %bb.t
  %.137.i.i.i.i.i.i.be = phi ptr [ %i.da, %bb.t ], [ %.old.i.i.i.i.i.i, %bb.u ]
  br label %.lr.ph38.i.i.i.i.i.i, !llvm.loop !12

.loopexit.i.i.i:                                  ; preds = %bb.p, %bb.s
  %.026.i.i.i.i.i.i = phi ptr [ %.137.i.i.i.i.i.i, %bb.s ], [ %.035.i.i.i.i.i.i, %bb.p ]
  %i.db = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i.i, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !60
  br label %_ZNK10model_core15get_func_interpEP9func_decl.exit.i.i

_ZNK10model_core15get_func_interpEP9func_decl.exit.i.i: ; preds = %bb.q, %bb.u, %bb.t, %.loopexit.i.i.i, %.preheader.i.i.i.i.i.i
  %i.dd = phi ptr [ %i.dc, %.loopexit.i.i.i ], [ null, %.preheader.i.i.i.i.i.i ], [ null, %bb.u ], [ null, %bb.t ], [ null, %bb.q ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.de, align 8, !tbaa !61 ; 4 uses
  %i.df = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.dg = and i64 %i.df, 7
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZNK10model_core15get_func_interpEP9func_decl.exit.i.i
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i.i, label %bb.w, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i: ; preds = %bb.v
  %i.di = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload.i.i) #6
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.sroa.0.0.copyload.i.i, i64 noundef %i.di) ; 0 uses
  br label %_ZlsRSo6symbol.exit.i.i

bb.w:                                             ; preds = %bb.v
  %i.dk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 4) ; 0 uses
  br label %_ZlsRSo6symbol.exit.i.i

bb.x:                                             ; preds = %_ZNK10model_core15get_func_interpEP9func_decl.exit.i.i
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.11, i64 noundef 2) ; 0 uses
  %i.dm = lshr i64 %i.df, 3
  %i.dn = trunc i64 %i.dm to i32
  %i.do = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.dn) ; 0 uses
  br label %_ZlsRSo6symbol.exit.i.i

_ZlsRSo6symbol.exit.i.i:                          ; preds = %bb.x, %bb.w, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i.i
  %i.dp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 6) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !64 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %._crit_edge61.i.i, label %_ZNK11func_interp11num_entriesEv.exit.i.i

_ZNK11func_interp11num_entriesEv.exit.i.i:        ; preds = %_ZlsRSo6symbol.exit.i.i
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !33 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !70
  %.fr66.i.i = freeze i32 %i.dw                   ; 2 uses
  %i.dx = icmp eq i32 %i.du, 0
  br i1 %i.dx, label %._crit_edge61.i.i, label %.lr.ph60.i.i

.lr.ph60.i.i:                                     ; preds = %_ZNK11func_interp11num_entriesEv.exit.i.i
  %.not67.i.i = icmp eq i32 %.fr66.i.i, 0
  %wide.trip.count83.i.i = zext i32 %i.du to i64  ; 2 uses
  br i1 %.not67.i.i, label %.lr.ph60.split.i.i, label %.lr.ph.us.preheader.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %.lr.ph60.i.i
  %wide.trip.count.i.i = zext i32 %.fr66.i.i to i64
  br label %.lr.ph.us.i.i

.lr.ph.us.i.i:                                    ; preds = %bb.aa, %.lr.ph.us.preheader.i.i
  %indvars.iv75.i.i = phi i64 [ 0, %.lr.ph.us.preheader.i.i ], [ %indvars.iv.next76.i.i, %bb.aa ] ; 2 uses
  %i.dy = load ptr, ptr %i.dq, align 8, !tbaa !64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv75.i.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !71 ; 2 uses
  %i.eb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.us.i.i ], [ %indvars.iv.next.i.i, %bb.z ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.i.i
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ee, ptr noundef nonnull align 8 dereferenceable(952) %i.ca, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %bb.z unwind label %.split.us.i.i ; 0 uses

bb.z:                                             ; preds = %bb.y
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bu) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.eg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.y, !llvm.loop !13

bb.aa:                                            ; preds = %._crit_edge.us.i.i
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bv) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.eh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv75.i.i, 1 ; 2 uses
  %exitcond79.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, %wide.trip.count83.i.i
  br i1 %exitcond79.not.i.i, label %._crit_edge61.i.i, label %.lr.ph.us.i.i, !llvm.loop !14

._crit_edge.us.i.i:                               ; preds = %bb.z
  %i.ei = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !74
  call void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ek, ptr noundef nonnull align 8 dereferenceable(952) %i.ca, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.aa unwind label %.split63.us.i.i ; 0 uses

.split.us.i.i:                                    ; preds = %bb.y
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bu) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %common.resume

.split63.us.i.i:                                  ; preds = %._crit_edge.us.i.i
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

._crit_edge61.i.i:                                ; preds = %bb.aa, %bb.ab, %_ZNK11func_interp11num_entriesEv.exit.i.i, %_ZlsRSo6symbol.exit.i.i
  %i.eo = phi i32 [ 10, %bb.ab ], [ 2, %_ZlsRSo6symbol.exit.i.i ], [ 2, %_ZNK11func_interp11num_entriesEv.exit.i.i ], [ 10, %bb.aa ]
  %i.ep = phi ptr [ @.str.4, %bb.ab ], [ @.str.3, %_ZlsRSo6symbol.exit.i.i ], [ @.str.3, %_ZNK11func_interp11num_entriesEv.exit.i.i ], [ @.str.4, %bb.aa ] ; 2 uses
  %i.eq = phi i64 [ 10, %bb.ab ], [ 2, %_ZlsRSo6symbol.exit.i.i ], [ 2, %_ZNK11func_interp11num_entriesEv.exit.i.i ], [ 10, %bb.aa ] ; 2 uses
  br i1 %2, label %bb.ad, label %bb.ae

.lr.ph60.split.i.i:                               ; preds = %.lr.ph60.i.i, %bb.ab
  %indvars.iv80.i.i = phi i64 [ %indvars.iv.next81.i.i, %bb.ab ], [ 0, %.lr.ph60.i.i ] ; 2 uses
  %i.er = load ptr, ptr %i.dq, align 8, !tbaa !64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv80.i.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !71
  %i.eu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.3, i64 noundef 2) ; 0 uses
  %i.ev = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !74
  call void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ex, ptr noundef nonnull align 8 dereferenceable(952) %i.ca, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %i.ey = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.ab unwind label %.split63.i.i ; 0 uses

bb.ab:                                            ; preds = %.lr.ph60.split.i.i
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bv) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.ez = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %indvars.iv.next81.i.i = add nuw nsw i64 %indvars.iv80.i.i, 1 ; 2 uses
  %exitcond84.not.i.i = icmp eq i64 %indvars.iv.next81.i.i, %wide.trip.count83.i.i
  br i1 %exitcond84.not.i.i, label %._crit_edge61.i.i, label %.lr.ph60.split.i.i, !llvm.loop !14

.split63.i.i:                                     ; preds = %.lr.ph60.split.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ac:                                            ; preds = %.split63.i.i, %.split63.us.i.i
  %.us-phi64.i.i = phi { ptr, i32 } [ %i.fa, %.split63.i.i ], [ %i.en, %.split63.us.i.i ]
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bv) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %common.resume

bb.ad:                                            ; preds = %._crit_edge61.i.i
  %i.fb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ep, i64 noundef %i.eq) ; 0 uses
  %i.fc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 4) ; 0 uses
  br label %_ZL16display_functionRSoRK10model_coreP9func_declb.exit.i

bb.ae:                                            ; preds = %._crit_edge61.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !75 ; 2 uses
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ep, i64 noundef %i.eq) ; 0 uses
  %.not.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.fe, ptr noundef nonnull align 8 dereferenceable(952) %i.ca, i32 noundef %i.eo, i32 noundef 0, ptr noundef null)
  %i.fg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.ag unwind label %bb.ah     ; 0 uses

bb.ag:                                            ; preds = %bb.af
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bw) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bw) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %common.resume

bb.ai:                                            ; preds = %bb.ae
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 12) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %_ZL16display_functionRSoRK10model_coreP9func_declb.exit.i

_ZL16display_functionRSoRK10model_coreP9func_declb.exit.i: ; preds = %bb.aj, %bb.ad
  %i.fk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 2) ; 0 uses
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1 ; 2 uses
  %exitcond.not.i9 = icmp eq i64 %indvars.iv.next.i8, %wide.trip.count.i6
  br i1 %exitcond.not.i9, label %_ZL17display_functionsRSoRK10model_coreb.exit, label %bb.o, !llvm.loop !15

_ZL17display_functionsRSoRK10model_coreb.exit:    ; preds = %_ZL16display_functionRSoRK10model_coreP9func_declb.exit.i, %_ZL17display_constantsRSoRK10model_core.exit, %_ZNK10model_core17get_num_functionsEv.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z2ppRK10model_core(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z11model_v2_ppRSoRK10model_coreb(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull align 8 dereferenceable(96) %0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZNK6symbol3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11mk_ismt2_pp(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN11mk_ismt2_ppC2EP3astR11ast_managerjjPKc(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !51}
!9 = distinct !{!9, !51}
!10 = distinct !{!10, !51}
!11 = distinct !{!11, !51}
!12 = distinct !{!12, !51}
!13 = distinct !{!13, !51}
!14 = distinct !{!14, !51}
!15 = distinct !{!15, !51}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"p1 _ZTS11ast_manager", !16, i64 0}
!18 = !{!"p1 _ZTSN7obj_mapI9func_declSt4pairIjP4exprEE13obj_map_entryE", !16, i64 0}
!19 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declSt4pairIjP4exprEE13obj_map_entryE8obj_hashINS6_8key_dataEE10default_eqIS9_EE", !18, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!20 = !{!"_ZTS7obj_mapI9func_declSt4pairIjP4exprEE", !19, i64 0}
!21 = !{!"p1 _ZTSN7obj_mapI9func_declP11func_interpE13obj_map_entryE", !16, i64 0}
!22 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declP11func_interpE13obj_map_entryE8obj_hashINS4_8key_dataEE10default_eqIS7_EE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!23 = !{!"_ZTS7obj_mapI9func_declP11func_interpE", !22, i64 0}
!24 = !{!"any p2 pointer", !16, i64 0}
!25 = !{!"p2 _ZTS9func_decl", !24, i64 0}
!26 = !{!"_ZTS6vectorIP9func_declLb0EjE", !25, i64 0}
!27 = !{!"_ZTS10ptr_vectorI9func_declE", !26, i64 0}
!28 = !{!"_ZTS10model_core", !17, i64 8, !5, i64 16, !20, i64 24, !23, i64 48, !27, i64 72, !27, i64 80, !27, i64 88}
!29 = !{!28, !17, i64 8}
!30 = !{}
!31 = !{i64 8}
!32 = !{!26, !25, i64 0}
!33 = !{!5, !5, i64 0}
!34 = !{!"p1 _ZTS9func_decl", !16, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"p1 omnipotent char", !16, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!38 = !{!"long", !4, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !37, i64 0, !38, i64 8, !4, i64 16}
!40 = !{!39, !36, i64 0}
!41 = !{!39, !38, i64 8}
!42 = !{!"_ZTS3ast", !5, i64 0, !5, i64 4, !5, i64 6, !5, i64 6, !5, i64 6, !5, i64 8, !5, i64 12}
!43 = !{!42, !5, i64 12}
!44 = !{!19, !5, i64 8}
!45 = !{!19, !18, i64 0}
!46 = !{!"p1 _ZTS4expr", !16, i64 0}
!47 = !{!"_ZTSSt4pairIjP4exprE", !5, i64 0, !46, i64 8}
!48 = !{!"_ZTSN7obj_mapI9func_declSt4pairIjP4exprEE8key_dataE", !34, i64 0, !47, i64 8}
!49 = !{!"_ZTSN7obj_mapI9func_declSt4pairIjP4exprEE13obj_map_entryE", !48, i64 0}
!50 = !{!49, !34, i64 0}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!47, !46, i64 8}
!53 = !{!4, !4, i64 0}
!54 = !{!22, !5, i64 8}
!55 = !{!22, !21, i64 0}
!56 = !{!"p1 _ZTS11func_interp", !16, i64 0}
!57 = !{!"_ZTSN7obj_mapI9func_declP11func_interpE8key_dataE", !34, i64 0, !56, i64 8}
!58 = !{!"_ZTSN7obj_mapI9func_declP11func_interpE13obj_map_entryE", !57, i64 0}
!59 = !{!58, !34, i64 0}
!60 = !{!57, !56, i64 8}
!61 = !{!36, !36, i64 0}
!62 = !{!"p2 _ZTS10func_entry", !24, i64 0}
!63 = !{!"_ZTS6vectorIP10func_entryLb0EjE", !62, i64 0}
!64 = !{!63, !62, i64 0}
!65 = !{!"_ZTS10ptr_vectorI10func_entryE", !63, i64 0}
!66 = !{!"bool", !4, i64 0}
!67 = !{!"p1 _ZTS13ptr_hashtableI10func_entry15func_entry_hash13func_entry_eqE", !16, i64 0}
!68 = !{!"p1 _ZTS10func_entry", !16, i64 0}
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/localtopologychecker?download=true
inline.NumInlined: 527
inline.NumDeleted: 307
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gmxL29dd_print_missing_interactionsERKNS_8MDLoggerERKNS_7MpiCommERK12gmx_domdec_tiiRK10gmx_mtop_tRK14gmx_localtop_tNS_8ArrayRefIKNS_11BasicVectorIfEEEEPA3_Kf:bb.a
  br label %bb.cz

bb.e:                                             ; preds = %bb.c, %_ZN3gmx14LogEntryWriterD2Ev.exit99
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 816
  %i.cy = getelementptr inbounds nuw i8, ptr %16, i64 248
  %i.cz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %18, i64 16
  br label %bb.g

bb.f:                                             ; preds = %bb.o
  %.neg = sub nsw i32 %.172, %.170
  %.not = icmp eq i32 %.170, %.172
  br i1 %.not, label %bb.t, label %bb.p

bb.g:                                             ; preds = %bb.e, %bb.o
  %indvars.iv146 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next147, %bb.o ] ; 7 uses
  %.06985 = phi i32 [ %3, %bb.e ], [ %.170, %bb.o ] ; 2 uses
  %.07184 = phi i32 [ %4, %bb.e ], [ %.172, %bb.o ] ; 2 uses
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !111
  %i.de = call noundef nonnull align 1 dereferenceable(3) ptr @_ZNK17gmx_reverse_top_t7optionsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
  %i.df = trunc nuw nsw i64 %indvars.iv146 to i32 ; 2 uses
  %i.dg = call noundef zeroext i1 @_Z14dd_check_ftype19InteractionFunctionRK17ReverseTopOptions(i32 noundef %i.df, ptr noundef nonnull align 1 dereferenceable(3) %i.de)
  %i.dh = icmp ne i64 %indvars.iv146, 63
  %or.cond = and i1 %i.dh, %i.dg
  br i1 %or.cond, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.di = call noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768) %5, i32 noundef %i.df) ; 2 uses
  %i.dj = icmp eq i64 %indvars.iv146, 62
  br i1 %i.dj, label %.split74, label %.split

.split:                                           ; preds = %bb.h
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %indvars.iv146
  br label %bb.i

.split74:                                         ; preds = %bb.h
  %i.dl = call noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768) %5, i32 noundef 63)
  %i.dm = add nsw i32 %i.dl, %i.di
  br label %bb.i

bb.i:                                             ; preds = %.split, %.split74
  %phi.call = phi ptr [ %i.dk, %.split ], [ %i.cy, %.split74 ]
  %.0 = phi i32 [ %i.di, %.split ], [ %i.dm, %.split74 ] ; 4 uses
  %i.dn = load i32, ptr %phi.call, align 4, !tbaa !108 ; 2 uses
  %.neg81 = sub nsw i32 %.0, %i.dn
  %.not80 = icmp eq i32 %i.dn, %.0
  br i1 %.not80, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.do = load ptr, ptr %0, align 8, !tbaa !96    ; 3 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false)
  store ptr %i.cz, ptr %18, align 8, !tbaa !40
  store i64 0, ptr %i.da, align 8, !tbaa !43
  store i8 0, ptr %i.db, align 8, !tbaa !99
  %i.dq = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv146
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !112
  %i.dt = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull @.str.2, ptr noundef %i.ds, i32 noundef %.0, i32 noundef %.neg81)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !101
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  invoke void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 8 dereferenceable(40) %i.dt)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit104 unwind label %bb.m, !inline_history !79

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit104: ; preds = %bb.l
  %i.dx = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.cz
  br i1 %i.dy, label %_ZN3gmx14LogEntryWriterD2Ev.exit107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i105: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit104
  %i.dz = load i64, ptr %i.cz, align 8, !tbaa !27
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit107

_ZN3gmx14LogEntryWriterD2Ev.exit107:              ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = load ptr, ptr %18, align 8, !tbaa !44   ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.cz
  br i1 %i.ed, label %_ZN3gmx14LogEntryWriterD2Ev.exit110, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108: ; preds = %bb.m
  %i.ee = load i64, ptr %i.cz, align 8, !tbaa !27
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit110

_ZN3gmx14LogEntryWriterD2Ev.exit110:              ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i108
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.cz

bb.n:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit107, %bb.j, %bb.i
  %i.eg = sub nsw i32 %.07184, %.0
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %16, i64 %indvars.iv146
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !108
  %i.ej = sub nsw i32 %.06985, %i.ei
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %.172 = phi i32 [ %i.eg, %bb.n ], [ %.07184, %bb.g ] ; 4 uses
  %.170 = phi i32 [ %i.ej, %bb.n ], [ %.06985, %bb.g ] ; 3 uses
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %.not18 = icmp eq i64 %indvars.iv.next147, 95
  br i1 %.not18, label %bb.f, label %bb.g

bb.p:                                             ; preds = %bb.f
  %i.ek = load ptr, ptr %0, align 8, !tbaa !96    ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i8 0, i64 24, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  store ptr %i.en, ptr %19, align 8, !tbaa !40
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.eo, align 8, !tbaa !43
  %i.ep = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i8 0, ptr %i.ep, align 8, !tbaa !99
  %i.eq = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %.172, i32 noundef %.neg)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.er = load ptr, ptr %i.ek, align 8, !tbaa !101
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load ptr, ptr %i.es, align 8
  invoke void %i.et(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull align 8 dereferenceable(40) %i.eq)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit112 unwind label %bb.s, !inline_history !79

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit112: ; preds = %bb.r
  %i.eu = load ptr, ptr %19, align 8, !tbaa !44   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.en
  br i1 %i.ev, label %_ZN3gmx14LogEntryWriterD2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit112
  %i.ew = load i64, ptr %i.en, align 8, !tbaa !27
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit115

_ZN3gmx14LogEntryWriterD2Ev.exit115:              ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ey = landingpad { ptr, i32 }
          cleanup
  %i.ez = load ptr, ptr %19, align 8, !tbaa !44   ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.en
  br i1 %i.fa, label %_ZN3gmx14LogEntryWriterD2Ev.exit118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i116: ; preds = %bb.s
  %i.fb = load i64, ptr %i.en, align 8, !tbaa !27
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit118

_ZN3gmx14LogEntryWriterD2Ev.exit118:              ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.cz

bb.t:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit115, %bb.p, %bb.f, %scalar.ph
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 816 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !111
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !114 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !114 ; 2 uses
  %.not178.i = icmp eq ptr %i.fg, %i.fi
  br i1 %.not178.i, label %_ZN3gmxL29printMissingInteractionsAtomsERKNS_8MDLoggerERKNS_7MpiCommERK12gmx_domdec_tRK10gmx_mtop_tRK22InteractionDefinitions.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.fk = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 896
  %i.fo = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %14, i64 8
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i
  %.025180.i = phi i32 [ 0, %.lr.ph.i ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 12 uses
  %.sroa.049.0179.i = phi ptr [ %i.fg, %.lr.ph.i ], [ %i.xp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.fs = load i32, ptr %.sroa.049.0179.i, align 8, !tbaa !120 ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = load ptr, ptr %i.fj, align 8, !tbaa !123
  %i.fv = getelementptr inbounds nuw [2408 x i8], ptr %i.fu, i64 %i.ft ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.049.0179.i, i64 4 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !124
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !139
  %i.ga = mul nsw i32 %i.fz, %i.fx                ; 2 uses
  %i.gb = add nsw i32 %i.ga, %.025180.i           ; 5 uses
  %.not.i.i = icmp slt i32 %i.ga, 0
  br i1 %.not.i.i, label %bb.v, label %_ZN3gmx5RangeIiEC2Eii.exit.i

bb.v:                                             ; preds = %bb.u
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.13, i32 noundef 111) #21
  unreachable

_ZN3gmx5RangeIiEC2Eii.exit.i:                     ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.gc = load ptr, ptr %i.fv, align 8, !tbaa !140
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !141
  %i.ge = load ptr, ptr %i.fd, align 8, !tbaa !111
  %i.gf = call noundef nonnull align 8 dereferenceable(52) ptr @_ZNK17gmx_reverse_top_t30interactionListForMoleculeTypeEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, i32 noundef %i.fs) ; 7 uses
  %i.gg = load i32, ptr %i.fy, align 8, !tbaa !139 ; 12 uses
  %i.gh = load i32, ptr %i.fw, align 4, !tbaa !124 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.gi = sext i32 %i.gg to i64                   ; 2 uses
  %i.gj = load ptr, ptr %i.gf, align 8, !tbaa !107, !noalias !142
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gi
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !108, !noalias !142 ; 4 uses
  %i.gm = mul nsw i32 %i.gl, %i.gh                ; 3 uses
  %i.gn = sext i32 %i.gm to i64                   ; 2 uses
  %i.go = icmp slt i32 %i.gm, 0
  br i1 %i.go, label %.noexc.i.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i:                                       ; preds = %_ZN3gmx5RangeIiEC2Eii.exit.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #21, !noalias !142
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %_ZN3gmx5RangeIiEC2Eii.exit.i
  %.not.i.i.i.i.i.i = icmp eq i32 %i.gm, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i, label %.noexc91.i.i

.noexc91.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.gp = shl nuw nsw i64 %i.gn, 2                ; 3 uses
  %i.gq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #19, !noalias !142 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gq, i8 0, i64 %i.gp, i1 false), !tbaa !108, !noalias !142
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gn
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gp
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gr to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i:        ; preds = %.noexc91.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %.sroa.14.0.i.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.gu, %.noexc91.i.i ] ; 2 uses
  %.sroa.0117.0.i.i = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.gq, %.noexc91.i.i ] ; 13 uses
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i ], [ %i.gt, %.noexc91.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18, !noalias !142
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx18StringOutputStreamE, i64 16), ptr %11, align 8, !tbaa !101, !noalias !142
  store ptr %i.fl, ptr %i.fk, align 8, !tbaa !40, !noalias !142
  store i64 0, ptr %i.fm, align 8, !tbaa !43, !noalias !142
  store i8 0, ptr %i.fl, align 8, !tbaa !27, !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18, !noalias !142
  invoke void @_ZN3gmx10TextWriterC1EPNS_16TextOutputStreamE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %11)
          to label %.preheader158.i.i unwind label %bb.x, !noalias !142

.preheader158.i.i:                                ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 7 uses
  br label %bb.y

bb.w:                                             ; preds = %_ZN3gmxL23flagInteractionsForTypeE19InteractionFunctionRK15InteractionListRK15reverse_ilist_tRKNS_5RangeIiEEiNS_8ArrayRefIKiEENSB_IiEE.exit.i.i
  %i.gw = ptrtoint ptr %.sroa.0117.0.i.i to i64   ; 2 uses
  %i.gx = sub i64 %.0.i.i.i.i.i.i.i.i.i, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0117.0.i.i, i64 %i.gx
  invoke void @_ZNK3gmx7MpiComm9sumReduceENS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %.sroa.0117.0.i.i, ptr %i.gy)
          to label %.preheader139.i.i unwind label %bb.bh, !noalias !142

.preheader139.i.i:                                ; preds = %bb.w
  %i.gz = icmp sgt i32 %i.gh, 0
  %i.ha = icmp sgt i32 %i.gl, 0
  %or.cond.i = and i1 %i.gz, %i.ha
  br i1 %or.cond.i, label %.preheader138.i.preheader.i, label %._crit_edge186.split.i.i

.preheader138.i.preheader.i:                      ; preds = %.preheader139.i.i
  %i.hb = add nuw i32 %.025180.i, 1
  br label %.preheader138.i.i

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i.i
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.y:                                             ; preds = %_ZN3gmxL23flagInteractionsForTypeE19InteractionFunctionRK15InteractionListRK15reverse_ilist_tRKNS_5RangeIiEEiNS_8ArrayRefIKiEENSB_IiEE.exit.i.i, %.preheader158.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader158.i.i ], [ %indvars.iv.next.i.i, %_ZN3gmxL23flagInteractionsForTypeE19InteractionFunctionRK15InteractionListRK15reverse_ilist_tRKNS_5RangeIiEEiNS_8ArrayRefIKiEENSB_IiEE.exit.i.i ] ; 8 uses
  %i.hd = invoke noundef nonnull align 1 dereferenceable(3) ptr @_ZNK17gmx_reverse_top_t7optionsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fe)
          to label %bb.z unwind label %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !142

bb.z:                                             ; preds = %bb.y
  %i.he = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.hf = invoke noundef zeroext i1 @_Z14dd_check_ftype19InteractionFunctionRK17ReverseTopOptions(i32 noundef %i.he, ptr noundef nonnull align 1 dereferenceable(3) %i.hd)
          to label %bb.aa unwind label %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !142

bb.aa:                                            ; preds = %bb.z
  br i1 %i.hf, label %bb.ab, label %_ZN3gmxL23flagInteractionsForTypeE19InteractionFunctionRK15InteractionListRK15reverse_ilist_tRKNS_5RangeIiEEiNS_8ArrayRefIKiEENSB_IiEE.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv.i.i ; 6 uses
  %i.hh = load ptr, ptr %i.fn, align 8, !tbaa !144, !noalias !142 ; 16 uses
  %i.hi = load ptr, ptr %i.gf, align 8, !tbaa !107, !noalias !142 ; 5 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.gi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !108, !noalias !142 ; 4 uses
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !103, !noalias !142
  %.fr23.i.i.i = freeze i32 %i.hn                 ; 7 uses
  %i.ho = and i32 %i.he, 2147483646
  %i.hp = icmp eq i32 %i.ho, 52                   ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 5 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !106, !noalias !142 ; 5 uses
  %i.hs = load ptr, ptr %i.hg, align 8, !tbaa !107, !noalias !142 ; 5 uses
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = lshr exact i64 %i.hv, 2
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph.i.i.i, label %_ZN3gmxL23flagInteractionsForTypeE19InteractionFunctionRK15InteractionListRK15reverse_ilist_tRKNS_5RangeIiEEiNS_8ArrayRefIKiEENSB_IiEE.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab
  %i.hz = icmp sgt i32 %.fr23.i.i.i, 0
  %i.ia = add i32 %.fr23.i.i.i, 1                 ; 2 uses
  br i1 %i.hz, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %wide.trip.count44.i.i.i = zext nneg i32 %.fr23.i.i.i to i64 ; 12 uses
  br i1 %i.hp, label %.lr.ph.split.us.split.us.i.i.i.preheader, label %.lr.ph.split.us.split.i.i.i.preheader

.lr.ph.split.us.split.i.i.i.preheader:            ; preds = %.lr.ph.split.us.i.i.i
  %min.iters.check381 = icmp ult i32 %.fr23.i.i.i, 4
  %min.iters.check383 = icmp ult i32 %.fr23.i.i.i, 32
  %i.ic = and i64 %wide.trip.count44.i.i.i, 28
  %n.vec385 = and i64 %wide.trip.count44.i.i.i, 2147483616 ; 4 uses
  %cmp.n415 = icmp eq i64 %n.vec385, %wide.trip.count44.i.i.i
  %min.epilog.iters.check421 = icmp eq i64 %i.ic, 0
  %n.vec423 = and i64 %wide.trip.count44.i.i.i, 2147483644 ; 3 uses
  %cmp.n437 = icmp eq i64 %n.vec423, %wide.trip.count44.i.i.i
  br label %.lr.ph.split.us.split.i.i.i

.lr.ph.split.us.split.us.i.i.i.preheader:         ; preds = %.lr.ph.split.us.i.i.i
  %min.iters.check = icmp ult i32 %.fr23.i.i.i, 4
  %min.iters.check340 = icmp ult i32 %.fr23.i.i.i, 32
  %i.id = and i64 %wide.trip.count44.i.i.i, 28
  %n.vec = and i64 %wide.trip.count44.i.i.i, 2147483616 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count44.i.i.i
  %min.epilog.iters.check = icmp eq i64 %i.id, 0
  %n.vec366 = and i64 %wide.trip.count44.i.i.i, 2147483644 ; 3 uses
  %cmp.n378 = icmp eq i64 %n.vec366, %wide.trip.count44.i.i.i
  br label %.lr.ph.split.us.split.us.i.i.i

.lr.ph.split.us.split.us.i.i.i:                   ; preds = %.lr.ph.split.us.split.us.i.i.i.preheader, %bb.ah
  %i.ie = phi ptr [ %i.lo, %bb.ah ], [ %i.hs, %.lr.ph.split.us.split.us.i.i.i.preheader ] ; 2 uses
  %i.if = phi ptr [ %i.lp, %bb.ah ], [ %i.hr, %.lr.ph.split.us.split.us.i.i.i.preheader ]
  %i.ig = phi ptr [ %i.lq, %bb.ah ], [ %i.hi, %.lr.ph.split.us.split.us.i.i.i.preheader ] ; 2 uses
  %indvars.iv46.i.i.i = phi i64 [ %indvars.iv.next47.i.i.i, %bb.ah ], [ 0, %.lr.ph.split.us.split.us.i.i.i.preheader ] ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv46.i.i.i ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !108, !noalias !142
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !108, !noalias !142 ; 4 uses
  %.not.i.us.us.i.i.i = icmp sle i32 %.025180.i, %i.im
  %i.in = icmp slt i32 %i.im, %i.gb
  %i.io = select i1 %.not.i.us.us.i.i.i, i1 %i.in, i1 false
  br i1 %i.io, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %.lr.ph.split.us.split.us.i.i.i
  %i.ip = sub nsw i32 %i.im, %.025180.i
  %i.iq = sdiv i32 %i.ip, %i.gg                   ; 2 uses
  %i.ir = mul nsw i32 %i.iq, %i.gg
  %i.is = add i32 %i.ir, %.025180.i               ; 4 uses
  %i.it = sub i32 %i.im, %i.is
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = getelementptr [4 x i8], ptr %i.ig, i64 %i.iu ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !108, !noalias !142 ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iv, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !108, !noalias !142
  %.not26.i.i.i = icmp slt i32 %i.iw, %i.iy
  br i1 %.not26.i.i.i, label %.lr.ph9.us.us.i.i.i, label %.split.us.i.i.i

.lr.ph9.us.us.i.i.i:                              ; preds = %bb.ac
  %i.iz = mul nsw i32 %i.iq, %i.hk
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.is, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert369 = insertelement <4 x i32> poison, i32 %i.is, i64 0
  %broadcast.splat370 = shufflevector <4 x i32> %broadcast.splatinsert369, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc92.i.i, %.lr.ph9.us.us.i.i.i
  %.0627.us.us.us.us.i.i.i = phi i32 [ %i.iw, %.lr.ph9.us.us.i.i.i ], [ %i.li, %.noexc92.i.i ] ; 3 uses
  %i.ja = sext i32 %.0627.us.us.us.us.i.i.i to i64
  %i.jb = load ptr, ptr %i.gv, align 8, !tbaa !107, !noalias !142
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.ja ; 4 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !108, !noalias !142 ; 2 uses
  %i.je = zext i32 %i.jd to i64
  %i.jf = icmp eq i64 %indvars.iv.i.i, %i.je
  br i1 %i.jf, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.jg = add nsw i32 %.0627.us.us.us.us.i.i.i, %i.iz
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [4 x i8], ptr %.sroa.0117.0.i.i, i64 %i.jh ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !108, !noalias !142
  %i.jk = icmp eq i32 %i.jj, 0
  br i1 %i.jk, label %iter.check, label %bb.ag

iter.check:                                       ; preds = %bb.ae
  br i1 %min.iters.check, label %.preheader.us.us.us.us.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check340, label %vec.epilog.ph, label %vector.body342

vector.body342:                                   ; preds = %vector.main.loop.iter.check, %vector.body342
  %index343 = phi i64 [ %index.next362, %vector.body342 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3gmxL29dd_print_missing_interactionsERKNS_8MDLoggerERKNS_7MpiCommERK12gmx_domdec_tiiRK10gmx_mtop_tRK14gmx_localtop_tNS_8ArrayRefIKNS_11BasicVectorIfEEEEPA3_Kf:bb.a
bb.ak:                                            ; preds = %bb.aj
  %i.nb = load i32, ptr %i.mb, align 4, !tbaa !108, !noalias !142
  %i.nc = getelementptr i8, ptr %i.mx, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !108, !noalias !142
  %i.ne = icmp eq i32 %i.nb, %i.nd
  br i1 %i.ne, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.nf = sext i32 %i.mu to i64
  %i.ng = getelementptr inbounds [4 x i8], ptr %.sroa.0117.0.i.i, i64 %i.nf ; 2 uses
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !108, !noalias !142
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %iter.check418, label %bb.an

iter.check418:                                    ; preds = %bb.al
  br i1 %min.iters.check381, label %.preheader.us.us.i.i.i.preheader, label %vector.main.loop.iter.check382

vector.main.loop.iter.check382:                   ; preds = %iter.check418
  br i1 %min.iters.check383, label %vec.epilog.ph422, label %vector.body388

vector.body388:                                   ; preds = %vector.main.loop.iter.check382, %vector.body388
  %index389 = phi i64 [ %index.next410, %vector.body388 ], [ 0, %vector.main.loop.iter.check382 ] ; 3 uses
  %vec.phi390 = phi <8 x i1> [ %i.of, %vector.body388 ], [ zeroinitializer, %vector.main.loop.iter.check382 ]
  %vec.phi391 = phi <8 x i1> [ %i.og, %vector.body388 ], [ zeroinitializer, %vector.main.loop.iter.check382 ]
  %vec.phi392 = phi <8 x i1> [ %i.oh, %vector.body388 ], [ zeroinitializer, %vector.main.loop.iter.check382 ]
  %vec.phi393 = phi <8 x i1> [ %i.oi, %vector.body388 ], [ zeroinitializer, %vector.main.loop.iter.check382 ]
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %index389 ; 4 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 36
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 68
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nj, i64 100
  %wide.load394 = load <8 x i32>, ptr %i.nk, align 4, !tbaa !108, !noalias !142
  %wide.load395 = load <8 x i32>, ptr %i.nl, align 4, !tbaa !108, !noalias !142
  %wide.load396 = load <8 x i32>, ptr %i.nm, align 4, !tbaa !108, !noalias !142
  %wide.load397 = load <8 x i32>, ptr %i.nn, align 4, !tbaa !108, !noalias !142
  %i.no = sext <8 x i32> %wide.load394 to <8 x i64>
  %i.np = sext <8 x i32> %wide.load395 to <8 x i64>
  %i.nq = sext <8 x i32> %wide.load396 to <8 x i64>
  %i.nr = sext <8 x i32> %wide.load397 to <8 x i64>
  %wide.gep398 = getelementptr inbounds [4 x i8], ptr %i.hh, <8 x i64> %i.no
  %wide.gep399 = getelementptr inbounds [4 x i8], ptr %i.hh, <8 x i64> %i.np
  %wide.gep400 = getelementptr inbounds [4 x i8], ptr %i.hh, <8 x i64> %i.nq
  %wide.gep401 = getelementptr inbounds [4 x i8], ptr %i.hh, <8 x i64> %i.nr
  %wide.masked.gather402 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep398, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !108, !noalias !142
  %wide.masked.gather403 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep399, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !108, !noalias !142
  %wide.masked.gather404 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep400, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !108, !noalias !142
  %wide.masked.gather405 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep401, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !108, !noalias !142
  %i.ns = getelementptr [4 x i8], ptr %i.mx, i64 %index389 ; 4 uses
  %i.nt = getelementptr i8, ptr %i.ns, i64 8
  %i.nu = getelementptr i8, ptr %i.ns, i64 40
  %i.nv = getelementptr i8, ptr %i.ns, i64 72
  %i.nw = getelementptr i8, ptr %i.ns, i64 104
  %wide.load406 = load <8 x i32>, ptr %i.nt, align 4, !tbaa !108, !noalias !142
  %wide.load407 = load <8 x i32>, ptr %i.nu, align 4, !tbaa !108, !noalias !142
  %wide.load408 = load <8 x i32>, ptr %i.nv, align 4, !tbaa !108, !noalias !142
  %wide.load409 = load <8 x i32>, ptr %i.nw, align 4, !tbaa !108, !noalias !142
  %i.nx = add nsw <8 x i32> %wide.load406, %broadcast.splat387
  %i.ny = add nsw <8 x i32> %wide.load407, %broadcast.splat387
  %i.nz = add nsw <8 x i32> %wide.load408, %broadcast.splat387
  %i.oa = add nsw <8 x i32> %wide.load409, %broadcast.splat387
  %i.ob = icmp ne <8 x i32> %wide.masked.gather402, %i.nx
  %i.oc = icmp ne <8 x i32> %wide.masked.gather403, %i.ny
  %i.od = icmp ne <8 x i32> %wide.masked.gather404, %i.nz
  %i.oe = icmp ne <8 x i32> %wide.masked.gather405, %i.oa
  %i.of = or <8 x i1> %vec.phi390, %i.ob          ; 2 uses
  %i.og = or <8 x i1> %vec.phi391, %i.oc          ; 2 uses
  %i.oh = or <8 x i1> %vec.phi392, %i.od          ; 2 uses
  %i.oi = or <8 x i1> %vec.phi393, %i.oe          ; 2 uses
  %index.next410 = add nuw i64 %index389, 32      ; 2 uses
  %i.oj = icmp eq i64 %index.next410, %n.vec385
  br i1 %i.oj, label %middle.block411, label %vector.body388, !llvm.loop !87

middle.block411:                                  ; preds = %vector.body388
  %bin.rdx412 = or <8 x i1> %i.og, %i.of
  %bin.rdx413 = or <8 x i1> %i.oh, %bin.rdx412
  %bin.rdx414 = or <8 x i1> %i.oi, %bin.rdx413
  %bin.rdx414.fr = freeze <8 x i1> %bin.rdx414
  %i.ok = bitcast <8 x i1> %bin.rdx414.fr to i8
  %.not440 = icmp eq i8 %i.ok, 0                  ; 3 uses
  br i1 %cmp.n415, label %._crit_edge.us.us.i.i.i, label %vec.epilog.iter.check420

vec.epilog.iter.check420:                         ; preds = %middle.block411
  br i1 %min.epilog.iters.check421, label %.preheader.us.us.i.i.i.preheader, label %vec.epilog.ph422, !prof !148

vec.epilog.ph422:                                 ; preds = %vector.main.loop.iter.check382, %vec.epilog.iter.check420
  %vec.epilog.resume.val416 = phi i64 [ %n.vec385, %vec.epilog.iter.check420 ], [ 0, %vector.main.loop.iter.check382 ]
  %bc.merge.rdx417 = phi i1 [ %.not440, %vec.epilog.iter.check420 ], [ true, %vector.main.loop.iter.check382 ]
  %i.ol = xor i1 %bc.merge.rdx417, true
  %broadcast.splatinsert424 = insertelement <4 x i1> poison, i1 %i.ol, i64 0
  %broadcast.splat425 = shufflevector <4 x i1> %broadcast.splatinsert424, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body428

vec.epilog.vector.body428:                        ; preds = %vec.epilog.vector.body428, %vec.epilog.ph422
  %index429 = phi i64 [ %vec.epilog.resume.val416, %vec.epilog.ph422 ], [ %index.next435, %vec.epilog.vector.body428 ] ; 3 uses
  %vec.phi430 = phi <4 x i1> [ %broadcast.splat425, %vec.epilog.ph422 ], [ %.fr441, %vec.epilog.vector.body428 ]
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %index429
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %wide.load431 = load <4 x i32>, ptr %i.on, align 4, !tbaa !108, !noalias !142
  %i.oo = sext <4 x i32> %wide.load431 to <4 x i64>
  %wide.gep432 = getelementptr inbounds [4 x i8], ptr %i.hh, <4 x i64> %i.oo
  %wide.masked.gather433 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep432, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !108, !noalias !142
  %i.op = getelementptr [4 x i8], ptr %i.mx, i64 %index429
  %i.oq = getelementptr i8, ptr %i.op, i64 8
  %wide.load434 = load <4 x i32>, ptr %i.oq, align 4, !tbaa !108, !noalias !142
  %i.or = add nsw <4 x i32> %wide.load434, %broadcast.splat427
  %i.os = icmp ne <4 x i32> %wide.masked.gather433, %i.or
  %i.ot = or <4 x i1> %vec.phi430, %i.os
  %.fr441 = freeze <4 x i1> %i.ot                 ; 2 uses
  %index.next435 = add nuw i64 %index429, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next435, %n.vec423
  br i1 %i.ou, label %vec.epilog.middle.block436, label %vec.epilog.vector.body428, !llvm.loop !88

vec.epilog.middle.block436:                       ; preds = %vec.epilog.vector.body428
  %i.ov = bitcast <4 x i1> %.fr441 to i4
  %.not442 = icmp eq i4 %i.ov, 0                  ; 2 uses
  br i1 %cmp.n437, label %._crit_edge.us.us.i.i.i, label %.preheader.us.us.i.i.i.preheader

.preheader.us.us.i.i.i.preheader:                 ; preds = %iter.check418, %vec.epilog.iter.check420, %vec.epilog.middle.block436
  %indvars.iv37.i.i.i.ph = phi i64 [ 0, %iter.check418 ], [ %n.vec385, %vec.epilog.iter.check420 ], [ %n.vec423, %vec.epilog.middle.block436 ]
  %.1615.us.us.i.i.i.ph = phi i1 [ true, %iter.check418 ], [ %.not440, %vec.epilog.iter.check420 ], [ %.not442, %vec.epilog.middle.block436 ]
  br label %.preheader.us.us.i.i.i

.preheader.us.us.i.i.i:                           ; preds = %.preheader.us.us.i.i.i.preheader, %.preheader.us.us.i.i.i
  %indvars.iv37.i.i.i = phi i64 [ %indvars.iv.next38.i.i.i, %.preheader.us.us.i.i.i ], [ %indvars.iv37.i.i.i.ph, %.preheader.us.us.i.i.i.preheader ] ; 2 uses
  %.1615.us.us.i.i.i = phi i1 [ %spec.select.us.us.i.i.i, %.preheader.us.us.i.i.i ], [ %.1615.us.us.i.i.i.ph, %.preheader.us.us.i.i.i.preheader ]
  %indvars.iv.next38.i.i.i = add nuw nsw i64 %indvars.iv37.i.i.i, 1 ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv.next38.i.i.i
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !108, !noalias !142
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !108, !noalias !142
  %gep.i.i.i = getelementptr [4 x i8], ptr %i.mx, i64 %indvars.iv37.i.i.i
  %i.pb = getelementptr i8, ptr %gep.i.i.i, i64 8
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !108, !noalias !142
  %i.pd = add nsw i32 %i.pc, %i.mm
  %.not.us.us.i.i.i = icmp eq i32 %i.pa, %i.pd
  %spec.select.us.us.i.i.i = select i1 %.not.us.us.i.i.i, i1 %.1615.us.us.i.i.i, i1 false ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next38.i.i.i, %wide.trip.count44.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.us.us.i.i.i, label %.preheader.us.us.i.i.i, !llvm.loop !89

._crit_edge.us.us.i.i.i:                          ; preds = %.preheader.us.us.i.i.i, %vec.epilog.middle.block436, %middle.block411
  %spec.select.us.us.i.i.i.lcssa = phi i1 [ %.not442, %vec.epilog.middle.block436 ], [ %.not440, %middle.block411 ], [ %spec.select.us.us.i.i.i, %.preheader.us.us.i.i.i ]
  br i1 %spec.select.us.us.i.i.i.lcssa, label %bb.am, label %bb.an

bb.am:                                            ; preds = %._crit_edge.us.us.i.i.i
  store i32 1, ptr %i.ng, align 4, !tbaa !108, !noalias !142
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %._crit_edge.us.us.i.i.i, %bb.al, %bb.ak, %bb.aj
  %.3.us.us.i.i.i = phi i1 [ true, %bb.am ], [ false, %._crit_edge.us.us.i.i.i ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.aj ] ; 2 uses
  %i.pe = invoke noundef i32 @_Z7nral_rt19InteractionFunction(i32 noundef %i.my)
          to label %.noexc93.i.i unwind label %.loopexit.split-lp141.loopexit.i.i, !noalias !142

.noexc93.i.i:                                     ; preds = %bb.an
  %i.pf = add i32 %.0627.us.us.i.i.i, 2
  %i.pg = add i32 %i.pf, %i.pe                    ; 2 uses
  %i.ph = load ptr, ptr %i.gf, align 8, !tbaa !107, !noalias !142 ; 2 uses
  %i.pi = getelementptr [4 x i8], ptr %i.ph, i64 %i.mo
  %i.pj = getelementptr i8, ptr %i.pi, i64 4
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !108, !noalias !142
  %i.pl = icmp sge i32 %i.pg, %i.pk
  %.not64.us.us.i.i.i = or i1 %.3.us.us.i.i.i, %i.pl
  br i1 %.not64.us.us.i.i.i, label %._crit_edge10.split.us.us.split.i.i.i, label %bb.aj, !llvm.loop !85

._crit_edge10.split.us.us.split.i.i.i:            ; preds = %.noexc93.i.i
  br i1 %.3.us.us.i.i.i, label %._crit_edge10.split.us.us.split._crit_edge.i.i.i, label %.split.us.i.i.i

._crit_edge10.split.us.us.split._crit_edge.i.i.i: ; preds = %._crit_edge10.split.us.us.split.i.i.i
  %.pre52.i.i.i = load ptr, ptr %i.hq, align 8, !tbaa !106, !noalias !142
  %.pre53.i.i.i = load ptr, ptr %i.hg, align 8, !tbaa !107, !noalias !142
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge10.split.us.us.split._crit_edge.i.i.i, %.lr.ph.split.us.split.i.i.i
  %i.pm = phi ptr [ %.pre53.i.i.i, %._crit_edge10.split.us.us.split._crit_edge.i.i.i ], [ %i.ly, %.lr.ph.split.us.split.i.i.i ] ; 2 uses
  %i.pn = phi ptr [ %.pre52.i.i.i, %._crit_edge10.split.us.us.split._crit_edge.i.i.i ], [ %i.lz, %.lr.ph.split.us.split.i.i.i ] ; 2 uses
  %i.po = phi ptr [ %i.ph, %._crit_edge10.split.us.us.split._crit_edge.i.i.i ], [ %i.ma, %.lr.ph.split.us.split.i.i.i ]
  %indvars.iv.next40.i.i.i = add nuw nsw i64 %indvars.iv39.i.i.i, %i.ib ; 2 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.pm to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = lshr exact i64 %i.pr, 2
  %i.pt = trunc i64 %i.ps to i32
  %i.pu = trunc nuw i64 %indvars.iv.next40.i.i.i to i32
  %i.pv = icmp slt i32 %i.pu, %i.pt
  br i1 %i.pv, label %.lr.ph.split.us.split.i.i.i, label %_ZN3gmxL23flagInteractionsForTypeE19InteractionFunctionRK15InteractionListRK15reverse_ilist_tRKNS_5RangeIiEEiNS_8ArrayRefIKiEENSB_IiEE.exit.i.i, !llvm.loop !86

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.pw = sext i32 %i.ia to i64                   ; 2 uses
  br i1 %i.hp, label %.lr.ph.split.split.us.i.i.i, label %.lr.ph.split.split.i.i.i

.lr.ph.split.split.us.i.i.i:                      ; preds = %.lr.ph.split.i.i.i, %bb.at
  %i.px = phi ptr [ %i.rk, %bb.at ], [ %i.hs, %.lr.ph.split.i.i.i ] ; 2 uses
  %i.py = phi ptr [ %i.rl, %bb.at ], [ %i.hr, %.lr.ph.split.i.i.i ]
  %i.pz = phi ptr [ %i.rm, %bb.at ], [ %i.hi, %.lr.ph.split.i.i.i ] ; 2 uses
  %indvars.iv34.i.i.i = phi i64 [ %indvars.iv.next35.i.i.i, %bb.at ], [ 0, %.lr.ph.split.i.i.i ] ; 2 uses
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.px, i64 %indvars.iv34.i.i.i
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !108, !noalias !142
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !108, !noalias !142 ; 3 uses
  %.not.i.us20.i.i.i = icmp sle i32 %.025180.i, %i.qf
  %i.qg = icmp slt i32 %i.qf, %i.gb
  %i.qh = select i1 %.not.i.us20.i.i.i, i1 %i.qg, i1 false
  br i1 %i.qh, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %.lr.ph.split.split.us.i.i.i
  %i.qi = sub nsw i32 %i.qf, %.025180.i           ; 2 uses
  %i.qj = sdiv i32 %i.qi, %i.gg                   ; 2 uses
  %i.qk = mul nsw i32 %i.qj, %i.gg                ; 0 uses
  %.recomposed = srem i32 %i.qi, %i.gg
  %i.ql = sext i32 %.recomposed to i64            ; 2 uses
  %i.qm = getelementptr [4 x i8], ptr %i.pz, i64 %i.ql ; 2 uses
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !108, !noalias !142 ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qm, i64 4
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !108, !noalias !142
  %.not24.i.i.i = icmp slt i32 %i.qn, %i.qp
  br i1 %.not24.i.i.i, label %.lr.ph9.us21.i.i.i, label %.split.us.i.i.i

.lr.ph9.us21.i.i.i:                               ; preds = %bb.ap
  %i.qq = mul nsw i32 %i.qj, %i.hk
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc94.i.i, %.lr.ph9.us21.i.i.i
  %.0627.us12.us.i.i.i = phi i32 [ %i.qn, %.lr.ph9.us21.i.i.i ], [ %i.re, %.noexc94.i.i ] ; 3 uses
  %i.qr = sext i32 %.0627.us12.us.i.i.i to i64
  %i.qs = load ptr, ptr %i.gv, align 8, !tbaa !107, !noalias !142
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.qs, i64 %i.qr
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !108, !noalias !142 ; 2 uses
  %i.qv = zext i32 %i.qu to i64
  %i.qw = icmp eq i64 %indvars.iv.i.i, %i.qv
  br i1 %i.qw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.qx = add nsw i32 %.0627.us12.us.i.i.i, %i.qq
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [4 x i8], ptr %.sroa.0117.0.i.i, i64 %i.qy ; 2 uses
  %i.ra = load i32, ptr %i.qz, align 4, !tbaa !108, !noalias !142
  %i.rb = icmp eq i32 %i.ra, 0
  br i1 %i.rb, label %.preheader.us13.us.i.i.i, label %bb.as

.preheader.us13.us.i.i.i:                         ; preds = %bb.ar
  store i32 1, ptr %i.qz, align 4, !tbaa !108, !noalias !142
  br label %bb.as

bb.as:                                            ; preds = %.preheader.us13.us.i.i.i, %bb.ar, %bb.aq
  %.3.us14.us.i.i.i = phi i1 [ true, %.preheader.us13.us.i.i.i ], [ false, %bb.aq ], [ false, %bb.ar ] ; 2 uses
  %i.rc = invoke noundef i32 @_Z7nral_rt19InteractionFunction(i32 noundef %i.qu)
          to label %.noexc94.i.i unwind label %.loopexit.split-lp141.loopexit.split-lp.loopexit.i.i, !noalias !142

.noexc94.i.i:                                     ; preds = %bb.as
  %i.rd = add i32 %.0627.us12.us.i.i.i, 2
  %i.re = add i32 %i.rd, %i.rc                    ; 2 uses
  %i.rf = load ptr, ptr %i.gf, align 8, !tbaa !107, !noalias !142 ; 2 uses
  %i.rg = getelementptr [4 x i8], ptr %i.rf, i64 %i.ql
  %i.rh = getelementptr i8, ptr %i.rg, i64 4
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !108, !noalias !142
  %i.rj = icmp sge i32 %i.re, %i.ri
  %.not64.us15.us.i.i.i = or i1 %.3.us14.us.i.i.i, %i.rj
  br i1 %.not64.us15.us.i.i.i, label %._crit_edge10.split.split.us.us.i.i.i, label %bb.aq, !llvm.loop !85

._crit_edge10.split.split.us.us.i.i.i:            ; preds = %.noexc94.i.i
  br i1 %.3.us14.us.i.i.i, label %._crit_edge10.split.split.us.us._crit_edge.i.i.i, label %.split.us.i.i.i

._crit_edge10.split.split.us.us._crit_edge.i.i.i: ; preds = %._crit_edge10.split.split.us.us.i.i.i
  %.pre50.i.i.i = load ptr, ptr %i.hq, align 8, !tbaa !106, !noalias !142
  %.pre51.i.i.i = load ptr, ptr %i.hg, align 8, !tbaa !107, !noalias !142
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge10.split.split.us.us._crit_edge.i.i.i, %.lr.ph.split.split.us.i.i.i
  %i.rk = phi ptr [ %.pre51.i.i.i, %._crit_edge10.split.split.us.us._crit_edge.i.i.i ], [ %i.px, %.lr.ph.split.split.us.i.i.i ] ; 2 uses
  %i.rl = phi ptr [ %.pre50.i.i.i, %._crit_edge10.split.split.us.us._crit_edge.i.i.i ], [ %i.py, %.lr.ph.split.split.us.i.i.i ] ; 2 uses
  %i.rm = phi ptr [ %i.rf, %._crit_edge10.split.split.us.us._crit_edge.i.i.i ], [ %i.pz, %.lr.ph.split.split.us.i.i.i ]
  %indvars.iv.next35.i.i.i = add nsw i64 %indvars.iv34.i.i.i, %i.pw ; 2 uses
  %i.rn = ptrtoint ptr %i.rl to i64
  %i.ro = ptrtoint ptr %i.rk to i64
  %i.rp = sub i64 %i.rn, %i.ro
  %i.rq = shl i64 %i.rp, 30
  %i.rr = ashr i64 %i.rq, 32
  %i.rs = icmp slt i64 %indvars.iv.next35.i.i.i, %i.rr
  br i1 %i.rs, label %.lr.ph.split.split.us.i.i.i, label %_ZN3gmxL23flagInteractionsForTypeE19InteractionFunctionRK15InteractionListRK15reverse_ilist_tRKNS_5RangeIiEEiNS_8ArrayRefIKiEENSB_IiEE.exit.i.i, !llvm.loop !86

.lr.ph.split.split.i.i.i:                         ; preds = %.lr.ph.split.i.i.i, %bb.be
  %i.rt = phi ptr [ %i.tr, %bb.be ], [ %i.hs, %.lr.ph.split.i.i.i ] ; 2 uses
  %i.ru = phi ptr [ %i.ts, %bb.be ], [ %i.hr, %.lr.ph.split.i.i.i ]
  %i.rv = phi ptr [ %i.tt, %bb.be ], [ %i.hi, %.lr.ph.split.i.i.i ] ; 2 uses
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.be ], [ 0, %.lr.ph.split.i.i.i ] ; 2 uses
  %i.rw = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %indvars.iv.i.i.i ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !108, !noalias !142
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.rz
  %i.sb = load i32, ptr %i.sa, align 4, !tbaa !108, !noalias !142 ; 3 uses
  %.not.i.i.i.i = icmp sle i32 %.025180.i, %i.sb
  %i.sc = icmp slt i32 %i.sb, %i.gb
  %i.sd = select i1 %.not.i.i.i.i, i1 %i.sc, i1 false
  br i1 %i.sd, label %bb.au, label %bb.be

bb.au:                                            ; preds = %.lr.ph.split.split.i.i.i
  %i.se = sub nsw i32 %i.sb, %.025180.i           ; 2 uses
  %i.sf = sdiv i32 %i.se, %i.gg                   ; 2 uses
  %i.sg = mul nsw i32 %i.sf, %i.gg                ; 0 uses
  %.recomposed570 = srem i32 %i.se, %i.gg
  %i.sh = sext i32 %.recomposed570 to i64         ; 2 uses
  %i.si = getelementptr [4 x i8], ptr %i.rv, i64 %i.sh ; 2 uses
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !108, !noalias !142 ; 2 uses
  %i.sk = getelementptr i8, ptr %i.si, i64 4
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !108, !noalias !142
  %.not.i.i.i = icmp slt i32 %i.sj, %i.sl
  br i1 %.not.i.i.i, label %.lr.ph9.i.i.i, label %.split.us.i.i.i

.lr.ph9.i.i.i:                                    ; preds = %bb.au
  %i.sm = mul nsw i32 %i.sf, %i.hk
  br label %bb.av

bb.av:                                            ; preds = %.noexc95.i.i, %.lr.ph9.i.i.i
  %.0627.i.i.i = phi i32 [ %i.sj, %.lr.ph9.i.i.i ], [ %i.te, %.noexc95.i.i ] ; 3 uses
  %i.sn = add nsw i32 %.0627.i.i.i, %i.sm
  %i.so = sext i32 %.0627.i.i.i to i64
  %i.sp = load ptr, ptr %i.gv, align 8, !tbaa !107, !noalias !142
  %i.sq = getelementptr [4 x i8], ptr %i.sp, i64 %i.so ; 2 uses
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !108, !noalias !142 ; 2 uses
  %i.ss = zext i32 %i.sr to i64
  %i.st = icmp eq i64 %indvars.iv.i.i, %i.ss
  br i1 %i.st, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.su = load i32, ptr %i.rw, align 4, !tbaa !108, !noalias !142
  %i.sv = getelementptr i8, ptr %i.sq, i64 4
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !108, !noalias !142
  %i.sx = icmp eq i32 %i.su, %i.sw
  br i1 %i.sx, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.sy = sext i32 %i.sn to i64
  %i.sz = getelementptr inbounds [4 x i8], ptr %.sroa.0117.0.i.i, i64 %i.sy ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !108, !noalias !142
  %i.tb = icmp eq i32 %i.ta, 0
  br i1 %i.tb, label %.preheader.i.i.i, label %bb.ay

.preheader.i.i.i:                                 ; preds = %bb.ax
  store i32 1, ptr %i.sz, align 4, !tbaa !108, !noalias !142
  br label %bb.ay

bb.ay:                                            ; preds = %.preheader.i.i.i, %bb.ax, %bb.aw, %bb.av
  %.3.i.i.i = phi i1 [ true, %.preheader.i.i.i ], [ false, %bb.av ], [ false, %bb.ax ], [ false, %bb.aw ] ; 2 uses
  %i.tc = invoke noundef i32 @_Z7nral_rt19InteractionFunction(i32 noundef %i.sr)
          to label %.noexc95.i.i unwind label %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !noalias !142

.noexc95.i.i:                                     ; preds = %bb.ay
  %i.td = add i32 %.0627.i.i.i, 2
  %i.te = add i32 %i.td, %i.tc                    ; 2 uses
  %i.tf = load ptr, ptr %i.gf, align 8, !tbaa !107, !noalias !142 ; 2 uses
  %i.tg = getelementptr [4 x i8], ptr %i.tf, i64 %i.sh
  %i.th = getelementptr i8, ptr %i.tg, i64 4
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !108, !noalias !142
  %i.tj = icmp sge i32 %i.te, %i.ti
  %.not64.i.i.i = or i1 %.3.i.i.i, %i.tj
  br i1 %.not64.i.i.i, label %._crit_edge10.split.split.i.i.i, label %bb.av, !llvm.loop !85

._crit_edge10.split.split.i.i.i:                  ; preds = %.noexc95.i.i
  br i1 %.3.i.i.i, label %._crit_edge10.split.split._crit_edge.i.i.i, label %.split.us.i.i.i

._crit_edge10.split.split._crit_edge.i.i.i:       ; preds = %._crit_edge10.split.split.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.hq, align 8, !tbaa !106, !noalias !142
  %.pre49.i.i.i = load ptr, ptr %i.hg, align 8, !tbaa !107, !noalias !142
  br label %bb.be

.split.us.i.i.i:                                  ; preds = %._crit_edge10.split.split.i.i.i, %bb.au, %._crit_edge10.split.split.us.us.i.i.i, %bb.ap, %._crit_edge10.split.us.us.split.i.i.i, %bb.ai, %._crit_edge10.split.us.us.split.us.us.i.i.i, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18, !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !142
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.22, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc96.i.i unwind label %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !142

.noexc96.i.i:                                     ; preds = %.split.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18, !noalias !142
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA76_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 1 dereferenceable(76) @.str.8, i8 noundef zeroext 2)
          to label %bb.az unwind label %bb.bb, !noalias !142

bb.az:                                            ; preds = %.noexc96.i.i
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.21, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 151) #21
          to label %bb.ba unwind label %bb.bc, !noalias !142

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %.noexc96.i.i
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.tl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #18, !noalias !142
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn.i.i.i = phi { ptr, i32 } [ %i.tl, %bb.bc ], [ %i.tk, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18, !noalias !142
  %i.tm = load ptr, ptr %8, align 8, !tbaa !44, !noalias !142 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.to = icmp eq ptr %i.tm, %i.tn
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bd
  %i.tp = load i64, ptr %i.tn, align 8, !tbaa !27, !noalias !142
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tm, i64 noundef %i.tq) #20, !noalias !142
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18, !noalias !142
  br label %.body.i.i

bb.be:                                            ; preds = %._crit_edge10.split.split._crit_edge.i.i.i, %.lr.ph.split.split.i.i.i
  %i.tr = phi ptr [ %.pre49.i.i.i, %._crit_edge10.split.split._crit_edge.i.i.i ], [ %i.rt, %.lr.ph.split.split.i.i.i ] ; 2 uses
  %i.ts = phi ptr [ %.pre.i.i.i, %._crit_edge10.split.split._crit_edge.i.i.i ], [ %i.ru, %.lr.ph.split.split.i.i.i ] ; 2 uses
  %i.tt = phi ptr [ %i.tf, %._crit_edge10.split.split._crit_edge.i.i.i ], [ %i.rv, %.lr.ph.split.split.i.i.i ]
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, %i.pw ; 2 uses
  %i.tu = ptrtoint ptr %i.ts to i64
  %i.tv = ptrtoint ptr %i.tr to i64
  %i.tw = sub i64 %i.tu, %i.tv
  %i.tx = shl i64 %i.tw, 30
  %i.ty = ashr i64 %i.tx, 32
  %i.tz = icmp slt i64 %indvars.iv.next.i.i.i, %i.ty
  br i1 %i.tz, label %.lr.ph.split.split.i.i.i, label %_ZN3gmxL23flagInteractionsForTypeE19InteractionFunctionRK15InteractionListRK15reverse_ilist_tRKNS_5RangeIiEEiNS_8ArrayRefIKiEENSB_IiEE.exit.i.i, !llvm.loop !86

.loopexit140.i.i:                                 ; preds = %bb.ag
  %lpad.loopexit142.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp141.loopexit.i.i:               ; preds = %bb.an
  %lpad.loopexit144.i.i.a = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp141.loopexit.split-lp.loopexit.i.i: ; preds = %bb.as
  %lpad.loopexit147.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.ay
  %lpad.loopexit149.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i: ; preds = %bb.z, %bb.y
  %lpad.loopexit159.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.split.us.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_ZN3gmxL23flagInteractionsForTypeE19InteractionFunctionRK15InteractionListRK15reverse_ilist_tRKNS_5RangeIiEEiNS_8ArrayRefIKiEENSB_IiEE.exit.i.i: ; preds = %bb.be, %bb.at, %bb.ao, %bb.ah, %bb.ab, %bb.aa
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not127.i.i = icmp eq i64 %indvars.iv.next.i.i, 95
  br i1 %.not127.i.i, label %bb.w, label %bb.y

.preheader138.i.i:                                ; preds = %.thread.i.i, %.preheader138.i.preheader.i
  %.062185.i.i = phi i32 [ %i.wc, %.thread.i.i ], [ 0, %.preheader138.i.preheader.i ] ; 3 uses
  %.063184.i.i = phi i32 [ %.4.i.i, %.thread.i.i ], [ 0, %.preheader138.i.preheader.i ]
  %i.ua = mul nuw nsw i32 %.062185.i.i, %i.gl
  %i.ub = mul nsw i32 %.062185.i.i, %i.gg
  %i.uc = add i32 %i.hb, %i.ub
  br label %bb.bi

._crit_edge186.split.i.i:                         ; preds = %.thread.i.i, %.preheader139.i.i
  store ptr %i.fo, ptr %13, align 8, !tbaa !40, !alias.scope !142
  %i.ud = load ptr, ptr %i.fk, align 8, !tbaa !44, !noalias !142 ; 2 uses
  %i.ue = load i64, ptr %i.fm, align 8, !tbaa !43, !noalias !142 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !142
  store i64 %i.ue, ptr %i.a, align 8, !tbaa !54, !noalias !142
  %i.uf = icmp ugt i64 %i.ue, 15
  br i1 %i.uf, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %._crit_edge186.split.i.i
  %i.ug = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc97.i.i unwind label %bb.cb ; 2 uses

.noexc97.i.i:                                     ; preds = %.noexc.i.i.i
  store ptr %i.ug, ptr %13, align 8, !tbaa !44, !alias.scope !142
  %i.uh = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !142
  store i64 %i.uh, ptr %i.fo, align 8, !tbaa !27, !alias.scope !142
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc97.i.i, %._crit_edge186.split.i.i
  %i.ui = phi ptr [ %i.ug, %.noexc97.i.i ], [ %i.fo, %._crit_edge186.split.i.i ] ; 2 uses
  switch i64 %i.ue, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %bb.bz
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i
  %i.uj = load i8, ptr %i.ud, align 1, !tbaa !27
  store i8 %i.uj, ptr %i.ui, align 1, !tbaa !27
  br label %bb.bz

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i
end_hunk_1
begin_hunk_2_@_ZN3gmxL29dd_print_missing_interactionsERKNS_8MDLoggerERKNS_7MpiCommERK12gmx_domdec_tiiRK10gmx_mtop_tRK14gmx_localtop_tNS_8ArrayRefIKNS_11BasicVectorIfEEEEPA3_Kf:bb.a
  %i.vp = load ptr, ptr %i.gv, align 8, !tbaa !107, !noalias !142
  %i.vq = getelementptr [4 x i8], ptr %i.vp, i64 %indvars.iv206.i.i
  %i.vr = getelementptr [4 x i8], ptr %i.vq, i64 %i.ul
  %i.vs = getelementptr i8, ptr %i.vr, i64 8
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !108, !noalias !142
  %i.vu = add i32 %i.uc, %i.vt
  invoke void (ptr, ptr, ...) @_ZN3gmx10TextWriter20writeStringFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.17, i32 noundef %i.vu)
          to label %bb.bu unwind label %bb.bv, !noalias !142

bb.bu:                                            ; preds = %bb.bt
  %indvars.iv.next207.i.i = add nuw nsw i64 %indvars.iv206.i.i, 1 ; 2 uses
  %exitcond210.not.i.i = icmp eq i64 %indvars.iv.next207.i.i, %wide.trip.count209.i.i
  br i1 %exitcond210.not.i.i, label %._crit_edge177.i.i, label %bb.bt, !llvm.loop !92

bb.bv:                                            ; preds = %bb.bt
  %i.vv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bw:                                            ; preds = %._crit_edge177.i.i, %bb.bk
  %i.vw = add nsw i32 %.164178.i.i, 1             ; 2 uses
  %i.vx = icmp sgt i32 %.164178.i.i, 8
  br i1 %i.vx, label %.thread.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bj, %bb.bi
  %.2.i.i = phi i32 [ %.164178.i.i, %bb.bj ], [ %i.vw, %bb.bw ], [ %.164178.i.i, %bb.bi ] ; 2 uses
  %i.vy = invoke noundef i32 @_Z7nral_rt19InteractionFunction(i32 noundef %i.uo)
          to label %bb.by unwind label %bb.bo, !noalias !142

bb.by:                                            ; preds = %bb.bx
  %i.vz = add i32 %.059179.i.i, 2
  %i.wa = add i32 %i.vz, %i.vy                    ; 2 uses
  %i.wb = icmp slt i32 %i.wa, %i.gl
  br i1 %i.wb, label %bb.bi, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.by, %bb.bw
  %.4.i.i = phi i32 [ %i.vw, %bb.bw ], [ %.2.i.i, %bb.by ]
  %i.wc = add nuw nsw i32 %.062185.i.i, 1         ; 2 uses
  %exitcond211.not.i.i = icmp eq i32 %i.wc, %i.gh
  br i1 %exitcond211.not.i.i, label %._crit_edge186.split.i.i, label %.preheader138.i.i, !llvm.loop !93

bb.bz:                                            ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i.i
  %i.wd = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !142 ; 2 uses
  store i64 %i.wd, ptr %i.fp, align 8, !tbaa !43, !alias.scope !142
  %i.we = load ptr, ptr %13, align 8, !tbaa !44, !alias.scope !142
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.wd
  store i8 0, ptr %i.wf, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18, !noalias !142
  call void @_ZN3gmx10TextWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !142
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx18StringOutputStreamE, i64 16), ptr %11, align 8, !tbaa !101, !noalias !142
  %i.wg = load ptr, ptr %i.fk, align 8, !tbaa !44, !noalias !142 ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.fl
  br i1 %i.wh, label %_ZN3gmx18StringOutputStreamD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.i.i: ; preds = %bb.bz
  %i.wi = load i64, ptr %i.fl, align 8, !tbaa !27, !noalias !142
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wj) #20
  br label %_ZN3gmx18StringOutputStreamD2Ev.exit.i.i

_ZN3gmx18StringOutputStreamD2Ev.exit.i.i:         ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !142
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0117.0.i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %_ZN3gmx18StringOutputStreamD2Ev.exit.i.i
  %i.wk = sub i64 %.sroa.14.0.i.i, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0117.0.i.i, i64 noundef %i.wk) #20
  br label %bb.ce

bb.cb:                                            ; preds = %.noexc.i.i.i
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.cb, %bb.bv, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i, %bb.bo, %bb.bh, %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp141.loopexit.split-lp.loopexit.i.i, %.loopexit.split-lp141.loopexit.i.i, %.loopexit140.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %.pn85.i.i = phi { ptr, i32 } [ %i.vv, %bb.bv ], [ %i.uk, %bb.bh ], [ %i.wl, %bb.cb ], [ %.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.vd, %bb.bo ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit142.i.i.a, %.loopexit140.i.i ], [ %lpad.loopexit144.i.i.a, %.loopexit.split-lp141.loopexit.i.i ], [ %lpad.loopexit147.i.i, %.loopexit.split-lp141.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit149.i.i, %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit159.i.i, %.loopexit.split-lp141.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit135.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp136.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  call void @_ZN3gmx10TextWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #18
  br label %bb.cc

bb.cc:                                            ; preds = %.body.i.i, %bb.x
  %.pn85.pn.i.i = phi { ptr, i32 } [ %.pn85.i.i, %.body.i.i ], [ %i.hc, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !142
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx18StringOutputStreamE, i64 16), ptr %11, align 8, !tbaa !101, !noalias !142
  %i.wm = load ptr, ptr %i.fk, align 8, !tbaa !44, !noalias !142 ; 2 uses
  %i.wn = icmp eq ptr %i.wm, %i.fl
  br i1 %i.wn, label %_ZN3gmx18StringOutputStreamD2Ev.exit104.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101.i.i: ; preds = %bb.cc
  %i.wo = load i64, ptr %i.fl, align 8, !tbaa !27, !noalias !142
  %i.wp = add i64 %i.wo, 1
  call void @_ZdlPvm(ptr noundef %i.wm, i64 noundef %i.wp) #20
  br label %_ZN3gmx18StringOutputStreamD2Ev.exit104.i.i

_ZN3gmx18StringOutputStreamD2Ev.exit104.i.i:      ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i101.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !142
  %.not.i.i.i105.i.i = icmp eq ptr %.sroa.0117.0.i.i, null
  br i1 %.not.i.i.i105.i.i, label %common.resume, label %bb.cd

bb.cd:                                            ; preds = %_ZN3gmx18StringOutputStreamD2Ev.exit104.i.i
  %i.wq = ptrtoint ptr %.sroa.0117.0.i.i to i64
  %i.wr = sub i64 %.sroa.14.0.i.i, %i.wq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0117.0.i.i, i64 noundef %i.wr) #20
  br label %common.resume

common.resume:                                    ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit90, %bb.cz, %_ZN3gmx18StringOutputStreamD2Ev.exit104.i.i, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i
  %common.resume.op = phi { ptr, i32 } [ %.pn85.pn.i.i, %_ZN3gmx18StringOutputStreamD2Ev.exit104.i.i ], [ %lpad.phi.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i ], [ %.pn85.pn.i.i, %bb.cd ], [ %.pn82.pn, %bb.cz ], [ %i.p, %_ZN3gmx14LogEntryWriterD2Ev.exit90 ]
  resume { ptr, i32 } %common.resume.op

bb.ce:                                            ; preds = %bb.ca, %_ZN3gmx18StringOutputStreamD2Ev.exit.i.i
  %i.ws = load ptr, ptr %0, align 8, !tbaa !96    ; 3 uses
  %i.wt = icmp eq ptr %i.ws, null
  br i1 %i.wt, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i8 0, i64 24, i1 false)
  store ptr %i.fq, ptr %14, align 8, !tbaa !40
  store i64 0, ptr %i.fr, align 8, !tbaa !43
  %i.wu = load i64, ptr %i.fp, align 8, !tbaa !43 ; 2 uses
  %i.wv = icmp ugt i64 %i.wu, 4611686018427387903
  br i1 %i.wv, label %bb.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #21
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.cg
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.cf
  %i.ww = load ptr, ptr %13, align 8, !tbaa !44
  %i.wx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef %i.ww, i64 noundef %i.wu)
          to label %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %.loopexit.i ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.wy = load ptr, ptr %i.ws, align 8, !tbaa !101
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 16
  %i.xa = load ptr, ptr %i.wz, align 8
  invoke void %i.xa(ptr noundef nonnull align 8 dereferenceable(8) %i.ws, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i unwind label %.loopexit.i, !inline_history !79

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i: ; preds = %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.xb = load ptr, ptr %14, align 8, !tbaa !44   ; 2 uses
  %i.xc = icmp eq ptr %i.xb, %i.fq
  br i1 %i.xc, label %_ZN3gmx14LogEntryWriterD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i
  %i.xd = load i64, ptr %i.fq, align 8, !tbaa !27
  %i.xe = add i64 %i.xd, 1
  call void @_ZdlPvm(ptr noundef %i.xb, i64 noundef %i.xe) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit.i

_ZN3gmx14LogEntryWriterD2Ev.exit.i:               ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.ci

.loopexit.i:                                      ; preds = %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp.i:                             ; preds = %bb.cg
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.xf = load ptr, ptr %14, align 8, !tbaa !44   ; 2 uses
  %i.xg = icmp eq ptr %i.xf, %i.fq
  br i1 %i.xg, label %_ZN3gmx14LogEntryWriterD2Ev.exit35.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33.i: ; preds = %bb.ch
  %i.xh = load i64, ptr %i.fq, align 8, !tbaa !27
  %i.xi = add i64 %i.xh, 1
  call void @_ZdlPvm(ptr noundef %i.xf, i64 noundef %i.xi) #20
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit35.i

_ZN3gmx14LogEntryWriterD2Ev.exit35.i:             ; preds = %bb.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %i.xj = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.xk = icmp eq ptr %i.xj, %i.fo
  br i1 %i.xk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i

bb.ci:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit.i, %bb.ce
  %i.xl = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.fo
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ci
  %i.xn = load i64, ptr %i.fo, align 8, !tbaa !27
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.049.0179.i, i64 56 ; 2 uses
  %.not.i = icmp eq ptr %i.xp, %i.fi
  br i1 %.not.i, label %_ZN3gmxL29printMissingInteractionsAtomsERKNS_8MDLoggerERKNS_7MpiCommERK12gmx_domdec_tRK10gmx_mtop_tRK22InteractionDefinitions.exit, label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i: ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit35.i
  %i.xq = load i64, ptr %i.fo, align 8, !tbaa !27
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xj, i64 noundef %i.xr) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38.i: ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit35.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %common.resume

_ZN3gmxL29printMissingInteractionsAtomsERKNS_8MDLoggerERKNS_7MpiCommERK12gmx_domdec_tRK10gmx_mtop_tRK22InteractionDefinitions.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.t
  %i.xs = icmp eq ptr %.0.val, %.8.val
  br i1 %i.xs, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %_ZN3gmxL29printMissingInteractionsAtomsERKNS_8MDLoggerERKNS_7MpiCommERK12gmx_domdec_tRK10gmx_mtop_tRK22InteractionDefinitions.exit
  call void @_Z12write_dd_pdbPKclS0_RK10gmx_mtop_tRK12gmx_domdec_tiPA3_KfS9_(ptr noundef nonnull @.str.4, i64 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(768) %5, ptr noundef nonnull align 8 dereferenceable(1097) %2, i32 noundef -1, ptr noundef %.0.val, ptr noundef %7)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %_ZN3gmxL29printMissingInteractionsAtomsERKNS_8MDLoggerERKNS_7MpiCommERK12gmx_domdec_tRK10gmx_mtop_tRK22InteractionDefinitions.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.xt = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.xt, ptr %20, align 8, !tbaa !40
  %i.xu = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i64 0, ptr %i.xu, align 8, !tbaa !43
  store i8 0, ptr %i.xt, align 8, !tbaa !27
  %i.xv = icmp sgt i32 %i.ca, 0
  br i1 %i.xv, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.xw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 111)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.cm ; 0 uses

bb.cm:                                            ; preds = %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.xx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cn:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  %i.xy = sub nsw i32 0, %i.ca
  %i.xz = invoke noundef float @_Z19dd_cutoff_multibodyPK12gmx_domdec_t(ptr noundef nonnull %2)
          to label %bb.co unwind label %bb.cw

bb.co:                                            ; preds = %bb.cn
  %i.ya = invoke noundef float @_Z17dd_cutoff_twobodyPK12gmx_domdec_t(ptr noundef nonnull %2)
          to label %bb.cp unwind label %bb.cw

bb.cp:                                            ; preds = %bb.co
  %i.yb = fpext float %i.xz to double
  %i.yc = fpext float %i.ya to double
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull @.str.7, i32 noundef %i.xy, i32 noundef %4, double noundef %i.yb, double noundef %i.yc)
          to label %bb.cq unwind label %bb.cw

bb.cq:                                            ; preds = %bb.cp
  %i.yd = load ptr, ptr %20, align 8, !tbaa !44   ; 6 uses
  %i.ye = icmp eq ptr %i.yd, %i.xt
  %i.yf = load ptr, ptr %21, align 8, !tbaa !44   ; 5 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.yh = icmp eq ptr %i.yf, %i.yg                ; 2 uses
  br i1 %i.ye, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.cq
  br i1 %i.yh, label %bb.cr, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.cq
  br i1 %i.yh, label %bb.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.yi = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !43 ; 3 uses
  %i.yk = icmp ult i64 %i.yj, 16
  call void @llvm.assume(i1 %i.yk)
  switch i64 %i.yj, label %bb.ct [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.yl = load i8, ptr %i.yf, align 1, !tbaa !27
  store i8 %i.yl, ptr %i.yd, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yd, ptr align 1 %i.yf, i64 %i.yj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.ym = load i64, ptr %i.yi, align 8, !tbaa !43 ; 2 uses
  store i64 %i.ym, ptr %i.xu, align 8, !tbaa !43
  %i.yn = load ptr, ptr %20, align 8, !tbaa !44
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 %i.ym
  store i8 0, ptr %i.yo, align 1, !tbaa !27
  %.pre.i = load ptr, ptr %21, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.yf, ptr %20, align 8, !tbaa !44
  %i.yp = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.yq = load <2 x i64>, ptr %i.yp, align 8, !tbaa !27
  store <2 x i64> %i.yq, ptr %i.xu, align 8, !tbaa !27
  br label %bb.cv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.yr = load i64, ptr %i.xt, align 8, !tbaa !27
  store ptr %i.yf, ptr %20, align 8, !tbaa !44
  %i.ys = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.yt = load <2 x i64>, ptr %i.ys, align 8, !tbaa !27
  store <2 x i64> %i.yt, ptr %i.xu, align 8, !tbaa !27
  %.not.i120 = icmp eq ptr %i.yd, null
  br i1 %.not.i120, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.yd, ptr %21, align 8, !tbaa !44
  store i64 %i.yr, ptr %i.yg, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.yg, ptr %21, align 8, !tbaa !44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.cu, %bb.cv
  %i.yu = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.yd, %bb.cu ], [ %i.yg, %bb.cv ]
  %i.yv = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.yv, align 8, !tbaa !43
  store i8 0, ptr %i.yu, align 1, !tbaa !27
  %i.yw = load ptr, ptr %21, align 8, !tbaa !44   ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.yy = icmp eq ptr %i.yw, %i.yx
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.yz = load i64, ptr %i.yx, align 8, !tbaa !27
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yw, i64 noundef %i.za) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit

bb.cw:                                            ; preds = %bb.cp, %bb.co, %bb.cn
  %i.zb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  br label %bb.cy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.zc = load ptr, ptr %1, align 8, !tbaa !150
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !109
  %i.zf = icmp eq i32 %i.ze, 0
  %i.zg = load ptr, ptr %20, align 8, !tbaa !44
  invoke void (i32, ptr, i32, ptr, i1, ptr, ...) @_Z20gmx_fatal_collectiveiPKciP10tmpi_comm_bS0_z(i32 noundef 0, ptr noundef nonnull @.str.8, i32 noundef 367, ptr noundef %i.zc, i1 noundef zeroext %i.zf, ptr noundef nonnull @.str.9, ptr noundef %i.zg) #21
          to label %bb.cx unwind label %bb.cm

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  unreachable

bb.cy:                                            ; preds = %bb.cw, %bb.cm
  %.pn = phi { ptr, i32 } [ %i.xx, %bb.cm ], [ %i.zb, %bb.cw ]
  %i.zh = load ptr, ptr %20, align 8, !tbaa !44   ; 2 uses
  %i.zi = icmp eq ptr %i.zh, %i.xt
  br i1 %i.zi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.cy
  %i.zj = load i64, ptr %i.xt, align 8, !tbaa !27
  %i.zk = add i64 %i.zj, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zk) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit110, %_ZN3gmx14LogEntryWriterD2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, %_ZN3gmx14LogEntryWriterD2Ev.exit102
  %.pn82.pn = phi { ptr, i32 } [ %i.cs, %_ZN3gmx14LogEntryWriterD2Ev.exit102 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123 ], [ %i.eb, %_ZN3gmx14LogEntryWriterD2Ev.exit110 ], [ %i.ey, %_ZN3gmx14LogEntryWriterD2Ev.exit118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %common.resume
}

declare void @_ZNK3gmx7MpiComm9sumReduceENS_8ArrayRefIiEE(ptr noundef nonnull align 8 dereferenceable(24), ptr, ptr) local_unnamed_addr #3

declare noundef zeroext i1 @_Z14dd_check_ftype19InteractionFunctionRK17ReverseTopOptions(i32 noundef, ptr noundef nonnull align 1 dereferenceable(3)) local_unnamed_addr #3

declare noundef nonnull align 1 dereferenceable(3) ptr @_ZNK17gmx_reverse_top_t7optionsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_Z20gmx_mtop_ftype_countRK10gmx_mtop_t19InteractionFunction(ptr noundef nonnull align 8 dereferenceable(768), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ...) local_unnamed_addr #3

declare void @_Z12write_dd_pdbPKclS0_RK10gmx_mtop_tRK12gmx_domdec_tiPA3_KfS9_(ptr noundef, i64 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(768), ptr noundef nonnull align 8 dereferenceable(1097), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #3

declare noundef float @_Z19dd_cutoff_multibodyPK12gmx_domdec_t(ptr noundef) local_unnamed_addr #3

declare noundef float @_Z17dd_cutoff_twobodyPK12gmx_domdec_t(ptr noundef) local_unnamed_addr #3
end_hunk_2

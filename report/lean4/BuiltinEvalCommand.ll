Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/BuiltinEvalCommand?download=true
inline.NumInlined: 5050
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval:bb.a
  %i.sw = add nuw i32 %.val.i.i1043, 1
  store i32 %i.sw, ptr %i.ri, align 4, !tbaa !14
  br label %lean_inc.exit775

bb.ko:                                            ; preds = %bb.km
  %.not.i.i1044 = icmp eq i32 %.val.i.i1043, 0
  br i1 %.not.i.i1044, label %lean_inc.exit775, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.sx = atomicrmw sub ptr %i.ri, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit775

lean_inc.exit775:                                 ; preds = %bb.kp, %bb.ko, %bb.kn, %lean_inc.exit777
  %i.sy = ptrtoint ptr %i.rg to i64
  %i.sz = and i64 %i.sy, 1
  %.not.i772 = icmp eq i64 %i.sz, 0
  br i1 %.not.i772, label %bb.kq, label %lean_inc.exit773

bb.kq:                                            ; preds = %lean_inc.exit775
  %.val.i.i1046 = load i32, ptr %i.rg, align 4, !tbaa !14 ; 3 uses
  %i.ta = icmp sgt i32 %.val.i.i1046, 0
  br i1 %i.ta, label %bb.kr, label %bb.ks, !prof !16

bb.kr:                                            ; preds = %bb.kq
  %i.tb = add nuw i32 %.val.i.i1046, 1
  store i32 %i.tb, ptr %i.rg, align 4, !tbaa !14
  br label %lean_inc.exit773

bb.ks:                                            ; preds = %bb.kq
  %.not.i.i1047 = icmp eq i32 %.val.i.i1046, 0
  br i1 %.not.i.i1047, label %lean_inc.exit773, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.tc = atomicrmw sub ptr %i.rg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit773

lean_inc.exit773:                                 ; preds = %bb.kt, %bb.ks, %bb.kr, %lean_inc.exit775
  %i.td = ptrtoint ptr %i.re to i64
  %i.te = and i64 %i.td, 1
  %.not.i770 = icmp eq i64 %i.te, 0
  br i1 %.not.i770, label %bb.ku, label %lean_inc.exit771

bb.ku:                                            ; preds = %lean_inc.exit773
  %.val.i.i1049 = load i32, ptr %i.re, align 4, !tbaa !14 ; 3 uses
  %i.tf = icmp sgt i32 %.val.i.i1049, 0
  br i1 %i.tf, label %bb.kv, label %bb.kw, !prof !16

bb.kv:                                            ; preds = %bb.ku
  %i.tg = add nuw i32 %.val.i.i1049, 1
  store i32 %i.tg, ptr %i.re, align 4, !tbaa !14
  br label %lean_inc.exit771

bb.kw:                                            ; preds = %bb.ku
  %.not.i.i1050 = icmp eq i32 %.val.i.i1049, 0
  br i1 %.not.i.i1050, label %lean_inc.exit771, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.th = atomicrmw sub ptr %i.re, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit771

lean_inc.exit771:                                 ; preds = %bb.kx, %bb.kw, %bb.kv, %lean_inc.exit773
  %i.ti = ptrtoint ptr %i.rc to i64
  %i.tj = and i64 %i.ti, 1
  %.not.i768 = icmp eq i64 %i.tj, 0
  br i1 %.not.i768, label %bb.ky, label %lean_inc.exit769

bb.ky:                                            ; preds = %lean_inc.exit771
  %.val.i.i1052 = load i32, ptr %i.rc, align 4, !tbaa !14 ; 3 uses
  %i.tk = icmp sgt i32 %.val.i.i1052, 0
  br i1 %i.tk, label %bb.kz, label %bb.la, !prof !16

bb.kz:                                            ; preds = %bb.ky
  %i.tl = add nuw i32 %.val.i.i1052, 1
  store i32 %i.tl, ptr %i.rc, align 4, !tbaa !14
  br label %lean_inc.exit769

bb.la:                                            ; preds = %bb.ky
  %.not.i.i1053 = icmp eq i32 %.val.i.i1052, 0
  br i1 %.not.i.i1053, label %lean_inc.exit769, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.tm = atomicrmw sub ptr %i.rc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit769

lean_inc.exit769:                                 ; preds = %lean_inc.exit771, %bb.kz, %bb.la, %bb.lb
  %i.tn = load i32, ptr %i.ra, align 8, !tbaa !14 ; 3 uses
  %i.to = icmp sgt i32 %i.tn, 1
  br i1 %i.to, label %bb.lc, label %bb.ld, !prof !16

bb.lc:                                            ; preds = %lean_inc.exit769
  %i.tp = add nsw i32 %i.tn, -1
  store i32 %i.tp, ptr %i.ra, align 8, !tbaa !14
  br label %lean_dec.exit830

bb.ld:                                            ; preds = %lean_inc.exit769
  %.not.i876 = icmp eq i32 %i.tn, 0
  br i1 %.not.i876, label %lean_dec.exit830, label %bb.le

bb.le:                                            ; preds = %bb.ld
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ra) #6
  br label %lean_dec.exit830

lean_dec.exit830:                                 ; preds = %bb.lc, %bb.ld, %bb.le, %bb.jq, %bb.js, %bb.jt, %bb.ju
  %.0608 = phi ptr [ %i.ra, %bb.jq ], [ %i.ra, %bb.ju ], [ %i.ra, %bb.jt ], [ %i.ra, %bb.js ], [ inttoptr (i64 1 to ptr), %bb.le ], [ inttoptr (i64 1 to ptr), %bb.ld ], [ inttoptr (i64 1 to ptr), %bb.lc ] ; 3 uses
  %i.tq = tail call ptr @l_Lean_Kernel_enableDiag(ptr noundef %i.rc, i8 noundef zeroext %i.zj) #6 ; 2 uses
  %i.tr = load atomic i32, ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33_once seq_cst, align 4, !tbaa !18
  %i.ts = icmp eq i32 %i.tr, 1
  br i1 %i.ts, label %bb.lf, label %bb.lg, !prof !16

bb.lf:                                            ; preds = %lean_dec.exit830
  %i.tt = load ptr, ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33, align 8, !tbaa !10
  br label %lean_obj_once.exit1056

bb.lg:                                            ; preds = %lean_dec.exit830
  %i.tu = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33, ptr noundef nonnull @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33_once, ptr noundef nonnull @_init_l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33) #6
  br label %lean_obj_once.exit1056

lean_obj_once.exit1056:                           ; preds = %bb.lf, %bb.lg
  %.0.i1055 = phi ptr [ %i.tt, %bb.lf ], [ %i.tu, %bb.lg ] ; 2 uses
  br i1 %i.rr, label %bb.lh, label %bb.li

bb.lh:                                            ; preds = %lean_obj_once.exit1056
  %i.tv = getelementptr inbounds nuw i8, ptr %.0608, i64 8
  %i.tw = getelementptr inbounds nuw i8, ptr %.0608, i64 48
  store ptr %.0.i1055, ptr %i.tw, align 8, !tbaa !10
  store ptr %i.tq, ptr %i.tv, align 8, !tbaa !10
  br label %bb.lk

bb.li:                                            ; preds = %lean_obj_once.exit1056
  tail call void @lean_inc_heartbeat() #6
  %i.tx = tail call noalias ptr @mi_malloc_small(i64 noundef 80) #6 ; 13 uses
  %i.ty = icmp eq ptr %i.tx, null
  br i1 %i.ty, label %bb.lj, label %lean_alloc_ctor.exit1057

bb.lj:                                            ; preds = %bb.li
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1057:                         ; preds = %bb.li
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 4
  store i32 1, ptr %i.tx, align 4, !tbaa !14
  store i32 589904, ptr %i.tz, align 4
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  store ptr %i.tq, ptr %i.ua, align 8, !tbaa !10
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  store ptr %i.re, ptr %i.ub, align 8, !tbaa !10
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tx, i64 24
  store ptr %i.rg, ptr %i.uc, align 8, !tbaa !10
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 32
  store ptr %i.ri, ptr %i.ud, align 8, !tbaa !10
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tx, i64 40
  store ptr %i.rk, ptr %i.ue, align 8, !tbaa !10
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tx, i64 48
  store ptr %.0.i1055, ptr %i.uf, align 8, !tbaa !10
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tx, i64 56
  store ptr %i.rm, ptr %i.ug, align 8, !tbaa !10
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tx, i64 64
  store ptr %i.ro, ptr %i.uh, align 8, !tbaa !10
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tx, i64 72
  store ptr %i.rq, ptr %i.ui, align 8, !tbaa !10
  br label %bb.lk

bb.lk:                                            ; preds = %lean_alloc_ctor.exit1057, %bb.lh
  %.0606 = phi ptr [ %.0608, %bb.lh ], [ %i.tx, %lean_alloc_ctor.exit1057 ]
  %i.uj = tail call ptr @lean_st_ref_set(ptr noundef %8, ptr noundef nonnull %.0606) #6 ; 0 uses
  %.val.i.i1058 = load i32, ptr %i.ye, align 8, !tbaa !14 ; 3 uses
  %i.uk = icmp sgt i32 %.val.i.i1058, 0
  br i1 %i.uk, label %bb.ll, label %bb.lm, !prof !16

bb.ll:                                            ; preds = %bb.lk
  %i.ul = add nuw i32 %.val.i.i1058, 1
  store i32 %i.ul, ptr %i.ye, align 8, !tbaa !14
  br label %lean_inc_ref.exit1060

bb.lm:                                            ; preds = %bb.lk
  %.not.i.i1059 = icmp eq i32 %.val.i.i1058, 0
  br i1 %.not.i.i1059, label %lean_inc_ref.exit1060, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.um = atomicrmw sub ptr %i.ye, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1060

bb.lo:                                            ; preds = %lean_inc_ref.exit1149
  %.val.i.i1061 = load i32, ptr %i.ye, align 8, !tbaa !14 ; 3 uses
  %i.un = icmp sgt i32 %.val.i.i1061, 0
  br i1 %i.un, label %bb.lp, label %bb.lq, !prof !16

bb.lp:                                            ; preds = %bb.lo
  %i.uo = add nuw i32 %.val.i.i1061, 1
  store i32 %i.uo, ptr %i.ye, align 8, !tbaa !14
  br label %lean_inc_ref.exit1060

bb.lq:                                            ; preds = %bb.lo
  %.not.i.i1062 = icmp eq i32 %.val.i.i1061, 0
  br i1 %.not.i.i1062, label %lean_inc_ref.exit1060, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.up = atomicrmw sub ptr %i.ye, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1060

bb.ls:                                            ; preds = %10, %9, %bb.rv
  %.0640 = phi i8 [ %i.aet, %9 ], [ %i.aet, %bb.rv ], [ 0, %10 ]
  %i.uq = tail call ptr @lean_st_ref_get(ptr noundef %8) #6 ; 4 uses
  %i.ur = load ptr, ptr %i.y, align 8, !tbaa !10  ; 10 uses
  %i.us = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !10 ; 10 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !10 ; 11 uses
  %i.uw = load ptr, ptr %i.ab, align 8, !tbaa !10 ; 11 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !10 ; 11 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !10 ; 11 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !10 ; 11 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !10 ; 11 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !10 ; 11 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %7, i64 96
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !10 ; 11 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %7, i64 104
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !10 ; 11 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %7, i64 121
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !15  ; 4 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !10 ; 10 uses
  %i.vp = load ptr, ptr @l_Lean_maxRecDepth, align 8, !tbaa !10 ; 2 uses
  %i.vq = tail call ptr @l_Lean_Option_get___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__0(ptr noundef %.0623, ptr noundef %i.vp)
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !10 ; 7 uses
  %.val.i.i1064 = load i32, ptr %i.vs, align 4, !tbaa !14 ; 3 uses
  %i.vt = icmp sgt i32 %.val.i.i1064, 0
  br i1 %i.vt, label %bb.lt, label %bb.lu, !prof !16

bb.lt:                                            ; preds = %bb.ls
  %i.vu = add nuw i32 %.val.i.i1064, 1
  store i32 %i.vu, ptr %i.vs, align 4, !tbaa !14
  br label %lean_inc_ref.exit1066

bb.lu:                                            ; preds = %bb.ls
  %.not.i.i1065 = icmp eq i32 %.val.i.i1064, 0
  br i1 %.not.i.i1065, label %lean_inc_ref.exit1066, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.vv = atomicrmw sub ptr %i.vs, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1066

lean_inc_ref.exit1066:                            ; preds = %bb.lv, %bb.lu, %bb.lt
  %i.vw = load i32, ptr %i.uq, align 8, !tbaa !14 ; 3 uses
  %i.vx = icmp sgt i32 %i.vw, 1
  br i1 %i.vx, label %bb.lw, label %bb.lx, !prof !16

bb.lw:                                            ; preds = %lean_inc_ref.exit1066
  %i.vy = add nsw i32 %i.vw, -1
  store i32 %i.vy, ptr %i.uq, align 8, !tbaa !14
  br label %lean_dec.exit826

bb.lx:                                            ; preds = %lean_inc_ref.exit1066
  %.not.i878 = icmp eq i32 %i.vw, 0
  br i1 %.not.i878, label %lean_dec.exit826, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.uq) #6
  br label %lean_dec.exit826

lean_dec.exit826:                                 ; preds = %bb.ly, %bb.lx, %bb.lw
  %.val.i.i1067 = load i32, ptr %i.vo, align 4, !tbaa !14 ; 3 uses
  %i.vz = icmp sgt i32 %.val.i.i1067, 0
  br i1 %i.vz, label %bb.lz, label %bb.ma, !prof !16

bb.lz:                                            ; preds = %lean_dec.exit826
  %i.wa = add nuw i32 %.val.i.i1067, 1
  store i32 %i.wa, ptr %i.vo, align 4, !tbaa !14
  br label %lean_inc_ref.exit1069

bb.ma:                                            ; preds = %lean_dec.exit826
  %.not.i.i1068 = icmp eq i32 %.val.i.i1067, 0
  br i1 %.not.i.i1068, label %lean_inc_ref.exit1069, label %bb.mb

bb.mb:                                            ; preds = %bb.ma
  %i.wb = atomicrmw sub ptr %i.vo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1069

lean_inc_ref.exit1069:                            ; preds = %bb.lz, %bb.ma, %bb.mb
  %i.wc = ptrtoint ptr %i.vk to i64
  %i.wd = and i64 %i.wc, 1
  %.not.i766 = icmp eq i64 %i.wd, 0               ; 2 uses
  br i1 %.not.i766, label %bb.mc, label %lean_inc.exit767

bb.mc:                                            ; preds = %lean_inc_ref.exit1069
  %.val.i.i1070 = load i32, ptr %i.vk, align 4, !tbaa !14 ; 3 uses
  %i.we = icmp sgt i32 %.val.i.i1070, 0
  br i1 %i.we, label %bb.md, label %bb.me, !prof !16

bb.md:                                            ; preds = %bb.mc
  %i.wf = add nuw i32 %.val.i.i1070, 1
  store i32 %i.wf, ptr %i.vk, align 4, !tbaa !14
  br label %lean_inc.exit767

bb.me:                                            ; preds = %bb.mc
  %.not.i.i1071 = icmp eq i32 %.val.i.i1070, 0
  br i1 %.not.i.i1071, label %lean_inc.exit767, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.wg = atomicrmw sub ptr %i.vk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit767

lean_inc.exit767:                                 ; preds = %bb.mf, %bb.me, %bb.md, %lean_inc_ref.exit1069
  %i.wh = ptrtoint ptr %i.vi to i64
  %i.wi = and i64 %i.wh, 1
  %.not.i764 = icmp eq i64 %i.wi, 0               ; 2 uses
  br i1 %.not.i764, label %bb.mg, label %lean_inc.exit765

bb.mg:                                            ; preds = %lean_inc.exit767
  %.val.i.i1073 = load i32, ptr %i.vi, align 4, !tbaa !14 ; 3 uses
  %i.wj = icmp sgt i32 %.val.i.i1073, 0
  br i1 %i.wj, label %bb.mh, label %bb.mi, !prof !16

bb.mh:                                            ; preds = %bb.mg
  %i.wk = add nuw i32 %.val.i.i1073, 1
  store i32 %i.wk, ptr %i.vi, align 4, !tbaa !14
  br label %lean_inc.exit765

bb.mi:                                            ; preds = %bb.mg
  %.not.i.i1074 = icmp eq i32 %.val.i.i1073, 0
  br i1 %.not.i.i1074, label %lean_inc.exit765, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.wl = atomicrmw sub ptr %i.vi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit765

lean_inc.exit765:                                 ; preds = %bb.mj, %bb.mi, %bb.mh, %lean_inc.exit767
  %i.wm = ptrtoint ptr %i.vg to i64
  %i.wn = and i64 %i.wm, 1
  %.not.i762 = icmp eq i64 %i.wn, 0               ; 2 uses
  br i1 %.not.i762, label %bb.mk, label %lean_inc.exit763

bb.mk:                                            ; preds = %lean_inc.exit765
  %.val.i.i1076 = load i32, ptr %i.vg, align 4, !tbaa !14 ; 3 uses
  %i.wo = icmp sgt i32 %.val.i.i1076, 0
  br i1 %i.wo, label %bb.ml, label %bb.mm, !prof !16

bb.ml:                                            ; preds = %bb.mk
  %i.wp = add nuw i32 %.val.i.i1076, 1
  store i32 %i.wp, ptr %i.vg, align 4, !tbaa !14
  br label %lean_inc.exit763

bb.mm:                                            ; preds = %bb.mk
  %.not.i.i1077 = icmp eq i32 %.val.i.i1076, 0
  br i1 %.not.i.i1077, label %lean_inc.exit763, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.wq = atomicrmw sub ptr %i.vg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit763

lean_inc.exit763:                                 ; preds = %bb.mn, %bb.mm, %bb.ml, %lean_inc.exit765
  %i.wr = ptrtoint ptr %i.ve to i64
  %i.ws = and i64 %i.wr, 1
  %.not.i760 = icmp eq i64 %i.ws, 0               ; 2 uses
  br i1 %.not.i760, label %bb.mo, label %lean_inc.exit761

bb.mo:                                            ; preds = %lean_inc.exit763
  %.val.i.i1079 = load i32, ptr %i.ve, align 4, !tbaa !14 ; 3 uses
  %i.wt = icmp sgt i32 %.val.i.i1079, 0
  br i1 %i.wt, label %bb.mp, label %bb.mq, !prof !16

bb.mp:                                            ; preds = %bb.mo
  %i.wu = add nuw i32 %.val.i.i1079, 1
  store i32 %i.wu, ptr %i.ve, align 4, !tbaa !14
  br label %lean_inc.exit761

bb.mq:                                            ; preds = %bb.mo
  %.not.i.i1080 = icmp eq i32 %.val.i.i1079, 0
  br i1 %.not.i.i1080, label %lean_inc.exit761, label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.wv = atomicrmw sub ptr %i.ve, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit761

lean_inc.exit761:                                 ; preds = %bb.mr, %bb.mq, %bb.mp, %lean_inc.exit763
  %i.ww = ptrtoint ptr %i.vc to i64
  %i.wx = and i64 %i.ww, 1
  %.not.i758 = icmp eq i64 %i.wx, 0               ; 2 uses
  br i1 %.not.i758, label %bb.ms, label %lean_inc.exit759

bb.ms:                                            ; preds = %lean_inc.exit761
  %.val.i.i1082 = load i32, ptr %i.vc, align 4, !tbaa !14 ; 3 uses
  %i.wy = icmp sgt i32 %.val.i.i1082, 0
  br i1 %i.wy, label %bb.mt, label %bb.mu, !prof !16

bb.mt:                                            ; preds = %bb.ms
  %i.wz = add nuw i32 %.val.i.i1082, 1
  store i32 %i.wz, ptr %i.vc, align 4, !tbaa !14
  br label %lean_inc.exit759

bb.mu:                                            ; preds = %bb.ms
  %.not.i.i1083 = icmp eq i32 %.val.i.i1082, 0
  br i1 %.not.i.i1083, label %lean_inc.exit759, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.xa = atomicrmw sub ptr %i.vc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit759

lean_inc.exit759:                                 ; preds = %bb.mv, %bb.mu, %bb.mt, %lean_inc.exit761
  %i.xb = ptrtoint ptr %i.va to i64
  %i.xc = and i64 %i.xb, 1
  %.not.i756 = icmp eq i64 %i.xc, 0               ; 2 uses
  br i1 %.not.i756, label %bb.mw, label %lean_inc.exit757

bb.mw:                                            ; preds = %lean_inc.exit759
  %.val.i.i1085 = load i32, ptr %i.va, align 4, !tbaa !14 ; 3 uses
  %i.xd = icmp sgt i32 %.val.i.i1085, 0
  br i1 %i.xd, label %bb.mx, label %bb.my, !prof !16

bb.mx:                                            ; preds = %bb.mw
  %i.xe = add nuw i32 %.val.i.i1085, 1
  store i32 %i.xe, ptr %i.va, align 4, !tbaa !14
  br label %lean_inc.exit757

bb.my:                                            ; preds = %bb.mw
  %.not.i.i1086 = icmp eq i32 %.val.i.i1085, 0
  br i1 %.not.i.i1086, label %lean_inc.exit757, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.xf = atomicrmw sub ptr %i.va, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit757

lean_inc.exit757:                                 ; preds = %bb.mz, %bb.my, %bb.mx, %lean_inc.exit759
  %i.xg = ptrtoint ptr %i.uy to i64
  %i.xh = and i64 %i.xg, 1
  %.not.i754 = icmp eq i64 %i.xh, 0               ; 2 uses
  br i1 %.not.i754, label %bb.na, label %lean_inc.exit755

bb.na:                                            ; preds = %lean_inc.exit757
  %.val.i.i1088 = load i32, ptr %i.uy, align 4, !tbaa !14 ; 3 uses
  %i.xi = icmp sgt i32 %.val.i.i1088, 0
  br i1 %i.xi, label %bb.nb, label %bb.nc, !prof !16

bb.nb:                                            ; preds = %bb.na
  %i.xj = add nuw i32 %.val.i.i1088, 1
  store i32 %i.xj, ptr %i.uy, align 4, !tbaa !14
  br label %lean_inc.exit755

bb.nc:                                            ; preds = %bb.na
  %.not.i.i1089 = icmp eq i32 %.val.i.i1088, 0
  br i1 %.not.i.i1089, label %lean_inc.exit755, label %bb.nd

bb.nd:                                            ; preds = %bb.nc
  %i.xk = atomicrmw sub ptr %i.uy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit755

lean_inc.exit755:                                 ; preds = %bb.nd, %bb.nc, %bb.nb, %lean_inc.exit757
  %i.xl = ptrtoint ptr %i.uw to i64
  %i.xm = and i64 %i.xl, 1
  %.not.i752 = icmp eq i64 %i.xm, 0               ; 2 uses
  br i1 %.not.i752, label %bb.ne, label %lean_inc.exit753

bb.ne:                                            ; preds = %lean_inc.exit755
  %.val.i.i1091 = load i32, ptr %i.uw, align 4, !tbaa !14 ; 3 uses
  %i.xn = icmp sgt i32 %.val.i.i1091, 0
  br i1 %i.xn, label %bb.nf, label %bb.ng, !prof !16

bb.nf:                                            ; preds = %bb.ne
  %i.xo = add nuw i32 %.val.i.i1091, 1
  store i32 %i.xo, ptr %i.uw, align 4, !tbaa !14
  br label %lean_inc.exit753

bb.ng:                                            ; preds = %bb.ne
  %.not.i.i1092 = icmp eq i32 %.val.i.i1091, 0
  br i1 %.not.i.i1092, label %lean_inc.exit753, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.xp = atomicrmw sub ptr %i.uw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit753

lean_inc.exit753:                                 ; preds = %bb.nh, %bb.ng, %bb.nf, %lean_inc.exit755
  %i.xq = ptrtoint ptr %i.uv to i64
  %i.xr = and i64 %i.xq, 1
  %.not.i750 = icmp eq i64 %i.xr, 0               ; 2 uses
  br i1 %.not.i750, label %bb.ni, label %lean_inc.exit751

bb.ni:                                            ; preds = %lean_inc.exit753
  %.val.i.i1094 = load i32, ptr %i.uv, align 4, !tbaa !14 ; 3 uses
  %i.xs = icmp sgt i32 %.val.i.i1094, 0
  br i1 %i.xs, label %bb.nj, label %bb.nk, !prof !16

bb.nj:                                            ; preds = %bb.ni
  %i.xt = add nuw i32 %.val.i.i1094, 1
  store i32 %i.xt, ptr %i.uv, align 4, !tbaa !14
  br label %lean_inc.exit751

bb.nk:                                            ; preds = %bb.ni
  %.not.i.i1095 = icmp eq i32 %.val.i.i1094, 0
  br i1 %.not.i.i1095, label %lean_inc.exit751, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.xu = atomicrmw sub ptr %i.uv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit751

lean_inc.exit751:                                 ; preds = %bb.nl, %bb.nk, %bb.nj, %lean_inc.exit753
  %.val.i.i1097 = load i32, ptr %.0623, align 4, !tbaa !14 ; 3 uses
  %i.xv = icmp sgt i32 %.val.i.i1097, 0
  br i1 %i.xv, label %bb.nm, label %bb.nn, !prof !16

bb.nm:                                            ; preds = %lean_inc.exit751
  %i.xw = add nuw i32 %.val.i.i1097, 1
  store i32 %i.xw, ptr %.0623, align 4, !tbaa !14
  br label %lean_inc_ref.exit1099

bb.nn:                                            ; preds = %lean_inc.exit751
  %.not.i.i1098 = icmp eq i32 %.val.i.i1097, 0
  br i1 %.not.i.i1098, label %lean_inc_ref.exit1099, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.xx = atomicrmw sub ptr %.0623, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1099

lean_inc_ref.exit1099:                            ; preds = %bb.nm, %bb.nn, %bb.no
  %.val.i.i1100 = load i32, ptr %i.ut, align 4, !tbaa !14 ; 3 uses
  %i.xy = icmp sgt i32 %.val.i.i1100, 0
  br i1 %i.xy, label %bb.np, label %bb.nq, !prof !16

bb.np:                                            ; preds = %lean_inc_ref.exit1099
  %i.xz = add nuw i32 %.val.i.i1100, 1
  store i32 %i.xz, ptr %i.ut, align 4, !tbaa !14
  br label %lean_inc_ref.exit1102

bb.nq:                                            ; preds = %lean_inc_ref.exit1099
  %.not.i.i1101 = icmp eq i32 %.val.i.i1100, 0
  br i1 %.not.i.i1101, label %lean_inc_ref.exit1102, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.ya = atomicrmw sub ptr %i.ut, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1102

lean_inc_ref.exit1102:                            ; preds = %bb.np, %bb.nq, %bb.nr
  %.val.i.i1103 = load i32, ptr %i.ur, align 4, !tbaa !14 ; 3 uses
  %i.yb = icmp sgt i32 %.val.i.i1103, 0
  br i1 %i.yb, label %bb.ns, label %bb.nt, !prof !16

bb.ns:                                            ; preds = %lean_inc_ref.exit1102
  %i.yc = add nuw i32 %.val.i.i1103, 1
  store i32 %i.yc, ptr %i.ur, align 4, !tbaa !14
  br label %lean_inc_ref.exit1105

bb.nt:                                            ; preds = %lean_inc_ref.exit1102
  %.not.i.i1104 = icmp eq i32 %.val.i.i1103, 0
  br i1 %.not.i.i1104, label %lean_inc_ref.exit1105, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.yd = atomicrmw sub ptr %i.ur, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1105

lean_inc_ref.exit1105:                            ; preds = %bb.ns, %bb.nt, %bb.nu
  tail call void @lean_inc_heartbeat() #6
  %i.ye = tail call noalias ptr @mi_malloc_small(i64 noundef 128) #6 ; 45 uses
  %i.yf = icmp eq ptr %i.ye, null
  br i1 %i.yf, label %bb.nv, label %lean_alloc_ctor.exit1107

bb.nv:                                            ; preds = %lean_inc_ref.exit1105
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1107:                         ; preds = %lean_inc_ref.exit1105
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 4
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ye, i64 120 ; 2 uses
  store i64 0, ptr %i.yh, align 8, !tbaa !12
  store i32 1, ptr %i.ye, align 8, !tbaa !14
  store i32 917632, ptr %i.yg, align 4
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 8 ; 2 uses
  store ptr %i.ur, ptr %i.yi, align 8, !tbaa !10
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ye, i64 16 ; 2 uses
  store ptr %i.ut, ptr %i.yj, align 8, !tbaa !10
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ye, i64 24
  store ptr %.0623, ptr %i.yk, align 8, !tbaa !10
  %i.yl = getelementptr inbounds nuw i8, ptr %i.ye, i64 32 ; 2 uses
  store ptr %i.uv, ptr %i.yl, align 8, !tbaa !10
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ye, i64 40
  store ptr %i.vq, ptr %i.ym, align 8, !tbaa !10
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ye, i64 48 ; 2 uses
  store ptr %i.uw, ptr %i.yn, align 8, !tbaa !10
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ye, i64 56 ; 2 uses
  store ptr %i.uy, ptr %i.yo, align 8, !tbaa !10
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ye, i64 64 ; 2 uses
  store ptr %i.va, ptr %i.yp, align 8, !tbaa !10
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ye, i64 72 ; 2 uses
  store ptr %i.vc, ptr %i.yq, align 8, !tbaa !10
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ye, i64 80 ; 2 uses
  store ptr %i.ve, ptr %i.yr, align 8, !tbaa !10
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ye, i64 88 ; 2 uses
  store ptr %i.vg, ptr %i.ys, align 8, !tbaa !10
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ye, i64 96 ; 2 uses
  store ptr %i.vi, ptr %i.yt, align 8, !tbaa !10
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ye, i64 104 ; 2 uses
  store ptr %i.vk, ptr %i.yu, align 8, !tbaa !10
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ye, i64 112 ; 2 uses
  store ptr %i.vo, ptr %i.yv, align 8, !tbaa !10
  store i8 %.0640, ptr %i.yh, align 8, !tbaa !15
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ye, i64 121 ; 2 uses
  store i8 %i.vm, ptr %i.yw, align 1, !tbaa !15
  %i.yx = load ptr, ptr @l_Lean_Compiler_compiler_postponeCompile, align 8, !tbaa !10 ; 4 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !10 ; 5 uses
  %i.za = ptrtoint ptr %i.yz to i64
  %i.zb = and i64 %i.za, 1
  %.not.i.i1108 = icmp eq i64 %i.zb, 0
  br i1 %.not.i.i1108, label %bb.nw, label %lean_inc.exit.i1109

bb.nw:                                            ; preds = %lean_alloc_ctor.exit1107
  %.val.i.i.i1111 = load i32, ptr %i.yz, align 4, !tbaa !14 ; 3 uses
  %i.zc = icmp sgt i32 %.val.i.i.i1111, 0
  br i1 %i.zc, label %bb.nx, label %bb.ny, !prof !16

bb.nx:                                            ; preds = %bb.nw
  %i.zd = add nuw i32 %.val.i.i.i1111, 1
  store i32 %i.zd, ptr %i.yz, align 4, !tbaa !14
  br label %lean_inc.exit.i1109

bb.ny:                                            ; preds = %bb.nw
  %.not.i.i.i1112 = icmp eq i32 %.val.i.i.i1111, 0
  br i1 %.not.i.i.i1112, label %lean_inc.exit.i1109, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.ze = atomicrmw sub ptr %i.yz, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit.i1109

lean_inc.exit.i1109:                              ; preds = %bb.nz, %bb.ny, %bb.nx, %lean_alloc_ctor.exit1107
  %i.zf = load i32, ptr %i.yx, align 8, !tbaa !14 ; 3 uses
  %i.zg = icmp sgt i32 %i.zf, 1
  br i1 %i.zg, label %bb.oa, label %bb.ob, !prof !16

bb.oa:                                            ; preds = %lean_inc.exit.i1109
  %i.zh = add nsw i32 %i.zf, -1
  store i32 %i.zh, ptr %i.yx, align 8, !tbaa !14
  br label %l_Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1.exit1113

bb.ob:                                            ; preds = %lean_inc.exit.i1109
  %.not.i6.i1110 = icmp eq i32 %i.zf, 0
  br i1 %.not.i6.i1110, label %l_Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1.exit1113, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.yx) #6
  br label %l_Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1.exit1113

l_Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1.exit1113: ; preds = %bb.oa, %bb.ob, %bb.oc
  %i.zi = tail call ptr @l_Lean_Options_set___at___00Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1_spec__1(ptr noundef nonnull %.0623, ptr noundef %i.yz, i8 noundef zeroext 0) ; 3 uses
  %i.zj = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Elab_addMacroStack___at___00Lean_throwError___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_elabTermForEval_spec__1_spec__2_spec__5(ptr noundef %i.zi, ptr noundef %i.aes) ; 5 uses
  %i.zk = tail call zeroext i8 @l_Lean_Kernel_isDiagnosticsEnabled(ptr noundef nonnull %i.vs) #6
  %i.zl = load i32, ptr %i.vs, align 4, !tbaa !14 ; 3 uses
  %i.zm = icmp sgt i32 %i.zl, 1
  br i1 %i.zm, label %bb.od, label %bb.oe, !prof !16

bb.od:                                            ; preds = %l_Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1.exit1113
  %i.zn = add nsw i32 %i.zl, -1
  store i32 %i.zn, ptr %i.vs, align 4, !tbaa !14
  br label %lean_dec_ref.exit893

bb.oe:                                            ; preds = %l_Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1.exit1113
  %.not.i892 = icmp eq i32 %i.zl, 0
  br i1 %.not.i892, label %lean_dec_ref.exit893, label %bb.of

bb.of:                                            ; preds = %bb.oe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.vs) #6
  br label %lean_dec_ref.exit893

lean_dec_ref.exit893:                             ; preds = %bb.od, %bb.oe, %bb.of
  %i.zo = icmp eq i8 %i.zk, 0
  %i.zp = icmp eq i8 %i.zj, 0                     ; 2 uses
  br i1 %i.zo, label %bb.og, label %lean_inc_ref.exit1149

bb.og:                                            ; preds = %lean_dec_ref.exit893
  br i1 %i.zp, label %bb.oh, label %lean_inc_ref.exit1149.thread1211

bb.oh:                                            ; preds = %bb.og
  %.val.i.i1114 = load i32, ptr %i.vo, align 4, !tbaa !14 ; 3 uses
  %i.zq = icmp sgt i32 %.val.i.i1114, 0
  br i1 %i.zq, label %bb.oi, label %bb.oj, !prof !16

bb.oi:                                            ; preds = %bb.oh
  %i.zr = add nuw i32 %.val.i.i1114, 1
  store i32 %i.zr, ptr %i.vo, align 4, !tbaa !14
  br label %lean_inc_ref.exit1116

bb.oj:                                            ; preds = %bb.oh
  %.not.i.i1115 = icmp eq i32 %.val.i.i1114, 0
  br i1 %.not.i.i1115, label %lean_inc_ref.exit1116, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.zs = atomicrmw sub ptr %i.vo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1116

lean_inc_ref.exit1116:                            ; preds = %bb.oi, %bb.oj, %bb.ok
  br i1 %.not.i766, label %bb.ol, label %lean_inc.exit749

bb.ol:                                            ; preds = %lean_inc_ref.exit1116
  %.val.i.i1117 = load i32, ptr %i.vk, align 4, !tbaa !14 ; 3 uses
  %i.zt = icmp sgt i32 %.val.i.i1117, 0
  br i1 %i.zt, label %bb.om, label %bb.on, !prof !16

bb.om:                                            ; preds = %bb.ol
  %i.zu = add nuw i32 %.val.i.i1117, 1
  store i32 %i.zu, ptr %i.vk, align 4, !tbaa !14
  br label %lean_inc.exit749

bb.on:                                            ; preds = %bb.ol
  %.not.i.i1118 = icmp eq i32 %.val.i.i1117, 0
  br i1 %.not.i.i1118, label %lean_inc.exit749, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.zv = atomicrmw sub ptr %i.vk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit749

lean_inc.exit749:                                 ; preds = %bb.oo, %bb.on, %bb.om, %lean_inc_ref.exit1116
  br i1 %.not.i764, label %bb.op, label %lean_inc.exit747

bb.op:                                            ; preds = %lean_inc.exit749
  %.val.i.i1120 = load i32, ptr %i.vi, align 4, !tbaa !14 ; 3 uses
  %i.zw = icmp sgt i32 %.val.i.i1120, 0
  br i1 %i.zw, label %bb.oq, label %bb.or, !prof !16

bb.oq:                                            ; preds = %bb.op
  %i.zx = add nuw i32 %.val.i.i1120, 1
  store i32 %i.zx, ptr %i.vi, align 4, !tbaa !14
  br label %lean_inc.exit747

bb.or:                                            ; preds = %bb.op
  %.not.i.i1121 = icmp eq i32 %.val.i.i1120, 0
  br i1 %.not.i.i1121, label %lean_inc.exit747, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.zy = atomicrmw sub ptr %i.vi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit747

lean_inc.exit747:                                 ; preds = %bb.os, %bb.or, %bb.oq, %lean_inc.exit749
  br i1 %.not.i762, label %bb.ot, label %lean_inc.exit745

bb.ot:                                            ; preds = %lean_inc.exit747
  %.val.i.i1123 = load i32, ptr %i.vg, align 4, !tbaa !14 ; 3 uses
  %i.zz = icmp sgt i32 %.val.i.i1123, 0
  br i1 %i.zz, label %bb.ou, label %bb.ov, !prof !16

bb.ou:                                            ; preds = %bb.ot
  %i.aaa = add nuw i32 %.val.i.i1123, 1
  store i32 %i.aaa, ptr %i.vg, align 4, !tbaa !14
  br label %lean_inc.exit745

bb.ov:                                            ; preds = %bb.ot
  %.not.i.i1124 = icmp eq i32 %.val.i.i1123, 0
  br i1 %.not.i.i1124, label %lean_inc.exit745, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.aab = atomicrmw sub ptr %i.vg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit745

lean_inc.exit745:                                 ; preds = %bb.ow, %bb.ov, %bb.ou, %lean_inc.exit747
  br i1 %.not.i760, label %bb.ox, label %lean_inc.exit743

bb.ox:                                            ; preds = %lean_inc.exit745
  %.val.i.i1126 = load i32, ptr %i.ve, align 4, !tbaa !14 ; 3 uses
  %i.aac = icmp sgt i32 %.val.i.i1126, 0
  br i1 %i.aac, label %bb.oy, label %bb.oz, !prof !16

bb.oy:                                            ; preds = %bb.ox
  %i.aad = add nuw i32 %.val.i.i1126, 1
  store i32 %i.aad, ptr %i.ve, align 4, !tbaa !14
  br label %lean_inc.exit743

bb.oz:                                            ; preds = %bb.ox
  %.not.i.i1127 = icmp eq i32 %.val.i.i1126, 0
  br i1 %.not.i.i1127, label %lean_inc.exit743, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.aae = atomicrmw sub ptr %i.ve, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit743

lean_inc.exit743:                                 ; preds = %bb.pa, %bb.oz, %bb.oy, %lean_inc.exit745
  br i1 %.not.i758, label %bb.pb, label %lean_inc.exit741

bb.pb:                                            ; preds = %lean_inc.exit743
  %.val.i.i1129 = load i32, ptr %i.vc, align 4, !tbaa !14 ; 3 uses
  %i.aaf = icmp sgt i32 %.val.i.i1129, 0
  br i1 %i.aaf, label %bb.pc, label %bb.pd, !prof !16

bb.pc:                                            ; preds = %bb.pb
  %i.aag = add nuw i32 %.val.i.i1129, 1
  store i32 %i.aag, ptr %i.vc, align 4, !tbaa !14
  br label %lean_inc.exit741

bb.pd:                                            ; preds = %bb.pb
  %.not.i.i1130 = icmp eq i32 %.val.i.i1129, 0
  br i1 %.not.i.i1130, label %lean_inc.exit741, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.aah = atomicrmw sub ptr %i.vc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit741

lean_inc.exit741:                                 ; preds = %bb.pe, %bb.pd, %bb.pc, %lean_inc.exit743
  br i1 %.not.i756, label %bb.pf, label %lean_inc.exit739

bb.pf:                                            ; preds = %lean_inc.exit741
  %.val.i.i1132 = load i32, ptr %i.va, align 4, !tbaa !14 ; 3 uses
  %i.aai = icmp sgt i32 %.val.i.i1132, 0
  br i1 %i.aai, label %bb.pg, label %bb.ph, !prof !16

bb.pg:                                            ; preds = %bb.pf
  %i.aaj = add nuw i32 %.val.i.i1132, 1
  store i32 %i.aaj, ptr %i.va, align 4, !tbaa !14
  br label %lean_inc.exit739

bb.ph:                                            ; preds = %bb.pf
  %.not.i.i1133 = icmp eq i32 %.val.i.i1132, 0
  br i1 %.not.i.i1133, label %lean_inc.exit739, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.aak = atomicrmw sub ptr %i.va, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit739

lean_inc.exit739:                                 ; preds = %bb.pi, %bb.ph, %bb.pg, %lean_inc.exit741
  br i1 %.not.i754, label %bb.pj, label %lean_inc.exit737

bb.pj:                                            ; preds = %lean_inc.exit739
  %.val.i.i1135 = load i32, ptr %i.uy, align 4, !tbaa !14 ; 3 uses
  %i.aal = icmp sgt i32 %.val.i.i1135, 0
  br i1 %i.aal, label %bb.pk, label %bb.pl, !prof !16

bb.pk:                                            ; preds = %bb.pj
  %i.aam = add nuw i32 %.val.i.i1135, 1
  store i32 %i.aam, ptr %i.uy, align 4, !tbaa !14
  br label %lean_inc.exit737

bb.pl:                                            ; preds = %bb.pj
  %.not.i.i1136 = icmp eq i32 %.val.i.i1135, 0
  br i1 %.not.i.i1136, label %lean_inc.exit737, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.aan = atomicrmw sub ptr %i.uy, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit737

lean_inc.exit737:                                 ; preds = %bb.pm, %bb.pl, %bb.pk, %lean_inc.exit739
  br i1 %.not.i752, label %bb.pn, label %lean_inc.exit735

bb.pn:                                            ; preds = %lean_inc.exit737
  %.val.i.i1138 = load i32, ptr %i.uw, align 4, !tbaa !14 ; 3 uses
  %i.aao = icmp sgt i32 %.val.i.i1138, 0
  br i1 %i.aao, label %bb.po, label %bb.pp, !prof !16

bb.po:                                            ; preds = %bb.pn
  %i.aap = add nuw i32 %.val.i.i1138, 1
  store i32 %i.aap, ptr %i.uw, align 4, !tbaa !14
  br label %lean_inc.exit735

bb.pp:                                            ; preds = %bb.pn
  %.not.i.i1139 = icmp eq i32 %.val.i.i1138, 0
  br i1 %.not.i.i1139, label %lean_inc.exit735, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.aaq = atomicrmw sub ptr %i.uw, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit735

lean_inc.exit735:                                 ; preds = %bb.pq, %bb.pp, %bb.po, %lean_inc.exit737
  br i1 %.not.i750, label %bb.pr, label %lean_inc.exit733

bb.pr:                                            ; preds = %lean_inc.exit735
  %.val.i.i1141 = load i32, ptr %i.uv, align 4, !tbaa !14 ; 3 uses
  %i.aar = icmp sgt i32 %.val.i.i1141, 0
  br i1 %i.aar, label %bb.ps, label %bb.pt, !prof !16

bb.ps:                                            ; preds = %bb.pr
  %i.aas = add nuw i32 %.val.i.i1141, 1
  store i32 %i.aas, ptr %i.uv, align 4, !tbaa !14
  br label %lean_inc.exit733

bb.pt:                                            ; preds = %bb.pr
  %.not.i.i1142 = icmp eq i32 %.val.i.i1141, 0
  br i1 %.not.i.i1142, label %lean_inc.exit733, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.aat = atomicrmw sub ptr %i.uv, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit733

lean_inc.exit733:                                 ; preds = %bb.pu, %bb.pt, %bb.ps, %lean_inc.exit735
  %.val.i.i1144 = load i32, ptr %i.ut, align 4, !tbaa !14 ; 3 uses
  %i.aau = icmp sgt i32 %.val.i.i1144, 0
  br i1 %i.aau, label %bb.pv, label %bb.pw, !prof !16

bb.pv:                                            ; preds = %lean_inc.exit733
  %i.aav = add nuw i32 %.val.i.i1144, 1
  store i32 %i.aav, ptr %i.ut, align 4, !tbaa !14
  br label %lean_inc_ref.exit1146

bb.pw:                                            ; preds = %lean_inc.exit733
  %.not.i.i1145 = icmp eq i32 %.val.i.i1144, 0
  br i1 %.not.i.i1145, label %lean_inc_ref.exit1146, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.aaw = atomicrmw sub ptr %i.ut, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1146

lean_inc_ref.exit1146:                            ; preds = %bb.pv, %bb.pw, %bb.px
  %.val.i.i1147 = load i32, ptr %i.ur, align 4, !tbaa !14 ; 3 uses
  %i.aax = icmp sgt i32 %.val.i.i1147, 0
  br i1 %i.aax, label %bb.py, label %bb.pz, !prof !16

bb.py:                                            ; preds = %lean_inc_ref.exit1146
  %i.aay = add nuw i32 %.val.i.i1147, 1
  store i32 %i.aay, ptr %i.ur, align 4, !tbaa !14
  br label %lean_dec_ref.exit895

bb.pz:                                            ; preds = %lean_inc_ref.exit1146
  %.not.i.i1148 = icmp eq i32 %.val.i.i1147, 0
  br i1 %.not.i.i1148, label %lean_dec_ref.exit895, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %i.aaz = atomicrmw sub ptr %i.ur, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_dec_ref.exit895

9:                                                ; preds = %lean_dec_ref.exit891
  br i1 %i.aez, label %.thread1231, label %bb.ls

.thread1231:                                      ; preds = %10, %9
  %i.aba = tail call ptr @lean_st_ref_take(ptr noundef %8) #6 ; 17 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !10 ; 5 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !10 ; 5 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aba, i64 24
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !10 ; 5 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aba, i64 32
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !10 ; 5 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aba, i64 40
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !10 ; 5 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aba, i64 56
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !10 ; 5 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aba, i64 64
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !10 ; 5 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aba, i64 72
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !10 ; 5 uses
  %.val908 = load i32, ptr %i.aba, align 8, !tbaa !14
  %i.abr = icmp eq i32 %.val908, 1                ; 2 uses
  br i1 %i.abr, label %bb.qb, label %bb.qg

bb.qb:                                            ; preds = %.thread1231
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aba, i64 48
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !10 ; 4 uses
  %i.abu = ptrtoint ptr %i.abt to i64
  %i.abv = and i64 %i.abu, 1
  %.not.i823 = icmp eq i64 %i.abv, 0
  br i1 %.not.i823, label %bb.qc, label %lean_dec.exit824

bb.qc:                                            ; preds = %bb.qb
  %i.abw = load i32, ptr %i.abt, align 4, !tbaa !14 ; 3 uses
  %i.abx = icmp sgt i32 %i.abw, 1
  br i1 %i.abx, label %bb.qd, label %bb.qe, !prof !16

bb.qd:                                            ; preds = %bb.qc
  %i.aby = add nsw i32 %i.abw, -1
  store i32 %i.aby, ptr %i.abt, align 4, !tbaa !14
  br label %lean_dec.exit824

bb.qe:                                            ; preds = %bb.qc
  %.not.i880 = icmp eq i32 %i.abw, 0
  br i1 %.not.i880, label %lean_dec.exit824, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.abt) #6
  br label %lean_dec.exit824

bb.qg:                                            ; preds = %.thread1231
  %i.abz = ptrtoint ptr %i.abq to i64
  %i.aca = and i64 %i.abz, 1
  %.not.i730 = icmp eq i64 %i.aca, 0
  br i1 %.not.i730, label %bb.qh, label %lean_inc.exit731

bb.qh:                                            ; preds = %bb.qg
  %.val.i.i1150 = load i32, ptr %i.abq, align 4, !tbaa !14 ; 3 uses
  %i.acb = icmp sgt i32 %.val.i.i1150, 0
  br i1 %i.acb, label %bb.qi, label %bb.qj, !prof !16

bb.qi:                                            ; preds = %bb.qh
  %i.acc = add nuw i32 %.val.i.i1150, 1
  store i32 %i.acc, ptr %i.abq, align 4, !tbaa !14
  br label %lean_inc.exit731

bb.qj:                                            ; preds = %bb.qh
  %.not.i.i1151 = icmp eq i32 %.val.i.i1150, 0
  br i1 %.not.i.i1151, label %lean_inc.exit731, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.acd = atomicrmw sub ptr %i.abq, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit731

lean_inc.exit731:                                 ; preds = %bb.qk, %bb.qj, %bb.qi, %bb.qg
  %i.ace = ptrtoint ptr %i.abo to i64
  %i.acf = and i64 %i.ace, 1
  %.not.i728 = icmp eq i64 %i.acf, 0
  br i1 %.not.i728, label %bb.ql, label %lean_inc.exit729

bb.ql:                                            ; preds = %lean_inc.exit731
  %.val.i.i1153 = load i32, ptr %i.abo, align 4, !tbaa !14 ; 3 uses
  %i.acg = icmp sgt i32 %.val.i.i1153, 0
  br i1 %i.acg, label %bb.qm, label %bb.qn, !prof !16

bb.qm:                                            ; preds = %bb.ql
  %i.ach = add nuw i32 %.val.i.i1153, 1
  store i32 %i.ach, ptr %i.abo, align 4, !tbaa !14
  br label %lean_inc.exit729

bb.qn:                                            ; preds = %bb.ql
  %.not.i.i1154 = icmp eq i32 %.val.i.i1153, 0
  br i1 %.not.i.i1154, label %lean_inc.exit729, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.aci = atomicrmw sub ptr %i.abo, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit729

lean_inc.exit729:                                 ; preds = %bb.qo, %bb.qn, %bb.qm, %lean_inc.exit731
  %i.acj = ptrtoint ptr %i.abm to i64
  %i.ack = and i64 %i.acj, 1
  %.not.i726 = icmp eq i64 %i.ack, 0
  br i1 %.not.i726, label %bb.qp, label %lean_inc.exit727

bb.qp:                                            ; preds = %lean_inc.exit729
  %.val.i.i1156 = load i32, ptr %i.abm, align 4, !tbaa !14 ; 3 uses
  %i.acl = icmp sgt i32 %.val.i.i1156, 0
  br i1 %i.acl, label %bb.qq, label %bb.qr, !prof !16

bb.qq:                                            ; preds = %bb.qp
  %i.acm = add nuw i32 %.val.i.i1156, 1
  store i32 %i.acm, ptr %i.abm, align 4, !tbaa !14
  br label %lean_inc.exit727

bb.qr:                                            ; preds = %bb.qp
  %.not.i.i1157 = icmp eq i32 %.val.i.i1156, 0
  br i1 %.not.i.i1157, label %lean_inc.exit727, label %bb.qs

bb.qs:                                            ; preds = %bb.qr
  %i.acn = atomicrmw sub ptr %i.abm, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit727

lean_inc.exit727:                                 ; preds = %bb.qs, %bb.qr, %bb.qq, %lean_inc.exit729
  %i.aco = ptrtoint ptr %i.abk to i64
  %i.acp = and i64 %i.aco, 1
  %.not.i724 = icmp eq i64 %i.acp, 0
  br i1 %.not.i724, label %bb.qt, label %lean_inc.exit725

bb.qt:                                            ; preds = %lean_inc.exit727
  %.val.i.i1159 = load i32, ptr %i.abk, align 4, !tbaa !14 ; 3 uses
  %i.acq = icmp sgt i32 %.val.i.i1159, 0
  br i1 %i.acq, label %bb.qu, label %bb.qv, !prof !16

bb.qu:                                            ; preds = %bb.qt
  %i.acr = add nuw i32 %.val.i.i1159, 1
  store i32 %i.acr, ptr %i.abk, align 4, !tbaa !14
  br label %lean_inc.exit725

bb.qv:                                            ; preds = %bb.qt
  %.not.i.i1160 = icmp eq i32 %.val.i.i1159, 0
  br i1 %.not.i.i1160, label %lean_inc.exit725, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.acs = atomicrmw sub ptr %i.abk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit725

lean_inc.exit725:                                 ; preds = %bb.qw, %bb.qv, %bb.qu, %lean_inc.exit727
  %i.act = ptrtoint ptr %i.abi to i64
  %i.acu = and i64 %i.act, 1
  %.not.i722 = icmp eq i64 %i.acu, 0
  br i1 %.not.i722, label %bb.qx, label %lean_inc.exit723

bb.qx:                                            ; preds = %lean_inc.exit725
  %.val.i.i1162 = load i32, ptr %i.abi, align 4, !tbaa !14 ; 3 uses
  %i.acv = icmp sgt i32 %.val.i.i1162, 0
  br i1 %i.acv, label %bb.qy, label %bb.qz, !prof !16

bb.qy:                                            ; preds = %bb.qx
  %i.acw = add nuw i32 %.val.i.i1162, 1
  store i32 %i.acw, ptr %i.abi, align 4, !tbaa !14
  br label %lean_inc.exit723

bb.qz:                                            ; preds = %bb.qx
  %.not.i.i1163 = icmp eq i32 %.val.i.i1162, 0
  br i1 %.not.i.i1163, label %lean_inc.exit723, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.acx = atomicrmw sub ptr %i.abi, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit723

lean_inc.exit723:                                 ; preds = %bb.ra, %bb.qz, %bb.qy, %lean_inc.exit725
  %i.acy = ptrtoint ptr %i.abg to i64
  %i.acz = and i64 %i.acy, 1
  %.not.i720 = icmp eq i64 %i.acz, 0
  br i1 %.not.i720, label %bb.rb, label %lean_inc.exit721

bb.rb:                                            ; preds = %lean_inc.exit723
  %.val.i.i1165 = load i32, ptr %i.abg, align 4, !tbaa !14 ; 3 uses
  %i.ada = icmp sgt i32 %.val.i.i1165, 0
  br i1 %i.ada, label %bb.rc, label %bb.rd, !prof !16

bb.rc:                                            ; preds = %bb.rb
  %i.adb = add nuw i32 %.val.i.i1165, 1
  store i32 %i.adb, ptr %i.abg, align 4, !tbaa !14
  br label %lean_inc.exit721

bb.rd:                                            ; preds = %bb.rb
  %.not.i.i1166 = icmp eq i32 %.val.i.i1165, 0
  br i1 %.not.i.i1166, label %lean_inc.exit721, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.adc = atomicrmw sub ptr %i.abg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit721

lean_inc.exit721:                                 ; preds = %bb.re, %bb.rd, %bb.rc, %lean_inc.exit723
  %i.add = ptrtoint ptr %i.abe to i64
  %i.ade = and i64 %i.add, 1
  %.not.i718 = icmp eq i64 %i.ade, 0
  br i1 %.not.i718, label %bb.rf, label %lean_inc.exit719

bb.rf:                                            ; preds = %lean_inc.exit721
  %.val.i.i1168 = load i32, ptr %i.abe, align 4, !tbaa !14 ; 3 uses
  %i.adf = icmp sgt i32 %.val.i.i1168, 0
  br i1 %i.adf, label %bb.rg, label %bb.rh, !prof !16

bb.rg:                                            ; preds = %bb.rf
  %i.adg = add nuw i32 %.val.i.i1168, 1
  store i32 %i.adg, ptr %i.abe, align 4, !tbaa !14
  br label %lean_inc.exit719

bb.rh:                                            ; preds = %bb.rf
  %.not.i.i1169 = icmp eq i32 %.val.i.i1168, 0
  br i1 %.not.i.i1169, label %lean_inc.exit719, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.adh = atomicrmw sub ptr %i.abe, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit719

lean_inc.exit719:                                 ; preds = %bb.ri, %bb.rh, %bb.rg, %lean_inc.exit721
  %i.adi = ptrtoint ptr %i.abc to i64
  %i.adj = and i64 %i.adi, 1
  %.not.i716 = icmp eq i64 %i.adj, 0
  br i1 %.not.i716, label %bb.rj, label %lean_inc.exit717

bb.rj:                                            ; preds = %lean_inc.exit719
  %.val.i.i1171 = load i32, ptr %i.abc, align 4, !tbaa !14 ; 3 uses
  %i.adk = icmp sgt i32 %.val.i.i1171, 0
  br i1 %i.adk, label %bb.rk, label %bb.rl, !prof !16

bb.rk:                                            ; preds = %bb.rj
  %i.adl = add nuw i32 %.val.i.i1171, 1
  store i32 %i.adl, ptr %i.abc, align 4, !tbaa !14
  br label %lean_inc.exit717

bb.rl:                                            ; preds = %bb.rj
  %.not.i.i1172 = icmp eq i32 %.val.i.i1171, 0
  br i1 %.not.i.i1172, label %lean_inc.exit717, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.adm = atomicrmw sub ptr %i.abc, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit717

lean_inc.exit717:                                 ; preds = %lean_inc.exit719, %bb.rk, %bb.rl, %bb.rm
  %i.adn = load i32, ptr %i.aba, align 8, !tbaa !14 ; 3 uses
  %i.ado = icmp sgt i32 %i.adn, 1
  br i1 %i.ado, label %bb.rn, label %bb.ro, !prof !16

bb.rn:                                            ; preds = %lean_inc.exit717
  %i.adp = add nsw i32 %i.adn, -1
  store i32 %i.adp, ptr %i.aba, align 8, !tbaa !14
  br label %lean_dec.exit824

bb.ro:                                            ; preds = %lean_inc.exit717
  %.not.i882 = icmp eq i32 %i.adn, 0
  br i1 %.not.i882, label %lean_dec.exit824, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aba) #6
  br label %lean_dec.exit824

lean_dec.exit824:                                 ; preds = %bb.rn, %bb.ro, %bb.rp, %bb.qb, %bb.qd, %bb.qe, %bb.qf
  %.0605 = phi ptr [ %i.aba, %bb.qb ], [ %i.aba, %bb.qf ], [ %i.aba, %bb.qe ], [ %i.aba, %bb.qd ], [ inttoptr (i64 1 to ptr), %bb.rp ], [ inttoptr (i64 1 to ptr), %bb.ro ], [ inttoptr (i64 1 to ptr), %bb.rn ] ; 3 uses
  %i.adq = tail call ptr @l_Lean_Kernel_enableDiag(ptr noundef %i.abc, i8 noundef zeroext %i.aet) #6 ; 2 uses
  %i.adr = load atomic i32, ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33_once seq_cst, align 4, !tbaa !18
  %i.ads = icmp eq i32 %i.adr, 1
  br i1 %i.ads, label %bb.rq, label %bb.rr, !prof !16

bb.rq:                                            ; preds = %lean_dec.exit824
  %i.adt = load ptr, ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33, align 8, !tbaa !10
  br label %lean_obj_once.exit1175

bb.rr:                                            ; preds = %lean_dec.exit824
  %i.adu = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33, ptr noundef nonnull @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33_once, ptr noundef nonnull @_init_l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33) #6
  br label %lean_obj_once.exit1175

lean_obj_once.exit1175:                           ; preds = %bb.rq, %bb.rr
  %.0.i1174 = phi ptr [ %i.adt, %bb.rq ], [ %i.adu, %bb.rr ] ; 2 uses
  br i1 %i.abr, label %bb.rs, label %bb.rt

bb.rs:                                            ; preds = %lean_obj_once.exit1175
  %i.adv = getelementptr inbounds nuw i8, ptr %.0605, i64 8
  %i.adw = getelementptr inbounds nuw i8, ptr %.0605, i64 48
  store ptr %.0.i1174, ptr %i.adw, align 8, !tbaa !10
  store ptr %i.adq, ptr %i.adv, align 8, !tbaa !10
  br label %bb.rv

bb.rt:                                            ; preds = %lean_obj_once.exit1175
  tail call void @lean_inc_heartbeat() #6
  %i.adx = tail call noalias ptr @mi_malloc_small(i64 noundef 80) #6 ; 13 uses
  %i.ady = icmp eq ptr %i.adx, null
  br i1 %i.ady, label %bb.ru, label %lean_alloc_ctor.exit1176

bb.ru:                                            ; preds = %bb.rt
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1176:                         ; preds = %bb.rt
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adx, i64 4
  store i32 1, ptr %i.adx, align 4, !tbaa !14
  store i32 589904, ptr %i.adz, align 4
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  store ptr %i.adq, ptr %i.aea, align 8, !tbaa !10
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  store ptr %i.abe, ptr %i.aeb, align 8, !tbaa !10
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adx, i64 24
  store ptr %i.abg, ptr %i.aec, align 8, !tbaa !10
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adx, i64 32
  store ptr %i.abi, ptr %i.aed, align 8, !tbaa !10
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adx, i64 40
  store ptr %i.abk, ptr %i.aee, align 8, !tbaa !10
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adx, i64 48
  store ptr %.0.i1174, ptr %i.aef, align 8, !tbaa !10
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adx, i64 56
  store ptr %i.abm, ptr %i.aeg, align 8, !tbaa !10
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adx, i64 64
  store ptr %i.abo, ptr %i.aeh, align 8, !tbaa !10
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adx, i64 72
  store ptr %i.abq, ptr %i.aei, align 8, !tbaa !10
  br label %bb.rv

bb.rv:                                            ; preds = %lean_alloc_ctor.exit1176, %bb.rs
  %.0603 = phi ptr [ %.0605, %bb.rs ], [ %i.adx, %lean_alloc_ctor.exit1176 ]
  %i.aej = tail call ptr @lean_st_ref_set(ptr noundef %8, ptr noundef nonnull %.0603) #6 ; 0 uses
  br label %bb.ls

bb.rw:                                            ; preds = %l_Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1.exit946, %l_Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1.exit
  %.0623 = phi ptr [ %i.dv, %l_Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1.exit ], [ %i.ej, %l_Lean_Option_set___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval_spec__1.exit946 ] ; 7 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ael = load ptr, ptr %i.aek, align 8, !tbaa !10 ; 7 uses
  %.val.i.i1177 = load i32, ptr %i.ael, align 4, !tbaa !14 ; 3 uses
  %i.aem = icmp sgt i32 %.val.i.i1177, 0
  br i1 %i.aem, label %bb.rx, label %bb.ry, !prof !16

bb.rx:                                            ; preds = %bb.rw
  %i.aen = add nuw i32 %.val.i.i1177, 1
  store i32 %i.aen, ptr %i.ael, align 4, !tbaa !14
  br label %lean_inc_ref.exit1179

bb.ry:                                            ; preds = %bb.rw
  %.not.i.i1178 = icmp eq i32 %.val.i.i1177, 0
  br i1 %.not.i.i1178, label %lean_inc_ref.exit1179, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.aeo = atomicrmw sub ptr %i.ael, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc_ref.exit1179

lean_inc_ref.exit1179:                            ; preds = %bb.rz, %bb.ry, %bb.rx
  %i.aep = load i32, ptr %i.bk, align 8, !tbaa !14 ; 3 uses
  %i.aeq = icmp sgt i32 %i.aep, 1
  br i1 %i.aeq, label %bb.sa, label %bb.sb, !prof !16

bb.sa:                                            ; preds = %lean_inc_ref.exit1179
  %i.aer = add nsw i32 %i.aep, -1
  store i32 %i.aer, ptr %i.bk, align 8, !tbaa !14
  br label %lean_dec.exit820

bb.sb:                                            ; preds = %lean_inc_ref.exit1179
  %.not.i884 = icmp eq i32 %i.aep, 0
  br i1 %.not.i884, label %lean_dec.exit820, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.bk) #6
  br label %lean_dec.exit820

lean_dec.exit820:                                 ; preds = %bb.sc, %bb.sb, %bb.sa
  %i.aes = load ptr, ptr @l_Lean_diagnostics, align 8, !tbaa !10 ; 2 uses
  %i.aet = tail call zeroext i8 @l_Lean_Option_get___at___00Lean_Elab_addMacroStack___at___00Lean_throwError___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_elabTermForEval_spec__1_spec__2_spec__5(ptr noundef %.0623, ptr noundef %i.aes) ; 4 uses
  %i.aeu = tail call zeroext i8 @l_Lean_Kernel_isDiagnosticsEnabled(ptr noundef nonnull %i.ael) #6
  %i.aev = load i32, ptr %i.ael, align 4, !tbaa !14 ; 3 uses
  %i.aew = icmp sgt i32 %i.aev, 1
  br i1 %i.aew, label %bb.sd, label %bb.se, !prof !16

bb.sd:                                            ; preds = %lean_dec.exit820
  %i.aex = add nsw i32 %i.aev, -1
  store i32 %i.aex, ptr %i.ael, align 4, !tbaa !14
  br label %lean_dec_ref.exit891

bb.se:                                            ; preds = %lean_dec.exit820
  %.not.i890 = icmp eq i32 %i.aev, 0
  br i1 %.not.i890, label %lean_dec_ref.exit891, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ael) #6
  br label %lean_dec_ref.exit891

lean_dec_ref.exit891:                             ; preds = %bb.sd, %bb.se, %bb.sf
  %i.aey = icmp eq i8 %i.aeu, 0
  %i.aez = icmp eq i8 %i.aet, 0                   ; 2 uses
  br i1 %i.aey, label %10, label %9

10:                                               ; preds = %lean_dec_ref.exit891
  br i1 %i.aez, label %bb.ls, label %.thread1231

bb.sg:                                            ; preds = %lean_obj_tag.exit
  %i.afa = ptrtoint ptr %0 to i64
  %i.afb = and i64 %i.afa, 1
  %.not.i817 = icmp eq i64 %i.afb, 0
  br i1 %.not.i817, label %bb.sh, label %lean_dec.exit818

bb.sh:                                            ; preds = %bb.sg
  %i.afc = load i32, ptr %0, align 4, !tbaa !14   ; 3 uses
  %i.afd = icmp sgt i32 %i.afc, 1
  br i1 %i.afd, label %bb.si, label %bb.sj, !prof !16

bb.si:                                            ; preds = %bb.sh
  %i.afe = add nsw i32 %i.afc, -1
  store i32 %i.afe, ptr %0, align 4, !tbaa !14
  br label %lean_dec.exit818

bb.sj:                                            ; preds = %bb.sh
  %.not.i886 = icmp eq i32 %i.afc, 0
  br i1 %.not.i886, label %lean_dec.exit818, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #6
  br label %lean_dec.exit818

lean_dec.exit818:                                 ; preds = %bb.sk, %bb.sj, %bb.si, %bb.sg
  %i.aff = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !10 ; 5 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !14
  %i.afh = icmp eq i32 %.val, 1
  br i1 %i.afh, label %lean_dec_ref.exit905, label %bb.sl

bb.sl:                                            ; preds = %lean_dec.exit818
  %i.afi = ptrtoint ptr %i.afg to i64
  %i.afj = and i64 %i.afi, 1
  %.not.i = icmp eq i64 %i.afj, 0
  br i1 %.not.i, label %bb.sm, label %lean_inc.exit

bb.sm:                                            ; preds = %bb.sl
  %.val.i.i1180 = load i32, ptr %i.afg, align 4, !tbaa !14 ; 3 uses
  %i.afk = icmp sgt i32 %.val.i.i1180, 0
  br i1 %i.afk, label %bb.sn, label %bb.so, !prof !16

bb.sn:                                            ; preds = %bb.sm
  %i.afl = add nuw i32 %.val.i.i1180, 1
  store i32 %i.afl, ptr %i.afg, align 4, !tbaa !14
  br label %lean_inc.exit

bb.so:                                            ; preds = %bb.sm
  %.not.i.i1181 = icmp eq i32 %.val.i.i1180, 0
  br i1 %.not.i.i1181, label %lean_inc.exit, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.afm = atomicrmw sub ptr %i.afg, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit

lean_inc.exit:                                    ; preds = %bb.sp, %bb.so, %bb.sn, %bb.sl
  br i1 %.not.i914, label %bb.sq, label %bb.su

bb.sq:                                            ; preds = %lean_inc.exit
  %i.afn = load i32, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %i.afo = icmp sgt i32 %i.afn, 1
  br i1 %i.afo, label %bb.sr, label %bb.ss, !prof !16

bb.sr:                                            ; preds = %bb.sq
  %i.afp = add nsw i32 %i.afn, -1
  store i32 %i.afp, ptr %i.a, align 8, !tbaa !14
  br label %bb.su

bb.ss:                                            ; preds = %bb.sq
  %.not.i888 = icmp eq i32 %i.afn, 0
  br i1 %.not.i888, label %bb.su, label %bb.st

bb.st:                                            ; preds = %bb.ss
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.a) #6
  br label %bb.su

bb.su:                                            ; preds = %lean_inc.exit, %bb.sr, %bb.ss, %bb.st
  tail call void @lean_inc_heartbeat() #6
  %i.afq = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #6 ; 5 uses
  %i.afr = icmp eq ptr %i.afq, null
  br i1 %i.afr, label %bb.sv, label %lean_alloc_ctor.exit1183

bb.sv:                                            ; preds = %bb.su
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit1183:                         ; preds = %bb.su
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afq, i64 4
  store i32 1, ptr %i.afq, align 4, !tbaa !14
  store i32 16842768, ptr %i.afs, align 4
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  store ptr %i.afg, ptr %i.aft, align 8, !tbaa !10
  br label %lean_dec_ref.exit905

lean_dec_ref.exit905:                             ; preds = %lean_dec.exit818, %lean_dec.exit834, %lean_dec_ref.exit901, %bb.fb, %bb.fa, %bb.ez, %lean_alloc_ctor.exit1183, %lean_alloc_ctor.exit994, %lean_alloc_ctor.exit990, %bb.gy, %bb.fy, %bb.fz, %bb.gt
  %.10 = phi ptr [ %i.mm, %lean_dec_ref.exit901 ], [ %i.nh, %lean_alloc_ctor.exit990 ], [ %i.fe, %lean_dec.exit834 ], [ %i.kr, %bb.fb ], [ %i.mb, %bb.fz ], [ %.0618, %bb.fy ], [ %i.nb, %bb.gt ], [ %.0620, %bb.gy ], [ %i.oe, %lean_alloc_ctor.exit994 ], [ %i.afq, %lean_alloc_ctor.exit1183 ], [ %i.kr, %bb.ez ], [ %i.kr, %bb.fa ], [ %i.a, %lean_dec.exit818 ]
  ret ptr %.10
}

declare ptr @l_Lean_Elab_Term_exprToSyntax(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_SourceInfo_fromRef(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__10() #0 {
bb.a:
  %i.a = tail call ptr @l_Array_mkArray0(ptr noundef nonnull inttoptr (i64 1 to ptr)) #6
  ret ptr %i.a
}

declare ptr @l_Lean_Syntax_node2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias nonnull ptr @_init_l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__19() #0 {
bb.a:
  %i.a = load ptr, ptr @l_Lean_Options_empty, align 8, !tbaa !10
  tail call void @lean_inc_heartbeat() #6
  %i.b = tail call noalias ptr @mi_malloc_small(i64 noundef 96) #6 ; 15 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %lean_alloc_ctor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @lean_internal_panic_out_of_memory() #7
  unreachable

lean_alloc_ctor.exit:                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.e, align 8, !tbaa !12
  store i32 1, ptr %i.b, align 8, !tbaa !14
  store i32 655456, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @l_Lean_addTrace___at___00__private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_elabTermForEval_spec__0___redArg___closed__1_value, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr inttoptr (i64 1 to ptr), ptr %i.j, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__17_value, ptr %i.k, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__17_value, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr inttoptr (i64 1 to ptr), ptr %i.m, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr inttoptr (i64 1 to ptr), ptr %i.n, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr inttoptr (i64 1 to ptr), ptr %i.o, align 8, !tbaa !10
  ret ptr %i.b
}

declare ptr @l_Lean_Syntax_node4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Name_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lean_mk_syntax_ident(ptr noundef) local_unnamed_addr #2

declare ptr @lean_array_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Syntax_node5(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Elab_Command_mkDefViewOfDef(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_mkPrivateName(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @l_Lean_Elab_Term_elabMutualDef(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @l_Lean_Environment_contains(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__26() #0 {
bb.a:
  %i.a = tail call ptr @l_mkPanicMessageWithDecl(ptr noundef nonnull @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__23_value, ptr noundef nonnull @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__24_value, ptr noundef nonnull inttoptr (i64 213 to ptr), ptr noundef nonnull inttoptr (i64 5 to ptr), ptr noundef nonnull @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__25_value) #6
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal ptr @_init_l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__30() #0 {
bb.a:
  %i.a = tail call ptr @l_Lean_stringToMessageData(ptr noundef nonnull @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__29_value) #6
  ret ptr %i.a
}

declare ptr @l_Lean_Kernel_enableDiag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias nonnull ptr @_init_l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__33() #0 {
bb.a:
  %i.a = load atomic i32, ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__32_once seq_cst, align 4, !tbaa !18
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @l___private_Lean_Elab_BuiltinEvalCommand_0__Lean_Elab_Command_addAndCompileExprForEval___closed__32, align 8, !tbaa !10
  br label %lean_obj_once.exit

end_hunk_0

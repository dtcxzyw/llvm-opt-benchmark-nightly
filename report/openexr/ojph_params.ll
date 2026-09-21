Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_params?download=true
inline.NumInlined: 308
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4ojph5local9param_atk7get_atkEi:bb.a
  store i16 1, ptr %i.r, align 4, !tbaa !56
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.t, align 2, !tbaa !56
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !133
  store i8 2, ptr %i.u, align 4, !tbaa !56
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i16 -1, ptr %i.w, align 4, !tbaa !56
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  store i16 1, ptr %i.y, align 2, !tbaa !56
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i8 1, ptr %i.aa, align 4, !tbaa !56
  br label %.critedge

bb.e:                                             ; preds = %.preheader27, %bb.f
  %.020 = phi ptr [ %i.ag, %bb.f ], [ %0, %.preheader27 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.020, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !78
  %i.ad = and i16 %i.ac, 255
  %i.ae = zext nneg i16 %i.ad to i32
  %.not18 = icmp eq i32 %1, %i.ae
  br i1 %.not18, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.020, i64 80
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !134 ; 2 uses
  %cond = icmp eq ptr %i.ag, null
  br i1 %cond, label %bb.g, label %bb.e, !llvm.loop !176

bb.g:                                             ; preds = %bb.f
  %or.cond = icmp ult i32 %1, 2
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.g, %.preheader
  %.0.i = phi ptr [ %i.ai, %.preheader ], [ %0, %bb.g ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !134 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.h, label %.preheader, !llvm.loop !8

bb.h:                                             ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !135 ; 5 uses
  %.not11.i = icmp eq ptr %i.al, null
  br i1 %.not11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !134
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !134
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !135
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !133
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ao = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #20 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ao, i8 0, i64 9, i1 false)
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !133
  store i32 6, ptr %i.ar, align 8, !tbaa !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ap, i8 0, i64 48, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !134
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.at = phi ptr [ %i.ap, %bb.j ], [ %.pre.i, %bb.i ] ; 3 uses
  %i.au = phi ptr [ %i.ao, %bb.j ], [ %i.al, %bb.i ] ; 18 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.au, i8 0, i64 9, i1 false)
  %i.av = icmp eq ptr %i.at, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 28 ; 3 uses
  %i.ax = icmp eq ptr %i.at, %i.aw
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.l, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !136
  %i.ay = zext i32 %.pre.i.i to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  br label %_ZN4ojph5local9param_atk10add_objectEv.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store ptr %i.aw, ptr %i.ba, align 8, !tbaa !133
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i32 6, ptr %i.bb, align 8, !tbaa !136
  br label %_ZN4ojph5local9param_atk10add_objectEv.exit

_ZN4ojph5local9param_atk10add_objectEv.exit:      ; preds = %._crit_edge.i.i, %bb.l
  %i.bc = phi i64 [ %i.az, %._crit_edge.i.i ], [ 48, %bb.l ]
  %i.bd = phi ptr [ %i.at, %._crit_edge.i.i ], [ %i.aw, %bb.l ]
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bd, i8 0, i64 %i.bc, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store ptr null, ptr %i.be, align 8, !tbaa !134
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store ptr %0, ptr %i.bf, align 8, !tbaa !137
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store ptr null, ptr %i.bg, align 8, !tbaa !135
  %i.bh = icmp eq i32 %1, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 2 ; 2 uses
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4ojph5local9param_atk10add_objectEv.exit
  store i16 18944, ptr %i.bi, align 2, !tbaa !78
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float f0x3F9D7658, ptr %i.bj, align 4, !tbaa !131
  %i.bk = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i8 4, ptr %i.bk, align 8, !tbaa !132
  store i16 29, ptr %i.au, align 8, !tbaa !130
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !133
  store float f0x3EE31355, ptr %i.bm, align 4, !tbaa !56
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !133
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store float f0x3F620676, ptr %i.bo, align 4, !tbaa !56
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !133
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store float f0xBD5901AE, ptr %i.bq, align 4, !tbaa !56
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !133
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store float f0xBFCB0673, ptr %i.bs, align 4, !tbaa !56
  br label %.critedge

bb.n:                                             ; preds = %_ZN4ojph5local9param_atk10add_objectEv.exit
  store i16 22529, ptr %i.bi, align 2, !tbaa !78
  %i.bt = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i8 2, ptr %i.bt, align 8, !tbaa !132
  store i16 13, ptr %i.au, align 8, !tbaa !130
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 6 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !133
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i16 1, ptr %i.bw, align 4, !tbaa !56
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !133
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  store i16 2, ptr %i.by, align 2, !tbaa !56
  %i.bz = load ptr, ptr %i.bu, align 8, !tbaa !133
  store i8 2, ptr %i.bz, align 4, !tbaa !56
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !133
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i16 -1, ptr %i.cb, align 4, !tbaa !56
  %i.cc = load ptr, ptr %i.bu, align 8, !tbaa !133
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  store i16 1, ptr %i.cd, align 2, !tbaa !56
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !133
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i8 1, ptr %i.cf, align 4, !tbaa !56
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.g, %bb.n, %bb.m, %bb.d, %bb.c
  %.016 = phi ptr [ %0, %bb.c ], [ %0, %bb.d ], [ %i.au, %bb.m ], [ %i.au, %bb.n ], [ null, %bb.g ], [ %.020, %bb.e ]
  ret ptr %.016
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9param_qcd14check_validityERKNS0_9param_sizERKNS0_9param_codE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr nofree noundef nonnull readonly align 8 dereferenceable(96) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i16, ptr %i.a, align 4, !tbaa !31   ; 5 uses
  %.0.in5.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.06.i = load ptr, ptr %.0.in5.i, align 8, !tbaa !91 ; 2 uses
  %.not7.i = icmp eq ptr %.06.i, null
  br i1 %.not7.i, label %_ZN4ojph5local9param_qcd28trim_non_existing_componentsEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.06.i, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.08.i, i64 232
  %i.d = load i16, ptr %i.c, align 8, !tbaa !90
  %i.e = icmp ugt i16 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %.08.i, i64 208
  %i.g = zext i1 %i.e to i8
  store i8 %i.g, ptr %i.f, align 8, !tbaa !95
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.08.i, i64 216
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !91 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZN4ojph5local9param_qcd28trim_non_existing_componentsEj.exit, label %.lr.ph.i, !llvm.loop !9

_ZN4ojph5local9param_qcd28trim_non_existing_componentsEj.exit: ; preds = %.lr.ph.i, %bb.a
  %.not230 = icmp eq i16 %i.b, 0                  ; 3 uses
  br i1 %.not230, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4ojph5local9param_qcd28trim_non_existing_componentsEj.exit
  %i.h = load i8, ptr %0, align 8, !tbaa !89
  %i.i = icmp eq i8 %i.h, 1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8
  %.0.i.i = select i1 %i.i, ptr %0, ptr %i.k      ; 3 uses
  %.not9.i.i = icmp eq ptr %.0.i.i, null
  %3 = load i8, ptr %2, align 8
  %.not9.i.i.a = icmp eq i8 %3, 1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 72
  %4 = load ptr, ptr %i.l, align 8
  %.0.i137 = select i1 %.not9.i.i.a, ptr %2, ptr %4 ; 3 uses
  %.not9.i = icmp eq ptr %.0.i137, null
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  br i1 %.not9.i.i, label %._crit_edge.thread, label %.lr.ph.i.i.preheader.preheader

.lr.ph.i.i.preheader.preheader:                   ; preds = %.lr.ph
  %wide.trip.count = zext i16 %i.b to i64
  br label %.lr.ph.i.i.preheader

._crit_edge:                                      ; preds = %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread
  %i.n = trunc nuw i8 %.2128 to i1
  %.not = icmp eq i32 %.2123, 65535
  %spec.select = select i1 %.not, i32 0, i32 %.2123
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %.lr.ph, %_ZN4ojph5local9param_qcd28trim_non_existing_componentsEj.exit
  %.0124.lcssa275 = phi i1 [ %.1125, %._crit_edge ], [ false, %_ZN4ojph5local9param_qcd28trim_non_existing_componentsEj.exit ], [ true, %.lr.ph ]
  %.0126.lcssa273 = phi i1 [ %i.n, %._crit_edge ], [ true, %_ZN4ojph5local9param_qcd28trim_non_existing_componentsEj.exit ], [ true, %.lr.ph ]
  %i.o = phi i32 [ %spec.select, %._crit_edge ], [ 0, %_ZN4ojph5local9param_qcd28trim_non_existing_componentsEj.exit ], [ 0, %.lr.ph ] ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.b, %._crit_edge.thread
  %.tr.i = phi ptr [ %2, %._crit_edge.thread ], [ %i.r, %bb.b ] ; 3 uses
  %i.p = load i8, ptr %.tr.i, align 8, !tbaa !62
  switch i8 %i.p, label %bb.b [
    i8 1, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
    i8 3, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
  ]

bb.b:                                             ; preds = %tailrecurse.i
  %i.q = getelementptr inbounds nuw i8, ptr %.tr.i, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !67
  br label %tailrecurse.i

_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit: ; preds = %tailrecurse.i, %tailrecurse.i
  %i.s = getelementptr inbounds nuw i8, ptr %.tr.i, i64 10
  %i.t = load i8, ptr %i.s, align 2, !tbaa !60
  %i.u = icmp eq i8 %i.t, 1
  br label %tailrecurse.i134

tailrecurse.i134:                                 ; preds = %bb.e, %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit
  %.tr.i135 = phi ptr [ %2, %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit ], [ %i.ac, %bb.e ] ; 4 uses
  %i.v = load i8, ptr %.tr.i135, align 8, !tbaa !62
  switch i8 %i.v, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit [
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.c:                                             ; preds = %tailrecurse.i134
  %i.w = getelementptr inbounds nuw i8, ptr %.tr.i135, i64 12
  %i.x = load i8, ptr %i.w, align 4, !tbaa !51
  br label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit

bb.d:                                             ; preds = %tailrecurse.i134
  %i.y = getelementptr inbounds nuw i8, ptr %.tr.i135, i64 12
  %i.z = load i8, ptr %i.y, align 4, !tbaa !51    ; 2 uses
  %i.aa = icmp slt i8 %i.z, 0
  br i1 %i.aa, label %bb.e, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr.i135, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  br label %tailrecurse.i134

_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit: ; preds = %tailrecurse.i134, %bb.d, %bb.c
  %.0.i136 = phi i8 [ %i.x, %bb.c ], [ %i.z, %bb.d ], [ 0, %tailrecurse.i134 ] ; 2 uses
  %i.ad = zext i8 %.0.i136 to i32                 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  %i.ag = zext i32 %i.o to i64
  %i.ah = getelementptr inbounds nuw [3 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35  ; 2 uses
  %i.aj = and i8 %i.ai, 127                       ; 2 uses
  %narrow.i = add nuw i8 %i.aj, 1
  %i.ak = zext i8 %narrow.i to i32                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.am = load i8, ptr %i.al, align 8, !tbaa !61  ; 2 uses
  %i.an = mul nuw nsw i32 %i.ad, 3
  %i.ao = add nuw nsw i32 %i.an, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !138
  switch i8 %i.am, label %bb.v [
    i8 1, label %bb.r
    i8 0, label %bb.s
  ]

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.preheader.preheader, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.i.preheader.preheader ], [ %indvars.iv.next, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 6 uses
  %.0111220 = phi i32 [ 0, %.lr.ph.i.i.preheader.preheader ], [ %.2, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 6 uses
  %.0112219 = phi i8 [ 0, %.lr.ph.i.i.preheader.preheader ], [ %.2114, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 6 uses
  %.0115218 = phi i32 [ 0, %.lr.ph.i.i.preheader.preheader ], [ %.2117, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 7 uses
  %.0118217 = phi i32 [ 0, %.lr.ph.i.i.preheader.preheader ], [ %.2120, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 6 uses
  %.0121216 = phi i32 [ 65535, %.lr.ph.i.i.preheader.preheader ], [ %.2123, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 5 uses
  %.0124215 = phi i1 [ false, %.lr.ph.i.i.preheader.preheader ], [ %.1125, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 5 uses
  %.0126214 = phi i8 [ 1, %.lr.ph.i.i.preheader.preheader ], [ %.2128, %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread ] ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.f
  %.110.i.i = phi ptr [ %i.au, %bb.f ], [ %.0.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.110.i.i, i64 232
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !90
  %i.as = zext i16 %i.ar to i64
  %.not8.i.i = icmp eq i64 %indvars.iv, %i.as
  br i1 %.not8.i.i, label %_ZN4ojph5local9param_qcd7get_qccEj.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.110.i.i, i64 216
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !91 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZN4ojph5local9param_qcd7get_qccEj.exit, label %.lr.ph.i.i, !llvm.loop !2

_ZN4ojph5local9param_qcd7get_qccEj.exit:          ; preds = %.lr.ph.i.i, %bb.f
  %i.av = phi ptr [ %.0.i.i, %bb.f ], [ %.110.i.i, %.lr.ph.i.i ]
  %i.aw = icmp eq ptr %i.av, %0
  br i1 %i.aw, label %bb.g, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

bb.g:                                             ; preds = %_ZN4ojph5local9param_qcd7get_qccEj.exit
  br i1 %.not9.i, label %_ZNK4ojph5local9param_cod7get_cocEj.exit, label %.lr.ph.i138

.lr.ph.i138:                                      ; preds = %bb.g, %bb.h
  %.110.i = phi ptr [ %i.bb, %bb.h ], [ %.0.i137, %bb.g ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.110.i, i64 80
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !63
  %i.az = zext i16 %i.ay to i64
  %.not8.i = icmp eq i64 %indvars.iv, %i.az
  br i1 %.not8.i, label %_ZNK4ojph5local9param_cod7get_cocEj.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i138
  %i.ba = getelementptr inbounds nuw i8, ptr %.110.i, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !64 ; 2 uses
  %.not.i139 = icmp eq ptr %i.bb, null
  br i1 %.not.i139, label %_ZNK4ojph5local9param_cod7get_cocEj.exit, label %.lr.ph.i138, !llvm.loop !0

_ZNK4ojph5local9param_cod7get_cocEj.exit:         ; preds = %.lr.ph.i138, %bb.h, %bb.g
  %i.bc = phi ptr [ null, %bb.g ], [ %.110.i, %.lr.ph.i138 ], [ %.0.i137, %bb.h ] ; 4 uses
  %i.bd = icmp eq i32 %.0115218, 0
  br i1 %i.bd, label %tailrecurse.i140, label %bb.l

tailrecurse.i140:                                 ; preds = %_ZNK4ojph5local9param_cod7get_cocEj.exit, %bb.k
  %.tr.i141 = phi ptr [ %i.bl, %bb.k ], [ %i.bc, %_ZNK4ojph5local9param_cod7get_cocEj.exit ] ; 4 uses
  %i.be = load i8, ptr %.tr.i141, align 8, !tbaa !62
  switch i8 %i.be, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 [
    i8 1, label %bb.i
    i8 2, label %bb.j
  ]

bb.i:                                             ; preds = %tailrecurse.i140
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr.i141, i64 12
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !51
  br label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143

bb.j:                                             ; preds = %tailrecurse.i140
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr.i141, i64 12
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !51  ; 2 uses
  %i.bj = icmp slt i8 %i.bi, 0
  br i1 %i.bj, label %bb.k, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr.i141, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !67
  br label %tailrecurse.i140

_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143: ; preds = %tailrecurse.i140, %bb.j, %bb.i
  %.0.i142 = phi i8 [ %i.bg, %bb.i ], [ %i.bi, %bb.j ], [ 0, %tailrecurse.i140 ]
  %i.bm = zext i8 %.0.i142 to i32
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.bo = getelementptr inbounds nuw [3 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !35  ; 2 uses
  %i.bq = and i8 %i.bp, 127
  %narrow.i144 = add nuw i8 %i.bq, 1
  %i.br = zext i8 %narrow.i144 to i32
  %.lobit = lshr i8 %i.bp, 7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !61
  %i.bu = zext i8 %i.bt to i32
  %i.bv = trunc i64 %indvars.iv to i32
  br label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

bb.l:                                             ; preds = %_ZNK4ojph5local9param_cod7get_cocEj.exit
  %i.bw = trunc nuw i8 %.0126214 to i1
  br i1 %i.bw, label %tailrecurse.i145, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

tailrecurse.i145:                                 ; preds = %bb.l, %bb.o
  %.tr.i146 = phi ptr [ %i.ce, %bb.o ], [ %i.bc, %bb.l ] ; 4 uses
  %i.bx = load i8, ptr %.tr.i146, align 8, !tbaa !62
  switch i8 %i.bx, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 [
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.m:                                             ; preds = %tailrecurse.i145
  %i.by = getelementptr inbounds nuw i8, ptr %.tr.i146, i64 12
  %i.bz = load i8, ptr %i.by, align 4, !tbaa !51
  br label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148

bb.n:                                             ; preds = %tailrecurse.i145
  %i.ca = getelementptr inbounds nuw i8, ptr %.tr.i146, i64 12
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !51  ; 2 uses
  %i.cc = icmp slt i8 %i.cb, 0
  br i1 %i.cc, label %bb.o, label %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %.tr.i146, i64 72
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !67
  br label %tailrecurse.i145

_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148: ; preds = %tailrecurse.i145, %bb.n, %bb.m
  %.0.i147 = phi i8 [ %i.bz, %bb.m ], [ %i.cb, %bb.n ], [ 0, %tailrecurse.i145 ]
  %i.cf = zext i8 %.0.i147 to i32
  %i.cg = icmp eq i32 %.0118217, %i.cf
  br i1 %i.cg, label %bb.p, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

bb.p:                                             ; preds = %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148
  %i.ch = load ptr, ptr %i.m, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw [3 x i8], ptr %i.ch, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !35  ; 2 uses
  %i.ck = and i8 %i.cj, 127
  %narrow.i149 = add nuw i8 %i.ck, 1
  %i.cl = zext i8 %narrow.i149 to i32
  %i.cm = icmp ne i32 %.0115218, %i.cl
  %i.cn = icmp slt i8 %i.cj, 0
  %i.co = trunc nuw i8 %.0112219 to i1
  %i.cp = xor i1 %i.cn, %i.co
  %or.cond = select i1 %i.cm, i1 true, i1 %i.cp
  br i1 %or.cond, label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !61
  %i.cs = zext i8 %i.cr to i32
  %i.ct = icmp eq i32 %.0111220, %i.cs
  %i.cu = zext i1 %i.ct to i8
  br label %_ZN4ojph5local9param_qcd7get_qccEj.exit.thread

_ZN4ojph5local9param_qcd7get_qccEj.exit.thread:   ; preds = %_ZN4ojph5local9param_qcd7get_qccEj.exit, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143, %bb.q, %bb.p, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148, %bb.l
  %.2128 = phi i8 [ %i.cu, %bb.q ], [ %.0126214, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0126214, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ 0, %bb.p ], [ 0, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ 0, %bb.l ] ; 2 uses
  %.1125 = phi i1 [ %.0124215, %bb.q ], [ %.0124215, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ true, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0124215, %bb.p ], [ %.0124215, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0124215, %bb.l ] ; 2 uses
  %.2123 = phi i32 [ %.0121216, %bb.q ], [ %i.bv, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0121216, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0121216, %bb.p ], [ %.0121216, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0121216, %bb.l ] ; 3 uses
  %.2120 = phi i32 [ %.0118217, %bb.q ], [ %i.bm, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0118217, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0118217, %bb.p ], [ %.0118217, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0118217, %bb.l ]
  %.2117 = phi i32 [ %.0115218, %bb.q ], [ %i.br, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0115218, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0115218, %bb.p ], [ %.0115218, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0115218, %bb.l ]
  %.2114 = phi i8 [ %.0112219, %bb.q ], [ %.lobit, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0112219, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0112219, %bb.p ], [ %.0112219, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0112219, %bb.l ]
  %.2 = phi i32 [ %.0111220, %bb.q ], [ %i.bu, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit143 ], [ %.0111220, %_ZN4ojph5local9param_qcd7get_qccEj.exit ], [ %.0111220, %bb.p ], [ %.0111220, %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit148 ], [ %.0111220, %bb.l ]
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i.i.preheader, !llvm.loop !177

bb.r:                                             ; preds = %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit
  %i.cv = icmp ult i32 %i.o, 3
  %i.cw = and i1 %i.cv, %i.u
  tail call void @_ZN4ojph5local9param_qcd13set_rev_quantEjjb(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %i.ad, i32 noundef %i.ak, i1 noundef zeroext %i.cw)
  br label %bb.v

bb.s:                                             ; preds = %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !88
  %i.cz = fcmp oeq float %i.cy, -1.000000e+00
  br i1 %i.cz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.da = shl nuw i32 1, %i.ak
  %i.db = sitofp i32 %i.da to float
  %i.dc = fdiv float 1.000000e+00, %i.db
  store float %i.dc, ptr %i.cx, align 4, !tbaa !88
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void @_ZN4ojph5local9param_qcd15set_irrev_quantEj(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %i.ad)
  br label %bb.v

bb.v:                                             ; preds = %_ZNK4ojph5local9param_cod22get_num_decompositionsEv.exit, %bb.u, %bb.r
  br i1 %.0126.lcssa273, label %bb.ar, label %tailrecurse.i150

tailrecurse.i150:                                 ; preds = %bb.v, %bb.w
  %.tr.i151 = phi ptr [ %i.df, %bb.w ], [ %2, %bb.v ] ; 3 uses
  %i.dd = load i8, ptr %.tr.i151, align 8, !tbaa !62
  switch i8 %i.dd, label %bb.w [
    i8 1, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit152
    i8 3, label %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit152
  ]

bb.w:                                             ; preds = %tailrecurse.i150
  %i.de = getelementptr inbounds nuw i8, ptr %.tr.i151, i64 72
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !67
  br label %tailrecurse.i150

_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit152: ; preds = %tailrecurse.i150, %tailrecurse.i150
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr.i151, i64 10
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !60
  %i.di = icmp eq i8 %i.dh, 1
  br i1 %.not230, label %.loopexit, label %.lr.ph227

.lr.ph227:                                        ; preds = %_ZNK4ojph5local9param_cod28is_employing_color_transformEv.exit152
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %wide.trip.count246 = zext i16 %i.b to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph227, %bb.aq
  %indvars.iv243 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next244, %bb.aq ] ; 8 uses
  %i.dm = load i8, ptr %2, align 8, !tbaa !62
  %i.dn = icmp eq i8 %i.dm, 1
  %i.do = load ptr, ptr %i.dj, align 8
  %.0.i153 = select i1 %i.dn, ptr %2, ptr %i.do   ; 3 uses
  %.not9.i154 = icmp eq ptr %.0.i153, null
  br i1 %.not9.i154, label %_ZNK4ojph5local9param_cod7get_cocEj.exit159, label %.lr.ph.i155

.lr.ph.i155:                                      ; preds = %bb.x, %bb.y
  %.110.i156 = phi ptr [ %i.dt, %bb.y ], [ %.0.i153, %bb.x ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.110.i156, i64 80
  %i.dq = load i16, ptr %i.dp, align 8, !tbaa !63
  %i.dr = zext i16 %i.dq to i64
  %.not8.i157 = icmp eq i64 %indvars.iv243, %i.dr
  br i1 %.not8.i157, label %_ZNK4ojph5local9param_cod7get_cocEj.exit159, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i155
  %i.ds = getelementptr inbounds nuw i8, ptr %.110.i156, i64 56
end_hunk_0
begin_hunk_1_@_ZN4ojph5local9param_qcd8read_qccEPNS_11infile_baseEj:bb.a
  %i.x = load ptr, ptr %1, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.w, i64 noundef 2)
  %.not35 = icmp eq i64 %i.aa, 2
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i32 noundef 327843, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1710, ptr noundef nonnull @.str.42)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = load i16, ptr %i.w, align 8, !tbaa !90
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  store i16 %i.af, ptr %i.w, align 8, !tbaa !90
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ag, i64 noundef 1)
  %.not37 = icmp eq i64 %i.ak, 1
  br i1 %.not37, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43
  %i.an = load ptr, ptr %i.am, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i32 noundef 327844, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1714, ptr noundef nonnull @.str.42)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ao = select i1 %i.l, i32 4, i32 5            ; 4 uses
  %i.ap = load i8, ptr %i.ag, align 4, !tbaa !94
  %i.aq = and i8 %i.ap, 31
  switch i8 %i.aq, label %bb.ab [
    i8 0, label %bb.m
    i8 1, label %bb.s
    i8 2, label %bb.u
  ]

bb.m:                                             ; preds = %bb.l
  %i.ar = load i16, ptr %i.b, align 2, !tbaa !93
  %i.as = zext i16 %i.ar to i32
  %i.at = sub nsw i32 %i.as, %i.ao                ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i32 %i.at, ptr %i.au, align 8, !tbaa !138
  %i.av = icmp ugt i32 %i.at, 97
  br i1 %i.av, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aw = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.ax = load i16, ptr %i.b, align 2, !tbaa !93
  %i.ay = zext i16 %i.ax to i32
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !43
  %i.ba = load ptr, ptr %i.az, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i32 noundef 327845, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1720, ptr noundef nonnull @.str.43, i32 noundef %i.ay)
  %.pre54 = load i32, ptr %i.au, align 8, !tbaa !138
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bb = phi i32 [ %i.at, %bb.m ], [ %.pre54, %bb.n ]
  %.not48 = icmp eq i32 %i.bb, 0
  br i1 %.not48, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph46, %bb.r
  %indvars.iv51 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next52, %bb.r ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv51
  %i.be = load ptr, ptr %1, align 8, !tbaa !43
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.bd, i64 noundef 1)
  %.not42 = icmp eq i64 %i.bh, 1
  br i1 %.not42, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !43
  %i.bk = load ptr, ptr %i.bj, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, i32 noundef 327846, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1723, ptr noundef nonnull @.str.42)
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.bl = load i32, ptr %i.au, align 8, !tbaa !138
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next52, %i.bm
  br i1 %i.bn, label %bb.p, label %.loopexit, !llvm.loop !226

bb.s:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.bo, align 8, !tbaa !138
  %i.bp = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !43
  %i.br = load ptr, ptr %i.bq, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i32 noundef 327851, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1729, ptr noundef nonnull @.str.44)
  %i.bs = load i16, ptr %i.b, align 2, !tbaa !93
  %i.bt = zext i16 %i.bs to i32
  %.not40 = icmp eq i32 %i.ao, %i.bt
  br i1 %.not40, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !43
  %i.bw = load ptr, ptr %i.bv, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i32 noundef 327847, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1731, ptr noundef nonnull @.str.45)
  br label %.loopexit

bb.u:                                             ; preds = %bb.l
  %i.bx = load i16, ptr %i.b, align 2, !tbaa !93
  %i.by = zext i16 %i.bx to i32                   ; 2 uses
  %i.bz = sub nsw i32 %i.by, %i.ao                ; 3 uses
  %i.ca = lshr i32 %i.bz, 1                       ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !138
  %i.cc = icmp ugt i32 %i.bz, 195
  br i1 %i.cc, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = and i32 %i.bz, 254
  %i.ce = add nuw nsw i32 %i.cd, %i.ao
  %.not38 = icmp eq i32 %i.ce, %i.by
  br i1 %.not38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cf = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cg = load i16, ptr %i.b, align 2, !tbaa !93
  %i.ch = zext i16 %i.cg to i32
  %i.ci = load ptr, ptr %i.cf, align 8, !tbaa !43
  %i.cj = load ptr, ptr %i.ci, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i32 noundef 327848, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1737, ptr noundef nonnull @.str.46, i32 noundef %i.ch)
  %.pre = load i32, ptr %i.cb, align 8, !tbaa !138
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ck = phi i32 [ %.pre, %bb.w ], [ %i.ca, %bb.v ]
  %.not47 = icmp eq i32 %i.ck, 0
  br i1 %.not47, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 6
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv ; 3 uses
  %i.cn = load ptr, ptr %1, align 8, !tbaa !43
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.cm, i64 noundef 2)
  %.not39 = icmp eq i64 %i.cq, 2
  br i1 %.not39, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !43
  %i.ct = load ptr, ptr %i.cs, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i32 noundef 327849, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1741, ptr noundef nonnull @.str.42)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cu = load i16, ptr %i.cm, align 2, !tbaa !56
  %i.cv = call noundef i16 @llvm.bswap.i16(i16 %i.cu)
  store i16 %i.cv, ptr %i.cm, align 2, !tbaa !56
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cw = load i32, ptr %i.cb, align 8, !tbaa !138
  %i.cx = zext i32 %i.cw to i64
  %i.cy = icmp samesign ult i64 %indvars.iv.next, %i.cx
  br i1 %i.cy, label %bb.y, label %.loopexit, !llvm.loop !227

bb.ab:                                            ; preds = %bb.l
  %i.cz = call noundef ptr @_ZN4ojph9get_errorEv() ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !43
  %i.db = load ptr, ptr %i.da, align 8
  call void (ptr, i32, ptr, i32, ptr, ...) %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cz, i32 noundef 327850, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 1746, ptr noundef nonnull @.str.47)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %bb.r, %bb.x, %bb.o, %bb.t, %bb.s, %bb.ab
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9param_nlt14check_validityERNS0_9param_sizE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.05.i = phi ptr [ %0, %bb.a ], [ %i.d, %bb.c ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 6
  %i.b = load i8, ptr %i.a, align 2, !tbaa !107, !range !108, !noundef !109
  %.not6.not.i.not = icmp eq i8 %i.b, 0
  br i1 %.not6.not.i.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK4ojph5local9param_nlt14is_any_enabledEv.exit, label %bb.b, !llvm.loop !11

bb.d:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %3 = load i8, ptr %2, align 2, !tbaa !107, !range !108, !noundef !109 ; 2 uses
  %4 = trunc nuw i8 %3 to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = icmp eq i8 %i.f, 0
  %or.cond110 = select i1 %4, i1 %i.g, i1 false
  br i1 %or.cond110, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %2, align 2, !tbaa !107
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %5 = trunc nuw i8 %3 to i1
  %6 = icmp eq i8 %i.f, 3
  %or.cond113 = select i1 %5, i1 %6, i1 false
  br i1 %or.cond113, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.i = load i16, ptr %i.h, align 4, !tbaa !31   ; 5 uses
  %.not123 = icmp eq i16 %i.i, 0
  br i1 %.not123, label %.loopexit, label %.preheader108.lr.ph

.preheader108.lr.ph:                              ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %7 = load ptr, ptr %i.j, align 8                ; 3 uses
  %wide.trip.count133 = zext i16 %i.i to i64
  br label %.preheader108

.preheader108:                                    ; preds = %.preheader108.lr.ph, %.critedge
  %indvars.iv131 = phi i64 [ 0, %.preheader108.lr.ph ], [ %indvars.iv.next132, %.critedge ] ; 5 uses
  %.069118 = phi i8 [ 0, %.preheader108.lr.ph ], [ %.1, %.critedge ] ; 5 uses
  %.070117 = phi i32 [ 0, %.preheader108.lr.ph ], [ %.171, %.critedge ] ; 6 uses
  %.072116 = phi i8 [ 1, %.preheader108.lr.ph ], [ %.173, %.critedge ] ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %.critedge
  %i.k = trunc nuw i8 %.173 to i1                 ; 2 uses
  %i.l = icmp ne i32 %.171, 0
  %or.cond = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond, label %bb.o, label %bb.p

bb.h:                                             ; preds = %.preheader108, %bb.i
  %.06.i.i = phi ptr [ %i.q, %bb.i ], [ %0, %.preheader108 ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !101
  %i.o = zext i16 %i.n to i64
  %.not5.i.i = icmp eq i64 %indvars.iv131, %i.o
  br i1 %.not5.i.i, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !102  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit.thread, label %bb.h, !llvm.loop !4

_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit:  ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 6
  %i.s = load i8, ptr %i.r, align 2, !tbaa !107, !range !108, !noundef !109
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.n, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit.thread

_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit.thread: ; preds = %bb.i, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit
  %.not79 = icmp eq i32 %.070117, 0
  br i1 %.not79, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit.thread
  %i.u = trunc nuw i8 %.072116 to i1
  br i1 %i.u, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw [3 x i8], ptr %7, i64 %indvars.iv131
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35    ; 2 uses
  %i.x = and i8 %i.w, 127
  %narrow.i = add nuw i8 %i.x, 1
  %i.y = zext i8 %narrow.i to i32
  %i.z = icmp eq i32 %.070117, %i.y
  br i1 %i.z, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp sgt i8 %i.w, -1
  %i.ab = zext i1 %i.aa to i8
  %i.ac = xor i8 %.069118, %i.ab
  br label %.critedge

bb.m:                                             ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit.thread
  %i.ad = getelementptr inbounds nuw [3 x i8], ptr %7, i64 %indvars.iv131
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !35  ; 2 uses
  %i.af = and i8 %i.ae, 127
  %narrow.i82 = add nuw i8 %i.af, 1
  %i.ag = zext i8 %narrow.i82 to i32
  %.lobit = lshr i8 %i.ae, 7
  br label %.critedge

bb.n:                                             ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit
  %i.ah = getelementptr inbounds nuw [3 x i8], ptr %7, i64 %indvars.iv131
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4
  store i8 %i.ai, ptr %i.aj, align 4, !tbaa !105
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.l, %bb.j, %bb.m, %bb.n
  %.173 = phi i8 [ %.072116, %bb.n ], [ %.072116, %bb.m ], [ 0, %bb.k ], [ %i.ac, %bb.l ], [ 0, %bb.j ] ; 2 uses
  %.171 = phi i32 [ %.070117, %bb.n ], [ %i.ag, %bb.m ], [ %.070117, %bb.k ], [ %.070117, %bb.l ], [ %.070117, %bb.j ] ; 3 uses
  %.1 = phi i8 [ %.069118, %bb.n ], [ %.lobit, %bb.m ], [ %.069118, %bb.k ], [ %.069118, %bb.l ], [ %.069118, %bb.j ] ; 2 uses
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge, label %.preheader108, !llvm.loop !228

bb.o:                                             ; preds = %._crit_edge
  %i.ak = shl nuw i8 %.1, 7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = trunc nuw i32 %.171 to i8
  %i.an = add i8 %i.am, -1
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.al, align 4, !tbaa !105
  br label %.loopexit

bb.p:                                             ; preds = %._crit_edge
  br i1 %i.k, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.p
  store i8 0, ptr %2, align 2, !tbaa !107
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %wide.trip.count138 = zext i16 %i.i to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.w
  %indvars.iv135 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next136, %bb.w ] ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %bb.r
  %.06.i.i84 = phi ptr [ %i.av, %bb.r ], [ %0, %.preheader ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i84, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !101
  %i.at = zext i16 %i.as to i64
  %.not5.i.i85 = icmp eq i64 %indvars.iv135, %i.at
  br i1 %.not5.i.i85, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit88, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i84, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !102 ; 2 uses
  %.not.i.i86 = icmp eq ptr %i.av, null
  br i1 %.not.i.i86, label %.critedge81, label %bb.q, !llvm.loop !4

_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit88: ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i84, i64 6
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !107, !range !108, !noundef !109
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.w, label %bb.v

.critedge81:                                      ; preds = %bb.r, %.critedge81
  %.0.i = phi ptr [ %i.ba, %.critedge81 ], [ %0, %bb.r ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !102 ; 2 uses
  %.not.i89 = icmp eq ptr %i.ba, null
  br i1 %.not.i89, label %bb.s, label %.critedge81, !llvm.loop !5

bb.s:                                             ; preds = %.critedge81
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !103 ; 8 uses
  %.not11.i = icmp eq ptr %i.bc, null
  br i1 %.not11.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !102
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !102
  store ptr %i.be, ptr %i.ap, align 8, !tbaa !103
  store i16 6, ptr %i.bc, align 8, !tbaa !104
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 -1, ptr %i.bf, align 2, !tbaa !101
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i8 0, ptr %i.bg, align 4, !tbaa !105
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 5
  store i8 -1, ptr %i.bh, align 1, !tbaa !106
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  store i8 0, ptr %i.bi, align 2, !tbaa !107
  store ptr null, ptr %i.bd, align 8, !tbaa !102
  %.pre.i = load ptr, ptr %i.bb, align 8, !tbaa !102
  br label %_ZN4ojph5local9param_nlt10add_objectEj.exit

bb.u:                                             ; preds = %bb.s
  %i.bj = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr null, ptr %i.bk, align 8, !tbaa !103
  store i16 6, ptr %i.bj, align 8, !tbaa !104
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i16 -1, ptr %i.bl, align 2, !tbaa !101
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i8 0, ptr %i.bm, align 4, !tbaa !105
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 5
  store i8 -1, ptr %i.bn, align 1, !tbaa !106
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  store i8 0, ptr %i.bo, align 2, !tbaa !107
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr null, ptr %i.bp, align 8, !tbaa !102
  store ptr %i.bj, ptr %i.bb, align 8, !tbaa !102
  br label %_ZN4ojph5local9param_nlt10add_objectEj.exit

_ZN4ojph5local9param_nlt10add_objectEj.exit:      ; preds = %bb.t, %bb.u
  %i.bq = phi ptr [ %i.bj, %bb.u ], [ %.pre.i, %bb.t ] ; 2 uses
  %i.br = trunc i64 %indvars.iv135 to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !101
  br label %bb.v

bb.v:                                             ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit88, %_ZN4ojph5local9param_nlt10add_objectEj.exit
  %.066 = phi ptr [ %i.bq, %_ZN4ojph5local9param_nlt10add_objectEj.exit ], [ %.06.i.i84, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit88 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.066, i64 6
  store i8 1, ptr %i.bt, align 2, !tbaa !107
  %i.bu = getelementptr inbounds nuw i8, ptr %.066, i64 5
  store i8 3, ptr %i.bu, align 1, !tbaa !106
  %i.bv = load ptr, ptr %i.aq, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw [3 x i8], ptr %i.bv, i64 %indvars.iv135
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %.066, i64 4
  store i8 %i.bx, ptr %i.by, align 4, !tbaa !105
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit88
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.loopexit.loopexit, label %.preheader, !llvm.loop !229

.thread:                                          ; preds = %bb.e, %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ca = load i16, ptr %i.bz, align 4, !tbaa !31 ; 3 uses
  %.not = icmp eq i16 %i.ca, 0
  br i1 %.not, label %.loopexit, label %.preheader109.lr.ph

.preheader109.lr.ph:                              ; preds = %.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %8 = load ptr, ptr %i.cb, align 8
  %wide.trip.count = zext i16 %i.ca to i64
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.lr.ph, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread
  %indvars.iv = phi i64 [ 0, %.preheader109.lr.ph ], [ %indvars.iv.next, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread ] ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.preheader109, %bb.y
  %.06.i.i91 = phi ptr [ %i.cg, %bb.y ], [ %0, %.preheader109 ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.06.i.i91, i64 2
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !101
  %i.ce = zext i16 %i.cd to i64
  %.not5.i.i92 = icmp eq i64 %indvars.iv, %i.ce
  br i1 %.not5.i.i92, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i91, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !102 ; 2 uses
  %.not.i.i93 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i93, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread, label %bb.x, !llvm.loop !4

_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95: ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %.06.i.i91, i64 6
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !107, !range !108, !noundef !109
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.z, label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread

bb.z:                                             ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95
  %i.ck = getelementptr inbounds nuw [3 x i8], ptr %8, i64 %indvars.iv
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %.06.i.i91, i64 4
  store i8 %i.cl, ptr %i.cm, align 4, !tbaa !105
  br label %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread

_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread: ; preds = %bb.y, %bb.z, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.preheader109, !llvm.loop !230

.loopexit.loopexit:                               ; preds = %bb.w
  %.pre = load i16, ptr %i.h, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread, %bb.g, %.loopexit.loopexit, %.thread, %bb.o, %bb.p
  %i.cn = phi i16 [ 0, %bb.g ], [ %.pre, %.loopexit.loopexit ], [ 0, %.thread ], [ %i.i, %bb.p ], [ %i.i, %bb.o ], [ %i.ca, %_ZN4ojph5local9param_nlt14get_nlt_objectEj.exit95.thread ]
  %.0.in9.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.010.i = load ptr, ptr %.0.in9.i, align 8, !tbaa !102 ; 2 uses
  %.not11.i97 = icmp eq ptr %.010.i, null
  br i1 %.not11.i97, label %_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %bb.ac
  %.012.i = phi ptr [ %.0.i98, %bb.ac ], [ %.010.i, %.loopexit ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i, i64 6 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !107, !range !108, !noundef !109
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i, i64 2 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !101
  %.not8.i = icmp ugt i16 %i.cn, %i.cs
  br i1 %.not8.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.co, align 2, !tbaa !107
  %i.ct = tail call noundef ptr @_ZN4ojph8get_infoEv() ; 2 uses
  %i.cu = load i16, ptr %i.cr, align 2, !tbaa !101
  %i.cv = zext i16 %i.cu to i32
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !43
  %i.cx = load ptr, ptr %i.cw, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ...) %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i32 noundef 328033, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 69), i32 noundef 2030, ptr noundef nonnull @.str.51, i32 noundef %i.cv), !inline_history !231
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph.i
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %.0.i98 = load ptr, ptr %.0.in.i, align 8, !tbaa !102 ; 2 uses
  %.not.i99 = icmp eq ptr %.0.i98, null
  br i1 %.not.i99, label %_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit.preheader, label %.lr.ph.i, !llvm.loop !12

_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit.preheader: ; preds = %bb.ac, %.loopexit
  br label %_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit

_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit: ; preds = %_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit.preheader, %bb.ad
  %.05.i100 = phi ptr [ %i.db, %bb.ad ], [ %0, %_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit.preheader ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i100, i64 6
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !107, !range !108, !noundef !109
  %.not6.not.i101.not = icmp eq i8 %i.cz, 0
  br i1 %.not6.not.i101.not, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i100, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !102 ; 2 uses
  %.not.i102 = icmp eq ptr %i.db, null
  br i1 %.not.i102, label %_ZNK4ojph5local9param_nlt14is_any_enabledEv.exit, label %_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit, !llvm.loop !11

bb.ae:                                            ; preds = %_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !118
  %i.de = or i16 %i.dd, -32256
  store i16 %i.de, ptr %i.dc, align 2, !tbaa !118
  br label %_ZNK4ojph5local9param_nlt14is_any_enabledEv.exit

_ZNK4ojph5local9param_nlt14is_any_enabledEv.exit: ; preds = %bb.c, %bb.ad, %bb.ae
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK4ojph5local9param_nlt14is_any_enabledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #3 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.05 = phi ptr [ %0, %bb.a ], [ %i.d, %bb.c ]   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 6
  %i.b = load i8, ptr %i.a, align 2, !tbaa !107, !range !108, !noundef !109
  %.not6.not.not.not = icmp ne i8 %i.b, 0         ; 2 uses
  br i1 %.not6.not.not.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !11

.critedge:                                        ; preds = %bb.c, %bb.b
  ret i1 %.not6.not.not.not
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN4ojph5local9param_nlt14get_nlt_objectEj(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.06.i = phi ptr [ %0, %bb.a ], [ %i.e, %bb.c ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.06.i, i64 2
  %i.b = load i16, ptr %i.a, align 2, !tbaa !101
  %i.c = zext i16 %i.b to i32
  %.not5.i = icmp eq i32 %1, %i.c
  br i1 %.not5.i, label %_ZNK4ojph5local9param_nlt14get_nlt_objectEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !102  ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK4ojph5local9param_nlt14get_nlt_objectEj.exit, label %bb.b, !llvm.loop !4

_ZNK4ojph5local9param_nlt14get_nlt_objectEj.exit: ; preds = %bb.b, %bb.c
  %.0.lcssa.i = phi ptr [ null, %bb.c ], [ %.06.i, %bb.b ]
  ret ptr %.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN4ojph5local9param_nlt10add_objectEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !5

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103  ; 8 uses
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %i.c, align 8, !tbaa !102
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !102
  store ptr %i.g, ptr %i.d, align 8, !tbaa !103
  store i16 6, ptr %i.e, align 8, !tbaa !104
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store i16 -1, ptr %i.h, align 2, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i8 0, ptr %i.i, align 4, !tbaa !105
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  store i8 -1, ptr %i.j, align 1, !tbaa !106
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  store i8 0, ptr %i.k, align 2, !tbaa !107
  store ptr null, ptr %i.f, align 8, !tbaa !102
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !102
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr null, ptr %i.m, align 8, !tbaa !103
  store i16 6, ptr %i.l, align 8, !tbaa !104
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store i16 -1, ptr %i.n, align 2, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i8 0, ptr %i.o, align 4, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 5
  store i8 -1, ptr %i.p, align 1, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  store i8 0, ptr %i.q, align 2, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %i.r, align 8, !tbaa !102
  store ptr %i.l, ptr %i.c, align 8, !tbaa !102
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.l, %bb.e ], [ %.pre, %bb.d ] ; 2 uses
  %i.t = trunc i32 %1 to i16
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 %i.t, ptr %i.u, align 2, !tbaa !101
  ret ptr %i.s
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local9param_nlt28trim_non_existing_componentsEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.0.in9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.010 = load ptr, ptr %.0.in9, align 8, !tbaa !102 ; 2 uses
  %.not11 = icmp eq ptr %.010, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.012 = phi ptr [ %.0, %bb.d ], [ %.010, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.012, i64 6 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !107, !range !108, !noundef !109
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d
end_hunk_1

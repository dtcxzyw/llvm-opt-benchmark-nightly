Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/accelerators?download=true
inline.NumInlined: 193
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_process_shortcut:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %.not110.i.not, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %_shortcut_match.exit
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dz = load float, ptr %i.dy, align 8
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %0
  %.020 = select nsz i1 %i.h, float %i.ea, float f0xFF7FFFFF ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !114 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, -1
  br i1 %i.ed, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.ee = fcmp reassoc nsz arcp contract afn une float %.020, f0xFF7FFFFF
  %i.ef = fcmp reassoc nsz arcp contract afn olt float %.020, 0.000000e+00
  %or.cond5 = and i1 %i.ee, %i.ef
  br i1 %or.cond5, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 2, ptr %i.eb, align 4, !tbaa !114
  %i.eg = fneg reassoc nsz arcp contract afn float %.020
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store i32 1, ptr %i.eb, align 4, !tbaa !114
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.aj
  %i.eh = phi i32 [ 2, %bb.al ], [ 1, %bb.am ], [ %i.ec, %bb.aj ]
  %.1 = phi nsz float [ %i.eg, %bb.al ], [ %.020, %bb.am ], [ %.020, %bb.aj ]
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !98
  %i.ek = load i32, ptr %i.u, align 8, !tbaa !109
  %i.el = call reassoc nsz arcp contract afn fastcc float @_process_action(ptr noundef nonnull %i.bx, i32 noundef %i.ej, i32 noundef %i.ek, i32 noundef %i.eh, float noundef %.1, ptr noundef nonnull %i.d)
  br label %.thread

.loopexit:                                        ; preds = %.lr.ph, %bb.t, %bb.n, %bb.ai, %bb.l, %bb.m, %bb.k, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.pre = load ptr, ptr %i.t, align 8
  %i.em = icmp eq ptr %.pre, null
  %or.cond8.not = select i1 %i.h, i1 %i.em, i1 false
  br i1 %or.cond8.not, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %.loopexit
  %i.en = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.317, i32 noundef 5) #23
  %i.eo = call fastcc ptr @_shortcut_description(ptr noundef nonnull @_sc)
  call void (ptr, ...) @dt_toast_log(ptr noundef %i.en, ptr noundef nonnull %i.eo) #23
  br label %.thread

.thread:                                          ; preds = %_shortcut_match.exit, %.loopexit, %bb.ao, %bb.an
  %.0 = phi nsz float [ %i.el, %bb.an ], [ f0xFF7FFFFF, %.loopexit ], [ f0xFF7FFFFF, %bb.ao ], [ f0xFF7FFFFF, %_shortcut_match.exit ]
  %i.ep = load ptr, ptr %i.d, align 8, !tbaa !21  ; 2 uses
  %.not28 = icmp eq ptr %i.ep, null
  br i1 %.not28, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.thread
  call void (ptr, ...) @dt_control_log(ptr noundef nonnull @.str.94, ptr noundef nonnull %i.ep) #23
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !21
  call void @g_free(ptr noundef %i.eq) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.g
  %.021 = phi nsz float [ f0xFF7FFFFF, %bb.g ], [ %.0, %bb.aq ]
  ret float %.021
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_insert_shortcut(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !131
  %i.c = fcmp reassoc nsz arcp contract afn une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !114
  %.not = icmp eq i32 %i.e, 6
  br i1 %.not, label %bb.c, label %_remove_shortcut.exit191.thread204

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95   ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !99
  %i.i = icmp eq i32 %i.h, 6
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = icmp eq ptr %i.k, %i.m
  br i1 %i.n, label %_remove_shortcut.exit191.thread204, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 56, i64 noundef 1) #26 ; 28 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !163
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.r = tail call fastcc i32 @_find_views(ptr noundef %i.q) ; 6 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !89
  %i.s = tail call i32 @dt_view_get_current() #23 ; 7 uses
  %i.t = icmp ne i32 %1, 0                        ; 6 uses
  %i.u = xor i1 %i.t, true
  %i.v = sext i32 %i.s to i64
  %i.w = inttoptr i64 %i.v to ptr                 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 20 ; 5 uses
  %i.y = icmp eq i32 %i.r, 0
  %i.z = icmp eq i32 %i.r, %i.s
  %i.aa = freeze i1 %i.z
  br label %bb.f

bb.f:                                             ; preds = %bb.bo, %bb.e
  %.0140 = phi i32 [ 0, %bb.e ], [ %.5145, %bb.bo ]
  %.0137 = phi i1 [ %i.u, %bb.e ], [ true, %bb.bo ] ; 2 uses
  %or.cond = and i1 %i.t, %.0137
  br label %bb.g

bb.g:                                             ; preds = %bb.bn, %bb.f
  %.1141 = phi i32 [ %.0140, %bb.f ], [ %.5145, %bb.bn ] ; 2 uses
  %.0131 = phi ptr [ null, %bb.f ], [ %.4135, %bb.bn ] ; 2 uses
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 552
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !86
  %i.ae = tail call ptr @g_sequence_lookup(ptr noundef %i.ad, ptr noundef nonnull %i.o, ptr noundef nonnull @_shortcut_compare_func, ptr noundef %i.w) #23 ; 4 uses
  %.not153 = icmp eq ptr %i.ae, null
  br i1 %.not153, label %.critedge6, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.af = tail call i32 @g_sequence_iter_is_begin(ptr noundef nonnull %i.ae) #23
  %.not154236 = icmp eq i32 %i.af, 0
  br i1 %.not154236, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.0128237 = phi ptr [ %i.aj, %bb.h ], [ %i.ae, %.preheader ] ; 3 uses
  %i.ag = tail call ptr @g_sequence_iter_prev(ptr noundef %.0128237) #23
  %i.ah = tail call ptr @g_sequence_get(ptr noundef %i.ag) #23
  %i.ai = tail call i32 @_shortcut_compare_func(ptr noundef nonnull %i.o, ptr noundef %i.ah, ptr noundef %i.w)
  %.not155 = icmp eq i32 %i.ai, 0
  br i1 %.not155, label %bb.h, label %.critedge.preheader

bb.h:                                             ; preds = %.lr.ph
  %i.aj = tail call ptr @g_sequence_iter_prev(ptr noundef %.0128237) #23 ; 3 uses
  %i.ak = tail call i32 @g_sequence_iter_is_begin(ptr noundef %i.aj) #23
  %.not154 = icmp eq i32 %i.ak, 0
  br i1 %.not154, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.h, %.preheader
  %.1129.ph = phi ptr [ %i.ae, %.preheader ], [ %.0128237, %.lr.ph ], [ %i.aj, %bb.h ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.bm
  %.2142 = phi i32 [ %.4144.ph, %bb.bm ], [ %.1141, %.critedge.preheader ] ; 3 uses
  %.1132 = phi ptr [ %.3134.ph, %bb.bm ], [ %.0131, %.critedge.preheader ] ; 7 uses
  %.1129 = phi ptr [ %i.al, %bb.bm ], [ %.1129.ph, %.critedge.preheader ] ; 16 uses
  %i.al = tail call ptr @g_sequence_iter_next(ptr noundef %.1129) #23 ; 3 uses
  %i.am = tail call ptr @g_sequence_get(ptr noundef %.1129) #23 ; 27 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !89
  %i.ao = load i32, ptr %i.o, align 8, !tbaa !89
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.i, label %_shortcut_is_move.exit.thread

bb.i:                                             ; preds = %.critedge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 22
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !92
  %.not.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i, label %bb.j, label %_shortcut_is_move.exit

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !93
  %.not3.i = icmp eq i32 %i.at, 0
  br i1 %.not3.i, label %_shortcut_is_move.exit.thread, label %_shortcut_is_move.exit

_shortcut_is_move.exit:                           ; preds = %bb.i, %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.av = load i16, ptr %i.au, align 4            ; 2 uses
  %i.aw = and i16 %i.av, 1536
  %.not4.i.not = icmp eq i16 %i.aw, 0
  br i1 %.not4.i.not, label %bb.k, label %_shortcut_is_move.exit.thread

bb.k:                                             ; preds = %_shortcut_is_move.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !114
  %.not157 = icmp eq i32 %i.ay, -1
  br i1 %.not157, label %_shortcut_is_move.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load i16, ptr %i.x, align 4
  %i.ba = and i16 %i.az, 1536                     ; 2 uses
  %.not158 = icmp eq i16 %i.ba, 0
  %or.cond180 = or i1 %or.cond, %.not158
  br i1 %or.cond180, label %_shortcut_is_move.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.t, label %bb.n, label %split.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bb = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.326, i32 noundef 5) #23
  %i.bc = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.327, i32 noundef 5) #23
  %i.bd = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.328, i32 noundef 5) #23
  tail call fastcc void @_action_description(ptr noundef nonnull %i.am, i32 noundef 2)
  %i.be = load i16, ptr %i.x, align 4
  %i.bf = and i16 %i.be, 1536
  %i.bg = icmp eq i16 %i.bf, 1024
  %.str.22..str.21 = select i1 %i.bg, ptr @.str.22, ptr @.str.21
  %i.bh = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.22..str.21, i32 noundef 5) #23
  %i.bi = tail call i32 (ptr, ptr, ptr, ...) @dt_gui_show_yes_no_dialog(ptr noundef %i.bb, ptr noundef nonnull @.str.5, ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull @_action_description.hint, ptr noundef %i.bh) #23
  %.not159 = icmp eq i32 %i.bi, 0
  br i1 %.not159, label %_shortcut_is_move.exit.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 20 ; 2 uses
  %.pre = load i16, ptr %i.x, align 4
  %.pre246 = load i16, ptr %i.bj, align 4
  %.pre249 = and i16 %.pre, 1536
  br label %split

split.loopexit:                                   ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  br label %split

split:                                            ; preds = %split.loopexit, %._crit_edge
  %i.bl = phi ptr [ %i.bj, %._crit_edge ], [ %i.bk, %split.loopexit ]
  %.pre-phi = phi i16 [ %.pre249, %._crit_edge ], [ %i.ba, %split.loopexit ]
  %i.bm = phi i16 [ %.pre246, %._crit_edge ], [ %i.av, %split.loopexit ]
  %i.bn = and i16 %i.bm, -1537
  %i.bo = or disjoint i16 %i.bn, %.pre-phi
  %i.bp = xor i16 %i.bo, 1536
  store i16 %i.bp, ptr %i.bl, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.o, i64 44 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !114
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %split
  store i32 0, ptr %i.bq, align 4, !tbaa !114
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %split
  tail call fastcc void @_add_shortcut(ptr noundef nonnull %i.o, i32 noundef %i.s)
  br label %_remove_shortcut.exit191.thread204

_shortcut_is_move.exit.thread:                    ; preds = %bb.j, %bb.n, %bb.l, %bb.k, %_shortcut_is_move.exit, %.critedge
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !95
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !95
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.q, label %bb.ax

bb.q:                                             ; preds = %_shortcut_is_move.exit.thread
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !90
  %.not.i182 = icmp eq i8 %i.by, 0
  br i1 %.not.i182, label %bb.r, label %_shortcut_is_speed.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !91
  %.not8.i = icmp eq i32 %i.ca, 0
  br i1 %.not8.i, label %bb.s, label %_shortcut_is_speed.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.cc = load i16, ptr %i.cb, align 4            ; 2 uses
  %i.cd = and i16 %i.cc, 7
  %.not9.i = icmp eq i16 %i.cd, 0
  br i1 %.not9.i, label %bb.t, label %_shortcut_is_speed.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.am, i64 22
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !92
  %.not10.i = icmp eq i8 %i.cf, 0
  br i1 %.not10.i, label %bb.u, label %_shortcut_is_speed.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !93
  %.not11.i = icmp eq i32 %i.ch, 0
  %i.ci = and i16 %i.cc, 504
  %i.cj = icmp eq i16 %i.ci, 0
  %or.cond15.i = and i1 %i.cj, %.not11.i
  br i1 %or.cond15.i, label %_shortcut_is_speed.exit, label %_shortcut_is_speed.exit.thread

_shortcut_is_speed.exit:                          ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !94
  %.not14.i.not = icmp eq i32 %i.cl, 0
  br i1 %.not14.i.not, label %bb.v, label %_shortcut_is_speed.exit.thread

bb.v:                                             ; preds = %_shortcut_is_speed.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !131 ; 2 uses
  br i1 %i.t, label %bb.w, label %._crit_edge247

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.cp = load float, ptr %i.co, align 8, !tbaa !131
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cn, 1.000000e+03
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %i.cp
  %i.cs = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.cr)
  %i.ct = fpext reassoc nsz arcp contract afn float %i.cs to double
  %i.cu = fmul reassoc nsz arcp contract afn double %i.ct, 1.000000e-03
  %i.cv = fptrunc reassoc nsz arcp contract afn double %i.cu to float ; 3 uses
  store float %i.cv, ptr %i.cm, align 8, !tbaa !131
  store float %i.cv, ptr %i.a, align 8, !tbaa !131
  br label %._crit_edge247

._crit_edge247:                                   ; preds = %bb.v, %bb.w
  %i.cw = phi float [ %i.cv, %bb.w ], [ %i.cn, %bb.v ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.cy = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cw) ; 2 uses
  %i.cz = fpext reassoc nsz arcp contract afn float %i.cy to double
  %i.da = fcmp reassoc nsz arcp contract afn ult double %i.cz, 1.000000e-03
  %i.db = fcmp reassoc nsz arcp contract afn ugt float %i.cy, 1.000000e+03
  %or.cond181 = or i1 %i.db, %i.da
  br i1 %or.cond181, label %bb.aw, label %bb.x

bb.x:                                             ; preds = %._crit_edge247
  %i.dc = tail call ptr @g_sequence_get(ptr noundef %.1129) #23, !inline_history !268 ; 7 uses
  %.not.i183 = icmp eq ptr %i.dc, null
  br i1 %.not.i183, label %_remove_shortcut.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr null, ptr @_selected_shortcut, align 8, !tbaa !160
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !161
  %.not19.i = icmp eq i32 %i.de, 0
  br i1 %.not19.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = load i32, ptr %i.dc, align 8, !tbaa !89
  %i.dg = icmp eq i32 %i.df, 0                    ; 2 uses
  %i.dh = zext i1 %i.dg to i32
  %i.di = xor i1 %i.dg, true
  %i.dj = zext i1 %i.di to i32
  %i.dk = tail call fastcc i32 @_insert_shortcut(ptr noundef %i.dc, i32 noundef %i.dh, i32 noundef %i.dj), !inline_history !268 ; 0 uses
  br label %_remove_shortcut.exit

bb.aa:                                            ; preds = %bb.y
  %i.dl = load ptr, ptr @_shortcuts_store, align 8, !tbaa !166 ; 2 uses
  %.not20.i = icmp eq ptr %i.dl, null
  br i1 %.not20.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @gtk_tree_model_foreach(ptr noundef nonnull %i.dl, ptr noundef nonnull @_remove_shortcut_from_store, ptr noundef %.1129) #23, !inline_history !268
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dc, i64 20 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 4            ; 2 uses
  %i.do = and i16 %i.dn, 1536
  %.not21.i = icmp eq i16 %i.do, 0
  br i1 %.not21.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dp = and i16 %i.dn, -1537
  store i16 %i.dp, ptr %i.dm, align 4
  %i.dq = tail call ptr @g_sequence_iter_prev(ptr noundef %.1129) #23, !inline_history !268
  %i.dr = tail call ptr @g_sequence_get(ptr noundef %i.dq) #23, !inline_history !268 ; 2 uses
  %i.ds = tail call i32 @g_sequence_iter_is_begin(ptr noundef %.1129) #23, !inline_history !268
  %.not22.i = icmp eq i32 %i.ds, 0
  br i1 %.not22.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load i32, ptr %i.dc, align 8, !tbaa !89
  %i.du = sext i32 %i.dt to i64
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = tail call i32 @_shortcut_compare_func(ptr noundef nonnull %i.dc, ptr noundef %i.dr, ptr noundef %i.dv), !inline_history !268
  %.not23.i = icmp eq i32 %i.dw, 0
  br i1 %.not23.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dx = tail call ptr @g_sequence_iter_next(ptr noundef %.1129) #23, !inline_history !268
  %i.dy = tail call ptr @g_sequence_get(ptr noundef %i.dx) #23, !inline_history !268
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0.i = phi ptr [ %i.dy, %bb.af ], [ %i.dr, %bb.ae ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i, i64 20 ; 2 uses
  %i.ea = load i16, ptr %i.dz, align 4
  %i.eb = and i16 %i.ea, -1537
  store i16 %i.eb, ptr %i.dz, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ac
  tail call void @g_sequence_remove(ptr noundef %.1129) #23, !inline_history !268
  br label %_remove_shortcut.exit

_remove_shortcut.exit:                            ; preds = %bb.x, %bb.z, %bb.ah
  %i.ec = load float, ptr %i.cx, align 8, !tbaa !131
  %i.ed = fcmp reassoc nsz arcp contract afn une float %i.ec, 1.000000e+00
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/accelerators?download=true
inline.NumInlined: 193
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_delay_for_double_triple:bb.a
  br label %_action_find_definition.exit.thread

_action_find_definition.exit:                     ; preds = %bb.v
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !107
  %i.cf = zext nneg i32 %i.bx to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !74 ; 2 uses
  %.not56 = icmp eq ptr %i.ch, null
  br i1 %.not56, label %.thread, label %_action_find_definition.exit.thread

_action_find_definition.exit.thread:              ; preds = %bb.w, %bb.y, %bb.x, %_action_find_definition.exit
  %.1.i62 = phi ptr [ %i.ch, %_action_find_definition.exit ], [ @dt_action_def_iop, %bb.w ], [ @dt_action_def_value, %bb.y ], [ @dt_action_def_lib, %bb.x ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.1.i62, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !113
  %.not57 = icmp eq ptr %i.cj, null
  br i1 %.not57, label %.thread, label %.thread69

.thread:                                          ; preds = %bb.q, %bb.p, %_action_find_definition.exit, %_action_find_definition.exit.thread, %bb.r, %bb.w, %bb.h
  %i.ck = call ptr @g_sequence_iter_prev(ptr noundef %i.an) #23 ; 3 uses
  %i.cl = call i32 @g_sequence_iter_is_end(ptr noundef %i.ck) #23
  %.not50.1 = icmp eq i32 %i.cl, 0
  br i1 %.not50.1, label %bb.z, label %bb.aq

bb.z:                                             ; preds = %.thread
  %i.cm = call ptr @g_sequence_get(ptr noundef %i.ck) #23 ; 5 uses
  %.not51.1 = icmp eq ptr %i.cm, null
  br i1 %.not51.1, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !93
  %i.cp = load i8, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 8), align 8, !tbaa !93
  %i.cq = icmp eq i8 %i.co, %i.cp
  br i1 %i.cq, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !94
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !94
  %i.cu = icmp eq i32 %i.cs, %i.ct
  br i1 %i.cu, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.cw = load i16, ptr %i.cv, align 4            ; 3 uses
  br i1 %.not46, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = and i16 %i.cw, 7
  %i.cy = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 2 uses
  %i.cz = and i16 %i.cy, 7
  %.not53.1 = icmp samesign ult i16 %i.cx, %i.cz
  br i1 %.not53.1, label %bb.ag, label %.thread69

bb.ae:                                            ; preds = %bb.ac
  %i.da = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 3 uses
  %i.db = xor i16 %i.da, %i.cw
  %i.dc = and i16 %i.db, 63
  %or.cond.1 = icmp eq i16 %i.dc, 0
  br i1 %or.cond.1, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dd = lshr i16 %i.cw, 6
  %i.de = and i16 %i.dd, 7
  %i.df = lshr i16 %i.da, 6
  %i.dg = and i16 %i.df, 7
  %.not52.1 = icmp samesign ult i16 %i.de, %i.dg
  br i1 %.not52.1, label %bb.ag, label %.thread69

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.aa, %bb.z
  %i.dh = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4 ; 2 uses
  %i.di = and i16 %i.dh, 448
  %.not54.1 = icmp eq i16 %i.di, 0
  br i1 %.not54.1, label %.thread.1, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !22 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 560
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !183
  %.not55.1 = icmp eq i32 %i.dl, 0
  br i1 %.not55.1, label %.thread.1, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !98 ; 3 uses
  %.not.i.1 = icmp eq ptr %i.dn, null
  br i1 %.not.i.1, label %.thread.1, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !102 ; 2 uses
  %.not15.i.1 = icmp eq i32 %i.do, 11
  br i1 %.not15.i.1, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !103
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = trunc i64 %i.dr to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dt = phi i32 [ %i.ds, %bb.ak ], [ %i.do, %bb.aj ] ; 2 uses
  %i.du = add i32 %i.dt, -15                      ; 3 uses
  %i.dv = icmp sgt i32 %i.du, -1
  br i1 %i.dv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 584
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !104 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !105
  %i.ea = icmp ult i32 %i.du, %i.dz
  br i1 %i.ea, label %_action_find_definition.exit.1, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  switch i32 %i.dt, label %.thread.1 [
    i32 4, label %_action_find_definition.exit.thread.1
    i32 3, label %bb.ap
    i32 12, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  br label %_action_find_definition.exit.thread.1

bb.ap:                                            ; preds = %bb.an
  br label %_action_find_definition.exit.thread.1

_action_find_definition.exit.1:                   ; preds = %bb.am
  %i.eb = load ptr, ptr %i.dx, align 8, !tbaa !107
  %i.ec = zext nneg i32 %i.du to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !74 ; 2 uses
  %.not56.1 = icmp eq ptr %i.ee, null
  br i1 %.not56.1, label %.thread.1, label %_action_find_definition.exit.thread.1

_action_find_definition.exit.thread.1:            ; preds = %_action_find_definition.exit.1, %bb.ap, %bb.ao, %bb.an
  %.1.i62.1 = phi ptr [ %i.ee, %_action_find_definition.exit.1 ], [ @dt_action_def_iop, %bb.an ], [ @dt_action_def_value, %bb.ao ], [ @dt_action_def_lib, %bb.ap ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.1.i62.1, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !113
  %.not57.1 = icmp eq ptr %i.eg, null
  br i1 %.not57.1, label %.thread.1, label %.thread69

.thread.1:                                        ; preds = %_action_find_definition.exit.thread.1, %_action_find_definition.exit.1, %bb.an, %bb.ai, %bb.ah, %bb.ag
  %i.eh = load i32, ptr %i.a, align 4
  %.1.1 = add i32 %i.eh, %i.d
  br label %bb.aq

bb.aq:                                            ; preds = %.thread.1, %.thread
  %.3.1 = phi i32 [ %i.d, %.thread ], [ %.1.1, %.thread.1 ]
  %i.ei = call ptr @g_sequence_iter_prev(ptr noundef %i.ck) #23 ; 0 uses
  %.pre76 = load i16, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  br label %.thread69

.thread69:                                        ; preds = %bb.aq, %_action_find_definition.exit.thread.1, %bb.af, %bb.ad, %_action_find_definition.exit.thread, %bb.o, %bb.m
  %i.ej = phi i16 [ %i.bk, %_action_find_definition.exit.thread ], [ %i.bd, %bb.o ], [ %i.bb, %bb.m ], [ %.pre76, %bb.aq ], [ %i.cy, %bb.ad ], [ %i.da, %bb.af ], [ %i.dh, %_action_find_definition.exit.thread.1 ] ; 3 uses
  %.0.lcssa = phi i32 [ %i.d, %_action_find_definition.exit.thread ], [ %i.d, %bb.o ], [ %i.d, %bb.m ], [ %.3.1, %bb.aq ], [ %i.d, %bb.ad ], [ %i.d, %bb.af ], [ %i.d, %_action_find_definition.exit.thread.1 ]
  %i.ek = sub i16 %i.ej, %i.x
  %i.el = and i16 %i.ek, 7
  %i.em = and i16 %i.ej, -456
  %i.en = or disjoint i16 %i.el, %i.em
  %i.eo = sub i16 %i.ej, %i.ad
  %i.ep = and i16 %i.eo, 448
  %i.eq = or disjoint i16 %i.en, %i.ep
  store i16 %i.eq, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  %.pre77 = load i32, ptr %i.a, align 4, !tbaa !12
  br label %bb.ar

bb.ar:                                            ; preds = %bb.g, %.thread69, %bb.f, %bb.b
  %i.er = phi i32 [ %i.e, %bb.b ], [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %.pre77, %.thread69 ] ; 3 uses
  %.5 = phi i32 [ %i.d, %bb.b ], [ %i.u, %bb.f ], [ %i.d, %bb.g ], [ %.0.lcssa, %.thread69 ] ; 3 uses
  %.not59 = icmp eq i32 %1, 0
  %i.es = select i1 %.not59, ptr @_button_release_delayed, ptr @_key_release_delayed ; 2 uses
  %i.et = icmp ult i32 %.5, %i.er
  br i1 %i.et, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eu = sub nuw i32 %i.er, %.5
  %i.ev = call i32 @g_timeout_add(i32 noundef %i.eu, ptr noundef nonnull %i.es, ptr noundef null) #23
  store i32 %i.ev, ptr @_timeout_source, align 4, !tbaa !12
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.ew = shl nsw i32 %i.er, 1
  %i.ex = icmp ugt i32 %.5, %i.ew
  %i.ey = zext i1 %i.ex to i64
  %i.ez = inttoptr i64 %i.ey to ptr
  %i.fa = call i32 %i.es(ptr noundef %i.ez) #23, !callees !271 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_shortcut_key_active(i8 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.dt_shortcut_t, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @_sc, i64 56, i1 false), !tbaa.struct !168
  store i64 0, ptr @_sc, align 8
  store i8 %0, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 8), align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) getelementptr inbounds nuw (i8, ptr @_sc, i64 9), i8 0, i64 3, i1 false)
  store i32 %1, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 12), align 4, !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_sc, i64 16), i8 0, i64 40, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 48), align 8, !tbaa !134
  store i16 0, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 20), align 4
  store i32 0, ptr @_break_stuck, align 4, !tbaa !12
  %i.a = tail call reassoc nsz arcp contract afn fastcc float @_process_shortcut(float noundef f0xFF7FFFFF), !inline_history !272 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !168
  %i.b = frem reassoc nsz arcp contract afn float %i.a, 1.000000e+00
  %i.c = fcmp reassoc nsz arcp contract afn ugt float %i.b, -5.000000e-01
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = frem reassoc nsz arcp contract afn float %i.a, 2.000000e+00
  %i.e = fcmp reassoc nsz arcp contract afn ogt float %i.d, 5.000000e-01
  %i.f = zext i1 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ 1, %bb.a ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_shortcut_dispatcher(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %3 = alloca %struct.dt_shortcut_t, align 8      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.dt_shortcut_t, align 8      ; 5 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %i.e = load i32, ptr %1, align 8, !tbaa !11     ; 4 uses
  %i.f = and i32 %i.e, -4
  %switch = icmp eq i32 %i.f, 4
  br i1 %switch, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11   ; 2 uses
  %i.i = icmp ugt i32 %i.h, 7
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %i.e, 7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11   ; 2 uses
  %i.m = add i32 %i.h, -7                         ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @dt_shortcut_key_release(i8 noundef zeroext 1, i32 noundef %i.l, i32 noundef %i.m)
  br label %g_set_weak_pointer.exit

bb.e:                                             ; preds = %bb.c
  tail call void @dt_shortcut_key_press(i8 noundef zeroext 1, i32 noundef %i.l, i32 noundef %i.m)
  br label %g_set_weak_pointer.exit

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.n = load ptr, ptr @_pressed_keys, align 8, !tbaa !66
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.ad

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_sc, i64 32), align 8, !tbaa !98 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !98
  switch i32 %i.e, label %.thread205 [
    i32 4, label %bb.h
    i32 31, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.i, label %.thread205

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.u = phi i1 [ false, %bb.g ], [ true, %bb.h ]
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 88), align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 568
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !136  ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %.thread205, label %dt_action_widget.exit

dt_action_widget.exit:                            ; preds = %bb.j
  %i.y = load i32, ptr @_action_quark, align 4, !tbaa !12
  %i.z = tail call ptr @g_object_get_qdata(ptr noundef nonnull %i.x, i32 noundef %i.y) #23 ; 2 uses
  store ptr %i.z, ptr %i.p, align 8, !tbaa !98
  %.not154 = icmp eq ptr %i.z, null
  br i1 %.not154, label %.thread205, label %bb.k

bb.k:                                             ; preds = %dt_action_widget.exit, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  br i1 %i.u, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = call i32 @dt_gui_get_scroll_unit_delta(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #23
  %.not168 = icmp eq i32 %i.aa, 0
  br i1 %.not168, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !12
  %i.ac = call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float 1.000000e+01, i32 %i.ab)
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.m
  %i.ad = phi reassoc nsz arcp contract afn float [ %i.ac, %bb.m ], [ -1.000000e+00, %bb.k ]
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float %i.ad, ptr %i.ae, align 8, !tbaa !134
  %i.af = call fastcc i32 @_insert_shortcut(ptr noundef %3, i32 noundef 1, i32 noundef 0)
  %.not169 = icmp eq i32 %i.af, 0
  br i1 %.not169, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  call fastcc void @_action_description(ptr noundef nonnull %3, i32 noundef 2)
  call void (ptr, ...) @dt_control_log(ptr noundef nonnull @.str.94, ptr noundef nonnull @_action_description.hint) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  call void @dt_loc_get_user_config_dir(ptr noundef nonnull %i.a, i64 noundef 4096) #23
  %i.ag = call i64 @g_strlcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.148, i64 noundef 4096) #23 ; 0 uses
  call fastcc void @_shortcuts_save(ptr noundef nonnull %i.a, i8 noundef zeroext -1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.critedge188

.thread205:                                       ; preds = %bb.j, %bb.g, %bb.h, %dt_action_widget.exit
  %i.ah = load ptr, ptr @_grab_widget, align 8, !tbaa !253
  %.not155 = icmp ne ptr %i.ah, null
  %.pr = load i32, ptr %1, align 8, !tbaa !11     ; 4 uses
  %i.ai = icmp eq i32 %.pr, 4
  %or.cond249 = select i1 %.not155, i1 %i.ai, i1 false
  br i1 %or.cond249, label %bb.q, label %thread-pre-split

bb.q:                                             ; preds = %.thread205
  tail call fastcc void @_ungrab_grab_widget()
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_sc, i8 0, i64 56, i1 false)
  br label %.critedge188

thread-pre-split:                                 ; preds = %.thread205
  switch i32 %.pr, label %.critedge188 [
    i32 8, label %bb.r
    i32 9, label %bb.r
    i32 12, label %bb.r
  ]

bb.r:                                             ; preds = %thread-pre-split, %thread-pre-split, %thread-pre-split
  %i.aj = tail call i64 @gtk_window_get_type() #24 ; 2 uses
  %.not159 = icmp eq ptr %0, null
  br i1 %.not159, label %.critedge188.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %.not160 = icmp eq ptr %i.ak, null
  br i1 %.not160, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.am = icmp eq i64 %i.al, %i.aj
  br i1 %i.am, label %.critedge190, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.an = tail call i32 @g_type_check_instance_is_a(ptr noundef nonnull %0, i64 noundef %i.aj) #25
  %i.ao = icmp ne i32 %i.an, 0
  %switch196 = icmp samesign ult i32 %.pr, 10
  %or.cond220 = and i1 %switch196, %i.ao
  br i1 %or.cond220, label %bb.v, label %.critedge188.thread

.critedge190:                                     ; preds = %bb.t
  %switch196.old = icmp samesign ult i32 %.pr, 10
  br i1 %switch196.old, label %bb.v, label %.critedge188.thread

bb.v:                                             ; preds = %bb.u, %.critedge190
  %i.ap = tail call ptr @gtk_window_get_focus(ptr noundef nonnull %0) #23 ; 5 uses
  %.not162 = icmp eq ptr %i.ap, null
  br i1 %.not162, label %.critedge188.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aq = tail call i32 @gtk_widget_event(ptr noundef nonnull %i.ap, ptr noundef nonnull %1) #23
  %.not163 = icmp eq i32 %i.aq, 0
  br i1 %.not163, label %bb.x, label %.critedge188

bb.x:                                             ; preds = %bb.w
  %i.ar = tail call i64 @gtk_entry_get_type() #24 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !13 ; 3 uses
  %.not164 = icmp eq ptr %i.as, null              ; 2 uses
  br i1 %.not164, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
end_hunk_0

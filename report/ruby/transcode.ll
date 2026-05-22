inline.NumInlined: 403
inline.NumDeleted: 97
begin_hunk_0_@econv_s_search_convpath:bb.a

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr i8, ptr %i.bc, i64 16
  br label %RARRAY_AREF.exit.i

bb.x:                                             ; preds = %bb.v
  %i.bo = getelementptr i8, ptr %i.bc, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !30
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.x, %bb.w
  %.0.i.i47.i = phi ptr [ %i.bn, %bb.w ], [ %i.bp, %bb.x ]
  %i.bq = getelementptr [8 x i8], ptr %.0.i.i47.i, i64 %i.bm
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !25 ; 4 uses
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = and i64 %i.br, 7
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = or i1 %i.bs, %i.bu
  br i1 %i.bv, label %.thread73.i.sink.split, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RARRAY_AREF.exit.i
  %i.bw = inttoptr i64 %i.br to ptr               ; 6 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !38 ; 2 uses
  %i.by = and i64 %i.bx, 31
  %i.bz = icmp eq i64 %i.by, 7
  br i1 %i.bz, label %bb.y, label %.thread73.i.sink.split

bb.y:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ca = and i64 %i.bx, 8192
  %.not.i.i48.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i48.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr i8, ptr %i.bw, i64 16
  br label %RARRAY_AREF.exit50.i

bb.aa:                                            ; preds = %bb.y
  %i.cc = getelementptr i8, ptr %i.bw, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !30
  br label %RARRAY_AREF.exit50.i

RARRAY_AREF.exit50.i:                             ; preds = %bb.aa, %bb.z
  %.0.i.i49.i = phi ptr [ %i.cb, %bb.z ], [ %i.cd, %bb.aa ]
  %i.ce = load i64, ptr %.0.i.i49.i, align 8, !tbaa !25
  %i.cf = call ptr @rb_to_encoding(i64 noundef %i.ce) #19
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %.val44.i = load ptr, ptr %i.cg, align 8, !tbaa !111
  %i.ch = load i64, ptr %i.bw, align 8, !tbaa !38
  %i.ci = and i64 %i.ch, 8192
  %.not.i.i51.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i51.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %RARRAY_AREF.exit50.i
  %i.cj = getelementptr i8, ptr %i.bw, i64 16
  br label %RARRAY_AREF.exit53.i

bb.ac:                                            ; preds = %RARRAY_AREF.exit50.i
  %i.ck = getelementptr i8, ptr %i.bw, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30
  br label %RARRAY_AREF.exit53.i

RARRAY_AREF.exit53.i:                             ; preds = %bb.ac, %bb.ab
  %.0.i.i52.i = phi ptr [ %i.cj, %bb.ab ], [ %i.cl, %bb.ac ]
  %i.cm = getelementptr i8, ptr %.0.i.i52.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !25
  %i.co = call ptr @rb_to_encoding(i64 noundef %i.cn) #19
  %i.cp = getelementptr i8, ptr %i.co, i64 8
  %.val.i = load ptr, ptr %i.cp, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cq = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i, label %bb.ad, label %rb_vm_lock_enter.exit.i.i

bb.ad:                                            ; preds = %RARRAY_AREF.exit53.i
  call void @rb_vm_lock_enter_body(ptr noundef nonnull %i.b) #19
  br label %rb_vm_lock_enter.exit.i.i

rb_vm_lock_enter.exit.i.i:                        ; preds = %bb.ad, %RARRAY_AREF.exit53.i
  %i.cr = ptrtoint ptr %.val44.i to i64
  %i.cs = load ptr, ptr @transcoder_table, align 8, !tbaa !11
  %i.ct = call i32 @rb_st_lookup(ptr noundef %i.cs, i64 noundef %i.cr, ptr noundef nonnull %i.a) #19
  %.not3.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not3.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %rb_vm_lock_enter.exit.i.i
  %i.cu = ptrtoint ptr %.val.i to i64
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !25
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = call i32 @rb_st_lookup(ptr noundef %i.cw, i64 noundef %i.cu, ptr noundef nonnull %i.a) #19
  %.not4.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not4.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i64 0, ptr %i.a, align 8, !tbaa !25
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %rb_vm_lock_enter.exit.i.i
  %i.cy = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !20
  %.not.i.i5.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i5.i.i, label %bb.ah, label %get_transcoder_entry.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @rb_vm_lock_leave_body(ptr noundef nonnull %i.b) #19
  br label %get_transcoder_entry.exit.i

get_transcoder_entry.exit.i:                      ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !25
  %i.da = inttoptr i64 %i.cz to ptr               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.db = getelementptr i8, ptr %i.da, i64 24     ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !22 ; 2 uses
  %.not.i54.i = icmp eq ptr %i.dc, null
  br i1 %.not.i54.i, label %bb.ai, label %load_transcoder_entry.exit.thread64.i

bb.ai:                                            ; preds = %get_transcoder_entry.exit.i
  %i.dd = getelementptr i8, ptr %i.da, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !28 ; 3 uses
  %.not22.i.i = icmp eq ptr %i.de, null
  br i1 %.not22.i.i, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.de) #22 ; 3 uses
  %i.dg = add i64 %i.df, 10                       ; 2 uses
  %i.dh = call i64 @rb_str_new(ptr noundef null, i64 noundef %i.dg) #19, !callees !36, !inline_history !144 ; 4 uses
  %i.di = inttoptr i64 %i.dh to ptr               ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !38
  %i.dk = and i64 %i.dj, 8192
  %.not.i.i56.i = icmp eq i64 %i.dk, 0
  %i.dl = getelementptr i8, ptr %i.di, i64 24     ; 2 uses
  br i1 %.not.i.i56.i, label %RSTRING_PTR.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !30
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.ak, %bb.aj
  %i.dn = phi ptr [ %i.dm, %bb.ak ], [ %i.dl, %bb.aj ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.dn, ptr noundef nonnull align 1 dereferenceable(10) @transcoder_lib_prefix, i64 noundef range(i64 1, 0) 10, i1 noundef false) #19
  %.not.i24.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.i24.i.i, label %load_transcoder_entry.exit.i, label %bb.al

bb.al:                                            ; preds = %RSTRING_PTR.exit.i.i
  %i.do = getelementptr i8, ptr %i.dn, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.do, ptr noundef nonnull readonly align 1 %i.de, i64 noundef range(i64 1, 0) %i.df, i1 noundef false) #19
  br label %load_transcoder_entry.exit.i

load_transcoder_entry.exit.i:                     ; preds = %bb.al, %RSTRING_PTR.exit.i.i
  call void @rb_str_set_len(i64 noundef %i.dh, i64 noundef %i.dg) #19
  call void @rb_obj_freeze_inline(i64 noundef %i.dh) #19
  %i.dp = call i32 @rb_require_internal_silent(i64 noundef %i.dh) #19 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.db, align 8, !tbaa !22 ; 2 uses
  %.not43.not.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not43.not.i, label %bb.an, label %load_transcoder_entry.exit.thread64.i

load_transcoder_entry.exit.thread64.i:            ; preds = %load_transcoder_entry.exit.i, %get_transcoder_entry.exit.i
  %.0.i5567.i = phi ptr [ %.pre.i.i, %load_transcoder_entry.exit.i ], [ %i.dc, %get_transcoder_entry.exit.i ] ; 2 uses
  %i.dq = load ptr, ptr %.0.i5567.i, align 8, !tbaa !14
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !30
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %.thread73.i, label %bb.am

bb.am:                                            ; preds = %load_transcoder_entry.exit.thread64.i
  %i.dt = getelementptr i8, ptr %.0.i5567.i, i64 68
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !64
  %i.dv = icmp eq i32 %i.du, 2
  br i1 %i.dv, label %.thread73.i.sink.split, label %.thread73.i

.thread73.i.sink.split:                           ; preds = %RARRAY_AREF.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.am
  %.4.i.ph = phi i32 [ %i.bl, %bb.am ], [ %i.bk, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bk, %RARRAY_AREF.exit.i ]
  %i.dw = add nsw i32 %.025.i.i, -1
  %i.dx = add i32 %i.dw, %i.bk
  %i.dy = sext i32 %i.dx to i64
  call void @rb_ary_store(i64 noundef %i.t, i64 noundef %i.dy, i64 noundef %i.br) #19
  br label %.thread73.i

.thread73.i:                                      ; preds = %.thread73.i.sink.split, %bb.am, %load_transcoder_entry.exit.thread64.i, %RARRAY_LENINT.exit.i
  %.4.i = phi i32 [ 0, %RARRAY_LENINT.exit.i ], [ %i.bk, %load_transcoder_entry.exit.thread64.i ], [ %i.bk, %bb.am ], [ %.4.i.ph, %.thread73.i.sink.split ]
  %.not82.i = icmp eq i32 %.025.i.i, 0
  br i1 %.not82.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread73.i
  %wide.trip.count.i = zext nneg i32 %.025.i.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.dz = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ea = add i32 %.4.i, %i.dz
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !29
  %i.ee = call i64 @rb_str_new_cstr(ptr noundef %i.ed) #19
  call void @rb_ary_store(i64 noundef %i.t, i64 noundef %i.eb, i64 noundef %i.ee) #19
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !145

bb.an:                                            ; preds = %bb.ai, %load_transcoder_entry.exit.i, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ef = call i64 @rb_econv_open_exc(ptr noundef %i.q, ptr noundef %i.r, i32 noundef %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #19
  store ptr %i.d, ptr %i.o, align 8, !tbaa !106
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.o) #19, !srcloc !146
  %i.eg = load ptr, ptr %i.o, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  %i.eh = load volatile i64, ptr %i.eg, align 8, !tbaa !25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  store ptr %i.e, ptr %i.p, align 8, !tbaa !106
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.p) #19, !srcloc !147
  %i.ei = load ptr, ptr %i.p, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #19
  %i.ej = load volatile i64, ptr %i.ei, align 8, !tbaa !25 ; 0 uses
  call void @rb_exc_raise(i64 noundef %i.ef) #20
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i, %.thread73.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ek = load i64, ptr %i.l, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  ret i64 %i.ek
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @econv_init(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef returned %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.rb_econv_init_by_convpath_t, align 8 ; 6 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 7 uses
  %i.n = alloca ptr, align 8                      ; 7 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %i.p = alloca ptr, align 8                      ; 7 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %i.u = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @econv_data_type) #19
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = load i64, ptr @rb_eTypeError, align 8, !tbaa !25
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.w, ptr noundef nonnull @.str.113) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.x = icmp eq i32 %0, 1
  br i1 %i.x, label %bb.d, label %.split

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %1, align 8, !tbaa !25
  %i.z = tail call i64 @rb_check_array_type(i64 noundef %i.y) #19 ; 3 uses
  %i.aa = icmp eq i64 %i.z, 4
  br i1 %i.aa, label %.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.ab = inttoptr i64 %i.z to ptr                ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.ad = and i64 %i.ac, 8192
  %.not.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = lshr i64 %i.ac, 15
  %i.af = and i64 %i.ae, 127
  br label %rb_array_len.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr i8, ptr %i.ab, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !30
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i64 [ %i.af, %bb.f ], [ %i.ah, %bb.g ] ; 3 uses
  %i.ai = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.ai, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.h

bb.h:                                             ; preds = %rb_array_len.exit.i.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i.i) #25
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.aj = trunc nsw i64 %.0.i.i.i to i32
  %spec.store.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 1) ; 2 uses
  %i.ak = tail call noalias nonnull dereferenceable(184) ptr @ruby_xmalloc(i64 noundef 184) #21 ; 16 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  store i32 0, ptr %i.al, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ak, i8 0, i64 80, i1 false)
  store i32 %spec.store.select.i.i, ptr %i.am, align 4, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 96 ; 3 uses
  store i32 0, ptr %i.an, align 8, !tbaa !48
  %i.ao = zext nneg i32 %spec.store.select.i.i to i64
  %i.ap = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.ao, i64 noundef 48) #23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 80 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !49
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 100
  store i32 0, ptr %i.ar, align 4, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  store ptr null, ptr %i.as, align 8, !tbaa !51
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  store i32 3, ptr %i.at, align 8, !tbaa !52
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, i8 0, i64 64, i1 false)
  %i.av = inttoptr i64 %2 to ptr
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  store ptr %i.ak, ptr %i.aw, align 8, !tbaa !148
  %i.ax = getelementptr i8, ptr %i.ab, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.aq, %RARRAY_LENINT.exit.i
  %.pre.i = phi ptr [ undef, %RARRAY_LENINT.exit.i ], [ %.pre.i36, %bb.aq ] ; 2 uses
  %.072.i = phi ptr [ null, %RARRAY_LENINT.exit.i ], [ %.173.i, %bb.aq ]
  %.071.i = phi ptr [ null, %RARRAY_LENINT.exit.i ], [ %.1.i, %bb.aq ]
  %.044.i = phi i32 [ 1, %RARRAY_LENINT.exit.i ], [ %.2.i, %bb.aq ] ; 3 uses
  %.0.i = phi i64 [ 0, %RARRAY_LENINT.exit.i ], [ %i.eo, %bb.aq ] ; 3 uses
  %i.bb = load i64, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %i.bc = and i64 %i.bb, 8192
  %.not.i.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = lshr i64 %i.bb, 15
  %i.be = and i64 %i.bd, 127
  br label %rb_array_len.exit.i

bb.k:                                             ; preds = %bb.i
  %i.bf = load i64, ptr %i.ax, align 8, !tbaa !30
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.k, %bb.j
  %.0.i.i = phi i64 [ %i.be, %bb.j ], [ %i.bf, %bb.k ]
  %i.bg = icmp slt i64 %.0.i, %.0.i.i
  br i1 %i.bg, label %bb.l, label %bb.ar

bb.l:                                             ; preds = %rb_array_len.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.bh = call i64 @rb_ary_entry(i64 noundef %i.z, i64 noundef %.0.i) #22 ; 2 uses
  store i64 %i.bh, ptr %i.c, align 8, !tbaa !25
  %i.bi = call i64 @rb_check_array_type(i64 noundef %i.bh) #19 ; 4 uses
  %i.bj = icmp eq i64 %i.bi, 4
  br i1 %i.bj, label %bb.x, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !38 ; 2 uses
  %i.bm = and i64 %i.bl, 8192
  %.not.i47.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i47.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = lshr i64 %i.bl, 15
  %i.bo = and i64 %i.bn, 127
  br label %rb_array_len.exit49.i

bb.o:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %i.bk, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !30
  br label %rb_array_len.exit49.i

rb_array_len.exit49.i:                            ; preds = %bb.o, %bb.n
  %.0.i48.i = phi i64 [ %i.bo, %bb.n ], [ %i.bq, %bb.o ]
  %.not45.i = icmp eq i64 %.0.i48.i, 2
  br i1 %.not45.i, label %bb.q, label %bb.p

end_hunk_0

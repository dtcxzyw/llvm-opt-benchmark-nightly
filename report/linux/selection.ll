Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/selection?download=true
inline.NumInlined: 48
inline.NumDeleted: 20
begin_hunk_0_@sel_loadlut:copy_from_user.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !10
  %i.b = call i64 @_copy_from_user(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef 16) #9
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %copy_from_user.exit
  call void @console_lock() #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @inwordLut, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @console_unlock() #9
  br label %bb.b

bb.b:                                             ; preds = %copy_from_user.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ -14, %copy_from_user.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @set_selection_user(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 16 prefalign(16) {
copy_from_user.exit:
  %2 = alloca %struct.tiocl_selection, align 2    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %2, i8 0, i64 10, i1 false), !annotation !10
  %i.a = call i64 @_copy_from_user(ptr noundef nonnull %2, ptr noundef %0, i64 noundef 10) #9
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.a, label %bb.d

bb.a:                                             ; preds = %copy_from_user.exit
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i16, ptr %i.b, align 2
  %.off = add i16 %i.c, -3
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = call i32 @set_selection_kernel(ptr noundef nonnull %2, ptr noundef %1) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %copy_from_user.exit, %bb.c
  %.0 = phi i32 [ -14, %copy_from_user.exit ], [ %i.e, %bb.c ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @set_selection_kernel(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @vc_sel) #9
  tail call void @console_lock() #9
  %i.a = load i32, ptr @fg_console, align 4
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr [40 x i8], ptr @vc_cons, i64 %i.b
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  tail call void @poke_blanked_console() #9
  %i.e = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.f = load i16, ptr %i.e, align 2
  %i.g = icmp eq i16 %i.f, 4
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  tail call void @complement_pos(ptr noundef %i.h, i32 noundef -1) #9
  %i.i = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  %.not.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i, label %vc_selection.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4 ; 2 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 48), align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %reass.sub16 = sub i32 %i.k, %i.j
  %i.m = add i32 %reass.sub16, 2
  tail call void @invert_screen(ptr noundef %i.l, i32 noundef %i.j, i32 noundef %i.m, i1 noundef zeroext true) #9
  store volatile i32 -1, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  br label %vc_selection.exit

bb.d:                                             ; preds = %bb.a
  %i.n = load i16, ptr %0, align 2
  %i.o = zext i16 %i.n to i32
  %i.p = add nsw i32 %i.o, -1
  %i.q = getelementptr i8, ptr %i.d, i64 404      ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add i32 %i.r, -1
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %i.s)
  %i.u = trunc i32 %i.t to i16
  store i16 %i.u, ptr %0, align 2
  %i.v = getelementptr i8, ptr %0, i64 2          ; 4 uses
  %i.w = load i16, ptr %i.v, align 2
  %i.x = zext i16 %i.w to i32
  %i.y = add nsw i32 %i.x, -1
  %i.z = getelementptr i8, ptr %i.d, i64 408      ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = add i32 %i.aa, -1
  %i.ac = tail call i32 @llvm.umin.i32(i32 %i.y, i32 %i.ab)
  %i.ad = trunc i32 %i.ac to i16
  store i16 %i.ad, ptr %i.v, align 2
  %i.ae = getelementptr i8, ptr %0, i64 4         ; 3 uses
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = load i32, ptr %i.q, align 4
  %i.aj = add i32 %i.ai, -1
  %i.ak = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.aj)
  %i.al = trunc i32 %i.ak to i16
  store i16 %i.al, ptr %i.ae, align 2
  %i.am = getelementptr i8, ptr %0, i64 6         ; 3 uses
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = zext i16 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = load i32, ptr %i.z, align 8
  %i.ar = add i32 %i.aq, -1
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.ar)
  %i.at = trunc i32 %i.as to i16
  store i16 %i.at, ptr %i.am, align 2
  %i.au = tail call i32 @mouse_reporting() #9
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = load i16, ptr %i.e, align 2
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %i.ax = and i32 %i.aw, 16
  %.not61.i = icmp eq i32 %i.ax, 0
  br i1 %.not61.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ay = and i32 %i.aw, 15
  %i.az = load i16, ptr %0, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = load i16, ptr %i.v, align 2
  %i.bc = zext i16 %i.bb to i32
  tail call void @mouse_report(ptr noundef %1, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef %i.bc) #9
  br label %vc_selection.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.bd = load i16, ptr %i.v, align 2
  %i.be = zext i16 %i.bd to i32
  %i.bf = getelementptr i8, ptr %i.d, i64 412     ; 12 uses
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.bh = mul i32 %i.bg, %i.be
  %i.bi = load i16, ptr %0, align 2
  %i.bj = zext i16 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 1
  %i.bl = add i32 %i.bk, %i.bh                    ; 2 uses
  %i.bm = load i16, ptr %i.am, align 2
  %i.bn = zext i16 %i.bm to i32
  %i.bo = mul i32 %i.bg, %i.bn
  %i.bp = load i16, ptr %i.ae, align 2
  %i.bq = zext i16 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 1
  %i.bs = add i32 %i.br, %i.bo                    ; 2 uses
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 %i.bs) ; 13 uses
  %spec.select63.i = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %i.bs) ; 12 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 2 uses
  %.not62.i = icmp eq ptr %i.bt, %i.d
  br i1 %.not62.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @complement_pos(ptr noundef %i.bt, i32 noundef -1) #9
  %i.bu = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  %.not.i64.i = icmp eq i32 %i.bu, -1
  br i1 %.not.i64.i, label %clear_selection.exit66.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4 ; 2 uses
  %i.bw = load i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 48), align 8
  %i.bx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %reass.sub = sub i32 %i.bw, %i.bv
  %i.by = add i32 %reass.sub, 2
  tail call void @invert_screen(ptr noundef %i.bx, i32 noundef %i.bv, i32 noundef %i.by, i1 noundef zeroext true) #9
  store volatile i32 -1, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  br label %clear_selection.exit66.i

clear_selection.exit66.i:                         ; preds = %bb.i, %bb.h
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  br label %bb.j

bb.j:                                             ; preds = %clear_selection.exit66.i, %bb.g
  %i.bz = load i16, ptr %i.e, align 2
  %i.ca = load i32, ptr @fg_console, align 4
  %i.cb = tail call i32 @vt_do_kdgkbmode(i32 noundef %i.ca) #9
  %i.cc = icmp eq i32 %i.cb, 3                    ; 10 uses
  switch i16 %i.bz, label %vc_selection.exit [
    i16 0, label %.loopexit.i.i
    i16 1, label %bb.k
    i16 2, label %bb.q
    i16 3, label %bb.r
  ]

bb.k:                                             ; preds = %bb.j
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 3 uses
  br i1 %i.cc, label %sel_pos.exit.i.i, label %sel_pos.exit.thread.i.i

sel_pos.exit.i.i:                                 ; preds = %bb.k
  %i.ce = sdiv i32 %spec.select63.i, 2            ; 2 uses
  %i.cf = tail call i32 @screen_glyph_unicode(ptr noundef %i.cd, i32 noundef %i.ce) #9
  %i.cg = icmp eq i32 %i.cf, 32
  br i1 %i.cg, label %sel_pos.exit.split.us.split.us.i.i, label %.critedge.i.i.preheader

.critedge.i.i.preheader:                          ; preds = %sel_pos.exit.thread.i.i, %sel_pos.exit.i.i
  br label %.critedge.i.i

sel_pos.exit.thread.i.i:                          ; preds = %bb.k
  %i.ch = tail call zeroext i16 @screen_glyph(ptr noundef %i.cd, i32 noundef %spec.select63.i) #9
  %i.ci = tail call zeroext i16 @inverse_translate(ptr noundef %i.cd, i16 noundef zeroext %i.ch, i1 noundef zeroext false) #9
  %i.cj = icmp eq i16 %i.ci, 32
  br i1 %i.cj, label %sel_pos.exit.split.us.split.i.i, label %.critedge.i.i.preheader

sel_pos.exit.split.us.split.us.i.i:               ; preds = %sel_pos.exit.i.i
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %i.cl = tail call i32 @screen_glyph_unicode(ptr noundef %i.ck, i32 noundef %i.ce) #9
  %i.cm = icmp eq i32 %i.cl, 32
  br i1 %i.cm, label %inword.exit.thread.us.us.i.i, label %.split.us.thread.i.i

.split.us.thread.i.i:                             ; preds = %sel_pos.exit.split.us.split.us.i.i
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  br label %sel_pos.exit93.i.i

inword.exit.thread.us.us.i.i:                     ; preds = %sel_pos.exit.split.us.split.us.i.i, %sel_pos.exit89.us.us.i.i
  %.073.us.us131.i.i = phi i32 [ %i.cq, %sel_pos.exit89.us.us.i.i ], [ %spec.select63.i, %sel_pos.exit.split.us.split.us.i.i ] ; 4 uses
  %i.co = load i32, ptr %i.bf, align 4
  %i.cp = urem i32 %.073.us.us131.i.i, %i.co
  %.not81.us.us.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not81.us.us.i.i, label %.split.us.i.i, label %sel_pos.exit89.us.us.i.i

sel_pos.exit89.us.us.i.i:                         ; preds = %inword.exit.thread.us.us.i.i
  %i.cq = add i32 %.073.us.us131.i.i, -2          ; 2 uses
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %i.cs = sdiv i32 %i.cq, 2
  %i.ct = tail call i32 @screen_glyph_unicode(ptr noundef %i.cr, i32 noundef %i.cs) #9
  %i.cu = icmp eq i32 %i.ct, 32
  br i1 %i.cu, label %inword.exit.thread.us.us.i.i, label %.split.us.i.i

sel_pos.exit.split.us.split.i.i:                  ; preds = %sel_pos.exit.thread.i.i
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 2 uses
  %i.cw = tail call zeroext i16 @screen_glyph(ptr noundef %i.cv, i32 noundef %spec.select63.i) #9
  %i.cx = tail call zeroext i16 @inverse_translate(ptr noundef %i.cv, i16 noundef zeroext %i.cw, i1 noundef zeroext false) #9
  %i.cy = icmp eq i16 %i.cx, 32
  br i1 %i.cy, label %inword.exit.thread.us.i.i, label %.split.us.thread163.i.i

.split.us.thread163.i.i:                          ; preds = %sel_pos.exit.split.us.split.i.i
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  br label %sel_pos.exit93.thread.i.i

inword.exit.thread.us.i.i:                        ; preds = %sel_pos.exit.split.us.split.i.i, %sel_pos.exit89.us.i.i
  %.073.us129.i.i = phi i32 [ %i.dc, %sel_pos.exit89.us.i.i ], [ %spec.select63.i, %sel_pos.exit.split.us.split.i.i ] ; 4 uses
  %i.da = load i32, ptr %i.bf, align 4
  %i.db = urem i32 %.073.us129.i.i, %i.da
  %.not81.us.i.i = icmp eq i32 %i.db, 0
  br i1 %.not81.us.i.i, label %.split.us.i.i, label %sel_pos.exit89.us.i.i

sel_pos.exit89.us.i.i:                            ; preds = %inword.exit.thread.us.i.i
  %i.dc = add i32 %.073.us129.i.i, -2             ; 2 uses
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 2 uses
  %i.de = tail call zeroext i16 @screen_glyph(ptr noundef %i.dd, i32 noundef %i.dc) #9
  %i.df = tail call zeroext i16 @inverse_translate(ptr noundef %i.dd, i16 noundef zeroext %i.de, i1 noundef zeroext false) #9
  %i.dg = icmp eq i16 %i.df, 32
  br i1 %i.dg, label %inword.exit.thread.us.i.i, label %.split.us.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.preheader, %bb.n
  %.075.i.i = phi i32 [ %.073.i.i, %bb.n ], [ %spec.select63.i, %.critedge.i.i.preheader ]
  %.073.i.i = phi i32 [ %i.dx, %bb.n ], [ %spec.select63.i, %.critedge.i.i.preheader ] ; 6 uses
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 3 uses
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge.i.i
  %i.di = sdiv i32 %.073.i.i, 2
  %i.dj = tail call i32 @screen_glyph_unicode(ptr noundef %i.dh, i32 noundef %i.di) #9
  br label %sel_pos.exit91.i.i

bb.m:                                             ; preds = %.critedge.i.i
  %i.dk = tail call zeroext i16 @screen_glyph(ptr noundef %i.dh, i32 noundef %.073.i.i) #9
  %i.dl = tail call zeroext i16 @inverse_translate(ptr noundef %i.dh, i16 noundef zeroext %i.dk, i1 noundef zeroext false) #9
  %i.dm = zext i16 %i.dl to i32
  br label %sel_pos.exit91.i.i

sel_pos.exit91.i.i:                               ; preds = %bb.m, %bb.l
  %.0.i90.i.i = phi i32 [ %i.dj, %bb.l ], [ %i.dm, %bb.m ] ; 3 uses
  %i.dn = icmp ugt i32 %.0.i90.i.i, 127
  br i1 %i.dn, label %inword.exit.thread.i.i, label %inword.exit.i.i

inword.exit.i.i:                                  ; preds = %sel_pos.exit91.i.i
  %i.do = lshr i32 %.0.i90.i.i, 5
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr [4 x i8], ptr @inwordLut, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = and i32 %.0.i90.i.i, 31
  %i.dt = shl nuw i32 1, %i.ds
  %i.du = and i32 %i.dr, %i.dt
  %.not.i68.i = icmp eq i32 %i.du, 0
  br i1 %.not.i68.i, label %.split.us.i.i, label %inword.exit.thread.i.i

inword.exit.thread.i.i:                           ; preds = %inword.exit.i.i, %sel_pos.exit91.i.i
  %i.dv = load i32, ptr %i.bf, align 4
  %i.dw = urem i32 %.073.i.i, %i.dv
  %.not81.i.i = icmp eq i32 %i.dw, 0
  br i1 %.not81.i.i, label %.split.us.i.i, label %bb.n

bb.n:                                             ; preds = %inword.exit.thread.i.i
  %i.dx = add i32 %.073.i.i, -2
  br label %.critedge.i.i

.split.us.i.i:                                    ; preds = %sel_pos.exit89.us.i.i, %inword.exit.thread.us.i.i, %inword.exit.thread.i.i, %inword.exit.i.i, %sel_pos.exit89.us.us.i.i, %inword.exit.thread.us.us.i.i
  %.us-phi.i.i = phi i32 [ %.075.i.i, %inword.exit.i.i ], [ %.073.us.us131.i.i, %sel_pos.exit89.us.us.i.i ], [ %.073.us.us131.i.i, %inword.exit.thread.us.us.i.i ], [ %.073.i.i, %inword.exit.thread.i.i ], [ %.073.us129.i.i, %inword.exit.thread.us.i.i ], [ %.073.us129.i.i, %sel_pos.exit89.us.i.i ] ; 2 uses
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 2 uses
  br i1 %i.cc, label %sel_pos.exit93.i.i, label %sel_pos.exit93.thread.i.i

sel_pos.exit93.i.i:                               ; preds = %.split.us.i.i, %.split.us.thread.i.i
  %i.dz = phi ptr [ %i.cn, %.split.us.thread.i.i ], [ %i.dy, %.split.us.i.i ]
  %.us-phi162.i.i = phi i32 [ %spec.select63.i, %.split.us.thread.i.i ], [ %.us-phi.i.i, %.split.us.i.i ] ; 4 uses
  %i.ea = sdiv i32 %spec.select.i, 2              ; 2 uses
  %i.eb = tail call i32 @screen_glyph_unicode(ptr noundef %i.dz, i32 noundef %i.ea) #9
  %i.ec = icmp eq i32 %i.eb, 32
  br i1 %i.ec, label %sel_pos.exit93.split.us.split.us.i.i, label %.critedge87.preheader.i.i

sel_pos.exit93.thread.i.i:                        ; preds = %.split.us.i.i, %.split.us.thread163.i.i
  %i.ed = phi ptr [ %i.cz, %.split.us.thread163.i.i ], [ %i.dy, %.split.us.i.i ] ; 2 uses
  %.us-phi165.i.i = phi i32 [ %spec.select63.i, %.split.us.thread163.i.i ], [ %.us-phi.i.i, %.split.us.i.i ] ; 4 uses
  %i.ee = tail call zeroext i16 @screen_glyph(ptr noundef %i.ed, i32 noundef %spec.select.i) #9
  %i.ef = tail call zeroext i16 @inverse_translate(ptr noundef %i.ed, i16 noundef zeroext %i.ee, i1 noundef zeroext false) #9
  %i.eg = icmp eq i16 %i.ef, 32
  br i1 %i.eg, label %sel_pos.exit93.split.us.split.i.i, label %.critedge87.preheader.i.i

.critedge87.preheader.i.i:                        ; preds = %sel_pos.exit93.thread.i.i, %sel_pos.exit93.i.i
  %.us-phi161169.i.i = phi i32 [ %.us-phi165.i.i, %sel_pos.exit93.thread.i.i ], [ %.us-phi162.i.i, %sel_pos.exit93.i.i ] ; 2 uses
  br label %.critedge87.i.i

sel_pos.exit93.split.us.split.us.i.i:             ; preds = %sel_pos.exit93.i.i
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %i.ei = tail call i32 @screen_glyph_unicode(ptr noundef %i.eh, i32 noundef %i.ea) #9
  %i.ej = icmp eq i32 %i.ei, 32
  br i1 %i.ej, label %inword.exit98.thread.us.us.i.i, label %.loopexit.i.i

sel_pos.exit95.us.us.i.i:                         ; preds = %inword.exit98.thread.us.us.i.i
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %i.el = sdiv i32 %i.eo, 2
  %i.em = tail call i32 @screen_glyph_unicode(ptr noundef %i.ek, i32 noundef %i.el) #9
  %i.en = icmp eq i32 %i.em, 32
  br i1 %i.en, label %inword.exit98.thread.us.us.i.i, label %.loopexit.i.i

inword.exit98.thread.us.us.i.i:                   ; preds = %sel_pos.exit93.split.us.split.us.i.i, %sel_pos.exit95.us.us.i.i
  %.074.us.us139.i.i = phi i32 [ %i.eo, %sel_pos.exit95.us.us.i.i ], [ %spec.select.i, %sel_pos.exit93.split.us.split.us.i.i ] ; 3 uses
  %i.eo = add i32 %.074.us.us139.i.i, 2           ; 3 uses
  %i.ep = load i32, ptr %i.bf, align 4
  %i.eq = urem i32 %i.eo, %i.ep
  %.not83.us.us.i.i = icmp eq i32 %i.eq, 0
  br i1 %.not83.us.us.i.i, label %.loopexit.i.i, label %sel_pos.exit95.us.us.i.i

sel_pos.exit93.split.us.split.i.i:                ; preds = %sel_pos.exit93.thread.i.i
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 2 uses
  %i.es = tail call zeroext i16 @screen_glyph(ptr noundef %i.er, i32 noundef %spec.select.i) #9
  %i.et = tail call zeroext i16 @inverse_translate(ptr noundef %i.er, i16 noundef zeroext %i.es, i1 noundef zeroext false) #9
  %i.eu = icmp eq i16 %i.et, 32
  br i1 %i.eu, label %inword.exit98.thread.us.i.i, label %.loopexit.i.i

sel_pos.exit95.us.i.i:                            ; preds = %inword.exit98.thread.us.i.i
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 2 uses
  %i.ew = tail call zeroext i16 @screen_glyph(ptr noundef %i.ev, i32 noundef %i.ez) #9
  %i.ex = tail call zeroext i16 @inverse_translate(ptr noundef %i.ev, i16 noundef zeroext %i.ew, i1 noundef zeroext false) #9
  %i.ey = icmp eq i16 %i.ex, 32
  br i1 %i.ey, label %inword.exit98.thread.us.i.i, label %.loopexit.i.i

inword.exit98.thread.us.i.i:                      ; preds = %sel_pos.exit93.split.us.split.i.i, %sel_pos.exit95.us.i.i
  %.074.us136.i.i = phi i32 [ %i.ez, %sel_pos.exit95.us.i.i ], [ %spec.select.i, %sel_pos.exit93.split.us.split.i.i ] ; 3 uses
  %i.ez = add i32 %.074.us136.i.i, 2              ; 3 uses
  %i.fa = load i32, ptr %i.bf, align 4
  %i.fb = urem i32 %i.ez, %i.fa
  %.not83.us.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not83.us.i.i, label %.loopexit.i.i, label %sel_pos.exit95.us.i.i

.critedge87.i.i:                                  ; preds = %inword.exit98.thread.i.i, %.critedge87.preheader.i.i
  %.077.i.i = phi i32 [ %.074.i.i, %inword.exit98.thread.i.i ], [ %spec.select.i, %.critedge87.preheader.i.i ]
  %.074.i.i = phi i32 [ %i.fq, %inword.exit98.thread.i.i ], [ %spec.select.i, %.critedge87.preheader.i.i ] ; 5 uses
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 3 uses
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge87.i.i
  %i.fd = sdiv i32 %.074.i.i, 2
  %i.fe = tail call i32 @screen_glyph_unicode(ptr noundef %i.fc, i32 noundef %i.fd) #9
  br label %sel_pos.exit97.i.i

bb.p:                                             ; preds = %.critedge87.i.i
end_hunk_0
begin_hunk_1_@set_selection_kernel:bb.a
  %i.ft = load i32, ptr %i.bf, align 4            ; 3 uses
  %i.fu = urem i32 %spec.select63.i, %i.ft
  %i.fv = sub nuw i32 %spec.select63.i, %i.fu
  %i.fw = urem i32 %spec.select.i, %i.ft
  %i.fx = add i32 %spec.select.i, -2
  %i.fy = add i32 %i.fx, %i.ft
  %i.fz = sub i32 %i.fy, %i.fw
  br label %.loopexit.i.i

bb.r:                                             ; preds = %bb.j
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  tail call void @complement_pos(ptr noundef %i.ga, i32 noundef %spec.select.i) #9
  br label %vc_selection.exit

.loopexit.i.i:                                    ; preds = %inword.exit98.thread.us.i.i, %sel_pos.exit95.us.i.i, %inword.exit98.thread.i.i, %inword.exit98.i.i, %inword.exit98.thread.us.us.i.i, %sel_pos.exit95.us.us.i.i, %bb.q, %sel_pos.exit93.split.us.split.i.i, %sel_pos.exit93.split.us.split.us.i.i, %bb.j
  %.178.i.i = phi i32 [ %i.fz, %bb.q ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %sel_pos.exit93.split.us.split.i.i ], [ %.077.i.i, %inword.exit98.i.i ], [ %.074.us.us139.i.i, %inword.exit98.thread.us.us.i.i ], [ %spec.select.i, %sel_pos.exit93.split.us.split.us.i.i ], [ %.074.us.us139.i.i, %sel_pos.exit95.us.us.i.i ], [ %.074.i.i, %inword.exit98.thread.i.i ], [ %.074.us136.i.i, %sel_pos.exit95.us.i.i ], [ %.074.us136.i.i, %inword.exit98.thread.us.i.i ] ; 11 uses
  %.2.i.i = phi i32 [ %i.fv, %bb.q ], [ %spec.select63.i, %bb.j ], [ %.us-phi165.i.i, %sel_pos.exit93.split.us.split.i.i ], [ %.us-phi161169.i.i, %inword.exit98.thread.i.i ], [ %.us-phi162.i.i, %inword.exit98.thread.us.us.i.i ], [ %.us-phi162.i.i, %sel_pos.exit93.split.us.split.us.i.i ], [ %.us-phi162.i.i, %sel_pos.exit95.us.us.i.i ], [ %.us-phi161169.i.i, %inword.exit98.i.i ], [ %.us-phi165.i.i, %sel_pos.exit95.us.i.i ], [ %.us-phi165.i.i, %inword.exit98.thread.us.i.i ] ; 11 uses
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  tail call void @complement_pos(ptr noundef %i.gb, i32 noundef -1) #9
  %i.gc = icmp sgt i32 %.178.i.i, %.2.i.i
  br i1 %i.gc, label %bb.s, label %atedge.exit.thread.i.i

bb.s:                                             ; preds = %.loopexit.i.i
  %i.gd = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.ge = srem i32 %.178.i.i, %i.gd
  %.not.i.i.i = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i.i, label %atedge.exit.thread.i.i, label %atedge.exit.i.i

atedge.exit.i.i:                                  ; preds = %bb.s
  %i.gf = add i32 %.178.i.i, 2
  %i.gg = srem i32 %i.gf, %i.gd
  %.not4.i.not.i.i = icmp eq i32 %i.gg, 0
  br i1 %.not4.i.not.i.i, label %atedge.exit.thread.i.i, label %bb.t

bb.t:                                             ; preds = %atedge.exit.i.i
  %i.gh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 3 uses
  br i1 %i.cc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gi = sdiv i32 %.178.i.i, 2
  %i.gj = tail call i32 @screen_glyph_unicode(ptr noundef %i.gh, i32 noundef %i.gi) #9
  br label %sel_pos.exit100.i.i

bb.v:                                             ; preds = %bb.t
  %i.gk = tail call zeroext i16 @screen_glyph(ptr noundef %i.gh, i32 noundef %.178.i.i) #9
  %i.gl = tail call zeroext i16 @inverse_translate(ptr noundef %i.gh, i16 noundef zeroext %i.gk, i1 noundef zeroext false) #9
  %i.gm = zext i16 %i.gl to i32
  br label %sel_pos.exit100.i.i

sel_pos.exit100.i.i:                              ; preds = %bb.v, %bb.u
  %.0.i99.i.i = phi i32 [ %i.gj, %bb.u ], [ %i.gm, %bb.v ]
  %i.gn = icmp eq i32 %.0.i99.i.i, 32
  br i1 %i.gn, label %.preheader.i.i, label %atedge.exit.thread.i.i

.preheader.i.i:                                   ; preds = %sel_pos.exit100.i.i, %atedge.exit105.i.i
  %.1.in.i.i = phi i32 [ %.1.i.i, %atedge.exit105.i.i ], [ %.178.i.i, %sel_pos.exit100.i.i ] ; 2 uses
  %.1.i.i = add i32 %.1.in.i.i, 2                 ; 7 uses
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 3 uses
  br i1 %i.cc, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.preheader.i.i
  %i.gp = sdiv i32 %.1.i.i, 2
  %i.gq = tail call i32 @screen_glyph_unicode(ptr noundef %i.go, i32 noundef %i.gp) #9
  br label %sel_pos.exit102.i.i

bb.x:                                             ; preds = %.preheader.i.i
  %i.gr = tail call zeroext i16 @screen_glyph(ptr noundef %i.go, i32 noundef %.1.i.i) #9
  %i.gs = tail call zeroext i16 @inverse_translate(ptr noundef %i.go, i16 noundef zeroext %i.gr, i1 noundef zeroext false) #9
  %i.gt = zext i16 %i.gs to i32
  br label %sel_pos.exit102.i.i

sel_pos.exit102.i.i:                              ; preds = %bb.x, %bb.w
  %.0.i101.i.i = phi i32 [ %i.gq, %bb.w ], [ %i.gt, %bb.x ]
  %i.gu = icmp eq i32 %.0.i101.i.i, 32
  br i1 %i.gu, label %bb.y, label %atedge.exit105.thread.i.i

bb.y:                                             ; preds = %sel_pos.exit102.i.i
  %i.gv = load i32, ptr %i.bf, align 4            ; 2 uses
  %i.gw = srem i32 %.1.i.i, %i.gv
  %.not.i103.i.i = icmp eq i32 %i.gw, 0
  br i1 %.not.i103.i.i, label %atedge.exit105.thread.i.i, label %atedge.exit105.i.i

atedge.exit105.i.i:                               ; preds = %bb.y
  %i.gx = add i32 %.1.in.i.i, 4
  %i.gy = srem i32 %i.gx, %i.gv
  %.not4.i104.not.i.i = icmp eq i32 %i.gy, 0
  br i1 %.not4.i104.not.i.i, label %atedge.exit105.thread.i.i, label %.preheader.i.i

atedge.exit105.thread.i.i:                        ; preds = %atedge.exit105.i.i, %bb.y, %sel_pos.exit102.i.i
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 3 uses
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %atedge.exit105.thread.i.i
  %i.ha = sdiv i32 %.1.i.i, 2
  %i.hb = tail call i32 @screen_glyph_unicode(ptr noundef %i.gz, i32 noundef %i.ha) #9
  br label %sel_pos.exit107.i.i

bb.aa:                                            ; preds = %atedge.exit105.thread.i.i
  %i.hc = tail call zeroext i16 @screen_glyph(ptr noundef %i.gz, i32 noundef %.1.i.i) #9
  %i.hd = tail call zeroext i16 @inverse_translate(ptr noundef %i.gz, i16 noundef zeroext %i.hc, i1 noundef zeroext false) #9
  %i.he = zext i16 %i.hd to i32
  br label %sel_pos.exit107.i.i

sel_pos.exit107.i.i:                              ; preds = %bb.aa, %bb.z
  %.0.i106.i.i = phi i32 [ %i.hb, %bb.z ], [ %i.he, %bb.aa ]
  %i.hf = icmp eq i32 %.0.i106.i.i, 32
  %spec.select.i.i = select i1 %i.hf, i32 %.1.i.i, i32 %.178.i.i
  br label %atedge.exit.thread.i.i

atedge.exit.thread.i.i:                           ; preds = %sel_pos.exit107.i.i, %sel_pos.exit100.i.i, %atedge.exit.i.i, %bb.s, %.loopexit.i.i
  %.279.i.i = phi i32 [ %.178.i.i, %atedge.exit.i.i ], [ %.178.i.i, %.loopexit.i.i ], [ %spec.select.i.i, %sel_pos.exit107.i.i ], [ %.178.i.i, %sel_pos.exit100.i.i ], [ %.178.i.i, %bb.s ] ; 9 uses
  %i.hg = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  %i.hh = icmp eq i32 %i.hg, -1
  br i1 %i.hh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %atedge.exit.thread.i.i
  %i.hi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %reass.sub14 = sub i32 %.279.i.i, %.2.i.i
  %i.hj = add i32 %reass.sub14, 2
  tail call void @invert_screen(ptr noundef %i.hi, i32 noundef %.2.i.i, i32 noundef %i.hj, i1 noundef zeroext true) #9
  br label %bb.an

bb.ac:                                            ; preds = %atedge.exit.thread.i.i
  %i.hk = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  %i.hl = icmp eq i32 %.2.i.i, %i.hk
  %i.hm = load i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 48), align 8 ; 5 uses
  %i.hn = icmp eq i32 %.279.i.i, %i.hm            ; 2 uses
  br i1 %i.hl, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.hn, label %vc_selection.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ho = icmp sgt i32 %.279.i.i, %i.hm
  %i.hp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 2 uses
  br i1 %i.ho, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hq = add i32 %i.hm, 2
  %i.hr = sub i32 %.279.i.i, %i.hm
  tail call void @invert_screen(ptr noundef %i.hp, i32 noundef %i.hq, i32 noundef %i.hr, i1 noundef zeroext true) #9
  br label %bb.an

bb.ag:                                            ; preds = %bb.ae
  %i.hs = add i32 %.279.i.i, 2
  %i.ht = sub i32 %i.hm, %.279.i.i
  tail call void @invert_screen(ptr noundef %i.hp, i32 noundef %i.hs, i32 noundef %i.ht, i1 noundef zeroext true) #9
  br label %bb.an

bb.ah:                                            ; preds = %bb.ac
  br i1 %i.hn, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.hu = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  %i.hv = icmp slt i32 %.2.i.i, %i.hu
  %i.hw = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4 ; 3 uses
  %i.hx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 2 uses
  br i1 %i.hv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.hy = sub i32 %i.hw, %.2.i.i
  tail call void @invert_screen(ptr noundef %i.hx, i32 noundef %.2.i.i, i32 noundef %i.hy, i1 noundef zeroext true) #9
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.hz = sub i32 %.2.i.i, %i.hw
  tail call void @invert_screen(ptr noundef %i.hx, i32 noundef %i.hw, i32 noundef %i.hz, i1 noundef zeroext true) #9
  br label %bb.an

bb.al:                                            ; preds = %bb.ah
  %i.ia = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  tail call void @complement_pos(ptr noundef %i.ia, i32 noundef -1) #9
  %i.ib = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  %.not.i112.i.i = icmp eq i32 %i.ib, -1
  br i1 %.not.i112.i.i, label %clear_selection.exit.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ic = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4 ; 2 uses
  %i.id = load i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 48), align 8
  %i.ie = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %reass.sub12 = sub i32 %i.id, %i.ic
  %i.if = add i32 %reass.sub12, 2
  tail call void @invert_screen(ptr noundef %i.ie, i32 noundef %i.ic, i32 noundef %i.if, i1 noundef zeroext true) #9
  store volatile i32 -1, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  br label %clear_selection.exit.i.i

clear_selection.exit.i.i:                         ; preds = %bb.am, %bb.al
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %reass.sub13 = sub i32 %.279.i.i, %.2.i.i
  %i.ih = add i32 %reass.sub13, 2
  tail call void @invert_screen(ptr noundef %i.ig, i32 noundef %.2.i.i, i32 noundef %i.ih, i1 noundef zeroext true) #9
  br label %bb.an

bb.an:                                            ; preds = %clear_selection.exit.i.i, %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.ab
  store volatile i32 %.2.i.i, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  store i32 %.279.i.i, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 48), align 8
  %i.ii = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  %i.ij = sub i32 %.279.i.i, %i.ii
  %i.ik = sdiv i32 %i.ij, 2
  %i.il = add nsw i32 %i.ik, 1
  %i.im = sext i32 %i.il to i64                   ; 2 uses
  %i.in = select i1 %i.cc, i64 4, i64 1
  %i.io = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -1073741823, 1073741825) %i.im, i64 range(i64 1, 5) %i.in)
  %i.ip = extractvalue { i64, i1 } %i.io, 1
  br i1 %i.ip, label %_kmalloc_array_noprof.exit.thread.i.i.i, label %_kmalloc_array_noprof.exit.i.i.i, !prof !11

_kmalloc_array_noprof.exit.i.i.i:                 ; preds = %bb.an
  %2 = select i1 %i.cc, i64 2, i64 0
  %3 = shl nuw nsw i64 %i.im, %2
  %i.iq = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -4294967292, 4294967297) %3, i32 noundef 11456) #12 ; 7 uses
  %.not.i115.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i115.i.i, label %_kmalloc_array_noprof.exit.thread.i.i.i, label %bb.ap

_kmalloc_array_noprof.exit.thread.i.i.i:          ; preds = %_kmalloc_array_noprof.exit.i.i.i, %bb.an
  %i.ir = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13 ; 0 uses
  %i.is = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  tail call void @complement_pos(ptr noundef %i.is, i32 noundef -1) #9
  %i.it = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  %.not.i.i.i.i = icmp eq i32 %i.it, -1
  br i1 %.not.i.i.i.i, label %vc_selection.exit, label %bb.ao

bb.ao:                                            ; preds = %_kmalloc_array_noprof.exit.thread.i.i.i
  %i.iu = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4 ; 2 uses
  %i.iv = load i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 48), align 8
  %i.iw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %reass.sub15 = sub i32 %i.iv, %i.iu
  %i.ix = add i32 %reass.sub15, 2
  tail call void @invert_screen(ptr noundef %i.iw, i32 noundef %i.iu, i32 noundef %i.ix, i1 noundef zeroext true) #9
  store volatile i32 -1, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4
  br label %vc_selection.exit

bb.ap:                                            ; preds = %_kmalloc_array_noprof.exit.i.i.i
  %i.iy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 32), align 8
  tail call void @kfree(ptr noundef %i.iy) #9
  store ptr %i.iq, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 32), align 8
  %i.iz = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 44), align 4 ; 3 uses
  %i.ja = load i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 48), align 8
  %.not3444.i.i.i = icmp ugt i32 %i.iz, %i.ja
  br i1 %.not3444.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap
  br i1 %i.cc, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i, %bb.ba
  %.02847.us.i.i.i = phi ptr [ %.3.us.i.i.i, %bb.ba ], [ %i.iq, %.lr.ph.i.i.i ] ; 14 uses
  %.02946.us.i.i.i = phi ptr [ %.231.us.i.i.i, %bb.ba ], [ %i.iq, %.lr.ph.i.i.i ]
  %.03345.us.i.i.i = phi i32 [ %i.kx, %bb.ba ], [ %i.iz, %.lr.ph.i.i.i ] ; 2 uses
  %i.jb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8
  %i.jc = sdiv i32 %.03345.us.i.i.i, 2
  %i.jd = tail call i32 @screen_glyph_unicode(ptr noundef %i.jb, i32 noundef %i.jc) #9 ; 15 uses
  %i.je = icmp ult i32 %i.jd, 128
  br i1 %i.je, label %bb.ax, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.jf = icmp ult i32 %i.jd, 2048
  br i1 %i.jf, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jg = icmp ult i32 %i.jd, 65536
  br i1 %i.jg, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jh = icmp ult i32 %i.jd, 1114112
  br i1 %i.jh, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i8 -17, ptr %.02847.us.i.i.i, align 1
  %i.ji = getelementptr i8, ptr %.02847.us.i.i.i, i64 1
  store i8 -65, ptr %i.ji, align 1
  %i.jj = getelementptr i8, ptr %.02847.us.i.i.i, i64 2
  store i8 -67, ptr %i.jj, align 1
  br label %store_utf8.exit.us.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.jk = lshr i32 %i.jd, 18
  %i.jl = trunc nuw nsw i32 %i.jk to i8
  %i.jm = or disjoint i8 %i.jl, -16
  store i8 %i.jm, ptr %.02847.us.i.i.i, align 1
  %i.jn = lshr i32 %i.jd, 12
  %i.jo = trunc i32 %i.jn to i8
  %i.jp = and i8 %i.jo, 63
  %i.jq = or disjoint i8 %i.jp, -128
  %i.jr = getelementptr i8, ptr %.02847.us.i.i.i, i64 1
  store i8 %i.jq, ptr %i.jr, align 1
  %i.js = lshr i32 %i.jd, 6
  %i.jt = trunc i32 %i.js to i8
  %i.ju = and i8 %i.jt, 63
  %i.jv = or disjoint i8 %i.ju, -128
  %i.jw = getelementptr i8, ptr %.02847.us.i.i.i, i64 2
  store i8 %i.jv, ptr %i.jw, align 1
  %i.jx = trunc i32 %i.jd to i8
  %i.jy = and i8 %i.jx, 63
  %i.jz = or disjoint i8 %i.jy, -128
  %i.ka = getelementptr i8, ptr %.02847.us.i.i.i, i64 3
  store i8 %i.jz, ptr %i.ka, align 1
  br label %store_utf8.exit.us.i.i.i

bb.av:                                            ; preds = %bb.ar
  %i.kb = lshr i32 %i.jd, 12
  %i.kc = trunc nuw nsw i32 %i.kb to i8
  %i.kd = or disjoint i8 %i.kc, -32
  store i8 %i.kd, ptr %.02847.us.i.i.i, align 1
  %i.ke = lshr i32 %i.jd, 6
  %i.kf = trunc i32 %i.ke to i8
  %i.kg = and i8 %i.kf, 63
  %i.kh = or disjoint i8 %i.kg, -128
  %i.ki = getelementptr i8, ptr %.02847.us.i.i.i, i64 1
  store i8 %i.kh, ptr %i.ki, align 1
  %i.kj = trunc i32 %i.jd to i8
  %i.kk = and i8 %i.kj, 63
  %i.kl = or disjoint i8 %i.kk, -128
  %i.km = getelementptr i8, ptr %.02847.us.i.i.i, i64 2
  store i8 %i.kl, ptr %i.km, align 1
  br label %store_utf8.exit.us.i.i.i

bb.aw:                                            ; preds = %bb.aq
  %i.kn = lshr i32 %i.jd, 6
  %i.ko = trunc nuw nsw i32 %i.kn to i8
  %i.kp = or disjoint i8 %i.ko, -64
  store i8 %i.kp, ptr %.02847.us.i.i.i, align 1
  %i.kq = trunc i32 %i.jd to i8
  %i.kr = and i8 %i.kq, 63
  %i.ks = or disjoint i8 %i.kr, -128
  %i.kt = getelementptr i8, ptr %.02847.us.i.i.i, i64 1
  store i8 %i.ks, ptr %i.kt, align 1
  br label %store_utf8.exit.us.i.i.i

bb.ax:                                            ; preds = %.lr.ph.split.us.i.i.i
  %i.ku = trunc nuw nsw i32 %i.jd to i8
  store i8 %i.ku, ptr %.02847.us.i.i.i, align 1
  br label %store_utf8.exit.us.i.i.i

store_utf8.exit.us.i.i.i:                         ; preds = %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at
  %.0.i38.us.i.i.i = phi i64 [ 1, %bb.ax ], [ 2, %bb.aw ], [ 3, %bb.av ], [ 4, %bb.au ], [ 3, %bb.at ]
  %i.kv = getelementptr i8, ptr %.02847.us.i.i.i, i64 %.0.i38.us.i.i.i ; 5 uses
  %i.kw = icmp eq i32 %i.jd, 32
  %spec.select.us.i.i.i = select i1 %i.kw, ptr %.02946.us.i.i.i, ptr %i.kv ; 4 uses
  %i.kx = add i32 %.03345.us.i.i.i, 2             ; 3 uses
  %i.ky = load i32, ptr %i.bf, align 4
  %i.kz = urem i32 %i.kx, %i.ky
  %.not35.us.i.i.i = icmp eq i32 %i.kz, 0
  br i1 %.not35.us.i.i.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %store_utf8.exit.us.i.i.i
  %.not36.us.i.i.i = icmp eq ptr %spec.select.us.i.i.i, %i.kv
  br i1 %.not36.us.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.la = getelementptr i8, ptr %spec.select.us.i.i.i, i64 1 ; 2 uses
  store i8 13, ptr %spec.select.us.i.i.i, align 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %store_utf8.exit.us.i.i.i
  %.231.us.i.i.i = phi ptr [ %spec.select.us.i.i.i, %store_utf8.exit.us.i.i.i ], [ %i.la, %bb.az ], [ %i.kv, %bb.ay ]
  %.3.us.i.i.i = phi ptr [ %i.kv, %store_utf8.exit.us.i.i.i ], [ %i.la, %bb.az ], [ %i.kv, %bb.ay ] ; 2 uses
  %i.lb = load i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 48), align 8
  %.not34.us.i.i.i = icmp ugt i32 %i.kx, %i.lb
  br i1 %.not34.us.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.split.us.i.i.i, !llvm.loop !12

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i, %bb.bd
  %.02847.i.i.i = phi ptr [ %.3.i.i.i, %bb.bd ], [ %i.iq, %.lr.ph.i.i.i ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %.231.i.i.i, %bb.bd ], [ %i.iq, %.lr.ph.i.i.i ]
  %.03345.i.i.i = phi i32 [ %i.li, %bb.bd ], [ %i.iz, %.lr.ph.i.i.i ] ; 2 uses
  %i.lc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 24), align 8 ; 2 uses
  %i.ld = tail call zeroext i16 @screen_glyph(ptr noundef %i.lc, i32 noundef %.03345.i.i.i) #9
  %i.le = tail call zeroext i16 @inverse_translate(ptr noundef %i.lc, i16 noundef zeroext %i.ld, i1 noundef zeroext false) #9 ; 2 uses
  %i.lf = trunc i16 %i.le to i8
  %i.lg = getelementptr i8, ptr %.02847.i.i.i, i64 1 ; 5 uses
  store i8 %i.lf, ptr %.02847.i.i.i, align 1
  %i.lh = icmp eq i16 %i.le, 32
  %spec.select.i.i.i = select i1 %i.lh, ptr %.02946.i.i.i, ptr %i.lg ; 4 uses
  %i.li = add i32 %.03345.i.i.i, 2                ; 3 uses
  %i.lj = load i32, ptr %i.bf, align 4
  %i.lk = urem i32 %i.li, %i.lj
  %.not35.i.i.i = icmp eq i32 %i.lk, 0
  br i1 %.not35.i.i.i, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %.lr.ph.split.i.i.i
  %.not36.i.i.i = icmp eq ptr %spec.select.i.i.i, %i.lg
  br i1 %.not36.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ll = getelementptr i8, ptr %spec.select.i.i.i, i64 1 ; 2 uses
  store i8 13, ptr %spec.select.i.i.i, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %.lr.ph.split.i.i.i
  %.231.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.split.i.i.i ], [ %i.ll, %bb.bc ], [ %i.lg, %bb.bb ]
  %.3.i.i.i = phi ptr [ %i.lg, %.lr.ph.split.i.i.i ], [ %i.ll, %bb.bc ], [ %i.lg, %bb.bb ] ; 2 uses
  %i.lm = load i32, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 48), align 8
  %.not34.i.i.i = icmp ugt i32 %i.li, %i.lm
  br i1 %.not34.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.split.i.i.i, !llvm.loop !12

._crit_edge.i.i.i:                                ; preds = %bb.bd, %bb.ba, %bb.ap
  %.028.lcssa.i.i.i = phi ptr [ %i.iq, %bb.ap ], [ %.3.us.i.i.i, %bb.ba ], [ %.3.i.i.i, %bb.bd ]
  %i.ln = load ptr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 32), align 8
  %i.lo = ptrtoint ptr %.028.lcssa.i.i.i to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = trunc i64 %i.lq to i32
  store i32 %i.lr, ptr getelementptr inbounds nuw (i8, ptr @vc_sel, i64 40), align 8
  br label %vc_selection.exit

vc_selection.exit:                                ; preds = %bb.b, %bb.c, %bb.f, %bb.j, %bb.r, %bb.ad, %_kmalloc_array_noprof.exit.thread.i.i.i, %bb.ao, %._crit_edge.i.i.i
  %.0.i = phi i32 [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.b ], [ 0, %bb.r ], [ 0, %bb.ad ], [ -22, %bb.j ], [ 0, %._crit_edge.i.i.i ], [ -12, %_kmalloc_array_noprof.exit.thread.i.i.i ], [ -12, %bb.ao ]
  tail call void @console_unlock() #9
  tail call void @mutex_unlock(ptr noundef nonnull @vc_sel) #9
  ret i32 %.0.i
}

end_hunk_1

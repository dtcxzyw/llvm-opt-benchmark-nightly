inline.NumInlined: 260
inline.NumDeleted: 91
begin_hunk_0_@moreswitches:bb.a
  br i1 %narrow.i.not, label %bb.c, label %bb.b, !llvm.loop !153

bb.c:                                             ; preds = %bb.b
  %.not96 = icmp eq i8 %i.o, 0
  br i1 %.not96, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.g, align 8, !tbaa !99
  store i64 0, ptr %i.e, align 8, !tbaa !98
  store i64 0, ptr %i.c, align 8, !tbaa !91
  %i.u = load i8, ptr %.0, align 1, !tbaa !11
  %i.v = icmp ne i8 %i.u, 45                      ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0) #22 ; 2 uses
  %i.x = zext i1 %i.v to i64                      ; 2 uses
  %i.y = add i64 %i.w, %i.x
  %i.z = tail call i64 @rb_str_tmp_new(i64 noundef %i.y) #23 ; 2 uses
  %i.aa = tail call i64 @rb_str_tmp_new(i64 noundef 0) #23 ; 5 uses
  %i.ab = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !22
  %i.ad = and i64 %i.ac, 8192
  %.not.i = icmp eq i64 %i.ad, 0
  %i.ae = getelementptr i8, ptr %i.ab, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.e ], [ %i.ae, %bb.d ] ; 4 uses
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %RSTRING_PTR.exit
  store i8 45, ptr %i.ag, align 1, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %RSTRING_PTR.exit
  %i.ah = add i64 %i.w, 1                         ; 2 uses
  %.not.i108 = icmp eq i64 %i.ah, 0
  br i1 %.not.i108, label %ruby_nonempty_memcpy.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.ag, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ai, ptr noundef nonnull readonly align 1 %.0, i64 noundef range(i64 1, 0) %i.ah, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.g, %bb.h
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.aj = call i64 @rb_str_cat(i64 noundef %i.aa, ptr noundef nonnull %i.a, i64 noundef 8) #23 ; 0 uses
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !11
  %.not97122 = icmp eq i8 %i.ak, 0
  br i1 %.not97122, label %.critedge.thread, label %.lr.ph124

.loopexit:                                        ; preds = %bb.j
  %.not97 = icmp eq i8 %i.au, 0
  br i1 %.not97, label %.critedge.thread, label %.lr.ph124, !llvm.loop !154

.lr.ph124:                                        ; preds = %ruby_nonempty_memcpy.exit, %.loopexit
  %.084123 = phi ptr [ %.2, %.loopexit ], [ %i.ag, %ruby_nonempty_memcpy.exit ] ; 3 uses
  store ptr %.084123, ptr %i.a, align 8, !tbaa !79
  %i.al = call i64 @rb_str_cat(i64 noundef %i.aa, ptr noundef nonnull %i.a, i64 noundef 8) #23 ; 0 uses
  %i.am = load i8, ptr %.084123, align 1, !tbaa !11 ; 2 uses
  %.not98119 = icmp eq i8 %i.am, 0
  br i1 %.not98119, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph124, %bb.i
  %i.an = phi i8 [ %i.at, %bb.i ], [ %i.am, %.lr.ph124 ] ; 2 uses
  %.185120 = phi ptr [ %i.as, %bb.i ], [ %.084123, %.lr.ph124 ] ; 3 uses
  %i.ao = sext i8 %i.an to i32
  %i.ap = icmp ne i8 %i.an, 32
  %i.aq = add nsw i32 %i.ao, -14
  %i.ar = icmp ult i32 %i.aq, -5
  %narrow.i109.not = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %narrow.i109.not, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph
  %i.as = getelementptr i8, ptr %.185120, i64 1   ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11  ; 2 uses
  %.not98 = icmp eq i8 %i.at, 0
  br i1 %.not98, label %.critedge.thread, label %.lr.ph, !llvm.loop !155

.critedge:                                        ; preds = %.lr.ph
  store i8 0, ptr %.185120, align 1, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.critedge
  %.185.pn = phi ptr [ %.185120, %.critedge ], [ %.2, %bb.j ]
  %.2 = getelementptr i8, ptr %.185.pn, i64 1     ; 3 uses
  %i.au = load i8, ptr %.2, align 1, !tbaa !11    ; 3 uses
  %i.av = sext i8 %i.au to i32
  %i.aw = icmp ne i8 %i.au, 32
  %i.ax = add nsw i32 %i.av, -14
  %i.ay = icmp ult i32 %i.ax, -5
  %narrow.i110.not = select i1 %i.aw, i1 %i.ay, i1 false
  br i1 %narrow.i110.not, label %.loopexit, label %bb.j, !llvm.loop !156

.critedge.thread:                                 ; preds = %.loopexit, %.lr.ph124, %bb.i, %ruby_nonempty_memcpy.exit
  %i.az = inttoptr i64 %i.aa to ptr               ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !71 ; 5 uses
  %i.bc = lshr i64 %i.bb, 3                       ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !79
  %i.bd = call i64 @rb_str_cat(i64 noundef %i.aa, ptr noundef nonnull %i.a, i64 noundef 8) #23 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.be = icmp ult i64 %i.bb, 1024
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.thread
  store i64 0, ptr %i.b, align 8, !tbaa !24
  %i.bf = and i64 %i.bb, 1016
  %i.bg = alloca i8, i64 %i.bf, align 16
  br label %bb.m

bb.l:                                             ; preds = %.critedge.thread
  %i.bh = and i64 %i.bb, -8
  %i.bi = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.bh, i64 noundef range(i64 128, 2305843009213693952) %i.bc) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = phi ptr [ %i.bg, %bb.k ], [ %i.bi, %bb.l ] ; 3 uses
  %i.bk = load i64, ptr %i.az, align 8, !tbaa !22
  %i.bl = and i64 %i.bk, 8192
  %.not.i111 = icmp eq i64 %i.bl, 0
  %i.bm = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  br i1 %.not.i111, label %rbimpl_size_mul_or_raise.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !11
  br label %rbimpl_size_mul_or_raise.exit

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.n, %bb.m
  %i.bo = phi ptr [ %i.bn, %bb.n ], [ %i.bm, %bb.m ]
  %i.bp = and i64 %i.bb, -8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bj, ptr noundef nonnull align 1 %i.bo, i64 noundef %i.bp, i1 noundef false) #23
  %i.bq = call fastcc i64 @proc_options(i64 noundef %i.bc, ptr noundef nonnull %i.bj, ptr noundef %1, i32 noundef %2) ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 1
  %i.bs = icmp ne i32 %2, 0
  %or.cond125 = and i1 %i.bs, %i.br
  br i1 %or.cond125, label %.lr.ph128.split, label %.critedge3

.lr.ph128.split:                                  ; preds = %rbimpl_size_mul_or_raise.exit, %bb.q
  %i.bt = phi i64 [ %i.ce, %bb.q ], [ %i.bq, %rbimpl_size_mul_or_raise.exit ] ; 2 uses
  %.081127 = phi i64 [ %.1, %bb.q ], [ %i.bc, %rbimpl_size_mul_or_raise.exit ]
  %.082126 = phi ptr [ %.183, %bb.q ], [ %i.bj, %rbimpl_size_mul_or_raise.exit ]
  %i.bu = sub nsw i64 %.081127, %i.bt             ; 2 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %.critedge3

bb.o:                                             ; preds = %.lr.ph128.split
  %i.bw = getelementptr [8 x i8], ptr %.082126, i64 %i.bt ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !79 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11
  %.not105 = icmp eq i8 %i.by, 45
  br i1 %.not105, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bz = getelementptr i8, ptr %i.bx, i64 -1     ; 3 uses
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !79
  store i8 45, ptr %i.bz, align 1, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = phi ptr [ %i.bz, %bb.p ], [ %i.bx, %bb.o ]
  %i.cb = getelementptr i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !11
  %.not106 = icmp ne i8 %i.cc, 0                  ; 2 uses
  %.183.idx = select i1 %.not106, i64 -8, i64 0
  %.183 = getelementptr i8, ptr %i.bw, i64 %.183.idx ; 2 uses
  %i.cd = zext i1 %.not106 to i64
  %.1 = add nuw nsw i64 %i.bu, %i.cd              ; 2 uses
  %i.ce = call fastcc i64 @proc_options(i64 noundef %.1, ptr noundef %.183, ptr noundef %1, i32 noundef 1) ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, 1
  br i1 %i.cf, label %.lr.ph128.split, label %.critedge3, !llvm.loop !157

.critedge3:                                       ; preds = %.lr.ph128.split, %bb.q, %rbimpl_size_mul_or_raise.exit
  %.not101 = icmp eq i64 %i.d, 0
  br i1 %.not101, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge3
  store i64 %i.d, ptr %i.c, align 8, !tbaa !91
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge3
  %.not102 = icmp eq i64 %i.f, 0
  br i1 %.not102, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %i.f, ptr %i.e, align 8, !tbaa !98
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not103 = icmp eq i64 %i.h, 0
  br i1 %.not103, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 %i.h, ptr %i.g, align 8, !tbaa !99
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cg = and i32 %.sroa.512.0.copyload, %.sroa.010.0.copyload
  %i.ch = load i32, ptr %i.i, align 8, !tbaa !93
  %i.ci = or i32 %i.ch, %.sroa.010.0.copyload
  store i32 %i.ci, ptr %i.i, align 8, !tbaa !93
  %i.cj = load i32, ptr %.sroa.512.0..sroa_idx, align 4, !tbaa !94
  %i.ck = xor i32 %.sroa.010.0.copyload, -1
  %i.cl = and i32 %i.cj, %i.ck
  %i.cm = or i32 %i.cl, %i.cg
  store i32 %i.cm, ptr %.sroa.512.0..sroa_idx, align 4, !tbaa !94
  %i.cn = and i32 %.sroa.5.0.copyload, %.sroa.0.0.copyload
  %i.co = load i32, ptr %i.j, align 8, !tbaa !93
  %i.cp = or i32 %i.co, %.sroa.0.0.copyload
  store i32 %i.cp, ptr %i.j, align 8, !tbaa !93
  %i.cq = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !94
  %i.cr = xor i32 %.sroa.0.0.copyload, -1
  %i.cs = and i32 %i.cq, %i.cr
  %i.ct = or i32 %i.cs, %i.cn
  store i32 %i.ct, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !94
  %i.cu = icmp sgt i64 %i.l, -2
  br i1 %i.cu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %i.l, ptr %i.k, align 8, !tbaa !63
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.not104 = icmp eq ptr %i.n, null
  br i1 %.not104, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.n, ptr %i.m, align 8, !tbaa !150
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #23
  %i.cv = call i64 @rb_str_resize(i64 noundef %i.aa, i64 noundef 0) #23 ; 0 uses
  %i.cw = call i64 @rb_str_resize(i64 noundef %i.z, i64 noundef 0) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.c, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare i64 @rb_io_ungetbyte(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @rb_reset_argf_lineno(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ruby_opt_init(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr i8, ptr %0, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !159
  tail call void @rb_warning_category_update(i32 noundef %i.c, i32 noundef %i.e) #23
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i32, ptr %i.f, align 8, !tbaa !62
  %i.h = and i32 %i.g, 3840
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 84         ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !61
  %i.k = and i32 %i.j, 1
  %.not11 = icmp eq i32 %i.k, 0
  br i1 %.not11, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i64 @rb_define_module(ptr noundef nonnull @.str.132) #23 ; 0 uses
  %i.m = load i32, ptr %i.i, align 4, !tbaa !61   ; 2 uses
  %i.n = and i32 %i.m, 2
  %.not12 = icmp eq i32 %i.n, 0
  br i1 %.not12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i64 @rb_define_module(ptr noundef nonnull @.str.133) #23 ; 0 uses
  %.pre = load i32, ptr %i.i, align 4, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi i32 [ %.pre, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = and i32 %i.p, 4
  %.not13 = icmp eq i32 %i.q, 0
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i64 @rb_define_module(ptr noundef nonnull @.str.134) #23 ; 0 uses
  %.pre16 = load i32, ptr %i.i, align 4, !tbaa !61
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = phi i32 [ %.pre16, %bb.f ], [ %i.p, %bb.e ]
  %i.t = and i32 %i.s, 8
  %.not14 = icmp eq i32 %i.t, 0
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = tail call i64 @rb_define_module(ptr noundef nonnull @.str.135) #23 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  %i.v = tail call ptr @getenv(ptr noundef nonnull @.str.136) #23
  %.not15 = icmp eq ptr %i.v, null
  br i1 %.not15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @rb_warn_deprecated(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.138) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  tail call void @Init_ext() #23
  tail call void @Init_extra_exts()
  %i.w = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26
  %i.x = getelementptr i8, ptr %i.w, i64 508      ; 2 uses
  %i.y = load i8, ptr %i.x, align 4
  %i.z = and i8 %i.y, -2
  store i8 %i.z, ptr %i.x, align 4
  tail call void @rb_call_builtin_inits() #23
  %i.aa = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26
  %i.ab = getelementptr i8, ptr %i.aa, i64 508    ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(70) @ruby_vm_redefined_flag, i8 noundef 0, i64 noundef 70, i1 noundef false) #23
  tail call void @Init_builtin_features() #23
  %i.ae = load i8, ptr @ruby_box_enabled, align 1, !tbaa !82, !range !160, !noundef !161
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @rb_initialize_main_box() #23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void @rb_box_init_done() #23
  %i.ag = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = and i16 %i.ah, 4096
  %i.aj = icmp ne i16 %i.ai, 0
  tail call void @rb_yjit_init(i1 noundef zeroext %i.aj) #23
  %i.ak = load i16, ptr %i.ag, align 8
  %i.al = and i16 %i.ak, 8192
  %i.am = icmp ne i16 %i.al, 0
  tail call void @rb_zjit_init(i1 noundef zeroext %i.am) #23
  %i.an = getelementptr i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !97
  %i.ap = tail call i64 @rb_str_new_frozen(i64 noundef %i.ao) #23 ; 3 uses
  %i.aq = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !26 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 1216
  store i64 %i.ap, ptr %i.ar, align 8, !tbaa !73
  %i.as = getelementptr i8, ptr %i.aq, i64 1208
  store i64 %i.ap, ptr %i.as, align 8, !tbaa !74
  tail call void @rb_vm_set_progname(i64 noundef %i.ap) #23
  %i.at = getelementptr i8, ptr %0, i64 72        ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !24 ; 3 uses
  %i.av = tail call i64 @rb_vm_top_self() #22
  %i.aw = tail call ptr @rb_default_external_encoding() #23
  %.pr.i.i = load i64, ptr @require_libraries.rbimpl_id, align 8, !tbaa !24 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i

.lr.ph.i.i:                                       ; preds = %bb.m, %.lr.ph.i.i
  %i.ax = tail call i64 @rb_intern2(ptr noundef nonnull @.str.139, i64 noundef 7) #23 ; 3 uses
  store i64 %i.ax, ptr @require_libraries.rbimpl_id, align 8, !tbaa !24
  %.not.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %rbimpl_intern_const.exit.i, !llvm.loop !146

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i, %bb.m
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.m ], [ %i.ax, %.lr.ph.i.i ]
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %require_libraries.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %rbimpl_intern_const.exit.i
  %i.ay = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !22 ; 2 uses
  %i.bb = and i64 %i.ba, 8192
  %.not.i7.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i7.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = lshr i64 %i.ba, 15
  %i.bd = and i64 %i.bc, 127
  br label %rb_array_len.exit.i

bb.p:                                             ; preds = %bb.n
  %i.be = load i64, ptr %i.az, align 8, !tbaa !11
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.p, %bb.o
  %.0.i.i = phi i64 [ %i.bd, %bb.o ], [ %i.be, %bb.p ]
  %i.bf = icmp sgt i64 %.0.i.i, 0
  br i1 %i.bf, label %bb.q, label %require_libraries.exit

bb.q:                                             ; preds = %rb_array_len.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bg = call i64 @rb_ary_shift(i64 noundef %i.au) #23 ; 2 uses
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !24
  %i.bh = call i64 @rb_enc_associate(i64 noundef %i.bg, ptr noundef %i.aw) #23 ; 0 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !24
  %i.bj = load i64, ptr @rb_cString, align 8, !tbaa !24
  %i.bk = inttoptr i64 %i.bi to ptr
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !24
  %i.bm = load i64, ptr %i.a, align 8, !tbaa !24
  call void @rb_obj_freeze_inline(i64 noundef %i.bm) #23
end_hunk_0
begin_hunk_1_@rb_set_script_lines_for

declare i64 @rb_parser_compile_string_path(i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_parser_compile_file_path(i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_parser_encoding(i64 noundef) local_unnamed_addr #3

declare i64 @rb_parser_end_seen_p(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #7

declare i64 @rb_str_tmp_new(i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @proc_options(i64 noundef range(i64 -2147483648, 2305843009213693952) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = getelementptr i8, ptr %2, i64 120        ; 26 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = lshr i16 %i.f, 3
  %i.h = and i16 %i.g, 1
  %i.i = zext nneg i16 %i.h to i32                ; 2 uses
  %i.j = icmp sgt i64 %0, 0
  %i.k = icmp ne ptr %1, null
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %.preheader291, label %bb.iq

.preheader291:                                    ; preds = %bb.a
  %i.l = icmp samesign ugt i64 %0, 1
  br i1 %i.l, label %.lr.ph, label %.thread277

.lr.ph:                                           ; preds = %.preheader291
  %.0156492 = add nsw i64 %0, -1
  %.not189 = icmp eq i32 %3, 0                    ; 20 uses
  %i.m = getelementptr i8, ptr %2, i64 24
  %i.n = getelementptr i8, ptr %2, i64 40         ; 6 uses
  %i.o = getelementptr i8, ptr %2, i64 56         ; 8 uses
  %i.p = getelementptr i8, ptr %2, i64 96         ; 17 uses
  %i.q = getelementptr i8, ptr %2, i64 88         ; 10 uses
  %i.r = getelementptr i8, ptr %2, i64 92         ; 6 uses
  %i.s = getelementptr i8, ptr %2, i64 80         ; 9 uses
  %i.t = getelementptr i8, ptr %2, i64 104
  %i.u = getelementptr i8, ptr %2, i64 112
  %i.v = getelementptr i8, ptr %2, i64 72         ; 3 uses
  %i.w = getelementptr i8, ptr %2, i64 16         ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %proc_W_option.exit.thread
  %.0156497 = phi i64 [ %.0156492, %.lr.ph ], [ %.0156, %proc_W_option.exit.thread ] ; 55 uses
  %.0156.in495 = phi i64 [ %0, %.lr.ph ], [ %.4, %proc_W_option.exit.thread ] ; 17 uses
  %.pn494 = phi ptr [ %1, %.lr.ph ], [ %.4161, %proc_W_option.exit.thread ] ; 15 uses
  %.0266493 = phi i32 [ %i.i, %.lr.ph ], [ %.3, %proc_W_option.exit.thread ] ; 4 uses
  %.0157496 = getelementptr i8, ptr %.pn494, i64 8 ; 19 uses
  %i.x = load ptr, ptr %.0157496, align 8, !tbaa !79 ; 3 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %.thread277, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %.not183 = icmp eq i8 %i.y, 45
  br i1 %.not183, label %bb.d, label %.thread277

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.x, i64 1        ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11   ; 2 uses
  %.not184 = icmp eq i8 %i.aa, 0
  br i1 %.not184, label %.thread277, label %.preheader

thread-pre-split:                                 ; preds = %bb.f, %bb.i, %bb.j, %bb.l, %bb.n, %bb.r, %bb.as, %bb.az, %bb.bd, %forbid_setid.exit235, %set_option_encoding_once.exit, %proc_W_option.exit, %proc_K_option.exit, %proc_0_option.exit
  %.1267.ph = phi i32 [ %.1267, %proc_0_option.exit ], [ %.1267, %proc_K_option.exit ], [ %.1267, %set_option_encoding_once.exit ], [ %.1267, %forbid_setid.exit235 ], [ %.1267, %bb.bd ], [ %.1267, %bb.az ], [ %.1267, %bb.as ], [ 1, %proc_W_option.exit ], [ %.1267, %bb.n ], [ %.2268, %bb.r ], [ %.1267, %bb.l ], [ %.1267, %bb.j ], [ %.1267, %bb.i ], [ %.1267, %bb.f ]
  %.0163.ph = phi ptr [ %i.mq, %proc_0_option.exit ], [ %.010.i, %proc_K_option.exit ], [ %i.lr, %set_option_encoding_once.exit ], [ %i.iv, %forbid_setid.exit235 ], [ %i.ip, %bb.bd ], [ %i.ij, %bb.az ], [ %i.id, %bb.as ], [ %.1.i, %proc_W_option.exit ], [ %i.as, %bb.n ], [ %i.bb, %bb.r ], [ %i.ap, %bb.l ], [ %i.am, %bb.j ], [ %i.aj, %bb.i ], [ %i.ae, %bb.f ] ; 2 uses
  %.pr = load i8, ptr %.0163.ph, align 1, !tbaa !11
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %thread-pre-split
  %i.ab = phi i8 [ %.pr, %thread-pre-split ], [ %i.aa, %bb.d ] ; 2 uses
  %.1267 = phi i32 [ %.1267.ph, %thread-pre-split ], [ %.0266493, %bb.d ] ; 38 uses
  %.0163 = phi ptr [ %.0163.ph, %thread-pre-split ], [ %i.z, %bb.d ] ; 67 uses
  switch i8 %i.ab, label %.loopexit [
    i8 97, label %bb.e
    i8 112, label %bb.g
    i8 110, label %bb.h
    i8 100, label %bb.j
    i8 121, label %bb.k
    i8 118, label %bb.m
    i8 119, label %.preheader._crit_edge
    i8 87, label %bb.s
    i8 99, label %bb.ar
    i8 115, label %bb.at
    i8 104, label %bb.ba
    i8 108, label %bb.bc
    i8 83, label %bb.be
    i8 101, label %bb.bj
    i8 114, label %bb.bu
    i8 105, label %bb.cc
    i8 120, label %bb.ch
    i8 67, label %bb.co
    i8 88, label %bb.co
    i8 70, label %bb.cw
    i8 69, label %bb.cz
    i8 85, label %bb.de
    i8 75, label %bb.dh
    i8 73, label %bb.do
    i8 48, label %bb.dv
    i8 45, label %bb.ea
    i8 13, label %bb.ii
    i8 0, label %proc_W_option.exit.thread
  ]

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre = load i16, ptr %i.e, align 8
  br label %bb.p

bb.e:                                             ; preds = %.preheader
  br i1 %.not189, label %bb.f, label %.loopexit290

bb.f:                                             ; preds = %bb.e
  %i.ac = load i16, ptr %i.e, align 8
  %i.ad = or i16 %i.ac, 256
  store i16 %i.ad, ptr %i.e, align 8
  %i.ae = getelementptr i8, ptr %.0163, i64 1
  br label %thread-pre-split

bb.g:                                             ; preds = %.preheader
  br i1 %.not189, label %.thread, label %.loopexit290

.thread:                                          ; preds = %bb.g
  %i.af = load i16, ptr %i.e, align 8
  %i.ag = or i16 %i.af, 64
  br label %bb.i

bb.h:                                             ; preds = %.preheader
  br i1 %.not189, label %._crit_edge, label %.loopexit290

._crit_edge:                                      ; preds = %bb.h
  %.pre712 = load i16, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %.thread
  %i.ah = phi i16 [ %.pre712, %._crit_edge ], [ %i.ag, %.thread ]
  %i.ai = or i16 %i.ah, 32
  store i16 %i.ai, ptr %i.e, align 8
  %i.aj = getelementptr i8, ptr %.0163, i64 1
  br label %thread-pre-split

bb.j:                                             ; preds = %.preheader
  %i.ak = call ptr @rb_ruby_debug_ptr() #23
  store i64 20, ptr %i.ak, align 8, !tbaa !24
  %i.al = call ptr @rb_ruby_verbose_ptr() #23
  store i64 20, ptr %i.al, align 8, !tbaa !24
  %i.am = getelementptr i8, ptr %.0163, i64 1
  br label %thread-pre-split

bb.k:                                             ; preds = %.preheader
  br i1 %.not189, label %bb.l, label %.loopexit290

bb.l:                                             ; preds = %bb.k
  %i.an = load i32, ptr %i.p, align 8, !tbaa !62
  %i.ao = or i32 %i.an, 256
  store i32 %i.ao, ptr %i.p, align 8, !tbaa !62
  %i.ap = getelementptr i8, ptr %.0163, i64 1
  br label %thread-pre-split

bb.m:                                             ; preds = %.preheader
  %i.aq = load i16, ptr %i.e, align 8             ; 2 uses
  %i.ar = and i16 %i.aq, 16
  %.not217 = icmp eq i16 %i.ar, 0
  br i1 %.not217, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr i8, ptr %.0163, i64 1
  br label %thread-pre-split

bb.o:                                             ; preds = %bb.m
  %i.at = load i32, ptr %i.p, align 8, !tbaa !62
  %i.au = or i32 %i.at, 1
  store i32 %i.au, ptr %i.p, align 8, !tbaa !62
  %i.av = or disjoint i16 %i.aq, 16               ; 2 uses
  store i16 %i.av, ptr %i.e, align 8
  br label %bb.p

bb.p:                                             ; preds = %.preheader._crit_edge, %bb.o
  %i.aw = phi i16 [ %.pre, %.preheader._crit_edge ], [ %i.av, %bb.o ]
  %i.ax = and i16 %i.aw, 8
  %.not218 = icmp eq i16 %i.ax, 0
  br i1 %.not218, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = call ptr @rb_ruby_verbose_ptr() #23
  store i64 20, ptr %i.ay, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.2268 = phi i32 [ 1, %bb.q ], [ %.1267, %bb.p ]
  %i.az = load <2 x i32>, ptr %i.q, align 8, !tbaa !7
  %i.ba = or <2 x i32> %i.az, splat (i32 6)
  store <2 x i32> %i.ba, ptr %i.q, align 8, !tbaa !7
  %i.bb = getelementptr i8, ptr %.0163, i64 1
  br label %thread-pre-split

bb.s:                                             ; preds = %.preheader
  %i.bc = getelementptr i8, ptr %.0163, i64 1     ; 4 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !11  ; 2 uses
  %i.be = icmp eq i8 %i.bd, 58
  br i1 %i.be, label %sub_0.i, label %bb.ai

sub_0.i:                                          ; preds = %bb.s
  %i.bf = getelementptr i8, ptr %.0163, i64 2     ; 4 uses
  %i.bg = load i8, ptr %i.bf, align 1
  %.not165.i = icmp eq i8 %i.bg, 110
  br i1 %.not165.i, label %sub_1.i, label %.tail.thread.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.bh = getelementptr i8, ptr %.0163, i64 3
  %i.bi = load i8, ptr %i.bh, align 1
  %.not166.i = icmp eq i8 %i.bi, 111
  br i1 %.not166.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_1.i
  %i.bj = getelementptr i8, ptr %.0163, i64 4
  %i.bk = load i8, ptr %i.bj, align 1
  %.fr.i = freeze i8 %i.bk
  %i.bl = icmp eq i8 %.fr.i, 45                   ; 2 uses
  %i.bm = getelementptr i8, ptr %.0163, i64 5
  %spec.select.i = select i1 %i.bl, ptr %i.bm, ptr %i.bf
  br label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_1.i, %sub_0.i
  %.not40216.i = phi i1 [ false, %sub_1.i ], [ %i.bl, %.tail.i ], [ false, %sub_0.i ]
  %i.bn = phi ptr [ %i.bf, %sub_1.i ], [ %spec.select.i, %.tail.i ], [ %i.bf, %sub_0.i ] ; 6 uses
  %i.bo = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #22 ; 10 uses
  %i.bp = icmp ult i64 %i.bo, 11
  br i1 %i.bp, label %bb.t, label %name_match_p.exit.thread.i

bb.t:                                             ; preds = %.tail.thread.i
  %i.bq = icmp eq i64 %i.bo, 0
  br i1 %i.bq, label %name_match_p.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.t, %bb.w
  %i.br = phi i8 [ %i.cv, %bb.w ], [ 100, %bb.t ]
  %.017.i.i = phi ptr [ %i.cu, %bb.w ], [ @.str.46, %bb.t ] ; 2 uses
  %.015.i.i = phi ptr [ %i.cw, %bb.w ], [ %i.bn, %bb.t ] ; 3 uses
  %.0.i.i = phi i64 [ %i.cx, %bb.w ], [ %i.bo, %bb.t ] ; 2 uses
  %i.bs = load i8, ptr %.015.i.i, align 1, !tbaa !11 ; 2 uses
  %i.bt = sext i8 %i.bs to i32                    ; 3 uses
  %i.bu = add nsw i32 %i.bt, -91
  %i.bv = icmp ult i32 %i.bu, -26
  %i.bw = or i32 %i.bt, 32
  %i.bx = select i1 %i.bv, i32 %i.bt, i32 %i.bw
  %i.by = sext i8 %i.br to i32
  %i.bz = icmp eq i32 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.ca = add nsw i64 %.0.i.i, -1                 ; 2 uses
  %.not30.i.i1202 = icmp eq i64 %i.ca, 0
  br i1 %.not30.i.i1202, label %.loopexit.i, label %.lr.ph1205

.lr.ph.i.i:                                       ; preds = %.lr.ph1205
  %i.cb = add nsw i64 %i.cc, -1                   ; 2 uses
  %.not30.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not30.i.i, label %.loopexit.i, label %.lr.ph1205, !llvm.loop !162

.lr.ph1205:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.cc = phi i64 [ %i.cb, %.lr.ph.i.i ], [ %i.ca, %.lr.ph.i.i.preheader ] ; 2 uses
  %.11839.i.i1204 = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.017.i.i, %.lr.ph.i.i.preheader ]
  %.11640.i.i1203 = phi ptr [ %i.ce, %.lr.ph.i.i ], [ %.015.i.i, %.lr.ph.i.i.preheader ]
  %i.cd = getelementptr i8, ptr %.11839.i.i1204, i64 1 ; 3 uses
  %i.ce = getelementptr i8, ptr %.11640.i.i1203, i64 1 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11  ; 2 uses
  %i.cg = sext i8 %i.cf to i32                    ; 3 uses
  %i.ch = add nsw i32 %i.cg, -91
  %i.ci = icmp ult i32 %i.ch, -26
  %i.cj = or i32 %i.cg, 32
  %i.ck = select i1 %i.ci, i32 %i.cg, i32 %i.cj
  %i.cl = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cm = sext i8 %i.cl to i32
  %i.cn = icmp eq i32 %i.ck, %i.cm
  br i1 %i.cn, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !162

._crit_edge.i.i:                                  ; preds = %.lr.ph1205, %.preheader.i.i
  %.118.lcssa.i.i = phi ptr [ %.017.i.i, %.preheader.i.i ], [ %i.cd, %.lr.ph1205 ]
  %.116.lcssa.i.i = phi ptr [ %.015.i.i, %.preheader.i.i ], [ %i.ce, %.lr.ph1205 ]
  %.1.lcssa.i.i = phi i64 [ %.0.i.i, %.preheader.i.i ], [ %i.cc, %.lr.ph1205 ]
  %.lcssa.i.i = phi i8 [ %i.bs, %.preheader.i.i ], [ %i.cf, %.lr.ph1205 ]
  switch i8 %.lcssa.i.i, label %name_match_p.exit.thread.i [
    i8 45, label %.preheader1223
    i8 95, label %.preheader1223
  ]

.preheader1223:                                   ; preds = %._crit_edge.i.i, %._crit_edge.i.i
  br label %bb.u

bb.u:                                             ; preds = %.preheader1223, %bb.u
  %.2.i.i = phi ptr [ %i.cu, %bb.u ], [ %.118.lcssa.i.i, %.preheader1223 ] ; 2 uses
  %i.co = load i8, ptr %.2.i.i, align 1, !tbaa !11 ; 2 uses
  %i.cp = sext i8 %i.co to i32                    ; 2 uses
  %i.cq = and i32 %i.cp, -33
  %i.cr = add nsw i32 %i.cq, -91
  %narrow.i.i.i.i = icmp ult i32 %i.cr, -26
  %i.cs = add nsw i32 %i.cp, -58
  %i.ct = icmp ult i32 %i.cs, -10
  %narrow.i.not.i.i = select i1 %narrow.i.i.i.i, i1 %i.ct, i1 false
  %i.cu = getelementptr i8, ptr %.2.i.i, i64 1    ; 3 uses
  br i1 %narrow.i.not.i.i, label %bb.v, label %bb.u, !llvm.loop !163

bb.v:                                             ; preds = %bb.u
  switch i8 %i.co, label %name_match_p.exit.thread.i [
    i8 45, label %bb.w
    i8 95, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !11  ; 2 uses
  %.not29.i.i = icmp eq i8 %i.cv, 0
  %i.cw = getelementptr i8, ptr %.116.lcssa.i.i, i64 1
  %i.cx = add nsw i64 %.1.lcssa.i.i, -1           ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  %or.cond.i.i = select i1 %.not29.i.i, i1 true, i1 %i.cy
  br i1 %or.cond.i.i, label %.loopexit.i, label %.preheader.i.i

name_match_p.exit.thread.i:                       ; preds = %bb.v, %._crit_edge.i.i, %.tail.thread.i
  %i.cz = icmp ult i64 %i.bo, 13
  br i1 %i.cz, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %name_match_p.exit.thread.i
  %i.da = icmp eq i64 %i.bo, 0
  br i1 %i.da, label %name_match_p.exit.i, label %.preheader.i47.i

.preheader.i47.i:                                 ; preds = %bb.x, %bb.aa
  %i.db = phi i8 [ %i.ef, %bb.aa ], [ 101, %bb.x ]
  %.017.i48.i = phi ptr [ %i.ee, %bb.aa ], [ @.str.47, %bb.x ] ; 2 uses
  %.015.i49.i = phi ptr [ %i.eg, %bb.aa ], [ %i.bn, %bb.x ] ; 3 uses
  %.0.i50.i = phi i64 [ %i.eh, %bb.aa ], [ %i.bo, %bb.x ] ; 2 uses
  %i.dc = load i8, ptr %.015.i49.i, align 1, !tbaa !11 ; 2 uses
  %i.dd = sext i8 %i.dc to i32                    ; 3 uses
  %i.de = add nsw i32 %i.dd, -91
  %i.df = icmp ult i32 %i.de, -26
  %i.dg = or i32 %i.dd, 32
  %i.dh = select i1 %i.df, i32 %i.dd, i32 %i.dg
  %i.di = sext i8 %i.db to i32
  %i.dj = icmp eq i32 %i.dh, %i.di
  br i1 %i.dj, label %.lr.ph.i62.i.preheader, label %._crit_edge.i51.i

.lr.ph.i62.i.preheader:                           ; preds = %.preheader.i47.i
  %i.dk = add nsw i64 %.0.i50.i, -1               ; 2 uses
  %.not30.i66.i1206 = icmp eq i64 %i.dk, 0
  br i1 %.not30.i66.i1206, label %.loopexit.i, label %.lr.ph1209

.lr.ph.i62.i:                                     ; preds = %.lr.ph1209
  %i.dl = add nsw i64 %i.dm, -1                   ; 2 uses
  %.not30.i66.i = icmp eq i64 %i.dl, 0
  br i1 %.not30.i66.i, label %.loopexit.i, label %.lr.ph1209, !llvm.loop !162

.lr.ph1209:                                       ; preds = %.lr.ph.i62.i.preheader, %.lr.ph.i62.i
  %i.dm = phi i64 [ %i.dl, %.lr.ph.i62.i ], [ %i.dk, %.lr.ph.i62.i.preheader ] ; 2 uses
  %.11839.i65.i1208 = phi ptr [ %i.dn, %.lr.ph.i62.i ], [ %.017.i48.i, %.lr.ph.i62.i.preheader ]
  %.11640.i64.i1207 = phi ptr [ %i.do, %.lr.ph.i62.i ], [ %.015.i49.i, %.lr.ph.i62.i.preheader ]
  %i.dn = getelementptr i8, ptr %.11839.i65.i1208, i64 1 ; 3 uses
  %i.do = getelementptr i8, ptr %.11640.i64.i1207, i64 1 ; 3 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11  ; 2 uses
  %i.dq = sext i8 %i.dp to i32                    ; 3 uses
  %i.dr = add nsw i32 %i.dq, -91
  %i.ds = icmp ult i32 %i.dr, -26
  %i.dt = or i32 %i.dq, 32
  %i.du = select i1 %i.ds, i32 %i.dq, i32 %i.dt
  %i.dv = load i8, ptr %i.dn, align 1, !tbaa !11
  %i.dw = sext i8 %i.dv to i32
  %i.dx = icmp eq i32 %i.du, %i.dw
  br i1 %i.dx, label %.lr.ph.i62.i, label %._crit_edge.i51.i, !llvm.loop !162

._crit_edge.i51.i:                                ; preds = %.lr.ph1209, %.preheader.i47.i
  %.118.lcssa.i52.i = phi ptr [ %.017.i48.i, %.preheader.i47.i ], [ %i.dn, %.lr.ph1209 ]
  %.116.lcssa.i53.i = phi ptr [ %.015.i49.i, %.preheader.i47.i ], [ %i.do, %.lr.ph1209 ]
  %.1.lcssa.i54.i = phi i64 [ %.0.i50.i, %.preheader.i47.i ], [ %i.dm, %.lr.ph1209 ]
  %.lcssa.i55.i = phi i8 [ %i.dc, %.preheader.i47.i ], [ %i.dp, %.lr.ph1209 ]
  switch i8 %.lcssa.i55.i, label %bb.ab [
    i8 45, label %.preheader1221
    i8 95, label %.preheader1221
  ]

.preheader1221:                                   ; preds = %._crit_edge.i51.i, %._crit_edge.i51.i
  br label %bb.y

bb.y:                                             ; preds = %.preheader1221, %bb.y
  %.2.i56.i = phi ptr [ %i.ee, %bb.y ], [ %.118.lcssa.i52.i, %.preheader1221 ] ; 2 uses
  %i.dy = load i8, ptr %.2.i56.i, align 1, !tbaa !11 ; 2 uses
  %i.dz = sext i8 %i.dy to i32                    ; 2 uses
  %i.ea = and i32 %i.dz, -33
  %i.eb = add nsw i32 %i.ea, -91
  %narrow.i.i.i57.i = icmp ult i32 %i.eb, -26
  %i.ec = add nsw i32 %i.dz, -58
  %i.ed = icmp ult i32 %i.ec, -10
  %narrow.i.not.i58.i = select i1 %narrow.i.i.i57.i, i1 %i.ed, i1 false
  %i.ee = getelementptr i8, ptr %.2.i56.i, i64 1  ; 3 uses
  br i1 %narrow.i.not.i58.i, label %bb.z, label %bb.y, !llvm.loop !163

bb.z:                                             ; preds = %bb.y
  switch i8 %i.dy, label %bb.ab [
    i8 45, label %bb.aa
    i8 95, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !11  ; 2 uses
  %.not29.i59.i = icmp eq i8 %i.ef, 0
  %i.eg = getelementptr i8, ptr %.116.lcssa.i53.i, i64 1
  %i.eh = add nsw i64 %.1.lcssa.i54.i, -1         ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  %or.cond.i60.i = select i1 %.not29.i59.i, i1 true, i1 %i.ei
  br i1 %or.cond.i60.i, label %.loopexit.i, label %.preheader.i47.i

bb.ab:                                            ; preds = %bb.z, %._crit_edge.i51.i
  %.not131.i = icmp eq i64 %i.bo, 12
  br i1 %.not131.i, label %.preheader.i91.i.preheader, label %.preheader.i69.i

.preheader.i69.i:                                 ; preds = %bb.ab, %bb.ae
  %i.ej = phi i8 [ %i.fn, %bb.ae ], [ 112, %bb.ab ]
  %.017.i70.i = phi ptr [ %i.fm, %bb.ae ], [ @.str.48, %bb.ab ] ; 2 uses
  %.015.i71.i = phi ptr [ %i.fo, %bb.ae ], [ %i.bn, %bb.ab ] ; 3 uses
  %.0.i72.i = phi i64 [ %i.fp, %bb.ae ], [ %i.bo, %bb.ab ] ; 2 uses
  %i.ek = load i8, ptr %.015.i71.i, align 1, !tbaa !11 ; 2 uses
  %i.el = sext i8 %i.ek to i32                    ; 3 uses
  %i.em = add nsw i32 %i.el, -91
  %i.en = icmp ult i32 %i.em, -26
  %i.eo = or i32 %i.el, 32
  %i.ep = select i1 %i.en, i32 %i.el, i32 %i.eo
  %i.eq = sext i8 %i.ej to i32
  %i.er = icmp eq i32 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph.i84.i.preheader, label %._crit_edge.i73.i

.lr.ph.i84.i.preheader:                           ; preds = %.preheader.i69.i
  %i.es = add nsw i64 %.0.i72.i, -1               ; 2 uses
  %.not30.i88.i1210 = icmp eq i64 %i.es, 0
  br i1 %.not30.i88.i1210, label %.loopexit.i, label %.lr.ph1213

.lr.ph.i84.i:                                     ; preds = %.lr.ph1213
  %i.et = add nsw i64 %i.eu, -1                   ; 2 uses
  %.not30.i88.i = icmp eq i64 %i.et, 0
  br i1 %.not30.i88.i, label %.loopexit.i, label %.lr.ph1213, !llvm.loop !162

.lr.ph1213:                                       ; preds = %.lr.ph.i84.i.preheader, %.lr.ph.i84.i
  %i.eu = phi i64 [ %i.et, %.lr.ph.i84.i ], [ %i.es, %.lr.ph.i84.i.preheader ] ; 2 uses
  %.11839.i87.i1212 = phi ptr [ %i.ev, %.lr.ph.i84.i ], [ %.017.i70.i, %.lr.ph.i84.i.preheader ]
  %.11640.i86.i1211 = phi ptr [ %i.ew, %.lr.ph.i84.i ], [ %.015.i71.i, %.lr.ph.i84.i.preheader ]
  %i.ev = getelementptr i8, ptr %.11839.i87.i1212, i64 1 ; 3 uses
  %i.ew = getelementptr i8, ptr %.11640.i86.i1211, i64 1 ; 3 uses
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !11  ; 2 uses
  %i.ey = sext i8 %i.ex to i32                    ; 3 uses
  %i.ez = add nsw i32 %i.ey, -91
  %i.fa = icmp ult i32 %i.ez, -26
  %i.fb = or i32 %i.ey, 32
  %i.fc = select i1 %i.fa, i32 %i.ey, i32 %i.fb
  %i.fd = load i8, ptr %i.ev, align 1, !tbaa !11
  %i.fe = sext i8 %i.fd to i32
  %i.ff = icmp eq i32 %i.fc, %i.fe
  br i1 %i.ff, label %.lr.ph.i84.i, label %._crit_edge.i73.i, !llvm.loop !162

._crit_edge.i73.i:                                ; preds = %.lr.ph1213, %.preheader.i69.i
  %.118.lcssa.i74.i = phi ptr [ %.017.i70.i, %.preheader.i69.i ], [ %i.ev, %.lr.ph1213 ]
  %.116.lcssa.i75.i = phi ptr [ %.015.i71.i, %.preheader.i69.i ], [ %i.ew, %.lr.ph1213 ]
  %.1.lcssa.i76.i = phi i64 [ %.0.i72.i, %.preheader.i69.i ], [ %i.eu, %.lr.ph1213 ]
  %.lcssa.i77.i = phi i8 [ %i.ek, %.preheader.i69.i ], [ %i.ex, %.lr.ph1213 ]
  switch i8 %.lcssa.i77.i, label %.thread.i [
    i8 45, label %.preheader1219
    i8 95, label %.preheader1219
  ]

.preheader1219:                                   ; preds = %._crit_edge.i73.i, %._crit_edge.i73.i
  br label %bb.ac

bb.ac:                                            ; preds = %.preheader1219, %bb.ac
  %.2.i78.i = phi ptr [ %i.fm, %bb.ac ], [ %.118.lcssa.i74.i, %.preheader1219 ] ; 2 uses
  %i.fg = load i8, ptr %.2.i78.i, align 1, !tbaa !11 ; 2 uses
  %i.fh = sext i8 %i.fg to i32                    ; 2 uses
  %i.fi = and i32 %i.fh, -33
  %i.fj = add nsw i32 %i.fi, -91
  %narrow.i.i.i79.i = icmp ult i32 %i.fj, -26
  %i.fk = add nsw i32 %i.fh, -58
  %i.fl = icmp ult i32 %i.fk, -10
  %narrow.i.not.i80.i = select i1 %narrow.i.i.i79.i, i1 %i.fl, i1 false
  %i.fm = getelementptr i8, ptr %.2.i78.i, i64 1  ; 3 uses
  br i1 %narrow.i.not.i80.i, label %bb.ad, label %bb.ac, !llvm.loop !163

bb.ad:                                            ; preds = %bb.ac
  switch i8 %i.fg, label %.thread.i [
    i8 45, label %bb.ae
    i8 95, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !11  ; 2 uses
  %.not29.i81.i = icmp eq i8 %i.fn, 0
  %i.fo = getelementptr i8, ptr %.116.lcssa.i75.i, i64 1
  %i.fp = add nsw i64 %.1.lcssa.i76.i, -1         ; 2 uses
  %i.fq = icmp eq i64 %i.fp, 0
  %or.cond.i82.i = select i1 %.not29.i81.i, i1 true, i1 %i.fq
  br i1 %or.cond.i82.i, label %.loopexit.i, label %.preheader.i69.i

.thread.i:                                        ; preds = %bb.ad, %._crit_edge.i73.i, %name_match_p.exit.thread.i
  %i.fr = add i64 %i.bo, -20
  %or.cond.i = icmp ult i64 %i.fr, -19
  br i1 %or.cond.i, label %name_match_p.exit.i, label %.preheader.i91.i.preheader

.preheader.i91.i.preheader:                       ; preds = %.thread.i, %bb.ab
  br label %.preheader.i91.i

.preheader.i91.i:                                 ; preds = %.preheader.i91.i.preheader, %bb.ah
  %i.fs = phi i8 [ %i.gw, %bb.ah ], [ 115, %.preheader.i91.i.preheader ]
  %.017.i92.i = phi ptr [ %i.gv, %bb.ah ], [ @.str.49, %.preheader.i91.i.preheader ] ; 2 uses
  %.015.i93.i = phi ptr [ %i.gx, %bb.ah ], [ %i.bn, %.preheader.i91.i.preheader ] ; 3 uses
  %.0.i94.i = phi i64 [ %i.gy, %bb.ah ], [ %i.bo, %.preheader.i91.i.preheader ] ; 2 uses
  %i.ft = load i8, ptr %.015.i93.i, align 1, !tbaa !11 ; 2 uses
  %i.fu = sext i8 %i.ft to i32                    ; 3 uses
  %i.fv = add nsw i32 %i.fu, -91
  %i.fw = icmp ult i32 %i.fv, -26
  %i.fx = or i32 %i.fu, 32
  %i.fy = select i1 %i.fw, i32 %i.fu, i32 %i.fx
  %i.fz = sext i8 %i.fs to i32
  %i.ga = icmp eq i32 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph.i106.i.preheader, label %._crit_edge.i95.i

.lr.ph.i106.i.preheader:                          ; preds = %.preheader.i91.i
  %i.gb = add i64 %.0.i94.i, -1                   ; 2 uses
  %.not30.i110.i1214 = icmp eq i64 %i.gb, 0
  br i1 %.not30.i110.i1214, label %.loopexit.i, label %.lr.ph1217

.lr.ph.i106.i:                                    ; preds = %.lr.ph1217
  %i.gc = add i64 %i.gd, -1                       ; 2 uses
  %.not30.i110.i = icmp eq i64 %i.gc, 0
  br i1 %.not30.i110.i, label %.loopexit.i, label %.lr.ph1217, !llvm.loop !162

.lr.ph1217:                                       ; preds = %.lr.ph.i106.i.preheader, %.lr.ph.i106.i
  %i.gd = phi i64 [ %i.gc, %.lr.ph.i106.i ], [ %i.gb, %.lr.ph.i106.i.preheader ] ; 2 uses
  %.11839.i109.i1216 = phi ptr [ %i.ge, %.lr.ph.i106.i ], [ %.017.i92.i, %.lr.ph.i106.i.preheader ]
  %.11640.i108.i1215 = phi ptr [ %i.gf, %.lr.ph.i106.i ], [ %.015.i93.i, %.lr.ph.i106.i.preheader ]
  %i.ge = getelementptr i8, ptr %.11839.i109.i1216, i64 1 ; 3 uses
  %i.gf = getelementptr i8, ptr %.11640.i108.i1215, i64 1 ; 3 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !11  ; 2 uses
  %i.gh = sext i8 %i.gg to i32                    ; 3 uses
  %i.gi = add nsw i32 %i.gh, -91
  %i.gj = icmp ult i32 %i.gi, -26
  %i.gk = or i32 %i.gh, 32
  %i.gl = select i1 %i.gj, i32 %i.gh, i32 %i.gk
  %i.gm = load i8, ptr %i.ge, align 1, !tbaa !11
  %i.gn = sext i8 %i.gm to i32
  %i.go = icmp eq i32 %i.gl, %i.gn
  br i1 %i.go, label %.lr.ph.i106.i, label %._crit_edge.i95.i, !llvm.loop !162

._crit_edge.i95.i:                                ; preds = %.lr.ph1217, %.preheader.i91.i
  %.118.lcssa.i96.i = phi ptr [ %.017.i92.i, %.preheader.i91.i ], [ %i.ge, %.lr.ph1217 ]
  %.116.lcssa.i97.i = phi ptr [ %.015.i93.i, %.preheader.i91.i ], [ %i.gf, %.lr.ph1217 ]
  %.1.lcssa.i98.i = phi i64 [ %.0.i94.i, %.preheader.i91.i ], [ %i.gd, %.lr.ph1217 ]
  %.lcssa.i99.i = phi i8 [ %i.ft, %.preheader.i91.i ], [ %i.gg, %.lr.ph1217 ]
  switch i8 %.lcssa.i99.i, label %name_match_p.exit.i [
    i8 45, label %.preheader1218
    i8 95, label %.preheader1218
  ]

.preheader1218:                                   ; preds = %._crit_edge.i95.i, %._crit_edge.i95.i
  br label %bb.af

bb.af:                                            ; preds = %.preheader1218, %bb.af
  %.2.i100.i = phi ptr [ %i.gv, %bb.af ], [ %.118.lcssa.i96.i, %.preheader1218 ] ; 2 uses
  %i.gp = load i8, ptr %.2.i100.i, align 1, !tbaa !11 ; 2 uses
  %i.gq = sext i8 %i.gp to i32                    ; 2 uses
  %i.gr = and i32 %i.gq, -33
  %i.gs = add nsw i32 %i.gr, -91
  %narrow.i.i.i101.i = icmp ult i32 %i.gs, -26
  %i.gt = add nsw i32 %i.gq, -58
  %i.gu = icmp ult i32 %i.gt, -10
  %narrow.i.not.i102.i = select i1 %narrow.i.i.i101.i, i1 %i.gu, i1 false
  %i.gv = getelementptr i8, ptr %.2.i100.i, i64 1 ; 3 uses
  br i1 %narrow.i.not.i102.i, label %bb.ag, label %bb.af, !llvm.loop !163

bb.ag:                                            ; preds = %bb.af
  switch i8 %i.gp, label %name_match_p.exit.i [
    i8 45, label %bb.ah
    i8 95, label %bb.ah
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.ag
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !11  ; 2 uses
  %.not29.i103.i = icmp eq i8 %i.gw, 0
  %i.gx = getelementptr i8, ptr %.116.lcssa.i97.i, i64 1
  %i.gy = add i64 %.1.lcssa.i98.i, -1             ; 2 uses
  %i.gz = icmp eq i64 %i.gy, 0
  %or.cond.i104.i = select i1 %.not29.i103.i, i1 true, i1 %i.gz
  br i1 %or.cond.i104.i, label %.loopexit.i, label %.preheader.i91.i

name_match_p.exit.i:                              ; preds = %bb.ag, %._crit_edge.i95.i, %.thread.i, %bb.x, %bb.t
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.bn) #26
  br label %proc_W_option.exit.thread

.loopexit.i:                                      ; preds = %bb.w, %.lr.ph.i.i.preheader, %bb.aa, %.lr.ph.i62.i.preheader, %bb.ae, %.lr.ph.i84.i.preheader, %bb.ah, %.lr.ph.i106.i.preheader, %.lr.ph.i.i, %.lr.ph.i62.i, %.lr.ph.i84.i, %.lr.ph.i106.i
  %.036.ph.i = phi i32 [ 8, %.lr.ph.i84.i ], [ 16, %.lr.ph.i106.i ], [ 4, %.lr.ph.i62.i ], [ 2, %.lr.ph.i.i ], [ 4, %bb.aa ], [ 16, %bb.ah ], [ 8, %bb.ae ], [ 16, %.lr.ph.i106.i.preheader ], [ 8, %.lr.ph.i84.i.preheader ], [ 4, %.lr.ph.i62.i.preheader ], [ 2, %.lr.ph.i.i.preheader ], [ 2, %bb.w ] ; 3 uses
  %i.ha = select i1 %.not40216.i, i32 0, i32 %.036.ph.i
  %i.hb = load i32, ptr %i.q, align 8, !tbaa !93
  %i.hc = or i32 %i.hb, %.036.ph.i
  store i32 %i.hc, ptr %i.q, align 8, !tbaa !93
  %i.hd = load i32, ptr %i.r, align 4, !tbaa !94
  %i.he = xor i32 %.036.ph.i, -1
  %i.hf = and i32 %i.hd, %i.he
  %i.hg = or i32 %i.hf, %i.ha
  store i32 %i.hg, ptr %i.r, align 4, !tbaa !94
  br label %proc_W_option.exit.thread

bb.ai:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %.not.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hh = call i64 @ruby_scan_oct(ptr noundef nonnull %i.bc, i64 noundef 1, ptr noundef nonnull %i.d) #28
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = load i64, ptr %i.d, align 8, !tbaa !24  ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  %spec.store.select.i = select i1 %i.hk, i32 2, i32 %i.hi
  %i.hl = getelementptr i8, ptr %i.bc, i64 %i.hj
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1.i = phi ptr [ %i.hl, %bb.aj ], [ %i.bc, %bb.ai ] ; 2 uses
  %.0.i = phi i32 [ %spec.store.select.i, %bb.aj ], [ 2, %bb.ai ] ; 2 uses
  %i.hm = load i16, ptr %i.e, align 8
  %i.hn = and i16 %i.hm, 8
  %.not39.i = icmp eq i16 %i.hn, 0
  br i1 %.not39.i, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.ho = call ptr @rb_ruby_verbose_ptr() #23     ; 3 uses
  switch i32 %.0.i, label %bb.am [
    i32 0, label %.thread127.i
    i32 1, label %.thread128.i
  ]

.thread127.i:                                     ; preds = %bb.al
  store i64 4, ptr %i.ho, align 8, !tbaa !24
  br label %bb.ao

.thread128.i:                                     ; preds = %bb.al
  store i64 0, ptr %i.ho, align 8, !tbaa !24
  br label %bb.ap

bb.am:                                            ; preds = %bb.al
  store i64 20, ptr %i.ho, align 8, !tbaa !24
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  switch i32 %.0.i, label %bb.aq [
    i32 0, label %bb.ao
    i32 1, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an, %.thread127.i
  %i.hp = load i32, ptr %i.q, align 8, !tbaa !93
  %i.hq = or i32 %i.hp, 6
  store i32 %i.hq, ptr %i.q, align 8, !tbaa !93
  %i.hr = load i32, ptr %i.r, align 4, !tbaa !94
  %i.hs = and i32 %i.hr, -7
  br label %proc_W_option.exit

bb.ap:                                            ; preds = %bb.an, %.thread128.i
  %i.ht = load i32, ptr %i.q, align 8, !tbaa !93
  %i.hu = or i32 %i.ht, 2
  store i32 %i.hu, ptr %i.q, align 8, !tbaa !93
  %i.hv = load i32, ptr %i.r, align 4, !tbaa !94
  %i.hw = and i32 %i.hv, -3
  br label %proc_W_option.exit

bb.aq:                                            ; preds = %bb.an
  %i.hx = load i32, ptr %i.q, align 8, !tbaa !93
  %i.hy = or i32 %i.hx, 6
  store i32 %i.hy, ptr %i.q, align 8, !tbaa !93
  %i.hz = load i32, ptr %i.r, align 4, !tbaa !94
  %i.ia = or i32 %i.hz, 6
  br label %proc_W_option.exit

proc_W_option.exit:                               ; preds = %bb.ao, %bb.ap, %bb.aq
  %.sink = phi i32 [ %i.hs, %bb.ao ], [ %i.hw, %bb.ap ], [ %i.ia, %bb.aq ]
  store i32 %.sink, ptr %i.r, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %.not216 = icmp eq ptr %.1.i, null
  br i1 %.not216, label %proc_W_option.exit.thread, label %thread-pre-split

bb.ar:                                            ; preds = %.preheader
  br i1 %.not189, label %bb.as, label %.loopexit290

bb.as:                                            ; preds = %bb.ar
  %i.ib = load i32, ptr %i.p, align 8, !tbaa !62
  %i.ic = or i32 %i.ib, 512
  store i32 %i.ic, ptr %i.p, align 8, !tbaa !62
  %i.id = getelementptr i8, ptr %.0163, i64 1
  br label %thread-pre-split

bb.at:                                            ; preds = %.preheader
  br i1 %.not189, label %bb.au, label %.loopexit290

bb.au:                                            ; preds = %bb.at
  %.val231 = load i16, ptr %i.e, align 8          ; 4 uses
  %i.ie = and i16 %.val231, 1024
  %.not.i232 = icmp eq i16 %i.ie, 0
  br i1 %.not.i232, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.if = load i64, ptr @rb_eSecurityError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.if, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.31) #24
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.ig = and i16 %.val231, 2048
  %.not4.i = icmp eq i16 %i.ig, 0
  br i1 %.not4.i, label %forbid_setid.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ih = load i64, ptr @rb_eSecurityError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ih, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.31) #24
  unreachable

forbid_setid.exit:                                ; preds = %bb.aw
  %.mask = and i16 %.val231, 3
  %.not214 = icmp eq i16 %.mask, 0
  br i1 %.not214, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %forbid_setid.exit
  %i.ii = or disjoint i16 %.val231, 1
  store i16 %i.ii, ptr %i.e, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %forbid_setid.exit
  %i.ij = getelementptr i8, ptr %.0163, i64 1
  br label %thread-pre-split

bb.ba:                                            ; preds = %.preheader
  br i1 %.not189, label %bb.bb, label %.loopexit290

bb.bb:                                            ; preds = %bb.ba
  %i.ik = load i32, ptr %i.p, align 8, !tbaa !62
  %i.il = or i32 %i.ik, 64
  store i32 %i.il, ptr %i.p, align 8, !tbaa !62
  br label %.thread277

bb.bc:                                            ; preds = %.preheader
  br i1 %.not189, label %bb.bd, label %.loopexit290

bb.bd:                                            ; preds = %bb.bc
  %i.im = load i16, ptr %i.e, align 8
  %i.in = or i16 %i.im, 128
  store i16 %i.in, ptr %i.e, align 8
  %i.io = load i64, ptr @rb_rs, align 8, !tbaa !24
  store i64 %i.io, ptr @rb_output_rs, align 8, !tbaa !24
  %i.ip = getelementptr i8, ptr %.0163, i64 1
  br label %thread-pre-split

bb.be:                                            ; preds = %.preheader
  br i1 %.not189, label %bb.bf, label %.loopexit290

bb.bf:                                            ; preds = %bb.be
  %.val230 = load i16, ptr %i.e, align 8          ; 3 uses
  %i.iq = and i16 %.val230, 1024
  %.not.i233 = icmp eq i16 %i.iq, 0
  br i1 %.not.i233, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ir = load i64, ptr @rb_eSecurityError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ir, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.32) #24
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.is = and i16 %.val230, 2048
  %.not4.i234 = icmp eq i16 %i.is, 0
  br i1 %.not4.i234, label %forbid_setid.exit235, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.it = load i64, ptr @rb_eSecurityError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.it, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.32) #24
  unreachable

forbid_setid.exit235:                             ; preds = %bb.bh
  %i.iu = or i16 %.val230, 512
  store i16 %i.iu, ptr %i.e, align 8
  %i.iv = getelementptr i8, ptr %.0163, i64 1
  br label %thread-pre-split

bb.bj:                                            ; preds = %.preheader
  br i1 %.not189, label %bb.bk, label %.loopexit290

bb.bk:                                            ; preds = %bb.bj
  %.val.i = load i16, ptr %i.e, align 8           ; 2 uses
  %i.iw = and i16 %.val.i, 1024
  %.not.i.i = icmp eq i16 %i.iw, 0
  br i1 %.not.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ix = load i64, ptr @rb_eSecurityError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ix, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.53) #24
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.iy = and i16 %.val.i, 2048
  %.not4.i.i = icmp eq i16 %i.iy, 0
  br i1 %.not4.i.i, label %forbid_setid.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iz = load i64, ptr @rb_eSecurityError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.iz, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53) #24
  unreachable

forbid_setid.exit.i:                              ; preds = %bb.bm
  %i.ja = getelementptr i8, ptr %.0163, i64 1     ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !11
  %.not.i236 = icmp eq i8 %i.jb, 0
  br i1 %.not.i236, label %bb.bo, label %bb.br

bb.bo:                                            ; preds = %forbid_setid.exit.i
  %.not282 = icmp eq i64 %.0156497, 1
  br i1 %.not282, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jc = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jc, ptr noundef nonnull @.str.54) #24
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.jd = getelementptr i8, ptr %.pn494, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !79
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %forbid_setid.exit.i
  %.012.i = phi ptr [ %i.ja, %forbid_setid.exit.i ], [ %i.je, %bb.bq ]
  %.0.i237 = phi i64 [ 1, %forbid_setid.exit.i ], [ 2, %bb.bq ] ; 2 uses
  %i.jf = load i64, ptr %i.w, align 8, !tbaa !95  ; 2 uses
  %.not13.i = icmp eq i64 %i.jf, 0
  br i1 %.not13.i, label %bb.bs, label %proc_e_option.exit

bb.bs:                                            ; preds = %bb.br
  %i.jg = call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #23 ; 3 uses
  store i64 %i.jg, ptr %i.w, align 8, !tbaa !95
  %i.jh = load ptr, ptr %2, align 8, !tbaa !96
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %bb.bt, label %proc_e_option.exit

bb.bt:                                            ; preds = %bb.bs
  store ptr @.str.53, ptr %2, align 8, !tbaa !96
  br label %proc_e_option.exit

proc_e_option.exit:                               ; preds = %bb.br, %bb.bs, %bb.bt
  %i.jj = phi i64 [ %i.jg, %bb.bs ], [ %i.jg, %bb.bt ], [ %i.jf, %bb.br ]
  %i.jk = call i64 @rb_str_cat_cstr(i64 noundef %i.jj, ptr noundef %.012.i) #23 ; 0 uses
  %i.jl = load i64, ptr %i.w, align 8, !tbaa !95
  %i.jm = call i64 @rb_str_cat(i64 noundef %i.jl, ptr noundef nonnull @.str.15, i64 noundef 1) #23 ; 0 uses
  %i.jn = sub i64 %.0156.in495, %.0.i237
  %i.jo = getelementptr [8 x i8], ptr %.0157496, i64 %.0.i237
  %i.jp = getelementptr i8, ptr %i.jo, i64 -8
  br label %proc_W_option.exit.thread

bb.bu:                                            ; preds = %.preheader
  %.val229 = load i16, ptr %i.e, align 8          ; 2 uses
  %i.jq = and i16 %.val229, 1024
  %.not.i238 = icmp eq i16 %i.jq, 0
  br i1 %.not.i238, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jr = load i64, ptr @rb_eSecurityError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.jr, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.33) #24
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.js = and i16 %.val229, 2048
  %.not4.i239 = icmp eq i16 %i.js, 0
  br i1 %.not4.i239, label %forbid_setid.exit240, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jt = load i64, ptr @rb_eSecurityError, align 8, !tbaa !24
end_hunk_1
begin_hunk_2_@proc_options:bb.a
  store i64 %i.ph, ptr @set_option_encoding_once.rbimpl_id, align 8, !tbaa !24
  %.not.i.i.i = icmp eq i64 %i.ph, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.loopexit.i.i, !llvm.loop !146

rbimpl_intern_const.exit.loopexit.i.i:            ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load i64, ptr %i.o, align 8, !tbaa !24
  br label %rbimpl_intern_const.exit.i.i

rbimpl_intern_const.exit.i.i:                     ; preds = %rbimpl_intern_const.exit.loopexit.i.i, %bb.fp
  %i.pi = phi i64 [ %i.pg, %bb.fp ], [ %.pre.i.i, %rbimpl_intern_const.exit.loopexit.i.i ]
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %bb.fp ], [ %i.ph, %rbimpl_intern_const.exit.loopexit.i.i ]
  %i.pj = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.pf, i64 noundef %.lcssa.i.i.i, i32 noundef 1, i64 noundef %i.pi) #23
  %.not13.i.i = icmp eq i64 %i.pj, 1
  br i1 %.not13.i.i, label %set_option_encoding_once.exit.i, label %bb.fq

bb.fq:                                            ; preds = %rbimpl_intern_const.exit.i.i
  %i.pk = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  %i.pl = load i64, ptr %i.o, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.pk, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.40, i64 noundef %i.pl) #24
  unreachable

set_option_encoding_once.exit.i:                  ; preds = %rbimpl_intern_const.exit.i.i, %bb.fo
  store i64 %i.pf, ptr %i.o, align 8, !tbaa !24
  br label %proc_long_options.exit

bb.fr:                                            ; preds = %bb.fj, %bb.fi
  %i.pm = call i32 @strncmp(ptr noundef nonnull dereferenceable(18) @.str.74, ptr noundef nonnull dereferenceable(1) %i.mr, i64 noundef 17) #22
  %i.pn = icmp eq i32 %i.pm, 0
  br i1 %i.pn, label %bb.fs, label %bb.ga

bb.fs:                                            ; preds = %bb.fr
  %i.po = getelementptr i8, ptr %.0163, i64 18
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !11
  switch i8 %i.pp, label %bb.ga [
    i8 0, label %bb.ft
    i8 61, label %.thread421.i
  ]

.thread421.i:                                     ; preds = %bb.fs
  %i.pq = getelementptr i8, ptr %.0163, i64 19    ; 2 uses
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !11
  %.not384.i = icmp eq i8 %i.pr, 0
  br i1 %.not384.i, label %bb.fw, label %bb.fx

bb.ft:                                            ; preds = %bb.fs
  %i.ps = icmp eq i64 %.0156497, 1
  br i1 %i.ps, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.pt = getelementptr i8, ptr %.pn494, i64 16
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !79 ; 2 uses
  %.not383.i = icmp eq ptr %i.pu, null
  br i1 %.not383.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.pv = add i64 %.0156.in495, -2
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fu, %bb.ft, %.thread421.i
  %i.pw = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.pw, ptr noundef nonnull @.str.75) #24
  unreachable

bb.fx:                                            ; preds = %bb.fv, %.thread421.i
  %.4285.i = phi i64 [ %.0156497, %.thread421.i ], [ %i.pv, %bb.fv ]
  %.5.i = phi ptr [ %i.pq, %.thread421.i ], [ %i.pu, %bb.fv ] ; 2 uses
  %i.px = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.5.i) #22
  %i.py = call i64 @rb_str_new(ptr noundef nonnull %.5.i, i64 noundef %i.px) #23 ; 2 uses
  %i.pz = load i64, ptr %i.n, align 8, !tbaa !24  ; 2 uses
  %.not12.i403.i = icmp eq i64 %i.pz, 0
  br i1 %.not12.i403.i, label %set_option_encoding_once.exit413.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %.pr.i.i404.i = load i64, ptr @set_option_encoding_once.rbimpl_id, align 8, !tbaa !24 ; 2 uses
  %.not4.i.i405.i = icmp eq i64 %.pr.i.i404.i, 0
  br i1 %.not4.i.i405.i, label %.lr.ph.i.i409.i, label %rbimpl_intern_const.exit.i406.i

.lr.ph.i.i409.i:                                  ; preds = %bb.fy, %.lr.ph.i.i409.i
  %i.qa = call i64 @rb_intern2(ptr noundef nonnull @.str.57, i64 noundef 7) #23 ; 3 uses
  store i64 %i.qa, ptr @set_option_encoding_once.rbimpl_id, align 8, !tbaa !24
  %.not.i.i410.i = icmp eq i64 %i.qa, 0
  br i1 %.not.i.i410.i, label %.lr.ph.i.i409.i, label %rbimpl_intern_const.exit.loopexit.i411.i, !llvm.loop !146

rbimpl_intern_const.exit.loopexit.i411.i:         ; preds = %.lr.ph.i.i409.i
  %.pre.i412.i = load i64, ptr %i.n, align 8, !tbaa !24
  br label %rbimpl_intern_const.exit.i406.i

rbimpl_intern_const.exit.i406.i:                  ; preds = %rbimpl_intern_const.exit.loopexit.i411.i, %bb.fy
  %i.qb = phi i64 [ %i.pz, %bb.fy ], [ %.pre.i412.i, %rbimpl_intern_const.exit.loopexit.i411.i ]
  %.lcssa.i.i407.i = phi i64 [ %.pr.i.i404.i, %bb.fy ], [ %i.qa, %rbimpl_intern_const.exit.loopexit.i411.i ]
  %i.qc = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.py, i64 noundef %.lcssa.i.i407.i, i32 noundef 1, i64 noundef %i.qb) #23
  %.not13.i408.i = icmp eq i64 %i.qc, 1
  br i1 %.not13.i408.i, label %set_option_encoding_once.exit413.i, label %bb.fz

bb.fz:                                            ; preds = %rbimpl_intern_const.exit.i406.i
  %i.qd = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  %i.qe = load i64, ptr %i.n, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.qd, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.55, i64 noundef %i.qe) #24
  unreachable

set_option_encoding_once.exit413.i:               ; preds = %rbimpl_intern_const.exit.i406.i, %bb.fx
  store i64 %i.py, ptr %i.n, align 8, !tbaa !24
  br label %proc_long_options.exit

bb.ga:                                            ; preds = %bb.fs, %bb.fr
  %i.qf = call i32 @strncmp(ptr noundef nonnull dereferenceable(7) @.str.76, ptr noundef nonnull dereferenceable(1) %i.mr, i64 noundef 6) #22
  %i.qg = icmp eq i32 %i.qf, 0
  br i1 %i.qg, label %bb.gb, label %bb.gl

bb.gb:                                            ; preds = %bb.ga
  %i.qh = getelementptr i8, ptr %.0163, i64 7
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !11
  switch i8 %i.qi, label %bb.gl [
    i8 0, label %bb.gc
    i8 61, label %.thread423.i
  ]

.thread423.i:                                     ; preds = %bb.gb
  %i.qj = getelementptr i8, ptr %.0163, i64 8     ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !11
  %.not381.i = icmp eq i8 %i.qk, 0
  br i1 %.not381.i, label %bb.gf, label %bb.gg

bb.gc:                                            ; preds = %bb.gb
  %i.ql = icmp eq i64 %.0156497, 1
  br i1 %i.ql, label %bb.gf, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.qm = getelementptr i8, ptr %.pn494, i64 16
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !79 ; 2 uses
  %.not380.i = icmp eq ptr %i.qn, null
  br i1 %.not380.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.qo = add i64 %.0156.in495, -2
  br label %bb.gg

bb.gf:                                            ; preds = %bb.gd, %bb.gc, %.thread423.i
  %i.qp = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.qp, ptr noundef nonnull @.str.77) #24
  unreachable

bb.gg:                                            ; preds = %bb.ge, %.thread423.i
  %.5286.i = phi i64 [ %.0156497, %.thread423.i ], [ %i.qo, %bb.ge ] ; 2 uses
  %.6.i = phi ptr [ %i.qj, %.thread423.i ], [ %i.qn, %bb.ge ] ; 3 uses
  %i.qq = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.78, ptr noundef nonnull dereferenceable(1) %.6.i) #22
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  call void @rb_ruby_default_parser_set(i32 noundef 1) #23
  br label %proc_long_options.exit

bb.gi:                                            ; preds = %bb.gg
  %i.qs = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.79, ptr noundef nonnull dereferenceable(1) %.6.i) #22
  %i.qt = icmp eq i32 %i.qs, 0
  br i1 %i.qt, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void @rb_ruby_default_parser_set(i32 noundef 0) #23
  br label %proc_long_options.exit

bb.gk:                                            ; preds = %bb.gi
  %i.qu = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.qu, ptr noundef nonnull @.str.80, ptr noundef nonnull %.6.i) #24
  unreachable

bb.gl:                                            ; preds = %bb.gb, %bb.ga
  %i.qv = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.81, ptr noundef nonnull dereferenceable(1) %i.mr) #22
  %i.qw = icmp eq i32 %i.qv, 0
  br i1 %i.qw, label %bb.gm, label %bb.go

bb.gm:                                            ; preds = %bb.gl
  br i1 %.not189, label %bb.gn, label %.loopexit293

bb.gn:                                            ; preds = %bb.gm
  %i.qx = load i32, ptr %i.p, align 8, !tbaa !62
  %i.qy = or i32 %i.qx, 16
  store i32 %i.qy, ptr %i.p, align 8, !tbaa !62
  br label %proc_long_options.exit

bb.go:                                            ; preds = %bb.gl
  %i.qz = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.82, ptr noundef nonnull dereferenceable(1) %i.mr) #22
  %i.ra = icmp eq i32 %i.qz, 0
  br i1 %i.ra, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.rb = load i16, ptr %i.e, align 8
  %i.rc = or i16 %i.rb, 16
  store i16 %i.rc, ptr %i.e, align 8
  %i.rd = call ptr @rb_ruby_verbose_ptr() #23
  store i64 20, ptr %i.rd, align 8, !tbaa !24
  br label %proc_long_options.exit

bb.gq:                                            ; preds = %bb.go
  %i.re = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.83, ptr noundef nonnull dereferenceable(1) %i.mr) #22
  %i.rf = icmp eq i32 %i.re, 0
  br i1 %i.rf, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.rg = load <2 x i32>, ptr %i.s, align 8, !tbaa !7
  %i.rh = or <2 x i32> %i.rg, splat (i32 64)
  store <2 x i32> %i.rh, ptr %i.s, align 8, !tbaa !7
  br label %proc_long_options.exit

bb.gs:                                            ; preds = %bb.gq
  %i.ri = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.84, ptr noundef nonnull dereferenceable(1) %i.mr, i64 noundef 4) #22
  %i.rj = icmp eq i32 %i.ri, 0
  br i1 %i.rj, label %bb.gt, label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  %i.rk = getelementptr i8, ptr %.0163, i64 5     ; 2 uses
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !11  ; 2 uses
  switch i8 %i.rl, label %bb.gw [
    i8 45, label %bb.gu
    i8 0, label %bb.gv
    i8 61, label %bb.gv
  ]

bb.gu:                                            ; preds = %bb.gt
  %i.rm = getelementptr i8, ptr %.0163, i64 6
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !11
  %.not350.i = icmp eq i8 %i.rn, 0
  br i1 %.not350.i, label %bb.gw, label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %bb.gt
  %.not377.i = icmp eq i8 %i.rl, 0
  %i.ro = getelementptr i8, ptr %.0163, i64 6
  %spec.select401.i = select i1 %.not377.i, ptr %i.rk, ptr %i.ro
  %i.rp = load <2 x i32>, ptr %i.s, align 8, !tbaa !7
  %i.rq = or <2 x i32> %i.rp, splat (i32 64)
  store <2 x i32> %i.rq, ptr %i.s, align 8, !tbaa !7
  call fastcc void @setup_yjit_options(ptr noundef %spec.select401.i)
  br label %proc_long_options.exit

bb.gw:                                            ; preds = %bb.gu, %bb.gt, %bb.gs
  %i.rr = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.86, ptr noundef nonnull dereferenceable(1) %i.mr, i64 noundef 4) #22
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %bb.gx, label %bb.ha

bb.gx:                                            ; preds = %bb.gw
  %i.rt = getelementptr i8, ptr %.0163, i64 5     ; 2 uses
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !11  ; 2 uses
  switch i8 %i.ru, label %bb.ha [
    i8 45, label %bb.gy
    i8 0, label %bb.gz
    i8 61, label %bb.gz
  ]

bb.gy:                                            ; preds = %bb.gx
  %i.rv = getelementptr i8, ptr %.0163, i64 6
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !11
  %.not353.i = icmp eq i8 %i.rw, 0
  br i1 %.not353.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %bb.gx, %bb.gx
  %.not376.i = icmp eq i8 %i.ru, 0
  %i.rx = getelementptr i8, ptr %.0163, i64 6
  %spec.select402.i = select i1 %.not376.i, ptr %i.rt, ptr %i.rx
  %i.ry = load <2 x i32>, ptr %i.s, align 8, !tbaa !7
  %i.rz = or <2 x i32> %i.ry, splat (i32 128)
  store <2 x i32> %i.rz, ptr %i.s, align 8, !tbaa !7
  call fastcc void @setup_zjit_options(ptr noundef %spec.select402.i)
  br label %proc_long_options.exit

bb.ha:                                            ; preds = %bb.gy, %bb.gx, %bb.gw
  %i.sa = call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.88, ptr noundef nonnull dereferenceable(1) %i.mr) #22
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %bb.hb, label %bb.hd

bb.hb:                                            ; preds = %bb.ha
  br i1 %.not189, label %bb.hc, label %.loopexit293

bb.hc:                                            ; preds = %bb.hb
  %i.sc = load i32, ptr %i.p, align 8, !tbaa !62
  %i.sd = or i32 %i.sc, 256
  store i32 %i.sd, ptr %i.p, align 8, !tbaa !62
  br label %proc_long_options.exit

bb.hd:                                            ; preds = %bb.ha
  %i.se = call i32 @strncmp(ptr noundef nonnull dereferenceable(5) @.str.89, ptr noundef nonnull dereferenceable(1) %i.mr, i64 noundef 4) #22
  %i.sf = icmp eq i32 %i.se, 0
  br i1 %i.sf, label %bb.he, label %bb.hn

bb.he:                                            ; preds = %bb.hd
  %i.sg = getelementptr i8, ptr %.0163, i64 5
  %i.sh = load i8, ptr %i.sg, align 1, !tbaa !11  ; 2 uses
  switch i8 %i.sh, label %bb.hn [
    i8 0, label %bb.hf
    i8 61, label %bb.hf
  ]

bb.hf:                                            ; preds = %bb.he, %bb.he
  br i1 %.not189, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.si = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.si, ptr noundef nonnull @.str.90) #24
  unreachable

bb.hh:                                            ; preds = %bb.hf
  %.not372.i = icmp eq i8 %i.sh, 0
  br i1 %.not372.i, label %bb.hi, label %.thread427.i

.thread427.i:                                     ; preds = %bb.hh
  %i.sj = getelementptr i8, ptr %.0163, i64 6     ; 2 uses
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !11
  %.not374.i = icmp eq i8 %i.sk, 0
  br i1 %.not374.i, label %bb.hl, label %bb.hm

bb.hi:                                            ; preds = %bb.hh
  %i.sl = icmp eq i64 %.0156497, 1
  br i1 %i.sl, label %bb.hl, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.sm = getelementptr i8, ptr %.pn494, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !79 ; 2 uses
  %.not373.i = icmp eq ptr %i.sn, null
  br i1 %.not373.i, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.so = add i64 %.0156.in495, -2
  br label %bb.hm

bb.hl:                                            ; preds = %bb.hj, %bb.hi, %.thread427.i
  %i.sp = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.sp, ptr noundef nonnull @.str.91) #24
  unreachable

bb.hm:                                            ; preds = %bb.hk, %.thread427.i
  %.6287.i = phi i64 [ %.0156497, %.thread427.i ], [ %i.so, %bb.hk ]
  %.9.i = phi ptr [ %i.sj, %.thread427.i ], [ %i.sn, %bb.hk ]
  call void @ruby_each_words(ptr noundef nonnull %.9.i, ptr noundef nonnull @dump_option, ptr noundef %i.p) #23
  br label %proc_long_options.exit

bb.hn:                                            ; preds = %bb.he, %bb.hd
  %i.sq = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.92, ptr noundef nonnull dereferenceable(1) %i.mr) #22
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  br i1 %.not189, label %proc_long_options.exit.thread, label %.loopexit293

proc_long_options.exit.thread:                    ; preds = %bb.ho
  %i.ss = load i32, ptr %i.p, align 8, !tbaa !62
  %i.st = or i32 %i.ss, 128
  store i32 %i.st, ptr %i.p, align 8, !tbaa !62
  br label %.thread277

bb.hp:                                            ; preds = %bb.hn
  %i.su = call i32 @strncmp(ptr noundef nonnull dereferenceable(16) @.str.93, ptr noundef nonnull dereferenceable(1) %i.mr, i64 noundef 15) #22
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %bb.hq, label %bb.hz

bb.hq:                                            ; preds = %bb.hp
  %i.sw = getelementptr i8, ptr %.0163, i64 16
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !11
  switch i8 %i.sx, label %bb.hz [
    i8 0, label %bb.hr
    i8 61, label %.thread429.i
  ]

.thread429.i:                                     ; preds = %bb.hq
  %i.sy = getelementptr i8, ptr %.0163, i64 17    ; 2 uses
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !11
  %.not368.i = icmp eq i8 %i.sz, 0
  br i1 %.not368.i, label %bb.hu, label %bb.hv

bb.hr:                                            ; preds = %bb.hq
  %i.ta = icmp eq i64 %.0156497, 1
  br i1 %i.ta, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.tb = getelementptr i8, ptr %.pn494, i64 16
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !79 ; 2 uses
  %.not367.i = icmp eq ptr %i.tc, null
  br i1 %.not367.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.td = add i64 %.0156.in495, -2
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs, %bb.hr, %.thread429.i
  %i.te = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.te, ptr noundef nonnull @.str.94) #24
  unreachable

bb.hv:                                            ; preds = %bb.ht, %.thread429.i
  %.7288.i = phi i64 [ %.0156497, %.thread429.i ], [ %i.td, %bb.ht ]
  %.10.i = phi ptr [ %i.sy, %.thread429.i ], [ %i.tc, %bb.ht ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.tf = call i64 @__isoc23_strtol(ptr noundef nonnull %.10.i, ptr noundef nonnull %i.a, i32 noundef 10) #23 ; 2 uses
  %i.tg = call ptr @rb_errno_ptr() #23
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !7
  %i.ti = icmp ne i32 %i.th, 34
  %i.tj = icmp sgt i64 %i.tf, -2
  %or.cond.i261 = select i1 %i.ti, i1 %i.tj, i1 false
  br i1 %or.cond.i261, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.tk = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !11
  %.not369.i = icmp eq i8 %i.tl, 0
  br i1 %.not369.i, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv
  %i.tm = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.tm, ptr noundef nonnull @.str.95) #24
  unreachable

bb.hy:                                            ; preds = %bb.hw
  store i64 %i.tf, ptr %i.t, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %proc_long_options.exit

bb.hz:                                            ; preds = %bb.hq, %bb.hp
  %i.tn = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.96, ptr noundef nonnull dereferenceable(1) %i.mr, i64 noundef 12) #22
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %bb.ia, label %bb.ig

bb.ia:                                            ; preds = %bb.hz
  %i.tp = getelementptr i8, ptr %.0163, i64 13
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !11
  switch i8 %i.tq, label %bb.ig [
    i8 45, label %bb.ib
    i8 0, label %bb.ic
    i8 61, label %.thread431.i
  ]

bb.ib:                                            ; preds = %bb.ia
  %i.tr = getelementptr i8, ptr %.0163, i64 14    ; 2 uses
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !11
  %.not362.i = icmp eq i8 %i.ts, 0
  br i1 %.not362.i, label %bb.ig, label %.thread431.thread.i

.thread431.i:                                     ; preds = %bb.ia
  %.phi.trans.insert437.i = getelementptr i8, ptr %.0163, i64 14 ; 2 uses
  %.pre438.i = load i8, ptr %.phi.trans.insert437.i, align 1, !tbaa !11
  %i.tt = icmp eq i8 %.pre438.i, 0
  br i1 %i.tt, label %bb.if, label %.thread431.thread.i

bb.ic:                                            ; preds = %bb.ia
  %i.tu = icmp eq i64 %.0156497, 1
  br i1 %i.tu, label %bb.if, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.tv = getelementptr i8, ptr %.pn494, i64 16
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !79 ; 2 uses
  %.not364.i = icmp eq ptr %i.tw, null
  br i1 %.not364.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.tx = add i64 %.0156.in495, -2
  br label %.thread431.thread.i

bb.if:                                            ; preds = %bb.id, %bb.ic, %.thread431.i
  %i.ty = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !24
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ty, ptr noundef nonnull @.str.97) #24
  unreachable

.thread431.thread.i:                              ; preds = %bb.ib, %bb.ie, %.thread431.i
  %.8289.i = phi i64 [ %.0156497, %.thread431.i ], [ %i.tx, %bb.ie ], [ %.0156497, %bb.ib ]
end_hunk_2

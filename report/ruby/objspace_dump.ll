inline.NumInlined: 211
inline.NumDeleted: 69
begin_hunk_0_@dump_object:bb.a
  br label %RHASH_SIZE.exit

bb.ch:                                            ; preds = %bb.cf
  %i.ir = add i64 %0, 24
  %i.is = inttoptr i64 %i.ir to ptr
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !49
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.cg, %bb.ch
  %.0.i310 = phi i64 [ %i.iq, %bb.cg ], [ %i.iu, %bb.ch ]
  tail call fastcc void @dump_append_sizet(ptr noundef nonnull %1, i64 noundef %.0.i310)
  %i.iv = load i64, ptr %i.h, align 8, !tbaa !19
  %i.iw = and i64 %i.iv, 16384
  %.not223 = icmp eq i64 %i.iw, 0
  br i1 %.not223, label %RB_FL_TEST.exit313.thread, label %bb.ci

bb.ci:                                            ; preds = %RHASH_SIZE.exit
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.27, i64 noundef 12)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !54
  tail call fastcc void @dump_append_ref(ptr noundef nonnull %1, i64 noundef %i.iy)
  br label %RB_FL_TEST.exit313.thread

bb.cj:                                            ; preds = %bb.bf
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.28, i64 noundef 11)
  %i.iz = load i64, ptr %i.h, align 8, !tbaa !19  ; 2 uses
  %i.ja = and i64 %i.iz, 8192
  %.not.i314 = icmp eq i64 %i.ja, 0
  br i1 %.not.i314, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jb = lshr i64 %i.iz, 15
  %i.jc = and i64 %i.jb, 127
  br label %rb_array_len.exit

bb.cl:                                            ; preds = %bb.cj
  %i.jd = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !56
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.ck, %bb.cl
  %.0.i315 = phi i64 [ %i.jc, %bb.ck ], [ %i.je, %bb.cl ]
  tail call fastcc void @dump_append_ld(ptr noundef nonnull %1, i64 noundef %.0.i315)
  %i.jf = load i64, ptr %i.h, align 8, !tbaa !19  ; 3 uses
  %i.jg = and i64 %i.jf, 8192                     ; 2 uses
  %.not.i316 = icmp eq i64 %i.jg, 0
  br i1 %.not.i316, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %rb_array_len.exit
  %i.jh = lshr i64 %i.jf, 15
  %i.ji = and i64 %i.jh, 127
  br label %rb_array_len.exit318

bb.cn:                                            ; preds = %rb_array_len.exit
  %i.jj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !56
  br label %rb_array_len.exit318

rb_array_len.exit318:                             ; preds = %bb.cm, %bb.cn
  %.0.i317 = phi i64 [ %i.ji, %bb.cm ], [ %i.jk, %bb.cn ]
  %i.jl = icmp slt i64 %.0.i317, 1
  %i.jm = and i64 %i.jf, 4096
  %.not221 = icmp eq i64 %i.jm, 0
  %or.cond571 = or i1 %.not221, %i.jl
  br i1 %or.cond571, label %RB_FL_TEST.exit324, label %bb.co

bb.co:                                            ; preds = %rb_array_len.exit318
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, i64 noundef 15)
  %.pre581 = load i64, ptr %i.h, align 8, !tbaa !19
  %.pre588 = and i64 %.pre581, 8192
  br label %RB_FL_TEST.exit324

RB_FL_TEST.exit324:                               ; preds = %rb_array_len.exit318, %bb.co
  %.pre-phi = phi i64 [ %i.jg, %rb_array_len.exit318 ], [ %.pre588, %bb.co ]
  %.not222 = icmp eq i64 %.pre-phi, 0
  br i1 %.not222, label %RB_FL_TEST.exit313.thread, label %bb.cp

bb.cp:                                            ; preds = %RB_FL_TEST.exit324
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, i64 noundef 17)
  br label %RB_FL_TEST.exit313.thread

bb.cq:                                            ; preds = %bb.bf
  %i.jn = tail call i64 @rb_class_get_superclass(i64 noundef %0) #10
  %.not220 = icmp eq i64 %i.jn, 0
  br i1 %.not220, label %RB_FL_TEST.exit313.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.29, i64 noundef 15)
  %i.jo = tail call i64 @rb_class_get_superclass(i64 noundef %0) #10
  tail call fastcc void @dump_append_ref(ptr noundef nonnull %1, i64 noundef %i.jo)
  br label %RB_FL_TEST.exit313.thread

bb.cs:                                            ; preds = %bb.bf
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.30, i64 noundef 20)
  %i.jp = tail call zeroext i8 @rb_class_variation_count(i64 noundef %0) #10
  %i.jq = zext i8 %i.jp to i32
  tail call fastcc void @dump_append_d(ptr noundef nonnull %1, i32 noundef %i.jq)
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.bf
  %i.jr = tail call i64 @rb_class_get_superclass(i64 noundef %0) #10
  %.not217 = icmp eq i64 %i.jr, 0
  br i1 %.not217, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.29, i64 noundef 15)
  %i.js = tail call i64 @rb_class_get_superclass(i64 noundef %0) #10
  tail call fastcc void @dump_append_ref(ptr noundef nonnull %1, i64 noundef %i.js)
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.jt = load i64, ptr %i.em, align 8, !tbaa !33
  %.not218 = icmp eq i64 %i.jt, 0
  br i1 %.not218, label %RB_FL_TEST.exit313.thread, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ju = tail call i64 @rb_mod_name(i64 noundef %0) #10 ; 2 uses
  %i.jv = icmp eq i64 %i.ju, 4
  br i1 %i.jv, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.31, i64 noundef 9)
  tail call fastcc void @dump_append_string_value(ptr noundef nonnull %1, i64 noundef %i.ju)
  br label %bb.db

bb.cy:                                            ; preds = %bb.cw
  %i.jw = tail call i64 @rb_class_real(i64 noundef %0) #12
  %i.jx = tail call i64 @rb_mod_name(i64 noundef %i.jw) #10 ; 2 uses
  %i.jy = and i64 %i.jx, -5
  %.not575 = icmp eq i64 %i.jy, 0
  br i1 %.not575, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.32, i64 noundef 21)
  %i.jz = inttoptr i64 %i.jx to ptr               ; 2 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !19
  %i.kb = and i64 %i.ka, 8192
  %.not.i325 = icmp eq i64 %i.kb, 0
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 24 ; 2 uses
  br i1 %.not.i325, label %RSTRING_PTR.exit327, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !56
  br label %RSTRING_PTR.exit327

RSTRING_PTR.exit327:                              ; preds = %bb.cz, %bb.da
  %i.ke = phi ptr [ %i.kd, %bb.da ], [ %i.kc, %bb.cz ] ; 2 uses
  %i.kf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ke) #12
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull %i.ke, i64 noundef %i.kf)
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i64 noundef 1)
  br label %bb.db

bb.db:                                            ; preds = %bb.cy, %RSTRING_PTR.exit327, %bb.cx
  %i.kg = tail call i64 @rb_class_singleton_p(i64 noundef %0) #10
  %.not219 = icmp eq i64 %i.kg, 0
  br i1 %.not219, label %RB_FL_TEST.exit313.thread, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.33, i64 noundef 18)
  br label %RB_FL_TEST.exit313.thread

bb.dd:                                            ; preds = %bb.bf
  %i.kh = and i64 %i.fy, 64
  %.not574 = icmp eq i64 %i.kh, 0
  br i1 %.not574, label %RB_FL_TEST.exit313.thread, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.34, i64 noundef 12)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !57
  %i.kk = and i64 %i.kj, -2
  %i.kl = inttoptr i64 %i.kk to ptr
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !59 ; 2 uses
  %i.kn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.km) #12
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull %i.km, i64 noundef %i.kn)
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i64 noundef 1)
  br label %RB_FL_TEST.exit313.thread

bb.df:                                            ; preds = %bb.bf
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.35, i64 noundef 11)
  %i.ko = tail call double @rb_float_value(i64 noundef %0) #12
  tail call fastcc void @dump_append_g(ptr noundef nonnull %1, double noundef %i.ko)
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i64 noundef 1)
  br label %RB_FL_TEST.exit313.thread

bb.dg:                                            ; preds = %bb.bf
  %i.kp = and i64 %i.fy, 65536
  %.not216 = icmp eq i64 %i.kp, 0
  br i1 %.not216, label %bb.dh, label %rb_shape_obj_too_complex_p.exit

bb.dh:                                            ; preds = %bb.dg
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, i64 noundef 17)
  br label %rb_shape_obj_too_complex_p.exit

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.dh, %bb.dg
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.36, i64 noundef 10)
  %i.kq = tail call fastcc i32 @ROBJECT_FIELDS_COUNT(i64 noundef %0)
  %i.kr = zext i32 %i.kq to i64
  tail call fastcc void @dump_append_lu(ptr noundef nonnull %1, i64 noundef %i.kr)
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %2 = load i32, ptr %.shift.i.i, align 4, !tbaa !19
  %3 = and i32 %2, 134217728
  %.not573 = icmp eq i32 %3, 0
  br i1 %.not573, label %RB_FL_TEST.exit313.thread, label %bb.di

bb.di:                                            ; preds = %rb_shape_obj_too_complex_p.exit
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.37, i64 noundef 26)
  br label %RB_FL_TEST.exit313.thread

bb.dj:                                            ; preds = %bb.bf
  %i.ks = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !22 ; 2 uses
  %.not215 = icmp eq ptr %i.kt, null
  br i1 %.not215, label %RB_FL_TEST.exit313.thread, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.38, i64 noundef 7)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !63
  tail call fastcc void @dump_append_d(ptr noundef nonnull %1, i32 noundef %i.kv)
  br label %RB_FL_TEST.exit313.thread

bb.dl:                                            ; preds = %bb.bf
  tail call fastcc void @buffer_append(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, i64 noundef 2)
  br label %bb.hh

RB_FL_TEST.exit313.thread:                        ; preds = %bb.db, %bb.dc, %bb.bj, %bb.bm, %bb.bf, %bb.dj, %bb.dk, %rb_shape_obj_too_complex_p.exit, %bb.di, %bb.dd, %bb.de, %bb.cv, %bb.cq, %bb.cr, %RB_FL_TEST.exit324, %bb.cp, %RHASH_SIZE.exit, %bb.ci, %bb.cd, %bb.ce, %bb.bi, %vm_ci_mid.exit, %bb.bh, %bb.df, %bb.bn
  tail call void @rb_objspace_reachable_objects_from(i64 noundef %0, ptr noundef nonnull @reachable_object_i, ptr noundef nonnull %1) #10
  %i.kw = load i64, ptr %i.g, align 8, !tbaa !31
  %.not228 = icmp eq i64 %i.kw, 0
  br i1 %.not228, label %bb.ds, label %bb.dm

bb.dm:                                            ; preds = %RB_FL_TEST.exit313.thread
  %i.kx = load i64, ptr %i.z, align 8, !tbaa !18  ; 4 uses
  %i.ky = add i64 %i.kx, 1                        ; 2 uses
  %i.kz = icmp ugt i64 %i.ky, 4095
  br i1 %i.kz, label %bb.dn, label %buffer_append.exit336

bb.dn:                                            ; preds = %bb.dm
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !25 ; 2 uses
  %.not24.i.i.i331 = icmp eq ptr %i.lb, null
  br i1 %.not24.i.i.i331, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lc = tail call i64 @fwrite(ptr noundef nonnull %i.ar, i64 noundef 1, i64 noundef %i.kx, ptr noundef nonnull %i.lb) ; 3 uses
  %i.ld = load i64, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.le = icmp ult i64 %i.lc, %i.ld
  br i1 %i.le, label %dump_flush.exit.i.i334, label %buffer_append.exit336

bb.dp:                                            ; preds = %bb.dn
  %i.lf = load i64, ptr %i.w, align 8, !tbaa !26  ; 2 uses
  %.not25.i.i.i335 = icmp eq i64 %i.lf, 0
  br i1 %.not25.i.i.i335, label %buffer_append.exit336, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lg = tail call i64 @rb_str_cat(i64 noundef %i.lf, ptr noundef nonnull %i.ar, i64 noundef %i.kx) #10 ; 0 uses
  br label %buffer_append.exit336

dump_flush.exit.i.i334:                           ; preds = %bb.do
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.lc
  %i.li = sub nuw i64 %i.ld, %i.lc                ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 1 %i.lh, i64 %i.li, i1 false)
  store i64 %i.li, ptr %i.z, align 8, !tbaa !18
  %i.lj = add i64 %i.li, 1                        ; 2 uses
  %i.lk = icmp ugt i64 %i.lj, 4095
  br i1 %i.lk, label %bb.dr, label %buffer_append.exit336

bb.dr:                                            ; preds = %dump_flush.exit.i.i334
  %i.ll = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ll, ptr noundef nonnull @.str.54) #11
  unreachable

buffer_append.exit336:                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dm, %dump_flush.exit.i.i334
  %.pre-phi.i329 = phi i64 [ %i.ky, %bb.dm ], [ %i.lj, %dump_flush.exit.i.i334 ], [ 1, %bb.do ], [ 1, %bb.dp ], [ 1, %bb.dq ]
  %i.lm = phi i64 [ %i.kx, %bb.dm ], [ %i.li, %dump_flush.exit.i.i334 ], [ 0, %bb.do ], [ 0, %bb.dp ], [ 0, %bb.dq ]
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.lm
  store i8 93, ptr %i.ln, align 1
  store i64 %.pre-phi.i329, ptr %i.z, align 8, !tbaa !18
  br label %bb.ds

bb.ds:                                            ; preds = %buffer_append.exit336, %RB_FL_TEST.exit313.thread
  %.not229 = icmp eq ptr %i.a, null
  br i1 %.not229, label %bb.fh, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !74
  %.not230 = icmp eq ptr %i.lp, null
  br i1 %.not230, label %bb.en, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.lq = load i64, ptr %i.z, align 8, !tbaa !18  ; 4 uses
  %i.lr = add i64 %i.lq, 10                       ; 2 uses
  %i.ls = icmp ugt i64 %i.lr, 4095
  br i1 %i.ls, label %bb.dv, label %buffer_append.exit345

bb.dv:                                            ; preds = %bb.du
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !25 ; 2 uses
  %.not24.i.i.i340 = icmp eq ptr %i.lu, null
  br i1 %.not24.i.i.i340, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.lv = tail call i64 @fwrite(ptr noundef nonnull %i.ar, i64 noundef 1, i64 noundef %i.lq, ptr noundef nonnull %i.lu) ; 3 uses
  %i.lw = load i64, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.lx = icmp ult i64 %i.lv, %i.lw
  br i1 %i.lx, label %dump_flush.exit.i.i343, label %buffer_append.exit345

bb.dx:                                            ; preds = %bb.dv
  %i.ly = load i64, ptr %i.w, align 8, !tbaa !26  ; 2 uses
  %.not25.i.i.i344 = icmp eq i64 %i.ly, 0
  br i1 %.not25.i.i.i344, label %buffer_append.exit345, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.lz = tail call i64 @rb_str_cat(i64 noundef %i.ly, ptr noundef nonnull %i.ar, i64 noundef %i.lq) #10 ; 0 uses
  br label %buffer_append.exit345

dump_flush.exit.i.i343:                           ; preds = %bb.dw
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.lv
  %i.mb = sub nuw i64 %i.lw, %i.lv                ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 1 %i.ma, i64 %i.mb, i1 false)
  store i64 %i.mb, ptr %i.z, align 8, !tbaa !18
  %i.mc = add i64 %i.mb, 10                       ; 2 uses
  %i.md = icmp ugt i64 %i.mc, 4095
  br i1 %i.md, label %bb.dz, label %buffer_append.exit345

bb.dz:                                            ; preds = %dump_flush.exit.i.i343
  %i.me = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.me, ptr noundef nonnull @.str.54) #11
  unreachable

buffer_append.exit345:                            ; preds = %bb.dy, %bb.dx, %bb.dw, %bb.du, %dump_flush.exit.i.i343
  %.pre-phi.i338 = phi i64 [ %i.lr, %bb.du ], [ %i.mc, %dump_flush.exit.i.i343 ], [ 10, %bb.dw ], [ 10, %bb.dx ], [ 10, %bb.dy ] ; 7 uses
  %i.mf = phi i64 [ %i.lq, %bb.du ], [ %i.mb, %dump_flush.exit.i.i343 ], [ 0, %bb.dw ], [ 0, %bb.dx ], [ 0, %bb.dy ]
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.mf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.mg, ptr noundef nonnull readonly align 1 dereferenceable(10) @.str.40, i64 10, i1 false)
  store i64 %.pre-phi.i338, ptr %i.z, align 8, !tbaa !18
  %i.mh = load ptr, ptr %i.lo, align 8, !tbaa !74 ; 2 uses
  %i.mi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mh) #12 ; 4 uses
  %.not.i346 = icmp eq i64 %i.mi, 0
  br i1 %.not.i346, label %buffer_append.exit355, label %bb.ea, !prof !36

bb.ea:                                            ; preds = %buffer_append.exit345
  %i.mj = add i64 %i.mi, %.pre-phi.i338           ; 2 uses
  %i.mk = icmp ugt i64 %i.mj, 4095
  br i1 %i.mk, label %bb.eb, label %ruby_nonempty_memcpy.exit.i347

bb.eb:                                            ; preds = %bb.ea
  %.not.i.i.i349 = icmp eq i64 %.pre-phi.i338, 0
  br i1 %.not.i.i.i349, label %dump_flush.exit.i.i353, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !25 ; 2 uses
  %.not24.i.i.i350 = icmp eq ptr %i.mm, null
  br i1 %.not24.i.i.i350, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.mn = tail call i64 @fwrite(ptr noundef nonnull %i.ar, i64 noundef 1, i64 noundef %.pre-phi.i338, ptr noundef nonnull %i.mm) ; 3 uses
  %i.mo = load i64, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %i.mp = icmp ult i64 %i.mn, %i.mo
  br i1 %i.mp, label %bb.ee, label %.sink.split.i.i.i351

bb.ee:                                            ; preds = %bb.ed
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.mn
  %i.mr = sub nuw i64 %i.mo, %i.mn                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr nonnull align 1 %i.mq, i64 %i.mr, i1 false)
  br label %.sink.split.i.i.i351

bb.ef:                                            ; preds = %bb.ec
  %i.ms = load i64, ptr %i.w, align 8, !tbaa !26  ; 2 uses
  %.not25.i.i.i354 = icmp eq i64 %i.ms, 0
  br i1 %.not25.i.i.i354, label %.sink.split.i.i.i351, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.mt = tail call i64 @rb_str_cat(i64 noundef %i.ms, ptr noundef nonnull %i.ar, i64 noundef %.pre-phi.i338) #10 ; 0 uses
  br label %.sink.split.i.i.i351

.sink.split.i.i.i351:                             ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ed
  %.sink.i.i.i352 = phi i64 [ %i.mr, %bb.ee ], [ 0, %bb.ed ], [ 0, %bb.ef ], [ 0, %bb.eg ] ; 2 uses
  store i64 %.sink.i.i.i352, ptr %i.z, align 8, !tbaa !18
  br label %dump_flush.exit.i.i353

dump_flush.exit.i.i353:                           ; preds = %.sink.split.i.i.i351, %bb.eb
  %i.mu = phi i64 [ 0, %bb.eb ], [ %.sink.i.i.i352, %.sink.split.i.i.i351 ] ; 2 uses
  %i.mv = add i64 %i.mu, %i.mi                    ; 2 uses
  %i.mw = icmp ugt i64 %i.mv, 4095
  br i1 %i.mw, label %bb.eh, label %ruby_nonempty_memcpy.exit.i347

bb.eh:                                            ; preds = %dump_flush.exit.i.i353
  %i.mx = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.mx, ptr noundef nonnull @.str.54) #11
  unreachable

ruby_nonempty_memcpy.exit.i347:                   ; preds = %dump_flush.exit.i.i353, %bb.ea
  %.pre-phi.i348 = phi i64 [ %i.mj, %bb.ea ], [ %i.mv, %dump_flush.exit.i.i353 ] ; 2 uses
  %i.my = phi i64 [ %.pre-phi.i338, %bb.ea ], [ %i.mu, %dump_flush.exit.i.i353 ]
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.my
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mz, ptr nonnull readonly align 1 %i.mh, i64 %i.mi, i1 false)
  store i64 %.pre-phi.i348, ptr %i.z, align 8, !tbaa !18
  br label %buffer_append.exit355

end_hunk_0
begin_hunk_1_@dump_append_string_value:bb.a
  %i.hj = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.hk = icmp ult i64 %i.hi, %i.hj
  br i1 %i.hk, label %dump_flush.exit.i.i98, label %buffer_append.exit100

bb.bz:                                            ; preds = %bb.bx
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !26 ; 2 uses
  %.not25.i.i.i99 = icmp eq i64 %i.hm, 0
  br i1 %.not25.i.i.i99, label %buffer_append.exit100, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hn = tail call i64 @rb_str_cat(i64 noundef %i.hm, ptr noundef nonnull %i.u, i64 noundef %i.hd) #10 ; 0 uses
  br label %buffer_append.exit100

dump_flush.exit.i.i98:                            ; preds = %bb.by
  %i.ho = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.hi
  %i.hp = sub nuw i64 %i.hj, %i.hi                ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 1 %i.ho, i64 %i.hp, i1 false)
  store i64 %i.hp, ptr %i.a, align 8, !tbaa !18
  %i.hq = add i64 %i.hp, 1                        ; 2 uses
  %i.hr = icmp ugt i64 %i.hq, 4095
  br i1 %i.hr, label %bb.cb, label %buffer_append.exit100

bb.cb:                                            ; preds = %dump_flush.exit.i.i98
  %i.hs = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hs, ptr noundef nonnull @.str.54) #11
  unreachable

buffer_append.exit100:                            ; preds = %bb.ca, %bb.bz, %bb.by, %._crit_edge, %dump_flush.exit.i.i98
  %.pre-phi.i93 = phi i64 [ %i.he, %._crit_edge ], [ %i.hq, %dump_flush.exit.i.i98 ], [ 1, %bb.by ], [ 1, %bb.bz ], [ 1, %bb.ca ]
  %i.ht = phi i64 [ %i.hd, %._crit_edge ], [ %i.hp, %dump_flush.exit.i.i98 ], [ 0, %bb.by ], [ 0, %bb.bz ], [ 0, %bb.ca ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ht
  store i8 34, ptr %i.hu, align 1
  store i64 %.pre-phi.i93, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_class_real(i64 noundef) local_unnamed_addr #5

declare i64 @rb_class_singleton_p(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_append_g(ptr noundef %0, double noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = sub i64 4096, %i.b                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.b
  %i.f = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.e, i64 noundef %i.c, ptr noundef nonnull @.str.100, double noundef %1) #10
  %i.g = sext i32 %i.f to i64                     ; 4 uses
  %.not = icmp ugt i64 %i.c, %i.g
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.i = add i64 %i.h, %i.g
  %i.j = icmp ugt i64 %i.i, 4095
  br i1 %i.j, label %bb.c, label %buffer_ensure_capa.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %dump_flush.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %.not24.i.i = icmp eq ptr %i.l, null
  br i1 %.not24.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = tail call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 1, i64 noundef %i.h, ptr noundef nonnull %i.l) ; 3 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.o = icmp ult i64 %i.m, %i.n
  br i1 %i.o, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  %i.q = sub nuw i64 %i.n, %i.m                   ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  br label %.sink.split.i.i

bb.g:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %.not25.i.i = icmp eq i64 %i.s, 0
  br i1 %.not25.i.i, label %.sink.split.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = tail call i64 @rb_str_cat(i64 noundef %i.s, ptr noundef nonnull %i.d, i64 noundef %i.h) #10 ; 0 uses
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sink.i.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.h ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.a, align 8, !tbaa !18
  br label %dump_flush.exit.i

dump_flush.exit.i:                                ; preds = %.sink.split.i.i, %bb.c
  %i.u = phi i64 [ 0, %bb.c ], [ %.sink.i.i, %.sink.split.i.i ] ; 2 uses
  %i.v = add i64 %i.u, %i.g
  %i.w = icmp ugt i64 %i.v, 4095
  br i1 %i.w, label %bb.i, label %buffer_ensure_capa.exit

bb.i:                                             ; preds = %dump_flush.exit.i
  %i.x = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.54) #11
  unreachable

buffer_ensure_capa.exit:                          ; preds = %bb.b, %dump_flush.exit.i
  %i.y = phi i64 [ %i.h, %bb.b ], [ %i.u, %dump_flush.exit.i ] ; 2 uses
  %i.z = sub i64 4096, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.y
  %i.ab = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.aa, i64 noundef %i.z, ptr noundef nonnull @.str.100, double noundef %1) #10 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %buffer_ensure_capa.exit, %bb.a
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !18
  %i.ad = add i64 %i.ac, %i.g
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare double @rb_float_value(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_append_lu(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = add i64 %i.b, -4075
  %i.d = icmp ult i64 %i.c, -4096
  br i1 %i.d, label %bb.b, label %buffer_ensure_capa.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %.not24.i.i = icmp eq ptr %i.f, null
  br i1 %.not24.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.h = tail call i64 @fwrite(ptr noundef nonnull %i.g, i64 noundef 1, i64 noundef %i.b, ptr noundef nonnull %i.f) ; 3 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %dump_flush.exit.i, label %dump_flush.exit.i.thread

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26   ; 2 uses
  %.not25.i.i = icmp eq i64 %i.l, 0
  br i1 %.not25.i.i, label %dump_flush.exit.i.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = tail call i64 @rb_str_cat(i64 noundef %i.l, ptr noundef nonnull %i.m, i64 noundef %i.b) #10 ; 0 uses
  br label %dump_flush.exit.i.thread

dump_flush.exit.i.thread:                         ; preds = %bb.c, %bb.d, %bb.e
  store i64 0, ptr %i.a, align 8, !tbaa !18
  br label %buffer_ensure_capa.exit

dump_flush.exit.i:                                ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.p = sub nuw i64 %i.i, %i.h                   ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.g, ptr nonnull align 1 %i.o, i64 %i.p, i1 false)
  store i64 %i.p, ptr %i.a, align 8, !tbaa !18
  %i.q = add i64 %i.p, -4075
  %i.r = icmp ult i64 %i.q, -4096
  br i1 %i.r, label %bb.f, label %buffer_ensure_capa.exit

bb.f:                                             ; preds = %dump_flush.exit.i
  %i.s = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.54) #11
  unreachable

buffer_ensure_capa.exit:                          ; preds = %dump_flush.exit.i.thread, %bb.a, %dump_flush.exit.i
  %i.t = phi i64 [ 0, %dump_flush.exit.i.thread ], [ %i.b, %bb.a ], [ %i.p, %dump_flush.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  %i.w = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.v, i64 noundef 21, ptr noundef nonnull @.str.101, i64 noundef %1) #10
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr %i.a, align 8, !tbaa !18
  %i.z = add i64 %i.y, %i.x
  store i64 %i.z, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @ROBJECT_FIELDS_COUNT(i64 noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  %.pre = inttoptr i64 %0 to ptr                  ; 3 uses
  br i1 %i.d, label %rb_shape_obj_too_complex_p.exit.thread, label %rb_shape_obj_too_complex_p.exit

rb_shape_obj_too_complex_p.exit:                  ; preds = %bb.a
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %1 = load i32, ptr %.shift.i.i, align 4, !tbaa !19
  %2 = and i32 %1, 134217728
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %rb_shape_obj_too_complex_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_shape_obj_too_complex_p.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.g = tail call i64 @rb_st_table_size(ptr noundef %i.f) #10
  %i.h = trunc i64 %i.g to i32
  br label %bb.c

rb_shape_obj_too_complex_p.exit.thread:           ; preds = %bb.a, %rb_shape_obj_too_complex_p.exit
  %.shift.i.i4 = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %3 = load i32, ptr %.shift.i.i4, align 4, !tbaa !19
  %4 = and i32 %3, 524287
  %i.i = load ptr, ptr @rb_shape_tree, align 8, !tbaa !89
  %5 = zext nneg i32 %4 to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.l = load i16, ptr %i.k, align 4, !tbaa !94
  %i.m = zext i16 %i.l to i32
  br label %bb.c

bb.c:                                             ; preds = %rb_shape_obj_too_complex_p.exit.thread, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.m, %rb_shape_obj_too_complex_p.exit.thread ]
  ret i32 %.0
}

declare void @rb_objspace_reachable_objects_from(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @reachable_object_i(i64 noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !33
  %i.c = icmp eq i64 %i.b, %0
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31
  %i.f = icmp eq i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !18   ; 8 uses
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = add i64 %i.h, 16                         ; 2 uses
  %i.j = icmp ugt i64 %i.i, 4095
  br i1 %i.j, label %bb.d, label %buffer_append.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %.not24.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not24.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.n = tail call i64 @fwrite(ptr noundef nonnull %i.m, i64 noundef 1, i64 noundef %i.h, ptr noundef nonnull %i.l) ; 3 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %dump_flush.exit.i.i, label %buffer_append.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %.not25.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not25.i.i.i, label %buffer_append.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = tail call i64 @rb_str_cat(i64 noundef %i.r, ptr noundef nonnull %i.s, i64 noundef %i.h) #10 ; 0 uses
  br label %buffer_append.exit

dump_flush.exit.i.i:                              ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.n
  %i.v = sub nuw i64 %i.o, %i.n                   ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 1 %i.u, i64 %i.v, i1 false)
  store i64 %i.v, ptr %i.g, align 8, !tbaa !18
  %i.w = add i64 %i.v, 16                         ; 2 uses
  %i.x = icmp ugt i64 %i.w, 4095
  br i1 %i.x, label %bb.h, label %buffer_append.exit

bb.h:                                             ; preds = %dump_flush.exit.i.i
  %i.y = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @.str.54) #11
  unreachable

buffer_append.exit:                               ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %dump_flush.exit.i.i
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %i.w, %dump_flush.exit.i.i ], [ 16, %bb.e ], [ 16, %bb.f ], [ 16, %bb.g ]
  %i.z = phi i64 [ %i.h, %bb.c ], [ %i.v, %dump_flush.exit.i.i ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %bb.g ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 1 dereferenceable(16) @.str.102, i64 16, i1 false)
  br label %bb.o

bb.i:                                             ; preds = %bb.b
  %i.ac = add i64 %i.h, 2                         ; 2 uses
  %i.ad = icmp ugt i64 %i.ac, 4095
  br i1 %i.ad, label %bb.j, label %buffer_append.exit17

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  %.not24.i.i.i12 = icmp eq ptr %i.af, null
  br i1 %.not24.i.i.i12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.ah = tail call i64 @fwrite(ptr noundef nonnull %i.ag, i64 noundef 1, i64 noundef %i.h, ptr noundef nonnull %i.af) ; 3 uses
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !18  ; 2 uses
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %dump_flush.exit.i.i15, label %buffer_append.exit17

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26 ; 2 uses
  %.not25.i.i.i16 = icmp eq i64 %i.al, 0
  br i1 %.not25.i.i.i16, label %buffer_append.exit17, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = tail call i64 @rb_str_cat(i64 noundef %i.al, ptr noundef nonnull %i.am, i64 noundef %i.h) #10 ; 0 uses
  br label %buffer_append.exit17

dump_flush.exit.i.i15:                            ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.ap = sub nuw i64 %i.ai, %i.ah                ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 1 %i.ao, i64 %i.ap, i1 false)
  store i64 %i.ap, ptr %i.g, align 8, !tbaa !18
  %i.aq = add i64 %i.ap, 2                        ; 2 uses
  %i.ar = icmp ugt i64 %i.aq, 4095
  br i1 %i.ar, label %bb.n, label %buffer_append.exit17

bb.n:                                             ; preds = %dump_flush.exit.i.i15
  %i.as = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @.str.54) #11
  unreachable

buffer_append.exit17:                             ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %dump_flush.exit.i.i15
  %.pre-phi.i10 = phi i64 [ %i.ac, %bb.i ], [ %i.aq, %dump_flush.exit.i.i15 ], [ 2, %bb.k ], [ 2, %bb.l ], [ 2, %bb.m ]
  %i.at = phi i64 [ %i.h, %bb.i ], [ %i.ap, %dump_flush.exit.i.i15 ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  store i16 8236, ptr %i.av, align 1
  br label %bb.o

bb.o:                                             ; preds = %buffer_append.exit17, %buffer_append.exit
  %.pre-phi.i10.sink = phi i64 [ %.pre-phi.i10, %buffer_append.exit17 ], [ %.pre-phi.i, %buffer_append.exit ]
  store i64 %.pre-phi.i10.sink, ptr %i.g, align 8, !tbaa !18
  tail call fastcc void @dump_append_ref(ptr noundef nonnull %1, i64 noundef %0)
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !31
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.d, align 8, !tbaa !31
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  ret void
}

declare i64 @rb_obj_memsize_of(i64 noundef) local_unnamed_addr #1

declare ptr @rb_gc_object_metadata(i64 noundef) local_unnamed_addr #1

declare ptr @rb_id2name(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_str_capacity(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_ascii8bit_encindex() local_unnamed_addr #9

declare i32 @rb_enc_get_index(i64 noundef) local_unnamed_addr #1

declare i64 @rb_st_table_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal i64 @dump_all_locked(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.dump_config, align 8        ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4192) %i.a, i8 0, i64 4192, i1 false)
  %i.b = load i64, ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10   ; 2 uses
  call fastcc void @dump_output(ptr noundef %1, i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
end_hunk_1

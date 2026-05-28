inline.NumInlined: 295
inline.NumDeleted: 97
begin_hunk_0_@rb_debug_inspector_open:bb.a
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !17
  %i.ds = icmp eq ptr %i.dq, null
  %i.dt = and i64 %i.dr, 7
  %i.du = icmp ne i64 %i.dt, 0
  %i.dv = or i1 %i.ds, %i.du
  br i1 %i.dv, label %rb_obj_write.exit.i.i, label %bb.r

bb.r:                                             ; preds = %get_klass.exit.i.i
  call void @rb_gc_writebarrier(i64 noundef %i.y, i64 noundef %i.dr) #7
  br label %rb_obj_write.exit.i.i

rb_obj_write.exit.i.i:                            ; preds = %bb.r, %get_klass.exit.i.i
  %i.dw = getelementptr i8, ptr %i.dp, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  %i.dx = load i64, ptr @rb_cBacktraceLocation, align 8, !tbaa !17
  %i.dy = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.dx, i64 noundef 16, ptr noundef nonnull @location_data_type) #7 ; 3 uses
  %i.dz = inttoptr i64 %i.dy to ptr               ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 24
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !52
  %i.ec = trunc i64 %i.eb to i1
  %i.ed = getelementptr i8, ptr %i.dz, i64 32     ; 2 uses
  br i1 %i.ec, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %rb_obj_write.exit.i.i
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !54
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.s, %rb_obj_write.exit.i.i
  %i.ef = phi ptr [ %i.ee, %bb.s ], [ %i.ed, %rb_obj_write.exit.i.i ] ; 2 uses
  store ptr %i.dp, ptr %i.ef, align 8, !tbaa !63
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  store i64 %i.y, ptr %i.eg, align 8, !tbaa !17
  br i1 %i.ac, label %collect_caller_bindings_cfunc.exit.i, label %bb.t

bb.t:                                             ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i
  call void @rb_gc_writebarrier(i64 noundef %i.dy, i64 noundef %i.y) #7
  br label %collect_caller_bindings_cfunc.exit.i

collect_caller_bindings_cfunc.exit.i:             ; preds = %bb.t, %RTYPEDDATA_GET_DATA.exit.i.i.i
  call void @rb_ary_store(i64 noundef %i.cv, i64 noundef 5, i64 noundef %i.dy) #7
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %collect_caller_bindings_cfunc.exit.i, %collect_caller_bindings_iseq.exit.i
  %.sink62.i = phi i64 [ %i.dk, %collect_caller_bindings_cfunc.exit.i ], [ %i.bn, %collect_caller_bindings_iseq.exit.i ]
  %.sink56.i = phi i64 [ %i.cv, %collect_caller_bindings_cfunc.exit.i ], [ %i.ay, %collect_caller_bindings_iseq.exit.i ] ; 2 uses
  %.val.i15.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !81
  %.val24.i.i = load i64, ptr %i.m, align 8, !tbaa !82
  %i.eh = getelementptr [8 x i8], ptr %.val.i15.i, i64 %.val24.i.i
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = sub i64 %i.ei, %.sink62.i
  %i.ek = sdiv exact i64 %i.ej, 56
  %sext.i.i = shl i64 %i.ek, 32
  %i.el = ashr exact i64 %sext.i.i, 31
  %i.em = or disjoint i64 %i.el, 1
  call void @rb_ary_store(i64 noundef %.sink56.i, i64 noundef 6, i64 noundef %i.em) #7
  %i.en = call i64 @rb_ary_push(i64 noundef %i.k, i64 noundef %.sink56.i) #7 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %.sink.split.i, %bb.g
  %i.eo = add nuw nsw i64 %.02835.i.i, 1
  %i.ep = getelementptr i8, ptr %.036.i.i, i64 -56
  %exitcond.not.i.i = icmp eq i64 %.02835.i.i, %i.u
  br i1 %exitcond.not.i.i, label %backtrace_each.exit.i, label %.lr.ph.i.i, !llvm.loop !133

.loopexit.sink.split.i.i:                         ; preds = %bb.b, %bb.a
  %i.eq = load i64, ptr @rb_cBacktrace, align 8, !tbaa !17
  %i.er = tail call i64 @rb_data_typed_object_zalloc(i64 noundef %i.eq, i64 noundef 24, ptr noundef nonnull @backtrace_data_type) #7 ; 4 uses
  %i.es = icmp eq i64 %i.er, 0
  %i.et = and i64 %i.er, 7
  %i.eu = icmp ne i64 %i.et, 0
  %i.ev = or i1 %i.es, %i.eu
  br i1 %i.ev, label %.critedge.i.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, !prof !50

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i:           ; preds = %.loopexit.sink.split.i.i
  %i.ew = inttoptr i64 %i.er to ptr               ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !44
  %i.ey = and i64 %i.ex, 95
  %or.cond.not.i.i.i.i = icmp eq i64 %i.ey, 76
  br i1 %or.cond.not.i.i.i.i, label %RTYPEDDATA_GET_DATA.exit.i.i.i.i, label %.critedge.i.i.i.i, !prof !51

RTYPEDDATA_GET_DATA.exit.i.i.i.i:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i
  %i.ez = getelementptr i8, ptr %i.ew, i64 24
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !52
  %i.fb = and i64 %i.fa, -2                       ; 2 uses
  %i.fc = icmp eq i64 %i.fb, ptrtoint (ptr @backtrace_data_type to i64)
  br i1 %i.fc, label %backtrace_each.exit.i, label %.preheader.i.i.i.preheader.i, !prof !55

.preheader.i.i.i.preheader.i:                     ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i.i
  %i.fd = inttoptr i64 %i.fb to ptr
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.v, %.preheader.i.i.i.preheader.i
  %.016.i.i.i.i = phi ptr [ %i.ff, %bb.v ], [ %i.fd, %.preheader.i.i.i.preheader.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.016.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.preheader.i.i.i.i
  %i.fe = getelementptr i8, ptr %.016.i.i.i.i, i64 48
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !56 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, @backtrace_data_type
  br i1 %i.fg, label %backtrace_each.exit.i, label %.preheader.i.i.i.i, !llvm.loop !61

.critedge.i.i.i.i:                                ; preds = %.preheader.i.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i.i, %.loopexit.sink.split.i.i
  %i.fh = tail call ptr @rb_check_typeddata(i64 noundef %i.er, ptr noundef nonnull @backtrace_data_type) #7 ; 0 uses
  br label %backtrace_each.exit.i

backtrace_each.exit.i:                            ; preds = %bb.u, %bb.v, %.critedge.i.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i.i, %collect_caller_bindings_init.exit33.i
  %i.fi = call i64 @rb_ary_reverse(i64 noundef %i.k) #7 ; 4 uses
  %i.fj = inttoptr i64 %i.fi to ptr               ; 3 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 16     ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %backtrace_each.exit.i
  %.0.i = phi i32 [ 0, %backtrace_each.exit.i ], [ %i.fy, %bb.ab ] ; 2 uses
  %i.fl = sext i32 %.0.i to i64                   ; 2 uses
  %i.fm = load i64, ptr %i.fj, align 8, !tbaa !44 ; 2 uses
  %i.fn = and i64 %i.fm, 8192
  %.not.i14.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i14.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fo = lshr i64 %i.fm, 15
  %i.fp = and i64 %i.fo, 127
  br label %rb_array_len.exit.i

bb.y:                                             ; preds = %bb.w
  %i.fq = load i64, ptr %i.fk, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.y, %bb.x
  %.0.i.i = phi i64 [ %i.fp, %bb.x ], [ %i.fq, %bb.y ]
  %i.fr = icmp sgt i64 %.0.i.i, %i.fl
  br i1 %i.fr, label %bb.z, label %collect_caller_bindings.exit

bb.z:                                             ; preds = %rb_array_len.exit.i
  %i.fs = call i64 @rb_ary_entry(i64 noundef %i.fi, i64 noundef %i.fl) #19 ; 2 uses
  %i.ft = call i64 @rb_ary_entry(i64 noundef %i.fs, i64 noundef 2) #19 ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 4
  br i1 %i.fu, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fv = and i64 %i.ft, -4
  %i.fw = inttoptr i64 %i.fv to ptr
  %i.fx = call i64 @rb_vm_make_binding(ptr noundef nonnull %.0..0..0..0..0..0..i, ptr noundef %i.fw) #7
  call void @rb_ary_store(i64 noundef %i.fs, i64 noundef 2, i64 noundef %i.fx) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fy = add i32 %.0.i, 1
  br label %bb.w, !llvm.loop !158

collect_caller_bindings.exit:                     ; preds = %rb_array_len.exit.i
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.fi, ptr %i.fz, align 8, !tbaa !159
  %i.ga = call i64 @rb_ary_new() #7               ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !160
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %collect_caller_bindings.exit
  %.0 = phi i32 [ 0, %collect_caller_bindings.exit ], [ %i.gm, %bb.af ] ; 2 uses
  %i.gc = sext i32 %.0 to i64                     ; 2 uses
  %i.gd = load i64, ptr %i.fj, align 8, !tbaa !44 ; 2 uses
  %i.ge = and i64 %i.gd, 8192
  %.not.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gf = lshr i64 %i.gd, 15
  %i.gg = and i64 %i.gf, 127
  br label %rb_array_len.exit

bb.ae:                                            ; preds = %bb.ac
  %i.gh = load i64, ptr %i.fk, align 8, !tbaa !46
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.ad, %bb.ae
  %.0.i21 = phi i64 [ %i.gg, %bb.ad ], [ %i.gh, %bb.ae ]
  %i.gi = icmp sgt i64 %.0.i21, %i.gc
  br i1 %i.gi, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %rb_array_len.exit
  %i.gj = call i64 @rb_ary_entry(i64 noundef %i.fi, i64 noundef %i.gc) #19
  %i.gk = call i64 @rb_ary_entry(i64 noundef %i.gj, i64 noundef 5) #19
  %i.gl = call i64 @rb_ary_push(i64 noundef %i.ga, i64 noundef %i.gk) #7 ; 0 uses
  %i.gm = add i32 %.0, 1
  br label %bb.ac, !llvm.loop !161

bb.ag:                                            ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.0..0..0..0..0..0..i, ptr %i.e, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.gn, align 8, !tbaa !162
  store i64 36, ptr %3, align 8, !tbaa !164
  %i.go = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 4 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !165
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !166
  %i.gr = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.0.1.val = load ptr, ptr %i.gr, align 8, !tbaa !167, !nonnull !49, !noundef !49 ; 2 uses
  %4 = getelementptr i8, ptr %.0.1.val, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !168      ; 2 uses
  %6 = getelementptr i8, ptr %.0.1.val, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !169
  %8 = getelementptr i8, ptr %5, i64 88
  %.0.1.val.a = load ptr, ptr %8, align 8, !tbaa !170
  %.not.i.i22 = icmp eq ptr %.0.1.val.a, %7
  br i1 %.not.i.i22, label %bb.ah, label %rb_ec_vm_lock_rec.exit

bb.ah:                                            ; preds = %bb.ag
  %i.gs = getelementptr i8, ptr %5, i64 96
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !171
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.ag, %bb.ah
  %.0.i23 = phi i32 [ %i.gt, %bb.ah ], [ 0, %bb.ag ]
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i23, ptr %i.gu, align 4, !tbaa !172
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.gw = call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.gw, ptr %i.gv, align 8
  %i.gx = call ptr @llvm.stacksave.p0()
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.gx, ptr %i.gy, align 8
  %i.gz = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.gv)
  %.not = icmp eq i32 %i.gz, 0
  br i1 %.not, label %bb.aj, label %bb.ai, !prof !55

bb.ai:                                            ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.e, align 8, !tbaa !100
  %i.ha = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %i.hb = load ptr, ptr %i.gq, align 8, !tbaa !166
  %.0..0..0..0.4 = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.hc = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val = load ptr, ptr %i.go, align 8, !tbaa !165 ; 2 uses
  %i.hd = getelementptr i8, ptr %.val, i64 64
  store i32 %i.ha, ptr %i.hd, align 8, !tbaa !162
  %i.he = getelementptr i8, ptr %.val, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.he)
  unreachable

bb.aj:                                            ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.go, align 8, !tbaa !165
  %i.hf = call i64 %0(ptr noundef nonnull %2, ptr noundef %1) #7
  store volatile i64 %i.hf, ptr %i.d, align 8, !tbaa !17
  %i.hg = load ptr, ptr %i.gq, align 8, !tbaa !166
  store ptr %i.hg, ptr %i.go, align 8, !tbaa !165
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.0..0..0..0.8 = load volatile i64, ptr %i.d, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i64 %.0..0..0..0.8
}

declare void @rb_vm_stack_to_heap(ptr noundef) local_unnamed_addr #2

declare i64 @rb_ary_new() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #7

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162  ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !162
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !172  ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !167, !nonnull !49, !noundef !49 ; 2 uses
  %1 = getelementptr i8, ptr %.val.i, i64 32
  %2 = load ptr, ptr %1, align 8, !tbaa !168      ; 2 uses
  %3 = getelementptr i8, ptr %.val.i, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !169
  %5 = getelementptr i8, ptr %2, i64 88
  %.val.i.a = load ptr, ptr %5, align 8, !tbaa !170
  %.not.i.i.i = icmp eq ptr %.val.i.a, %4
  br i1 %.not.i.i.i, label %bb.b, label %rb_ec_vm_lock_rec.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %2, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !171
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.c

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #7
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.c
  %i.j = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.k)
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_self_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 0) #19
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_class_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 1) #19
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_binding_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 2) #19
  ret i64 %i.m
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_iseq_get(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.e, 15
  %i.h = and i64 %i.g, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !46
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %.not.i = icmp slt i64 %1, %.0.i.i
  br i1 %.not.i, label %frame_get.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i, %bb.a
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.42) #17
  unreachable

frame_get.exit:                                   ; preds = %rb_array_len.exit.i
  %i.l = tail call i64 @rb_ary_entry(i64 noundef %i.c, i64 noundef %1) #19
  %i.m = tail call i64 @rb_ary_entry(i64 noundef %i.l, i64 noundef 3) #19 ; 2 uses
  %i.n = and i64 %i.m, -5
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %frame_get.exit
  %i.o = inttoptr i64 %i.m to ptr
  %i.p = tail call i64 @rb_iseqw_new(ptr noundef %i.o) #7
  br label %bb.g

bb.g:                                             ; preds = %frame_get.exit, %bb.f
  %i.q = phi i64 [ %i.p, %bb.f ], [ 4, %frame_get.exit ]
  ret i64 %i.q
}

declare i64 @rb_iseqw_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_debug_inspector_frame_depth(ptr noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
end_hunk_0

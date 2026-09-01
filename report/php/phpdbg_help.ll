Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/phpdbg_help?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@get_help:bb.a
bb.y:                                             ; preds = %bb.x
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.63, ptr noundef nonnull dereferenceable(1) %0) #7
  %.not8.23 = icmp eq i32 %i.z, 0
  br i1 %.not8.23, label %bb.b, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(3) @.str.65, ptr noundef nonnull dereferenceable(1) %0) #7
  %.not8.24 = icmp eq i32 %i.aa, 0
  br i1 %.not8.24, label %bb.b, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.67, ptr noundef nonnull dereferenceable(1) %0) #7
  %.not8.25 = icmp eq i32 %i.ab, 0
  br i1 %.not8.25, label %bb.b, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.69, ptr noundef nonnull dereferenceable(1) %0) #7
  %.not8.26 = icmp eq i32 %i.ac, 0
  br i1 %.not8.26, label %bb.b, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.71, ptr noundef nonnull dereferenceable(1) %0) #7
  %.not8.27 = icmp eq i32 %i.ad, 0
  br i1 %.not8.27, label %bb.b, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.73, ptr noundef nonnull dereferenceable(1) %0) #7
  %.not8.28 = icmp eq i32 %i.ae, 0
  br i1 %.not8.28, label %bb.b, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.75, ptr noundef nonnull dereferenceable(1) %0) #7
  %.not8.29 = icmp eq i32 %i.af, 0
  br i1 %.not8.29, label %bb.b, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.77, ptr noundef nonnull dereferenceable(1) %0) #7
  %.not8.30 = icmp eq i32 %i.ag, 0
  br i1 %.not8.30, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.af, %bb.b
  %.06 = phi ptr [ %i.c, %bb.b ], [ @.str.12, %bb.af ]
  ret ptr %.06
}

; Function Attrs: nounwind uwtable
define hidden i32 @phpdbg_do_help(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !66
  switch i32 %i.c, label %bb.o [
    i32 0, label %bb.c
    i32 5, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call fastcc ptr @get_help(ptr noundef nonnull @.str.11)
  tail call fastcc void @pretty_print(ptr noundef %i.d)
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !71   ; 8 uses
  %i.i = icmp eq i64 %i.h, 1                      ; 2 uses
  %i.j = load ptr, ptr @phpdbg_prompt_commands, align 8, !tbaa !14 ; 3 uses
  %.not3440.i = icmp eq ptr %i.j, null            ; 2 uses
  br i1 %i.i, label %.preheader.i, label %.preheader35.i

.preheader35.i:                                   ; preds = %bb.d
  br i1 %.not3440.i, label %.preheader35.i23, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d
  %.pre67 = load i8, ptr %i.f, align 1, !tbaa !58 ; 2 uses
  br i1 %.not3440.i, label %.preheader.i31, label %.lr.ph43.i

.lr.ph43.i:                                       ; preds = %.preheader.i, %.lr.ph43.i
  %.2 = phi ptr [ %.3, %.lr.ph43.i ], [ undef, %.preheader.i ]
  %.042.i = phi i32 [ %.1.i, %.lr.ph43.i ], [ 0, %.preheader.i ] ; 2 uses
  %.02541.i = phi ptr [ %i.q, %.lr.ph43.i ], [ @phpdbg_prompt_commands, %.preheader.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.02541.i, i64 32
  %i.l = load i8, ptr %i.k, align 8, !tbaa !21
  %i.m = icmp eq i8 %i.l, %.pre67                 ; 2 uses
  %i.n = icmp eq i32 %.042.i, 0
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  %.3 = select i1 %i.o, ptr %.02541.i, ptr %.2    ; 2 uses
  %i.p = zext i1 %i.m to i32
  %.1.i = add i32 %.042.i, %i.p                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02541.i, i64 80 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %.not34.i = icmp eq ptr %i.r, null
  br i1 %.not34.i, label %get_command.exit, label %.lr.ph43.i, !llvm.loop !28

.lr.ph.i:                                         ; preds = %.preheader35.i, %.lr.ph.i
  %.041 = phi ptr [ %.1, %.lr.ph.i ], [ undef, %.preheader35.i ]
  %i.s = phi ptr [ %i.y, %.lr.ph.i ], [ %i.j, %.preheader35.i ]
  %.239.i = phi i32 [ %.3.i, %.lr.ph.i ], [ 0, %.preheader35.i ] ; 2 uses
  %.12638.i = phi ptr [ %i.x, %.lr.ph.i ], [ @phpdbg_prompt_commands, %.preheader35.i ] ; 2 uses
  %i.t = tail call i32 @strncmp(ptr noundef nonnull %i.s, ptr noundef readonly %i.f, i64 noundef %i.h) #7
  %.not33.i = icmp eq i32 %i.t, 0                 ; 2 uses
  %i.u = icmp eq i32 %.239.i, 0
  %i.v = select i1 %.not33.i, i1 %i.u, i1 false
  %.1 = select i1 %i.v, ptr %.12638.i, ptr %.041  ; 2 uses
  %i.w = zext i1 %.not33.i to i32
  %.3.i = add i32 %.239.i, %i.w                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.12638.i, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !14   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %get_command.exit, label %.lr.ph.i, !llvm.loop !72

get_command.exit:                                 ; preds = %.lr.ph.i, %.lr.ph43.i
  %.4 = phi ptr [ %.3, %.lr.ph43.i ], [ %.1, %.lr.ph.i ] ; 6 uses
  %.4.i = phi i32 [ %.1.i, %.lr.ph43.i ], [ %.3.i, %.lr.ph.i ] ; 2 uses
  %i.z = icmp eq i32 %.4.i, 1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %get_command.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.aa = load ptr, ptr %.4, align 8, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %.4, i64 32
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !21
  %i.ad = sext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.4, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.b, i64 noundef 0, ptr noundef nonnull @.str.10, ptr noundef %i.aa, i32 noundef %i.ad, ptr noundef %i.af) #6 ; 0 uses
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !30
  call fastcc void @pretty_print(ptr noundef %i.ah)
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !30
  call void @_efree(ptr noundef %i.ai) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  %i.aj = load ptr, ptr %.4, align 8, !tbaa !14
  %i.ak = call fastcc ptr @get_help(ptr noundef %i.aj)
  call fastcc void @pretty_print(ptr noundef %i.ak)
  br label %bb.o

bb.f:                                             ; preds = %get_command.exit
  %i.al = icmp sgt i32 %.4.i, 1
  br i1 %i.al, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.am = icmp ugt i64 %i.h, 1
  br i1 %i.am, label %.lr.ph, label %bb.j

.lr.ph:                                           ; preds = %bb.g, %bb.i
  %i.an = phi ptr [ %i.ba, %bb.i ], [ %i.j, %bb.g ] ; 2 uses
  %storemerge64 = phi ptr [ %i.az, %bb.i ], [ @phpdbg_prompt_commands, %bb.g ] ; 3 uses
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !71
  %i.aq = call i32 @strncmp(ptr noundef nonnull %i.an, ptr noundef %i.ao, i64 noundef %i.ap) #7
  %.not22 = icmp eq i32 %i.aq, 0
  br i1 %.not22, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge64, i64 32
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !21
  %i.at = sext i8 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge64, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.a, i64 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.an, i32 noundef %i.at, ptr noundef %i.av) #6 ; 0 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !30
  call fastcc void @pretty_print(ptr noundef %i.ax)
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !30
  call void @_efree(ptr noundef %i.ay) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %storemerge64, i64 80 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !14 ; 2 uses
  %.not21 = icmp eq ptr %i.ba, null
  br i1 %.not21, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.i
  %i.bb = call fastcc ptr @get_help(ptr noundef nonnull @.str.14)
  call fastcc void @pretty_print(ptr noundef %i.bb)
  br label %bb.o

bb.j:                                             ; preds = %bb.g
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !12
  %i.bd = load i8, ptr %i.f, align 1, !tbaa !58
  %i.be = sext i8 %i.bd to i32
  %i.bf = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.bc, ptr noundef nonnull @.str.15, i32 noundef %i.be) #6 ; 0 uses
  br label %bb.o

.thread:                                          ; preds = %bb.f
  br i1 %i.i, label %.thread..preheader.i31_crit_edge, label %.preheader35.i23

.thread..preheader.i31_crit_edge:                 ; preds = %.thread
  %.pre = load i8, ptr %i.f, align 1, !tbaa !58
  br label %.preheader.i31

.preheader35.i23:                                 ; preds = %.preheader35.i, %.thread
  %.4444853 = phi ptr [ %.4, %.thread ], [ undef, %.preheader35.i ]
  %i.bg = tail call i32 @strncmp(ptr noundef nonnull @.str, ptr noundef readonly %i.f, i64 noundef %i.h) #7
  %.not33.i27 = icmp eq i32 %i.bg, 0              ; 2 uses
  %i.bh = zext i1 %.not33.i27 to i32
  %i.bi = tail call i32 @strncmp(ptr noundef nonnull @.str.2, ptr noundef readonly %i.f, i64 noundef %i.h) #7
  %.not33.i27.1 = icmp eq i32 %i.bi, 0            ; 2 uses
  %.6 = select i1 %.not33.i27.1, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_help_commands, i64 80), ptr %.4444853
  %.6.1 = select i1 %.not33.i27, ptr @phpdbg_help_commands, ptr %.6
  %i.bj = zext i1 %.not33.i27.1 to i32
  %.3.i28.1 = add nuw nsw i32 %i.bh, %i.bj        ; 2 uses
  %i.bk = tail call i32 @strncmp(ptr noundef nonnull @.str.4, ptr noundef readonly %i.f, i64 noundef %i.h) #7
  %.not33.i27.2 = icmp eq i32 %i.bk, 0            ; 2 uses
  %i.bl = icmp eq i32 %.3.i28.1, 0
  %i.bm = select i1 %.not33.i27.2, i1 %i.bl, i1 false
  %.6.2 = select i1 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_help_commands, i64 160), ptr %.6.1
  %i.bn = zext i1 %.not33.i27.2 to i32
  %.3.i28.2 = add nuw nsw i32 %.3.i28.1, %i.bn    ; 2 uses
  %i.bo = tail call i32 @strncmp(ptr noundef nonnull @.str.6, ptr noundef readonly %i.f, i64 noundef %i.h) #7
  %.not33.i27.3 = icmp eq i32 %i.bo, 0            ; 2 uses
  %i.bp = icmp eq i32 %.3.i28.2, 0
  %i.bq = select i1 %.not33.i27.3, i1 %i.bp, i1 false
  %.6.3 = select i1 %i.bq, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_help_commands, i64 240), ptr %.6.2
  %i.br = zext i1 %.not33.i27.3 to i32
  %.3.i28.3 = add nuw nsw i32 %.3.i28.2, %i.br    ; 2 uses
  %i.bs = tail call i32 @strncmp(ptr noundef nonnull @.str.8, ptr noundef readonly %i.f, i64 noundef %i.h) #7
  %.not33.i27.4 = icmp eq i32 %i.bs, 0            ; 2 uses
  %i.bt = icmp eq i32 %.3.i28.3, 0
  %i.bu = select i1 %.not33.i27.4, i1 %i.bt, i1 false
  %.6.4 = select i1 %i.bu, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_help_commands, i64 320), ptr %.6.3
  %i.bv = zext i1 %.not33.i27.4 to i32
  %.3.i28.4 = add nuw nsw i32 %.3.i28.3, %i.bv
  br label %get_command.exit37

.preheader.i31:                                   ; preds = %.thread..preheader.i31_crit_edge, %.preheader.i
  %i.bw = phi i8 [ %.pre, %.thread..preheader.i31_crit_edge ], [ %.pre67, %.preheader.i ] ; 2 uses
  %.4444850 = phi ptr [ %.4, %.thread..preheader.i31_crit_edge ], [ undef, %.preheader.i ]
  %i.bx = icmp eq i8 %i.bw, 97                    ; 2 uses
  %.8 = select i1 %i.bx, ptr @phpdbg_help_commands, ptr %.4444850
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i8 %i.bw, 0                     ; 2 uses
  %i.ca = zext i1 %i.bz to i32                    ; 4 uses
  %.1.i35.1 = add nuw nsw i32 %i.by, %i.ca        ; 2 uses
  %i.cb = icmp eq i32 %.1.i35.1, 0
  %.8.1 = select i1 %i.cb, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_help_commands, i64 160), ptr getelementptr inbounds nuw (i8, ptr @phpdbg_help_commands, i64 80)
  %.1.i35.2 = add nuw nsw i32 %.1.i35.1, %i.ca    ; 2 uses
  %i.cc = icmp eq i32 %.1.i35.2, 0
  %.8.2 = select i1 %i.cc, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_help_commands, i64 240), ptr %.8.1
  %.1.i35.3 = add nuw nsw i32 %.1.i35.2, %i.ca    ; 2 uses
  %i.cd = icmp eq i32 %.1.i35.3, 0
  %.8.3 = select i1 %i.cd, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_help_commands, i64 320), ptr %.8.2
  %.8.4 = select i1 %i.bz, ptr %.8.3, ptr %.8
  %.1.i35.4 = add nuw nsw i32 %.1.i35.3, %i.ca
  br label %get_command.exit37

get_command.exit37:                               ; preds = %.preheader35.i23, %.preheader.i31
  %.9 = phi ptr [ %.8.4, %.preheader.i31 ], [ %.6.4, %.preheader35.i23 ] ; 3 uses
  %.4.i30 = phi i32 [ %.1.i35.4, %.preheader.i31 ], [ %.3.i28.4, %.preheader35.i23 ]
  %.not74 = icmp eq i32 %.4.i30, 0
  br i1 %.not74, label %bb.n, label %bb.k

bb.k:                                             ; preds = %get_command.exit37
  %i.ce = getelementptr inbounds nuw i8, ptr %.9, i64 32
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !21
  %i.cg = icmp eq i8 %i.cf, 97
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %.9, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !74
  %i.cj = tail call i32 %i.ci(ptr noundef nonnull %0) #6
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ck = load ptr, ptr %.9, align 8, !tbaa !14
  %i.cl = tail call fastcc ptr @get_help(ptr noundef %i.ck)
  tail call fastcc void @pretty_print(ptr noundef %i.cl)
  br label %bb.o

bb.n:                                             ; preds = %get_command.exit37
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @phpdbg_globals, i64 1508), align 4, !tbaa !12
  %i.cn = tail call i32 (i32, i32, ptr, ...) @phpdbg_print(i32 noundef 1, i32 noundef %i.cm, ptr noundef nonnull @.str.16, ptr noundef %i.f) #6 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.b, %bb.m, %bb.l, %bb.j, %._crit_edge, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %._crit_edge ], [ -1, %bb.j ], [ %i.cj, %bb.l ], [ 0, %bb.m ], [ -1, %bb.b ], [ -1, %bb.n ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare i32 @phpdbg_print(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @phpdbg_get_prompt() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @phpdbg_get_terminal_width() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #5

declare i32 @phpdbg_out_internal(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !9, i64 0}
!13 = !{!"", !9, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"_phpdbg_command_t", !16, i64 0, !18, i64 8, !16, i64 16, !18, i64 24, !10, i64 32, !17, i64 40, !19, i64 48, !16, i64 56, !19, i64 64, !20, i64 72}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!"p1 _ZTS17_phpdbg_command_t", !17, i64 0}
!20 = !{!"_Bool", !10, i64 0}
!21 = !{!15, !10, i64 32}
!22 = !{!15, !16, i64 16}
!23 = !{!15, !19, i64 48}
!24 = !{!15, !18, i64 8}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = distinct !{!28, !26}
!29 = distinct !{!29, !26}
!30 = !{!16, !16, i64 0}
!31 = !{!32, !18, i64 2184}
!32 = !{!"_zend_phpdbg_globals", !10, i64 0, !33, i64 616, !33, i64 672, !35, i64 728, !36, i64 736, !37, i64 744, !9, i64 768, !16, i64 776, !39, i64 784, !40, i64 832, !41, i64 840, !9, i64 992, !18, i64 1000, !43, i64 1008, !43, i64 1040, !33, i64 1072, !33, i64 1128, !33, i64 1184, !33, i64 1240, !45, i64 1296, !45, i64 1304, !45, i64 1312, !20, i64 1320, !17, i64 1328, !46, i64 1336, !16, i64 1344, !18, i64 1352, !47, i64 1360, !48, i64 1368, !9, i64 1384, !9, i64 1388, !20, i64 1392, !20, i64 1393, !17, i64 1400, !17, i64 1408, !17, i64 1416, !33, i64 1424, !49, i64 1480, !50, i64 1488, !51, i64 1496, !10, i64 1504, !17, i64 1520, !52, i64 1528, !18, i64 1560, !10, i64 1568, !10, i64 1584, !16, i64 1608, !20, i64 1616, !53, i64 1624, !54, i64 1632, !10, i64 1640, !9, i64 2140, !55, i64 2144, !57, i64 2176, !18, i64 2184, !16, i64 2192, !18, i64 2200}
!33 = !{!"_zend_array", !34, i64 0, !10, i64 8, !9, i64 12, !10, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !18, i64 40, !17, i64 48}
!34 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!35 = !{!"p1 _ZTS18_zend_execute_data", !17, i64 0}
!36 = !{!"p1 _ZTS12_zend_object", !17, i64 0}
!37 = !{!"", !9, i64 0, !38, i64 8, !35, i64 16}
!38 = !{!"p1 _ZTS15_zend_generator", !17, i64 0}
!39 = !{!"", !9, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !9, i64 40}
!40 = !{!"p1 _ZTS13_phpdbg_param", !17, i64 0}
!41 = !{!"sigaction", !10, i64 0, !42, i64 8, !9, i64 136, !17, i64 144}
!42 = !{!"", !10, i64 0}
!43 = !{!"", !18, i64 0, !18, i64 8, !20, i64 16, !44, i64 24}
!44 = !{!"p1 _ZTS20_phpdbg_btree_branch", !17, i64 0}
!45 = !{!"p1 _ZTS11_zend_array", !17, i64 0}
!46 = !{!"p1 _ZTS21_phpdbg_watch_element", !17, i64 0}
!47 = !{!"p1 _ZTS14_zend_op_array", !17, i64 0}
!48 = !{!"_zval_struct", !10, i64 0, !10, i64 8, !10, i64 12}
!49 = !{!"p1 _ZTS11_zend_arena", !17, i64 0}
!50 = !{!"p1 _ZTS18_phpdbg_oplog_list", !17, i64 0}
!51 = !{!"p1 _ZTS19_phpdbg_oplog_entry", !17, i64 0}
!52 = !{!"", !20, i64 0, !9, i64 4, !9, i64 8, !16, i64 16, !9, i64 24}
!53 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!54 = !{!"p1 _ZTS19_php_stream_wrapper", !17, i64 0}
!55 = !{!"", !16, i64 0, !20, i64 8, !56, i64 16, !56, i64 24}
!56 = !{!"p1 _ZTS13_zend_mm_heap", !17, i64 0}
!57 = !{!"p1 _ZTS13__jmp_buf_tag", !17, i64 0}
!58 = !{!10, !10, i64 0}
!59 = !{!"branch_weights", i32 -104856028, i32 -98566144, i32 2097152, i32 2096626, i32 2096104}
!60 = distinct !{!60, !26}
!61 = !{!"branch_weights", i32 -298965797, i32 -288964296, i32 2002000, i32 2001000, i32 2000000, i32 1999499, i32 1999000}
!62 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!63 = distinct !{!63, !26}
!64 = !{!65, !16, i64 8}
!65 = !{!"_phpdbg_help_text_t", !16, i64 0, !16, i64 8}
!66 = !{!67, !9, i64 0}
!67 = !{!"_phpdbg_param", !9, i64 0, !18, i64 8, !18, i64 16, !68, i64 24, !69, i64 40, !16, i64 56, !18, i64 64, !40, i64 72, !40, i64 80}
!68 = !{!"", !16, i64 0, !18, i64 8}
!69 = !{!"", !16, i64 0, !16, i64 8}
!70 = !{!67, !16, i64 56}
!71 = !{!67, !18, i64 64}
!72 = distinct !{!72, !26}
!73 = distinct !{!73, !26}
!74 = !{!15, !17, i64 40}
end_hunk_0

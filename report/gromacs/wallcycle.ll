Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/wallcycle?download=true
inline.NumInlined: 640
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z15wallcycle_printP8_IO_FILERKN3gmx8MDLoggerEiiiidP13gmx_wallcycleRKSt5arrayIdLm106EEPK25gmx_wallclock_gpu_nbnxn_tPK23gmx_wallclock_gpu_pme_t:bb.a
  %.fr = freeze double %i.p                       ; 23 uses
  %i.q = fcmp ugt double %.fr, 0.000000e+00
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !218    ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.dw, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  store ptr %i.u, ptr %11, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !221
  %i.x = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @.str.7, double noundef %.fr)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !223
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %i.x)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.f, !inline_history !213

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %bb.e
  %i.ab = load ptr, ptr %11, align 8, !tbaa !59   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.u
  br i1 %i.ac, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !60
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #28
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.dw

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %11, align 8, !tbaa !59   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZN3gmx14LogEntryWriterD2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i329: ; preds = %bb.f
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !60
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #28
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit331

_ZN3gmx14LogEntryWriterD2Ev.exit331:              ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit346

bb.g:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 2624
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !66, !range !74, !noundef !38
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %1, align 8, !tbaa !218   ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  store ptr %i.aq, ptr %12, align 8, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !69
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 1, ptr %i.as, align 8, !tbaa !221
  %i.at = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull @.str.8, i64 noundef 168)
          to label %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit unwind label %bb.i ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextEPKc.exit:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !223
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8
  invoke void %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit334 unwind label %bb.i, !inline_history !213

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit334: ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit
  %i.ax = load ptr, ptr %12, align 8, !tbaa !59   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.aq
  br i1 %i.ay, label %_ZN3gmx14LogEntryWriterD2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i335: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit334
  %i.az = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #28
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit337

_ZN3gmx14LogEntryWriterD2Ev.exit337:              ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit334, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.dw

bb.i:                                             ; preds = %_ZN3gmx14LogEntryWriter10appendTextEPKc.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %12, align 8, !tbaa !59   ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.aq
  br i1 %i.bd, label %_ZN3gmx14LogEntryWriterD2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i338: ; preds = %bb.i
  %i.be = load i64, ptr %i.aq, align 8, !tbaa !60
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bf) #28
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit340

_ZN3gmx14LogEntryWriterD2Ev.exit340:              ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %_ZNSt6vectorI16WallCycleCounterSaIS0_EED2Ev.exit346

bb.j:                                             ; preds = %bb.g
  %i.bg = fdiv double %6, %.fr                    ; 2 uses
  %i.bh = sitofp i32 %i.o to double               ; 2 uses
  %i.bi = fmul double %i.bg, %i.bh                ; 2 uses
  %i.bj = sitofp i32 %i.m to double
  %i.bk = fdiv double %i.bi, %i.bj                ; 7 uses
  %i.bl = icmp sgt i32 %3, 0                      ; 5 uses
  %i.bm = sitofp i32 %i.n to double
  %i.bn = fdiv double %i.bi, %i.bm                ; 2 uses
  %i.bo = select i1 %i.bl, double %i.bn, double %i.bk
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.9, i64 68, i64 1, ptr %0) ; 0 uses
  %i.bp = icmp eq i32 %3, 0
  %i.bq = icmp eq i32 %i.l, 1
  %i.br = select i1 %i.bq, ptr @.str.41, ptr @.str.42 ; 2 uses
  %i.bs = icmp sgt i32 %4, 1                      ; 2 uses
  br i1 %i.bp, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %i.l, ptr noundef nonnull %i.br) #27 ; 0 uses
  br i1 %i.bs, label %bb.l, label %_ZL12print_headerP8_IO_FILEiiii.exit

bb.l:                                             ; preds = %bb.k
  %i.bu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, i32 noundef %4) #27 ; 0 uses
  br label %_ZL12print_headerP8_IO_FILEiiii.exit

bb.m:                                             ; preds = %bb.j
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.44, i32 noundef %i.l, ptr noundef nonnull %i.br) #27 ; 0 uses
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = icmp sgt i32 %i.l, 1
  %i.bx = select i1 %i.bw, ptr @.str.46, ptr @.str.41
  %i.by = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.bx, i32 noundef %4) #27 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bz = icmp eq i32 %3, 1
  %i.ca = select i1 %i.bz, ptr @.str.41, ptr @.str.42
  %i.cb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %3, ptr noundef nonnull %i.ca) #27 ; 0 uses
  %i.cc = icmp sgt i32 %5, 1
  br i1 %i.cc, label %bb.p, label %_ZL12print_headerP8_IO_FILEiiii.exit

bb.p:                                             ; preds = %bb.o
  %i.cd = icmp sgt i32 %3, 1
  %i.ce = select i1 %i.cd, ptr @.str.46, ptr @.str.41
  %i.cf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull %i.ce, i32 noundef %5) #27 ; 0 uses
  br label %_ZL12print_headerP8_IO_FILEiiii.exit

_ZL12print_headerP8_IO_FILEiiii.exit:             ; preds = %bb.k, %bb.l, %bb.o, %bb.p
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.48, i64 2, i64 1, ptr %0) ; 0 uses
  %fwrite27.i = tail call i64 @fwrite(ptr nonnull @.str.49, i64 77, i64 1, ptr %0) ; 0 uses
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.50) #27 ; 0 uses
  %i.ch = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.6) #27 ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 2552
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 2560
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.ag

bb.q:                                             ; preds = %bb.am
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 2584 ; 5 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !73
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 2592
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !73
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %.loopexit494, label %.preheader493

.preheader493:                                    ; preds = %bb.q
  %i.cq = fcmp ogt double %.fr, 0.000000e+00      ; 3 uses
  %i.cr = icmp slt i32 %i.l, 0
  %i.cs = icmp slt i32 %4, 0                      ; 2 uses
  br i1 %i.cr, label %.preheader493.split.us, label %.preheader492

.preheader493.split.us:                           ; preds = %.preheader493
  br i1 %i.cs, label %.preheader493.split.us.split.us, label %.preheader492.us

.preheader493.split.us.split.us:                  ; preds = %.preheader493.split.us
  br i1 %i.cq, label %.preheader492.us.us.us, label %.preheader492.us.us.preheader

.preheader492.us.us.preheader:                    ; preds = %.preheader493.split.us.split.us
  %21 = call double @llvm.fabs.f64(double %i.bk)
  br label %.preheader492.us.us

.preheader492.us.us.us:                           ; preds = %.preheader493.split.us.split.us, %.split.us.us.split.us.us.split.us.us
  %indvars.iv559 = phi i64 [ %indvars.iv.next560, %.split.us.us.split.us.us.split.us.us ], [ 0, %.preheader493.split.us.split.us ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv559
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !224
  %.idx668 = mul nuw nsw i64 %indvars.iv559, 1440
  br label %bb.r

bb.r:                                             ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us.us.us, %.preheader492.us.us.us
  %indvars.iv556 = phi i64 [ %indvars.iv.next557, %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us.us.us ], [ 0, %.preheader492.us.us.us ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv556
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !224
  %i.cx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 20, ptr noundef nonnull @.str.12, ptr noundef %i.cu, ptr noundef %i.cw) #27 ; 0 uses
  %i.cy = load ptr, ptr %i.cl, align 8, !tbaa !52
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cy, i64 %indvars.iv556
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx668 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !65 ; 2 uses
  %i.de = uitofp i64 %i.dd to double              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  %i.df = fmul nnan double %i.de, 1.000000e+02
  %i.dg = fdiv double %i.df, %.fr
  %.not482.us.us.us.us.us.us = icmp eq i64 %i.dd, 0
  br i1 %.not482.us.us.us.us.us.us, label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us.us.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = icmp sgt i32 %i.db, 0
  br i1 %i.dh, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.g, align 16, !tbaa !60
  store i8 0, ptr %i.h, align 16, !tbaa !60
  store i8 0, ptr %i.i, align 16, !tbaa !60
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.di = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 4096, ptr noundef nonnull @.str.105, i32 noundef %i.db) #27 ; 0 uses
  store i32 4271950, ptr %i.g, align 16
  store i32 4271950, ptr %i.h, align 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dj = fmul double %i.bk, %i.de
  %i.dk = fmul nnan double %i.de, 1.000000e-09
  %i.dl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, double noundef %i.dj, double noundef %i.dk, double noundef %i.dg) #27 ; 0 uses
  br label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us.us.us

_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us.us.us: ; preds = %bb.v, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %.not481.us.us.us.us.us.us = icmp eq i64 %indvars.iv.next557, 60
  br i1 %.not481.us.us.us.us.us.us, label %.split.us.us.split.us.us.split.us.us, label %bb.r

.split.us.us.split.us.us.split.us.us:             ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us.us.us
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 2 uses
  %.not480.us.us.us = icmp eq i64 %indvars.iv.next560, 60
  br i1 %.not480.us.us.us, label %.loopexit494, label %.preheader492.us.us.us

.preheader492.us.us:                              ; preds = %.preheader492.us.us.preheader, %.split.us.us.split.us.us.split
  %indvars.iv553 = phi i64 [ 0, %.preheader492.us.us.preheader ], [ %indvars.iv.next554, %.split.us.us.split.us.us.split ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv553
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !224
  %.idx667 = mul nuw nsw i64 %indvars.iv553, 1440
  br label %bb.w

bb.w:                                             ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us, %.preheader492.us.us
  %indvars.iv550 = phi i64 [ %indvars.iv.next551, %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us ], [ 0, %.preheader492.us.us ] ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv550
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !224
  %i.dq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 20, ptr noundef nonnull @.str.12, ptr noundef %i.dn, ptr noundef %i.dp) #27 ; 0 uses
  %i.dr = load ptr, ptr %i.cl, align 8, !tbaa !52
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %indvars.iv550
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx667 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !64 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !65 ; 2 uses
  %i.dx = uitofp i64 %i.dw to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  %.not482.us.us.us.us = icmp eq i64 %i.dw, 0
  br i1 %.not482.us.us.us.us, label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dy = icmp sgt i32 %i.du, 0
  br i1 %i.dy, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i8 0, ptr %i.g, align 16, !tbaa !60
  store i8 0, ptr %i.h, align 16, !tbaa !60
  store i8 0, ptr %i.i, align 16, !tbaa !60
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 4096, ptr noundef nonnull @.str.105, i32 noundef %i.du) #27 ; 0 uses
  store i32 4271950, ptr %i.g, align 16
  store i32 4271950, ptr %i.h, align 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ea = fmul nnan double %i.dx, 1.000000e-09
  %i.eb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, double noundef %21, double noundef %i.ea, double noundef 0.000000e+00) #27 ; 0 uses
  br label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us

_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us: ; preds = %bb.aa, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %.not481.us.us.us.us = icmp eq i64 %indvars.iv.next551, 60
  br i1 %.not481.us.us.us.us, label %.split.us.us.split.us.us.split, label %bb.w

.split.us.us.split.us.us.split:                   ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us.us.us
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %.not480.us.us = icmp eq i64 %indvars.iv.next554, 60
  br i1 %.not480.us.us, label %.loopexit494, label %.preheader492.us.us

.preheader492.us:                                 ; preds = %.preheader493.split.us, %.split.us.us.split
  %indvars.iv547 = phi i64 [ %indvars.iv.next548, %.split.us.us.split ], [ 0, %.preheader493.split.us ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv547
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !224
  %.idx666 = mul nuw nsw i64 %indvars.iv547, 1440
  br label %bb.ab

bb.ab:                                            ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us, %.preheader492.us
  %indvars.iv544 = phi i64 [ %indvars.iv.next545, %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us ], [ 0, %.preheader492.us ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv544
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !224
  %i.eg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 20, ptr noundef nonnull @.str.12, ptr noundef %i.ed, ptr noundef %i.ef) #27 ; 0 uses
  %i.eh = load ptr, ptr %i.cl, align 8, !tbaa !52
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.eh, i64 %indvars.iv544
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx666 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !64 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !65 ; 2 uses
  %i.en = uitofp i64 %i.em to double              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  %i.eo = fmul nnan double %i.en, 1.000000e+02
  %i.ep = fdiv double %i.eo, %.fr
  %i.eq = select i1 %i.cq, double %i.ep, double 0.000000e+00
  %.not482.us.us = icmp eq i64 %i.em, 0
  br i1 %.not482.us.us, label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.er = icmp sgt i32 %i.ek, 0
  br i1 %i.er, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 0, ptr %i.g, align 16, !tbaa !60
  store i8 0, ptr %i.h, align 16, !tbaa !60
  store i8 0, ptr %i.i, align 16, !tbaa !60
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.es = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 4096, ptr noundef nonnull @.str.105, i32 noundef %i.ek) #27 ; 0 uses
  store i32 4271950, ptr %i.g, align 16
  %i.et = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.h, i64 noundef 4096, ptr noundef nonnull @.str.107, i32 noundef %4) #27 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eu = fmul double %i.bk, %i.en
  %i.ev = fmul nnan double %i.en, 1.000000e-09
  %i.ew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, double noundef %i.eu, double noundef %i.ev, double noundef %i.eq) #27 ; 0 uses
  br label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us

_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us:  ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  %indvars.iv.next545 = add nuw nsw i64 %indvars.iv544, 1 ; 2 uses
  %.not481.us.us = icmp eq i64 %indvars.iv.next545, 60
  br i1 %.not481.us.us, label %.split.us.us.split, label %bb.ab

.split.us.us.split:                               ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit.us.us
  %indvars.iv.next548 = add nuw nsw i64 %indvars.iv547, 1 ; 2 uses
  %.not480.us = icmp eq i64 %indvars.iv.next548, 60
  br i1 %.not480.us, label %.loopexit494, label %.preheader492.us

bb.ag:                                            ; preds = %_ZL12print_headerP8_IO_FILEiiii.exit, %bb.am
  %indvars.iv = phi i64 [ 3, %_ZL12print_headerP8_IO_FILEiiii.exit ], [ %indvars.iv.next, %bb.am ] ; 10 uses
  %.0506 = phi double [ 0.000000e+00, %_ZL12print_headerP8_IO_FILEiiii.exit ], [ %.1, %bb.am ] ; 3 uses
  %i.ex = trunc i64 %indvars.iv to i32
  %i.ey = add i32 %i.ex, -20
  %i.ez = icmp ult i32 %i.ey, 17
  br i1 %i.ez, label %bb.am, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fa = trunc i64 %indvars.iv to i32
  %i.fb = add i32 %i.fa, -18
  %i.fc = icmp ult i32 %i.fb, 20
  %or.cond477 = and i1 %i.bl, %i.fc
  br i1 %or.cond477, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !224
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull @.str.11, ptr noundef %i.fe)
  %i.ff = load ptr, ptr %13, align 8, !tbaa !59
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !72
  call fastcc void @_ZL12print_cyclesP8_IO_FILEdPKciiidd(ptr noundef %0, double noundef %i.bn, ptr noundef %i.ff, i32 noundef %3, i32 noundef %5, i32 noundef %i.fh, double noundef %i.fj, double noundef %.fr)
  %i.fk = load ptr, ptr %13, align 8, !tbaa !59   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.ck
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  %i.fm = load i64, ptr %i.ck, align 8, !tbaa !60
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !224 ; 2 uses
  %i.fq = add nsw i64 %indvars.iv, -12            ; 3 uses
  %or.cond478 = icmp ult i64 %i.fq, 5
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !64 ; 2 uses
  %i.ft = icmp sgt i32 %i.fs, 0
  %or.cond676 = select i1 %or.cond478, i1 %i.ft, i1 false
  br i1 %or.cond676, label %bb.ak, label %._crit_edge

bb.ak:                                            ; preds = %bb.aj
  %i.fu = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.fv = load ptr, ptr %i.ci, align 8, !tbaa !54 ; 2 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = ashr exact i64 %i.fy, 5
  %i.ga = icmp sgt i64 %i.fz, %i.fq
  br i1 %i.ga, label %bb.al, label %._crit_edge

bb.al:                                            ; preds = %bb.ak
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %i.fv, i64 %i.fq
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !59
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.aj, %bb.ak, %bb.al
  %.1301 = phi ptr [ %i.gc, %bb.al ], [ %i.fp, %bb.aj ], [ %i.fp, %bb.ak ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %indvars.iv ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !72
  call fastcc void @_ZL12print_cyclesP8_IO_FILEdPKciiidd(ptr noundef %0, double noundef %i.bk, ptr noundef %.1301, i32 noundef %i.l, i32 noundef %4, i32 noundef %i.fs, double noundef %i.ge, double noundef %.fr)
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !72
  %i.gg = fadd double %.0506, %i.gf
  br label %bb.am

bb.am:                                            ; preds = %bb.ag, %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi double [ %.0506, %bb.ag ], [ %.0506, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.gg, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not479 = icmp eq i64 %indvars.iv.next, 60
  br i1 %.not479, label %bb.q, label %bb.ag, !llvm.loop !214

.preheader492:                                    ; preds = %.preheader493, %.split
  %indvars.iv541 = phi i64 [ %indvars.iv.next542, %.split ], [ 0, %.preheader493 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv541
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !224
  %.idx = mul nuw nsw i64 %indvars.iv541, 1440
  br label %bb.an

.split:                                           ; preds = %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %.not480 = icmp eq i64 %indvars.iv.next542, 60
  br i1 %.not480, label %.loopexit494, label %.preheader492

bb.an:                                            ; preds = %.preheader492, %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit
  %indvars.iv538 = phi i64 [ 0, %.preheader492 ], [ %indvars.iv.next539, %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit ] ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr @__const._ZL17enumValuetoString16WallCycleCounter.wallCycleCounterNames, i64 %indvars.iv538
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !224
  %i.gl = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 20, ptr noundef nonnull @.str.12, ptr noundef %i.gi, ptr noundef %i.gk) #27 ; 0 uses
  %i.gm = load ptr, ptr %i.cl, align 8, !tbaa !52
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.gm, i64 %indvars.iv538
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !64 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !65 ; 2 uses
  %i.gs = uitofp i64 %i.gr to double              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #27
  %i.gt = fmul nnan double %i.gs, 1.000000e+02
  %i.gu = fdiv double %i.gt, %.fr
  %i.gv = select i1 %i.cq, double %i.gu, double 0.000000e+00
  %.not482 = icmp eq i64 %i.gr, 0
  br i1 %.not482, label %_ZL12print_cyclesP8_IO_FILEdPKciiidd.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gw = icmp sgt i32 %i.gp, 0
  br i1 %i.gw, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.gx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 4096, ptr noundef nonnull @.str.105, i32 noundef %i.gp) #27 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx14LogEntryWriter10appendTextEPKc:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %i.a) ; 0 uses
  ret ptr %0
}

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL12print_cyclesP8_IO_FILEdPKciiidd(ptr nofree noundef captures(none) %0, double noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double noundef %7) unnamed_addr #18 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = alloca [4096 x i8], align 16             ; 6 uses
  %i.c = alloca [4096 x i8], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.d = fcmp ogt double %7, 0.000000e+00
  %i.e = fmul double %6, 1.000000e+02
  %i.f = fdiv double %i.e, %7
  %i.g = select i1 %i.d, double %i.f, double 0.000000e+00
  %i.h = fcmp ogt double %6, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %5, 0
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 4096, ptr noundef nonnull @.str.105, i32 noundef %5) #27 ; 0 uses
  %i.k = icmp slt i32 %3, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 4271950, ptr %i.a, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4096, ptr noundef nonnull @.str.107, i32 noundef %3) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = icmp slt i32 %4, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 4271950, ptr %i.b, align 16
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 4096, ptr noundef nonnull @.str.107, i32 noundef %4) #27 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  store i8 0, ptr %i.a, align 16, !tbaa !60
  store i8 0, ptr %i.b, align 16, !tbaa !60
  store i8 0, ptr %i.c, align 16, !tbaa !60
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %i.o = fmul double %1, %6
  %i.p = fmul nnan double %6, 1.000000e-09
  %i.q = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, double noundef %i.o, double noundef %i.p, double noundef %i.g) #27 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZL14print_gputimesP8_IO_FILEPKcidd(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, double noundef %3, double noundef %4) unnamed_addr #18 {
bb.a:
  %i.a = alloca [11 x i8], align 1                ; 5 uses
  %i.b = alloca [11 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 11, ptr noundef nonnull @.str.105, i32 noundef %2) #27 ; 0 uses
  %i.e = uitofp nneg i32 %2 to double
  %i.f = fdiv double %3, %i.e
  %i.g = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 11, ptr noundef nonnull @.str.109, double noundef %i.f) #27 ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.110, i64 11, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.110, i64 11, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = fcmp une double %3, %4
  %i.i = fcmp ogt double %4, 0.000000e+00
  %or.cond = and i1 %i.h, %i.i
  %i.j = fdiv double %3, 1.000000e+03             ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = fmul double %3, 1.000000e+02
  %i.l = fdiv double %i.k, %4
  %i.m = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.111, ptr noundef %1, ptr noundef nonnull %i.a, double noundef %i.j, ptr noundef nonnull %i.b, double noundef %i.l) #27 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.111, ptr noundef %1, ptr noundef nonnull @.str.41, double noundef %i.j, ptr noundef nonnull %i.b, double noundef 1.000000e+02) #27 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_Z25wcycle_get_reset_countersP13gmx_wallcycle(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.c = load i64, ptr %i.b, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z25wcycle_set_reset_countersP13gmx_wallcyclel(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #21 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1440
  store i64 %1, ptr %i.b, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx17rdtscpDescriptionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::optional.137") align 8 %0) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i.i.i.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.116, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.d, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN3gmx29instrumentationApiDescriptionB5cxx11Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.137") align 8 captures(none) initializes((32, 33)) %0) local_unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !77
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i32.v4p0(<4 x i32>, <4 x ptr>, <4 x i1>) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i64.v4p0(<4 x i64>, <4 x ptr>, <4 x i1>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.rint.v4f64(<4 x double>) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.rint.v2f64(<2 x double>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS13gmx_wallcycle", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTSN3gmx16EnumerationArrayI16WallCycleCounter8wallcc_tLS1_60EEE", !5, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSN3gmx16EnumerationArrayI19WallCycleSubCounter8wallcc_tLS1_46EEE", !5, i64 0}
!15 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !18, i64 0}
!20 = !{!"p1 _ZTS9t_commrec", !9, i64 0}
!21 = !{!"p1 _ZTS8wallcc_t", !9, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseI8wallcc_tSaIS0_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseI8wallcc_tSaIS0_EE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseI8wallcc_tSaIS0_EE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorI8wallcc_tSaIS0_EE", !24, i64 0}
!26 = !{!"_ZTS16WallCycleCounter", !5, i64 0}
!27 = !{!"long long", !5, i64 0}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"_ZTSNSt14__array_traitsI16WallCycleCounterLm0EE5_TypeE"}
!30 = !{!"_ZTSSt5arrayI16WallCycleCounterLm0EE", !29, i64 0}
!31 = !{!"_ZTS13gmx_wallcycle", !12, i64 0, !13, i64 1440, !14, i64 1448, !19, i64 2552, !20, i64 2576, !25, i64 2584, !6, i64 2608, !26, i64 2612, !27, i64 2616, !28, i64 2624, !28, i64 2625, !30, i64 2626, !6, i64 2628, !28, i64 2632}
!32 = !{!31, !13, i64 1440}
!33 = !{!31, !20, i64 2576}
!34 = !{!"p1 _ZTSN3gmx7MpiCommE", !9, i64 0}
!35 = !{!"p1 _ZTS12gmx_domdec_t", !9, i64 0}
!36 = !{!"_ZTS9t_commrec", !34, i64 0, !34, i64 8, !35, i64 16}
!37 = !{!36, !34, i64 0}
!38 = !{}
!39 = !{i64 8}
!40 = !{!"p1 _ZTS10tmpi_comm_", !9, i64 0}
!41 = !{!"p1 _ZTSN3gmx7MpiComm19HierarchicalReducerE", !9, i64 0}
!42 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx7MpiComm19HierarchicalReducerELb0EE", !41, i64 0}
!43 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !42, i64 0}
!44 = !{!"_ZTSSt5tupleIJPN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EEE", !43, i64 0}
!45 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !44, i64 0}
!46 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_ELb1ELb1EE", !45, i64 0}
!47 = !{!"_ZTSSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EE", !46, i64 0}
!48 = !{!"_ZTSN3gmx7MpiCommE", !40, i64 0, !6, i64 8, !6, i64 12, !47, i64 16}
!49 = !{!48, !6, i64 8}
!50 = !{!31, !28, i64 2625}
!51 = !{!22, !21, i64 8}
!52 = !{!22, !21, i64 0}
!53 = !{!22, !21, i64 16}
!54 = !{!16, !15, i64 0}
!55 = !{!16, !15, i64 8}
!56 = !{!"p1 omnipotent char", !9, i64 0}
!57 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !56, i64 0}
!58 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !57, i64 0, !13, i64 8, !5, i64 16}
!59 = !{!58, !56, i64 0}
!60 = !{!5, !5, i64 0}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!16, !15, i64 16}
!63 = !{!"_ZTS8wallcc_t", !6, i64 0, !27, i64 8, !27, i64 16}
!64 = !{!63, !6, i64 0}
!65 = !{!63, !27, i64 8}
!66 = !{!31, !28, i64 2624}
!67 = !{!6, !6, i64 0}
!68 = !{!57, !56, i64 0}
!69 = !{!58, !13, i64 8}
!70 = !{!13, !13, i64 0}
!71 = !{!"double", !5, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!21, !21, i64 0}
!74 = !{i8 0, i8 2}
!75 = !{!48, !40, i64 0}
!76 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !28, i64 32}
!77 = !{!76, !28, i64 32}
!78 = distinct !{!78, i1 true, !"_ZSt11make_uniqueI13gmx_wallcycleJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!79 = distinct !{!79, !78, !"_ZSt11make_uniqueI13gmx_wallcycleJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!80 = !{!"_ZTSSt10_Head_baseILm0EP13gmx_wallcycleLb0EE", !10, i64 0}
!81 = !{!80, !10, i64 0}
!82 = !{!79}
!83 = distinct !{!83, !61}
!84 = !{!31, !26, i64 2612}
!85 = !{!31, !6, i64 2628}
!86 = !{!31, !28, i64 2632}
!87 = distinct !{!87, i1 true, !"_ZSt19__relocate_object_aI8wallcc_tS0_SaIS0_EEvPT_PT0_RT1_"}
!88 = distinct !{!88, !87, !"_ZSt19__relocate_object_aI8wallcc_tS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!89 = distinct !{!89, !87, !"_ZSt19__relocate_object_aI8wallcc_tS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!90 = distinct !{!90, !61}
!91 = !{!27, !27, i64 0}
!92 = !{i64 0, i64 4, !67, i64 8, i64 8, !91, i64 16, i64 8, !91}
!93 = !{!89, !88}
!94 = distinct !{!94, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!95 = distinct !{!95, !94, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!96 = distinct !{!96, !94, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!97 = distinct !{!97, !61}
!98 = distinct !{!98, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!99 = distinct !{!99, !98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!100 = distinct !{!100, !98, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!101 = !{!95}
!102 = !{!96}
!103 = !{!95, !96}
!104 = !{!99}
!105 = !{!100}
!106 = !{!99, !100}
!107 = !{!36, !34, i64 8}
!108 = distinct !{!108, !61, !211, !212}
!109 = !{!36, !35, i64 16}
!110 = !{!"_ZTSN3gmx11BasicVectorIiEE", !5, i64 0}
!111 = !{!"p1 _ZTS20gmx_pme_comm_n_box_t", !9, i64 0}
!112 = !{!"_ZTS12UnitCellInfo", !6, i64 0, !6, i64 4, !28, i64 8, !28, i64 9}
!113 = !{!"_ZTSSt5arrayIN3gmx5RangeIiEELm4EE", !5, i64 0}
!114 = !{!"_ZTSSt5arrayIN3gmx11BasicVectorIiEELm8EE", !5, i64 0}
!115 = !{!"_ZTSSt5arrayIiLm9EE", !5, i64 0}
!116 = !{!"_ZTSSt5arrayIiLm8EE", !5, i64 0}
!117 = !{!"_ZTSSt5arrayIN3gmx22gmx_domdec_zone_size_tELm8EE", !5, i64 0}
!118 = !{!"_ZTSN3gmx11DomdecZonesE", !6, i64 0, !6, i64 4, !113, i64 8, !114, i64 40, !115, i64 136, !116, i64 172, !117, i64 204, !6, i64 588}
!119 = !{!"p1 _ZTS16AtomDistribution", !9, i64 0}
!120 = !{!"_ZTSSt10_Head_baseILm0EP16AtomDistributionLb0EE", !119, i64 0}
!121 = !{!"_ZTSSt11_Tuple_implILm0EJP16AtomDistributionSt14default_deleteIS0_EEE", !120, i64 0}
!122 = !{!"_ZTSSt5tupleIJP16AtomDistributionSt14default_deleteIS0_EEE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_implI16AtomDistributionSt14default_deleteIS0_EE", !122, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_dataI16AtomDistributionSt14default_deleteIS0_ELb1ELb1EE", !123, i64 0}
!125 = !{!"_ZTSSt10unique_ptrI16AtomDistributionSt14default_deleteIS0_EE", !124, i64 0}
!126 = !{!"p1 _ZTS17gmx_reverse_top_t", !9, i64 0}
!127 = !{!"_ZTSSt10_Head_baseILm0EP17gmx_reverse_top_tLb0EE", !126, i64 0}
!128 = !{!"_ZTSSt11_Tuple_implILm0EJP17gmx_reverse_top_tSt14default_deleteIS0_EEE", !127, i64 0}
!129 = !{!"_ZTSSt5tupleIJP17gmx_reverse_top_tSt14default_deleteIS0_EEE", !128, i64 0}
!130 = !{!"_ZTSSt15__uniq_ptr_implI17gmx_reverse_top_tSt14default_deleteIS0_EE", !129, i64 0}
!131 = !{!"_ZTSSt15__uniq_ptr_dataI17gmx_reverse_top_tSt14default_deleteIS0_ELb1ELb1EE", !130, i64 0}
!132 = !{!"_ZTSSt10unique_ptrI17gmx_reverse_top_tSt14default_deleteIS0_EE", !131, i64 0}
!133 = !{!"p1 _ZTSN3gmx9HashedMapIiEE", !9, i64 0}
!134 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9HashedMapIiEELb0EE", !133, i64 0}
!135 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9HashedMapIiEESt14default_deleteIS2_EEE", !134, i64 0}
!136 = !{!"_ZTSSt5tupleIJPN3gmx9HashedMapIiEESt14default_deleteIS2_EEE", !135, i64 0}
!137 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9HashedMapIiEESt14default_deleteIS2_EE", !136, i64 0}
!138 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9HashedMapIiEESt14default_deleteIS2_ELb1ELb1EE", !137, i64 0}
!139 = !{!"_ZTSSt10unique_ptrIN3gmx9HashedMapIiEESt14default_deleteIS2_EE", !138, i64 0}
!140 = !{!"p1 _ZTS24gmx_domdec_specat_comm_t", !9, i64 0}
!141 = !{!"_ZTSSt10_Head_baseILm0EP24gmx_domdec_specat_comm_tLb0EE", !140, i64 0}
!142 = !{!"_ZTSSt11_Tuple_implILm0EJP24gmx_domdec_specat_comm_tSt14default_deleteIS0_EEE", !141, i64 0}
!143 = !{!"_ZTSSt5tupleIJP24gmx_domdec_specat_comm_tSt14default_deleteIS0_EEE", !142, i64 0}
!144 = !{!"_ZTSSt15__uniq_ptr_implI24gmx_domdec_specat_comm_tSt14default_deleteIS0_EE", !143, i64 0}
!145 = !{!"_ZTSSt15__uniq_ptr_dataI24gmx_domdec_specat_comm_tSt14default_deleteIS0_ELb1ELb1EE", !144, i64 0}
!146 = !{!"_ZTSSt10unique_ptrI24gmx_domdec_specat_comm_tSt14default_deleteIS0_EE", !145, i64 0}
!147 = !{!"p1 int", !9, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !147, i64 0, !147, i64 8, !147, i64 16}
!149 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !148, i64 0}
!150 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !149, i64 0}
!151 = !{!"_ZTSSt6vectorIiSaIiEE", !150, i64 0}
end_hunk_1

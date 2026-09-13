Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nrnb?download=true
inline.NumInlined: 75
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z10print_flopP8_IO_FILEP6t_nrnbPdS3_:bb.a
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !10
  %i.by = fcmp ogt double %i.bx, 0.000000e+00
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr @_ZL6nbdata, i64 %i.bv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !16
  %i.cc = add nsw i32 %i.cb, %.1.us
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.us.1 = phi i32 [ %i.cc, %bb.s ], [ %.1.us, %bb.r ] ; 2 uses
  %i.cd = or disjoint i64 %i.cs, 44               ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !10
  %i.cg = fcmp ogt double %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.u, label %.loopexit.us

bb.u:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr @_ZL6nbdata, i64 %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !16
  %i.ck = add nsw i32 %i.cj, %.1.us.1
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.t, %bb.u, %bb.p
  %.2.us = phi i32 [ %i.bn, %bb.p ], [ %i.ck, %bb.u ], [ %.1.us.1, %bb.t ]
  %i.cl = sitofp i32 %.2.us to double             ; 2 uses
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.cl, double %i.bd) ; 2 uses
  store double %i.cm, ptr %3, align 8, !tbaa !10
  %i.cn = fmul nnan double %i.bg, 1.000000e+02
  %i.co = fmul double %i.cn, %i.cl
  %i.cp = fdiv double %i.co, %i.ba
  %i.cq = fadd double %.086109.us, %i.cp
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.us, %bb.o
  %i.cr = phi double [ %i.cm, %.loopexit.us ], [ %i.bd, %bb.o ]
  %.187.us = phi double [ %i.cq, %.loopexit.us ], [ %.086109.us, %bb.o ] ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 116
  br i1 %exitcond131.not, label %.split.us, label %bb.o, !llvm.loop !20

.preheader.us:                                    ; preds = %bb.p
  %i.cs = and i64 %indvars.iv128, 1               ; 3 uses
  %i.ct = or disjoint i64 %i.cs, 40               ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !10
  %i.cw = fcmp ogt double %i.cv, 0.000000e+00
  br i1 %i.cw, label %bb.q, label %bb.r

.split.us:                                        ; preds = %bb.ac, %bb.v
  %.us-phi = phi double [ %.187.us, %bb.v ], [ %.187, %bb.ac ]
  br i1 %.not, label %bb.af, label %bb.ad

.critedge.split:                                  ; preds = %.critedge, %bb.ac
  %indvars.iv121 = phi i64 [ 0, %.critedge ], [ %indvars.iv.next122, %bb.ac ] ; 6 uses
  %.086109 = phi double [ 0.000000e+00, %.critedge ], [ %.187, %bb.ac ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv121
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !10
  %i.cz = fmul double %i.cy, f0x3EB0C6F7A0B5ED8D  ; 5 uses
  %i.da = fcmp ule double %i.cz, 0.000000e+00
  %i.db = trunc i64 %indvars.iv121 to i32
  %i.dc = add i32 %i.db, -40
  %i.dd = icmp ult i32 %i.dc, 6
  %or.cond = or i1 %i.da, %i.dd
  br i1 %or.cond, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %.critedge.split
  %i.de = getelementptr inbounds nuw [16 x i8], ptr @_ZL6nbdata, i64 %indvars.iv121 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !16 ; 3 uses
  %i.dh = trunc i64 %indvars.iv121 to i32
  %i.di = add i32 %i.dh, -26
  %i.dj = icmp ult i32 %i.di, 8
  br i1 %i.dj, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.w
  %i.dk = and i64 %indvars.iv121, 1               ; 3 uses
  %i.dl = or disjoint i64 %i.dk, 40               ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dl
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !10
  %i.do = fcmp ogt double %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.preheader
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr @_ZL6nbdata, i64 %i.dl
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !16
  %i.ds = add nsw i32 %i.dr, %i.dg
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.preheader
  %.1 = phi i32 [ %i.ds, %bb.x ], [ %i.dg, %.preheader ] ; 2 uses
  %i.dt = or disjoint i64 %i.dk, 42               ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dt
  %i.dv = load double, ptr %i.du, align 8, !tbaa !10
  %i.dw = fcmp ogt double %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr @_ZL6nbdata, i64 %i.dt
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !16
  %i.ea = add nsw i32 %i.dz, %.1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1.1 = phi i32 [ %i.ea, %bb.z ], [ %.1, %bb.y ] ; 2 uses
  %i.eb = or disjoint i64 %i.dk, 44               ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !10
  %i.ee = fcmp ogt double %i.ed, 0.000000e+00
  br i1 %i.ee, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr @_ZL6nbdata, i64 %i.eb
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !16
  %i.ei = add nsw i32 %i.eh, %.1.1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %bb.ab, %bb.w
  %.2 = phi i32 [ %i.dg, %bb.w ], [ %i.ei, %bb.ab ], [ %.1.1, %bb.aa ]
  %i.ej = sitofp i32 %.2 to double                ; 3 uses
  %i.ek = load double, ptr %3, align 8, !tbaa !10
  %i.el = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.ej, double %i.ek)
  store double %i.el, ptr %3, align 8, !tbaa !10
  %i.em = fmul nnan double %i.cz, 1.000000e+02
  %i.en = fmul double %i.em, %i.ej
  %i.eo = fdiv double %i.en, %i.ba                ; 2 uses
  %i.ep = fadd double %.086109, %i.eo
  %i.eq = load ptr, ptr %i.de, align 16, !tbaa !14
  %i.er = fmul double %i.cz, %i.ej
  %i.es = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.134, ptr noundef %i.eq, double noundef %i.cz, double noundef %i.er, double noundef %i.eo) #15 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %.critedge.split
  %.187 = phi double [ %i.ep, %.loopexit ], [ %.086109, %.critedge.split ] ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond124.not = icmp eq i64 %indvars.iv.next122, 116
  br i1 %exitcond124.not, label %.split.us, label %.critedge.split, !llvm.loop !20

bb.ad:                                            ; preds = %.split.us
  %i.et = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.117) #15 ; 0 uses
  %i.eu = load double, ptr %3, align 8, !tbaa !10
  %i.ev = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137, double noundef %i.eu, double noundef %.us-phi) #15 ; 0 uses
  %i.ew = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.117) #15 ; 0 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !10
  %i.ez = fcmp ogt double %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %fwrite96 = tail call i64 @fwrite(ptr nonnull @.str.139, i64 208, i64 1, ptr nonnull %0) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %.split.us, %bb.ae, %bb.ad, %bb.m
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress uwtable
define void @_Z10print_perfP8_IO_FILEddldddl(ptr nofree noundef captures(none) %0, double noundef %1, double noundef %2, i64 noundef %3, double noundef %4, double noundef %5, double noundef %6, i64 noundef %7) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  %i.a = fcmp ogt double %2, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.bj

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.144) #15 ; 0 uses
  %i.c = fmul double %1, 1.000000e+02
  %i.d = fdiv double %i.c, %2
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146, double noundef %1, double noundef %2, double noundef %i.d) #15 ; 0 uses
  %i.f = fcmp ogt double %2, 1.800000e+03
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.137) #15 ; 0 uses
  %i.h = fdiv double %2, 8.640000e+04
  %i.i = fptosi double %i.h to i32                ; 3 uses
  %i.j = mul nsw i32 %i.i, 86400
  %20 = sitofp i32 %i.j to double
  %i.k = fsub double %2, %20                      ; 2 uses
  %i.l = fdiv double %i.k, 3.600000e+03
  %i.m = fptosi double %i.l to i32                ; 5 uses
  %i.n = mul nsw i32 %i.m, 3600
  %i.o = sitofp i32 %i.n to double
  %i.p = fsub double %i.k, %i.o                   ; 2 uses
  %i.q = fdiv double %i.p, 6.000000e+01
  %i.r = fptosi double %i.q to i32                ; 5 uses
  %i.s = mul nsw i32 %i.r, 60
  %i.t = sitofp i32 %i.s to double
  %i.u = fsub double %i.p, %i.t
  %i.v = fptosi double %i.u to i32                ; 3 uses
  %i.w = icmp sgt i32 %i.i, 0
  br i1 %i.w, label %.thread46.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp sgt i32 %i.m, 0
  br i1 %i.x, label %.thread44.i, label %bb.e

.thread46.i:                                      ; preds = %bb.c
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.165, i32 noundef %i.i) #15 ; 0 uses
  %i.z = icmp slt i32 %i.m, 10
  %.str.167..str.168.i.i = select i1 %i.z, ptr @.str.167, ptr @.str.168
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.167..str.168.i.i, i32 noundef 100, i32 noundef %i.m) #15 ; 0 uses
  br label %bb.f

.thread44.i:                                      ; preds = %bb.d
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.165, i32 noundef %i.m) #15 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp sgt i32 %i.r, 0
  br i1 %i.ac, label %bb.g, label %bb.h

bb.f:                                             ; preds = %.thread44.i, %.thread46.i
  %i.ad = icmp slt i32 %i.r, 10
  %.str.167..str.168.i40.i = select i1 %i.ad, ptr @.str.167, ptr @.str.168
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.167..str.168.i40.i, i32 noundef 104, i32 noundef %i.r) #15 ; 0 uses
  br label %.critedge.i

bb.g:                                             ; preds = %bb.e
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.165, i32 noundef %i.r) #15 ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %i.ag = icmp slt i32 %i.v, 10
  %.str.167..str.168.i41.i = select i1 %i.ag, ptr @.str.167, ptr @.str.168
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %.str.167..str.168.i41.i, i32 noundef 58, i32 noundef %i.v) #15 ; 0 uses
  br label %_ZL11pr_difftimeP8_IO_FILEd.exit

bb.h:                                             ; preds = %bb.e
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.166, i32 noundef %i.v) #15 ; 0 uses
  br label %_ZL11pr_difftimeP8_IO_FILEd.exit

_ZL11pr_difftimeP8_IO_FILEd.exit:                 ; preds = %.critedge.i, %bb.h
  %fputc.i = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZL11pr_difftimeP8_IO_FILEd.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.137)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.149)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.aj = fcmp ogt double %4, 0.000000e+00
  br i1 %i.aj, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %bb.j
  %i.ak = fdiv double %6, %2                      ; 3 uses
  %i.al = sitofp i64 %3 to double
  %i.am = fmul double %4, %i.al                   ; 2 uses
  %i.an = call ptr @getenv(ptr noundef nonnull @.str.150) #15
  %.not71 = icmp eq ptr %i.an, null
  br i1 %.not71, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.ao = fcmp ogt double %i.ak, 1.000000e+03     ; 2 uses
  %.str.153..str.154 = select i1 %i.ao, ptr @.str.153, ptr @.str.154
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152, ptr noundef nonnull %.str.153..str.154)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = sub i64 4611686018427387903, %i.as
  %i.au = icmp ult i64 %i.at, %i.aq
  br i1 %i.au, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.169) #17
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.n
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.m
  %i.av = load ptr, ptr %10, align 8, !tbaa !25
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.av, i64 noundef %i.aq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.s ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ax = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !26
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.bc = insertelement <2 x double> poison, double %5, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ak, i64 1
  %i.be = insertelement <2 x double> <double poison, double 1.000000e+03>, double %2, i64 0
  %i.bf = fdiv <2 x double> %i.bd, %i.be          ; 2 uses
  %i.bg = extractelement <2 x double> %i.bf, i64 1
  %i.bh = select i1 %i.ao, double %i.bg, double %i.ak
  %i.bi = extractelement <2 x double> %i.bf, i64 0
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.155, double noundef %i.bi, double noundef %i.bh)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !24 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !24
  %i.bn = sub i64 4611686018427387903, %i.bm
  %i.bo = icmp ult i64 %i.bn, %i.bk
  br i1 %i.bo, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i89

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.169) #17
          to label %.noexc90 unwind label %bb.u

.noexc90:                                         ; preds = %bb.p
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i89: ; preds = %bb.o
  %i.bp = load ptr, ptr %11, align 8, !tbaa !25
  %i.bq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.bp, i64 noundef %i.bk)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit92 unwind label %bb.u ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i89
  %i.br = load ptr, ptr %11, align 8, !tbaa !25   ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit92
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !26
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  br label %bb.v

bb.q:                                             ; preds = %bb.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

bb.r:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bz = load ptr, ptr %10, align 8, !tbaa !25   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.s
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !26
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.r
  %.pn72 = phi { ptr, i32 } [ %i.bx, %bb.r ], [ %i.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.by, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.bi

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101
end_hunk_0

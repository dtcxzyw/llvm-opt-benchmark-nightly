Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AMFImporter?download=true
inline.NumInlined: 911
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK6Assimp11AMFImporter25ParseHelper_Decode_Base64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE:.noexc.i
  %i.cu = call i64 @llvm.umin.i64(i64 %i.cs, i64 9223372036854775807)
  %i.cv = select i1 %i.ct, i64 9223372036854775807, i64 %i.cu ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cv, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #25
          to label %.noexc57 unwind label %.loopexit74 ; 4 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cq ; 2 uses
  store i8 %i.cc, ptr %i.cx, align 1
  %i.cy = icmp sgt i64 %i.cq, 0
  br i1 %i.cy, label %bb.p, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.p:                                             ; preds = %.noexc57
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cw, ptr align 1 %i.cn, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.p, %.noexc57
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.da = load ptr, ptr %i.v, align 8
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.dc) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.cw, ptr %2, align 8
  store ptr %i.cz, ptr %i.p, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv ; 2 uses
  store ptr %i.dd, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.m
  %i.de = phi ptr [ %i.dd, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.pre101, %bb.m ] ; 2 uses
  %i.df = phi ptr [ %i.cz, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.cm, %bb.m ] ; 2 uses
  %.not.i.1 = icmp eq ptr %i.df, %i.de
  br i1 %.not.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  store i8 %i.cg, ptr %i.df, align 1
  %i.dg = load ptr, ptr %i.p, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 2 uses
  store ptr %i.dh, ptr %i.p, align 8
  %.pre102 = load ptr, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.di = load ptr, ptr %2, align 8               ; 4 uses
  %i.dj = ptrtoint ptr %i.de to i64
  %i.dk = ptrtoint ptr %i.di to i64               ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 7 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775807
  br i1 %i.dm, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.s
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dn = add i64 %.sroa.speculated.i.i.i.1, %i.dl ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dl
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 9223372036854775807)
  %i.dq = select i1 %i.do, i64 9223372036854775807, i64 %i.dp ; 3 uses
  %.not.i.i.i.1 = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i.i.1)
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #25
          to label %.noexc57.1 unwind label %.loopexit74 ; 4 uses

.noexc57.1:                                       ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dl ; 2 uses
  store i8 %i.cg, ptr %i.ds, align 1
  %i.dt = icmp sgt i64 %i.dl, 0
  br i1 %i.dt, label %bb.t, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1

bb.t:                                             ; preds = %.noexc57.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr align 1 %i.di, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1: ; preds = %bb.t, %.noexc57.1
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 2 uses
  %.not.i17.i.i.1 = icmp eq ptr %i.di, null
  br i1 %.not.i17.i.i.1, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1
  %i.dv = load ptr, ptr %i.v, align 8
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dx) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1: ; preds = %bb.u, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1
  store ptr %i.dr, ptr %2, align 8
  store ptr %i.du, ptr %i.p, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq ; 2 uses
  store ptr %i.dy, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1:        ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1, %bb.r
  %i.dz = phi ptr [ %i.dy, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1 ], [ %.pre102, %bb.r ] ; 2 uses
  %i.ea = phi ptr [ %i.du, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1 ], [ %i.dh, %bb.r ] ; 2 uses
  %.not.i.2 = icmp eq ptr %i.ea, %i.dz
  br i1 %.not.i.2, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1
  store i8 %i.ci, ptr %i.ea, align 1
  %i.eb = load ptr, ptr %i.p, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  store ptr %i.ec, ptr %i.p, align 8
  br label %.loopexit73

bb.w:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1
  %i.ed = load ptr, ptr %2, align 8               ; 4 uses
  %i.ee = ptrtoint ptr %i.dz to i64
  %i.ef = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.eg = sub i64 %i.ee, %i.ef                    ; 7 uses
  %i.eh = icmp eq i64 %i.eg, 9223372036854775807
  br i1 %i.eh, label %bb.o, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.w
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.ei = add i64 %.sroa.speculated.i.i.i.2, %i.eg ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.eg
  %i.ek = call i64 @llvm.umin.i64(i64 %i.ei, i64 9223372036854775807)
  %i.el = select i1 %i.ej, i64 9223372036854775807, i64 %i.ek ; 3 uses
  %.not.i.i.i.2 = icmp ne i64 %i.el, 0
  call void @llvm.assume(i1 %.not.i.i.i.2)
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #25
          to label %.noexc57.2 unwind label %.loopexit74 ; 4 uses

.noexc57.2:                                       ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.eg ; 2 uses
  store i8 %i.ci, ptr %i.en, align 1
  %i.eo = icmp sgt i64 %i.eg, 0
  br i1 %i.eo, label %bb.x, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2

bb.x:                                             ; preds = %.noexc57.2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %i.ed, i64 %i.eg, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2: ; preds = %bb.x, %.noexc57.2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %.not.i17.i.i.2 = icmp eq ptr %i.ed, null
  br i1 %.not.i17.i.i.2, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2
  %i.eq = load ptr, ptr %i.v, align 8
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = sub i64 %i.er, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.es) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2: ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2
  store ptr %i.em, ptr %2, align 8
  store ptr %i.ep, ptr %i.p, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  store ptr %i.et, ptr %i.v, align 8
  br label %.loopexit73

.loopexit73:                                      ; preds = %bb.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2, %bb.k, %bb.l
  %i.eu = phi i8 [ %i.as, %bb.k ], [ %i.as, %bb.l ], [ %i.ci, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.ci, %bb.v ] ; 2 uses
  %i.ev = phi i8 [ %i.at, %bb.k ], [ %i.at, %bb.l ], [ %i.cg, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.cg, %bb.v ] ; 2 uses
  %i.ew = phi i8 [ %i.au, %bb.k ], [ %i.au, %bb.l ], [ %i.cc, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.cc, %bb.v ] ; 2 uses
  %.3 = phi i8 [ %.04385, %bb.k ], [ %i.bj, %bb.l ], [ 0, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ 0, %bb.v ] ; 2 uses
  %.1 = add nuw i64 %.04187, 1
  %i.ex = add i64 %.04286, -1                     ; 2 uses
  %.not49 = icmp eq i64 %i.ex, 0
  br i1 %.not49, label %.critedge, label %bb.j, !llvm.loop !64

.preheader:                                       ; preds = %.lr.ph91.preheader, %.preheader72
  %i.ey = load i8, ptr %i.b, align 1
  %i.ez = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.ey, i64 noundef 0) #22
  %i.fa = trunc i64 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.fc = load i8, ptr %i.fb, align 1
  %i.fd = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.fc, i64 noundef 0) #22
  %i.fe = trunc i64 %i.fd to i8                   ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.fg, i64 noundef 0) #22
  %i.fi = trunc i64 %i.fh to i8                   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.fk, i64 noundef 0) #22
  %i.fm = trunc i64 %i.fl to i8
  %i.fn = shl i8 %i.fa, 2
  %i.fo = lshr i8 %i.fe, 4
  %i.fp = and i8 %i.fo, 3
  %i.fq = or disjoint i8 %i.fp, %i.fn
  store i8 %i.fq, ptr %i.c, align 1
  %i.fr = shl i8 %i.fe, 4
  %i.fs = lshr i8 %i.fi, 2
  %i.ft = and i8 %i.fs, 15
  %i.fu = or disjoint i8 %i.ft, %i.fr
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.fu, ptr %i.fv, align 1
  %i.fw = shl i8 %i.fi, 6
  %i.fx = add i8 %i.fw, %i.fm
  %i.fy = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.fx, ptr %i.fy, align 1
  %4 = zext i8 %.043.lcssa to i32
  %5 = add nsw i32 %4, -1
  %.not95 = icmp eq i8 %.043.lcssa, 1
  br i1 %.not95, label %.loopexit, label %.lr.ph94.preheader

.lr.ph94.preheader:                               ; preds = %.preheader
  %.pre103 = load ptr, ptr %i.p, align 8
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %.lr.ph94.preheader, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67
  %i.fz = phi ptr [ %i.gy, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67 ], [ %.pre103, %.lr.ph94.preheader ] ; 3 uses
  %.093 = phi i8 [ %i.gz, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67 ], [ 0, %.lr.ph94.preheader ] ; 2 uses
  %i.ga = zext i8 %.093 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ga ; 2 uses
  %i.gc = load ptr, ptr %i.v, align 8
  %.not.i58 = icmp eq ptr %i.fz, %i.gc
  br i1 %.not.i58, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph94
  %i.gd = load i8, ptr %i.gb, align 1
  store i8 %i.gd, ptr %i.fz, align 1
  %i.ge = load ptr, ptr %i.p, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1 ; 2 uses
  store ptr %i.gf, ptr %i.p, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67

bb.aa:                                            ; preds = %.lr.ph94
  %i.gg = load ptr, ptr %2, align 8               ; 4 uses
  %i.gh = ptrtoint ptr %i.fz to i64
  %i.gi = ptrtoint ptr %i.gg to i64               ; 2 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 7 uses
  %i.gk = icmp eq i64 %i.gj, 9223372036854775807
  br i1 %i.gk, label %bb.ab, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #24
          to label %.noexc65 unwind label %.loopexit.split-lp

.noexc65:                                         ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59: ; preds = %bb.aa
  %.sroa.speculated.i.i.i60 = call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gl = add i64 %.sroa.speculated.i.i.i60, %i.gj ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gj
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gl, i64 9223372036854775807)
  %i.go = select i1 %i.gm, i64 9223372036854775807, i64 %i.gn ; 3 uses
  %.not.i.i.i61 = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %.not.i.i.i61)
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #25
          to label %.noexc66 unwind label %.loopexit71 ; 4 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gj ; 2 uses
  %i.gr = load i8, ptr %i.gb, align 1
  store i8 %i.gr, ptr %i.gq, align 1
  %i.gs = icmp sgt i64 %i.gj, 0
  br i1 %i.gs, label %bb.ac, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62

bb.ac:                                            ; preds = %.noexc66
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr align 1 %i.gg, i64 %i.gj, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62: ; preds = %bb.ac, %.noexc66
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 1 ; 2 uses
  %.not.i17.i.i63 = icmp eq ptr %i.gg, null
  br i1 %.not.i17.i.i63, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62
  %i.gu = load ptr, ptr %i.v, align 8
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %i.gv, %i.gi
  call void @_ZdlPvm(ptr noundef nonnull %i.gg, i64 noundef %i.gw) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64: ; preds = %bb.ad, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62
  store ptr %i.gp, ptr %2, align 8
  store ptr %i.gt, ptr %i.p, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go
  store ptr %i.gx, ptr %i.v, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67

_ZNSt6vectorIhSaIhEE9push_backERKh.exit67:        ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64, %bb.z
  %i.gy = phi ptr [ %i.gt, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64 ], [ %i.gf, %bb.z ]
  %i.gz = add nuw i8 %.093, 1                     ; 2 uses
  %6 = zext i8 %i.gz to i32
  %i.ha = icmp samesign ugt i32 %5, %6
  br i1 %i.ha, label %.lr.ph94, label %.loopexit, !llvm.loop !65

.loopexit71:                                      ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67, %_ZNSt6vectorIhSaIhEE7reserveEm.exit, %.preheader, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.hb = load ptr, ptr %3, align 8               ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.d
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.hd = load i64, ptr %i.d, align 8
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.ae:                                            ; preds = %.loopexit71, %.loopexit.split-lp, %.loopexit74, %.loopexit.split-lp75, %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.m, %bb.c ], [ %lpad.loopexit.split-lp77, %.loopexit.split-lp75 ], [ %lpad.loopexit76, %.loopexit74 ], [ %lpad.loopexit, %.loopexit71 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.hf = load ptr, ptr %3, align 8               ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.d
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.ae
  %i.hh = load i64, ptr %i.d, align 8
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn

bb.af:                                            ; preds = %bb.b
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  store ptr %1, ptr %i.a, align 8
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.b, ptr %2, align 8
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.d = getelementptr i8, ptr %i.b, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %2, i64 %i.e
  store ptr %i.c, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.g, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #22
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.o) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #22
  resume { ptr, i32 } %i.p
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11AMFImporter9ParseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8
  store i16 25202, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 18
  store i8 0, ptr %i.c, align 2
  %i.d = load ptr, ptr %1, align 8
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %i.d, ptr noundef nonnull %i.a)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.c, !inline_history !66 ; 6 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %3, align 8                ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.k = load i64, ptr %i.a, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.a, label %bb.d

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 1 dereferenceable(25) @.str.16, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(2) @.str.17)
          to label %bb.b unwind label %.thread45

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
  unreachable

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %3, align 8                ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.c
  %i.q = load i64, ptr %i.a, align 8
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit36

.thread45:                                        ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.m) #22
  br label %_ZNSt10unique_ptrIN6Assimp8IOStreamESt14default_deleteIS1_EED2Ev.exit36

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %bb.e unwind label %.thread48  ; 6 uses

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  invoke void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.t, ptr %i.w, align 8
  %i.x = invoke noundef zeroext i1 @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEE5parseEPNS_8IOStreamE(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull %i.h)
          to label %bb.g unwind label %.thread48

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.w, align 8              ; 4 uses
  br i1 %i.x, label %._crit_edge.i.i22, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN6Assimp10TXmlParserIN4pugi8xml_nodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.y) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 40) #23
  br label %bb.j
end_hunk_0

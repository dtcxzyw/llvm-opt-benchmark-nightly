Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/AMFImporter?download=true
inline.NumInlined: 911
inline.NumDeleted: 365
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK6Assimp11AMFImporter25ParseHelper_Decode_Base64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE:.noexc.i
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 9223372036854775807)
  %i.cu = select i1 %i.cs, i64 9223372036854775807, i64 %i.ct ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #25
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc57:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cp ; 2 uses
  store i8 %i.cb, ptr %i.cw, align 1
  %i.cx = icmp sgt i64 %i.cp, 0
  br i1 %i.cx, label %bb.n, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.n:                                             ; preds = %.noexc57
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr align 1 %i.cm, i64 %i.cp, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.n, %.noexc57
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  %i.cz = load ptr, ptr %i.u, align 8
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = sub i64 %i.da, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.db) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.cv, ptr %2, align 8
  store ptr %i.cy, ptr %i.o, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu ; 2 uses
  store ptr %i.dc, ptr %i.u, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit

_ZNSt6vectorIhSaIhEE9push_backERKh.exit:          ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, %bb.k
  %i.dd = phi ptr [ %i.dc, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %.pre102, %bb.k ] ; 2 uses
  %i.de = phi ptr [ %i.cy, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i ], [ %i.cl, %bb.k ] ; 2 uses
  %.not.i.1 = icmp eq ptr %i.de, %i.dd
  br i1 %.not.i.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  store i8 %i.cf, ptr %i.de, align 1
  %i.df = load ptr, ptr %i.o, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  store ptr %i.dg, ptr %i.o, align 8
  %.pre103 = load ptr, ptr %i.u, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1

bb.q:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit
  %i.dh = load ptr, ptr %2, align 8               ; 4 uses
  %i.di = ptrtoint ptr %i.dd to i64
  %i.dj = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 7 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775807
  br i1 %i.dl, label %bb.m, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.q
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.dk, i64 1)
  %i.dm = add i64 %.sroa.speculated.i.i.i.1, %i.dk ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dk
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 9223372036854775807)
  %i.dp = select i1 %i.dn, i64 9223372036854775807, i64 %i.do ; 3 uses
  %.not.i.i.i.1 = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i.i.1)
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #25
          to label %.noexc57.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc57.1:                                       ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dk ; 2 uses
  store i8 %i.cf, ptr %i.dr, align 1
  %i.ds = icmp sgt i64 %i.dk, 0
  br i1 %i.ds, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1

bb.r:                                             ; preds = %.noexc57.1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr align 1 %i.dh, i64 %i.dk, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1: ; preds = %bb.r, %.noexc57.1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 1 ; 2 uses
  %.not.i17.i.i.1 = icmp eq ptr %i.dh, null
  br i1 %.not.i17.i.i.1, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1
  %i.du = load ptr, ptr %i.u, align 8
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = sub i64 %i.dv, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dw) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.1
  store ptr %i.dq, ptr %2, align 8
  store ptr %i.dt, ptr %i.o, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dp ; 2 uses
  store ptr %i.dx, ptr %i.u, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1:        ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1, %bb.p
  %i.dy = phi ptr [ %i.dx, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1 ], [ %.pre103, %bb.p ] ; 2 uses
  %i.dz = phi ptr [ %i.dt, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.1 ], [ %i.dg, %bb.p ] ; 2 uses
  %.not.i.2 = icmp eq ptr %i.dz, %i.dy
  br i1 %.not.i.2, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1
  store i8 %i.ch, ptr %i.dz, align 1
  %i.ea = load ptr, ptr %i.o, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store ptr %i.eb, ptr %i.o, align 8
  br label %.loopexit73

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.1
  %i.ec = load ptr, ptr %2, align 8               ; 4 uses
  %i.ed = ptrtoint ptr %i.dy to i64
  %i.ee = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ef = sub i64 %i.ed, %i.ee                    ; 7 uses
  %i.eg = icmp eq i64 %i.ef, 9223372036854775807
  br i1 %i.eg, label %bb.m, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.u
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %i.eh = add i64 %.sroa.speculated.i.i.i.2, %i.ef ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.ef
  %i.ej = call i64 @llvm.umin.i64(i64 %i.eh, i64 9223372036854775807)
  %i.ek = select i1 %i.ei, i64 9223372036854775807, i64 %i.ej ; 3 uses
  %.not.i.i.i.2 = icmp ne i64 %i.ek, 0
  call void @llvm.assume(i1 %.not.i.i.i.2)
  %i.el = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ek) #25
          to label %.noexc57.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc57.2:                                       ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ef ; 2 uses
  store i8 %i.ch, ptr %i.em, align 1
  %i.en = icmp sgt i64 %i.ef, 0
  br i1 %i.en, label %bb.v, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2

bb.v:                                             ; preds = %.noexc57.2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.el, ptr align 1 %i.ec, i64 %i.ef, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2: ; preds = %bb.v, %.noexc57.2
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %.not.i17.i.i.2 = icmp eq ptr %i.ec, null
  br i1 %.not.i17.i.i.2, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2
  %i.ep = load ptr, ptr %i.u, align 8
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef %i.er) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2: ; preds = %bb.w, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.2
  store ptr %i.el, ptr %2, align 8
  store ptr %i.eo, ptr %i.o, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store ptr %i.es, ptr %i.u, align 8
  br label %.loopexit73

.loopexit73:                                      ; preds = %bb.t, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2, %bb.i, %bb.j
  %i.et = phi i8 [ %i.ar, %bb.i ], [ %i.ar, %bb.j ], [ %i.ch, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.ch, %bb.t ] ; 2 uses
  %i.eu = phi i8 [ %i.as, %bb.i ], [ %i.as, %bb.j ], [ %i.cf, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.cf, %bb.t ] ; 2 uses
  %i.ev = phi i8 [ %i.at, %bb.i ], [ %i.at, %bb.j ], [ %i.cb, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ %i.cb, %bb.t ] ; 2 uses
  %.3 = phi i8 [ %.04383, %bb.i ], [ %i.bi, %bb.j ], [ 0, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.2 ], [ 0, %bb.t ] ; 2 uses
  %.1 = add nuw i64 %.04185, 1
  %i.ew = add i64 %.04284, -1                     ; 2 uses
  %.not49 = icmp eq i64 %i.ew, 0
  br i1 %.not49, label %.critedge, label %bb.h, !llvm.loop !64

.preheader:                                       ; preds = %.lr.ph89.preheader, %.preheader72
  %i.ex = load i8, ptr %i.b, align 1
  %i.ey = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.ex, i64 noundef 0) #22
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.fb, i64 noundef 0) #22
  %i.fd = trunc i64 %i.fc to i8                   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.ff, i64 noundef 0) #22
  %i.fh = trunc i64 %i.fg to i8                   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext %i.fj, i64 noundef 0) #22
  %i.fl = trunc i64 %i.fk to i8
  %i.fm = shl i8 %i.ez, 2
  %i.fn = lshr i8 %i.fd, 4
  %i.fo = and i8 %i.fn, 3
  %i.fp = or disjoint i8 %i.fo, %i.fm
  store i8 %i.fp, ptr %i.c, align 1
  %i.fq = shl i8 %i.fd, 4
  %i.fr = lshr i8 %i.fh, 2
  %i.fs = and i8 %i.fr, 15
  %i.ft = or disjoint i8 %i.fs, %i.fq
  %i.fu = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.ft, ptr %i.fu, align 1
  %i.fv = shl i8 %i.fh, 6
  %i.fw = add i8 %i.fv, %i.fl
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.fw, ptr %i.fx, align 1
  %4 = zext i8 %.043.lcssa to i32
  %5 = add nsw i32 %4, -1
  %.not93 = icmp eq i8 %.043.lcssa, 1
  br i1 %.not93, label %.loopexit, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %.preheader
  %.pre104 = load ptr, ptr %i.o, align 8
  %.pre106 = load ptr, ptr %i.u, align 8
  br label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.preheader, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67
  %i.fy = phi ptr [ %i.gy, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67 ], [ %.pre106, %.lr.ph92.preheader ] ; 2 uses
  %i.fz = phi ptr [ %i.gz, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67 ], [ %.pre104, %.lr.ph92.preheader ] ; 2 uses
  %.091 = phi i8 [ %i.ha, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67 ], [ 0, %.lr.ph92.preheader ] ; 2 uses
  %i.ga = zext i8 %.091 to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ga ; 2 uses
  %.not.i58 = icmp eq ptr %i.fz, %i.fy
  br i1 %.not.i58, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph92
  %i.gc = load i8, ptr %i.gb, align 1
  store i8 %i.gc, ptr %i.fz, align 1
  %i.gd = load ptr, ptr %i.o, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1 ; 2 uses
  store ptr %i.ge, ptr %i.o, align 8
  %.pre105 = load ptr, ptr %i.u, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67

bb.y:                                             ; preds = %.lr.ph92
  %i.gf = load ptr, ptr %2, align 8               ; 4 uses
  %i.gg = ptrtoint ptr %i.fy to i64
  %i.gh = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.gi = sub i64 %i.gg, %i.gh                    ; 7 uses
  %i.gj = icmp eq i64 %i.gi, 9223372036854775807
  br i1 %i.gj, label %.invoke, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59

.invoke:                                          ; preds = %bb.y, %_ZNSt6vectorIhSaIhEE5clearEv.exit, %bb.m
  %i.gk = phi ptr [ @.str.56, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ @.str.57, %bb.m ], [ @.str.57, %bb.y ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.gk) #24
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59: ; preds = %bb.y
  %.sroa.speculated.i.i.i60 = call i64 @llvm.umax.i64(i64 %i.gi, i64 1)
  %i.gl = add i64 %.sroa.speculated.i.i.i60, %i.gi ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.gi
  %i.gn = call i64 @llvm.umin.i64(i64 %i.gl, i64 9223372036854775807)
  %i.go = select i1 %i.gm, i64 9223372036854775807, i64 %i.gn ; 3 uses
  %.not.i.i.i61 = icmp ne i64 %i.go, 0
  call void @llvm.assume(i1 %.not.i.i.i61)
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #25
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc66:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gi ; 2 uses
  %i.gr = load i8, ptr %i.gb, align 1
  store i8 %i.gr, ptr %i.gq, align 1
  %i.gs = icmp sgt i64 %i.gi, 0
  br i1 %i.gs, label %bb.z, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62

bb.z:                                             ; preds = %.noexc66
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gp, ptr align 1 %i.gf, i64 %i.gi, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62: ; preds = %bb.z, %.noexc66
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 1 ; 2 uses
  %.not.i17.i.i63 = icmp eq ptr %i.gf, null
  br i1 %.not.i17.i.i63, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62
  %i.gu = load ptr, ptr %i.u, align 8
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %i.gv, %i.gh
  call void @_ZdlPvm(ptr noundef nonnull %i.gf, i64 noundef %i.gw) #23
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64: ; preds = %bb.aa, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i62
  store ptr %i.gp, ptr %2, align 8
  store ptr %i.gt, ptr %i.o, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go ; 2 uses
  store ptr %i.gx, ptr %i.u, align 8
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67

_ZNSt6vectorIhSaIhEE9push_backERKh.exit67:        ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64, %bb.x
  %i.gy = phi ptr [ %i.gx, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64 ], [ %.pre105, %bb.x ]
  %i.gz = phi ptr [ %i.gt, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i64 ], [ %i.ge, %bb.x ]
  %i.ha = add nuw i8 %.091, 1                     ; 2 uses
  %6 = zext i8 %i.ha to i32
  %i.hb = icmp samesign ugt i32 %5, %6
  br i1 %i.hb, label %.lr.ph92, label %.loopexit, !llvm.loop !65

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.2, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.1, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit94 = landingpad { ptr, i32 }
          cleanup
  store i8 %i.cb, ptr %i.c, align 1
  store i8 %i.cf, ptr %i.ao, align 1
  store i8 %i.ch, ptr %i.aq, align 1
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i59, %.invoke, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, %bb.b
  %lpad.loopexit.split-lp148 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backERKh.exit67, %_ZNSt6vectorIhSaIhEE7reserveEm.exit, %.preheader, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.hc = load ptr, ptr %3, align 8               ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.d
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.he = load i64, ptr %i.d, align 8
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %bb.c
  %.pn = phi { ptr, i32 } [ %i.m, %bb.c ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit94, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.hg = load ptr, ptr %3, align 8               ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.d
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.hi = load i64, ptr %i.d, align 8
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %.pn

bb.ab:                                            ; preds = %bb.b
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
end_hunk_0

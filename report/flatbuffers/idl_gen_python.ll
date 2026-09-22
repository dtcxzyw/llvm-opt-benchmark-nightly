Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_gen_python?download=true
inline.NumInlined: 6306
inline.NumDeleted: 592
begin_hunk_0_@_ZNK11flatbuffers6python15PythonGenerator9ModuleForINS_9StructDefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !195, !nonnull !152, !align !166 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1816
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1824
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !184 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !184
  %i.be = icmp eq i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.i
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !33
  %bcmp.i = call i32 @bcmp(ptr %i.bh, ptr %i.bg, i64 %i.bb)
  %i.bi = icmp eq i32 %bcmp.i, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN11flatbuffers9StripPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc18 unwind label %bb.o   ; 6 uses

.noexc18:                                         ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !35, !alias.scope !643
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !33 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

bb.k:                                             ; preds = %.noexc18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !184 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %.noexc18
  store ptr %i.bl, ptr %0, align 8, !tbaa !33, !alias.scope !643
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !34
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !34, !alias.scope !643
  %.phi.trans.insert.i16 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.pre.i17 = load i64, ptr %.phi.trans.insert.i16, align 8, !tbaa !184
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.k
  %i.bt = phi i64 [ %i.bp, %bb.k ], [ %.pre.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !184, !alias.scope !643
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !33
  store i64 0, ptr %i.bu, align 8, !tbaa !184
  store i8 0, ptr %i.bm, align 8, !tbaa !34
  %i.bw = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.l
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !34
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.m
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !34
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.o:                                             ; preds = %bb.j
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.o
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !34
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.n ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.ci, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.ay, i64 1232
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !33, !noalias !644
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ay, i64 1240
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !184, !noalias !644 ; 3 uses
  %i.cs = load ptr, ptr %4, align 8, !tbaa !33, !noalias !644
  %i.ct = load i64, ptr %i.as, align 8, !tbaa !184, !noalias !644 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !35, !alias.scope !645
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.cv, align 8, !tbaa !184, !alias.scope !645
  store i8 0, ptr %i.cu, align 8, !tbaa !34, !alias.scope !645
  %i.cw = add i64 %i.ct, %i.cr
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cw)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !184, !alias.scope !645
  %i.cy = sub i64 4611686018427387903, %i.cx
  %i.cz = icmp ult i64 %i.cy, %i.cr
  br i1 %i.cz, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.p
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cp, i64 noundef %i.cr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !184, !alias.scope !645
  %i.dc = sub i64 4611686018427387903, %i.db
  %i.dd = icmp ult i64 %i.dc, %i.ct
  br i1 %i.dd, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.cont.i.i unwind label %bb.q

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cs, i64 noundef %i.ct)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !645 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cu
  br i1 %i.dh, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.di = load i64, ptr %i.cu, align 8, !tbaa !34, !alias.scope !645
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #25
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.dk = load ptr, ptr %0, align 8, !tbaa !33    ; 44 uses
  %i.dl = load i64, ptr %i.cv, align 8, !tbaa !184 ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  %.not6.i = icmp samesign eq i64 %i.dl, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %min.iters.check = icmp ult i64 %i.dl, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp ult i64 %i.dl, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %i.dl, 24
  %n.vec = and i64 %i.dl, -32                     ; 4 uses
  %i.do = getelementptr i8, ptr %i.dk, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue157, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue157 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.dk, i64 %index ; 3 uses
  %i.dp = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.dp, i64 1
  %i.dq = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.dq, i64 2
  %i.dr = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.dr, i64 3
  %i.ds = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.ds, i64 4
  %i.dt = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.dt, i64 5
  %i.du = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.du, i64 6
  %i.dv = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.dv, i64 7
  %i.dw = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.dw, i64 8
  %i.dx = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.dx, i64 9
  %i.dy = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.dy, i64 10
  %i.dz = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.dz, i64 11
  %i.ea = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.ea, i64 12
  %i.eb = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep76 = getelementptr i8, ptr %i.eb, i64 13
  %i.ec = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep77 = getelementptr i8, ptr %i.ec, i64 14
  %i.ed = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep78 = getelementptr i8, ptr %i.ed, i64 15
  %i.ee = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep79 = getelementptr i8, ptr %i.ee, i64 16
  %i.ef = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep80 = getelementptr i8, ptr %i.ef, i64 17
  %i.eg = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep81 = getelementptr i8, ptr %i.eg, i64 18
  %i.eh = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep82 = getelementptr i8, ptr %i.eh, i64 19
  %i.ei = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep83 = getelementptr i8, ptr %i.ei, i64 20
  %i.ej = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep84 = getelementptr i8, ptr %i.ej, i64 21
  %i.ek = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep85 = getelementptr i8, ptr %i.ek, i64 22
  %i.el = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep86 = getelementptr i8, ptr %i.el, i64 23
  %i.em = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep87 = getelementptr i8, ptr %i.em, i64 24
  %i.en = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep88 = getelementptr i8, ptr %i.en, i64 25
  %i.eo = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep89 = getelementptr i8, ptr %i.eo, i64 26
  %i.ep = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep90 = getelementptr i8, ptr %i.ep, i64 27
  %i.eq = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep91 = getelementptr i8, ptr %i.eq, i64 28
  %i.er = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep92 = getelementptr i8, ptr %i.er, i64 29
  %i.es = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep93 = getelementptr i8, ptr %i.es, i64 30
  %i.et = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep94 = getelementptr i8, ptr %i.et, i64 31
  %i.eu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !34
  %wide.load95 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !34
  %i.ev = icmp eq <16 x i8> %wide.load, splat (i8 47) ; 16 uses
  %i.ew = icmp eq <16 x i8> %wide.load95, splat (i8 47) ; 16 uses
  %i.ex = extractelement <16 x i1> %i.ev, i64 0
  br i1 %i.ex, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 46, ptr %next.gep, align 1, !tbaa !34
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ey = extractelement <16 x i1> %i.ev, i64 1
  br i1 %i.ey, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue
  store i8 46, ptr %next.gep64, align 1, !tbaa !34
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue
  %i.ez = extractelement <16 x i1> %i.ev, i64 2
  br i1 %i.ez, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 46, ptr %next.gep65, align 1, !tbaa !34
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.fa = extractelement <16 x i1> %i.ev, i64 3
  br i1 %i.fa, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 46, ptr %next.gep66, align 1, !tbaa !34
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.fb = extractelement <16 x i1> %i.ev, i64 4
  br i1 %i.fb, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 46, ptr %next.gep67, align 1, !tbaa !34
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.fc = extractelement <16 x i1> %i.ev, i64 5
  br i1 %i.fc, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 46, ptr %next.gep68, align 1, !tbaa !34
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.fd = extractelement <16 x i1> %i.ev, i64 6
  br i1 %i.fd, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i8 46, ptr %next.gep69, align 1, !tbaa !34
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.fe = extractelement <16 x i1> %i.ev, i64 7
  br i1 %i.fe, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i8 46, ptr %next.gep70, align 1, !tbaa !34
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.ff = extractelement <16 x i1> %i.ev, i64 8
  br i1 %i.ff, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  store i8 46, ptr %next.gep71, align 1, !tbaa !34
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.fg = extractelement <16 x i1> %i.ev, i64 9
  br i1 %i.fg, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  store i8 46, ptr %next.gep72, align 1, !tbaa !34
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.fh = extractelement <16 x i1> %i.ev, i64 10
  br i1 %i.fh, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  store i8 46, ptr %next.gep73, align 1, !tbaa !34
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.fi = extractelement <16 x i1> %i.ev, i64 11
  br i1 %i.fi, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  store i8 46, ptr %next.gep74, align 1, !tbaa !34
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.fj = extractelement <16 x i1> %i.ev, i64 12
  br i1 %i.fj, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  store i8 46, ptr %next.gep75, align 1, !tbaa !34
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.fk = extractelement <16 x i1> %i.ev, i64 13
  br i1 %i.fk, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  store i8 46, ptr %next.gep76, align 1, !tbaa !34
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.fl = extractelement <16 x i1> %i.ev, i64 14
  br i1 %i.fl, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  store i8 46, ptr %next.gep77, align 1, !tbaa !34
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.fm = extractelement <16 x i1> %i.ev, i64 15
  br i1 %i.fm, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 46, ptr %next.gep78, align 1, !tbaa !34
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.fn = extractelement <16 x i1> %i.ew, i64 0
  br i1 %i.fn, label %pred.store.if126, label %pred.store.continue127

end_hunk_0
begin_hunk_1_@_ZNK11flatbuffers6python15PythonGenerator9ModuleForINS_7EnumDefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !195, !nonnull !152, !align !166 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1816
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1824
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !184 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !184
  %i.be = icmp eq i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bf = icmp eq i64 %i.bb, 0
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.i
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !33
  %bcmp.i = call i32 @bcmp(ptr %i.bh, ptr %i.bg, i64 %i.bb)
  %i.bi = icmp eq i32 %bcmp.i, 0
  br i1 %i.bi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN11flatbuffers9StripPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 1)
          to label %.noexc18 unwind label %bb.o   ; 6 uses

.noexc18:                                         ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !35, !alias.scope !661
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !33 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

bb.k:                                             ; preds = %.noexc18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !184 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %.noexc18
  store ptr %i.bl, ptr %0, align 8, !tbaa !33, !alias.scope !661
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !34
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !34, !alias.scope !661
  %.phi.trans.insert.i16 = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.pre.i17 = load i64, ptr %.phi.trans.insert.i16, align 8, !tbaa !184
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.k
  %i.bt = phi i64 [ %i.bp, %bb.k ], [ %.pre.i17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !184, !alias.scope !661
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !33
  store i64 0, ptr %i.bu, align 8, !tbaa !184
  store i8 0, ptr %i.bm, align 8, !tbaa !34
  %i.bw = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.l
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !34
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.f
  %i.cb = landingpad { ptr, i32 }
          cleanup
  %i.cc = load ptr, ptr %5, align 8, !tbaa !33    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.m
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !34
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.o:                                             ; preds = %bb.j
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cj = load ptr, ptr %6, align 8, !tbaa !33    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.o
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !34
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ch, %bb.n ], [ %i.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.ci, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %.body

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.ay, i64 1232
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !33, !noalias !662
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ay, i64 1240
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !184, !noalias !662 ; 3 uses
  %i.cs = load ptr, ptr %4, align 8, !tbaa !33, !noalias !662
  %i.ct = load i64, ptr %i.as, align 8, !tbaa !184, !noalias !662 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !35, !alias.scope !663
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.cv, align 8, !tbaa !184, !alias.scope !663
  store i8 0, ptr %i.cu, align 8, !tbaa !34, !alias.scope !663
  %i.cw = add i64 %i.ct, %i.cr
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cw)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !184, !alias.scope !663
  %i.cy = sub i64 4611686018427387903, %i.cx
  %i.cz = icmp ult i64 %i.cy, %i.cr
  br i1 %i.cz, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.p
  %i.da = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cp, i64 noundef %i.cr)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.q ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !184, !alias.scope !663
  %i.dc = sub i64 4611686018427387903, %i.db
  %i.dd = icmp ult i64 %i.dc, %i.ct
  br i1 %i.dd, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.cont.i.i unwind label %bb.q

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cs, i64 noundef %i.ct)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread35
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !33, !alias.scope !663 ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cu
  br i1 %i.dh, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.di = load i64, ptr %i.cu, align 8, !tbaa !34, !alias.scope !663
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #25
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.dk = load ptr, ptr %0, align 8, !tbaa !33    ; 44 uses
  %i.dl = load i64, ptr %i.cv, align 8, !tbaa !184 ; 9 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dl
  %.not6.i = icmp samesign eq i64 %i.dl, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %min.iters.check = icmp ult i64 %i.dl, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check63 = icmp ult i64 %i.dl, 32
  br i1 %min.iters.check63, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %i.dl, 24
  %n.vec = and i64 %i.dl, -32                     ; 4 uses
  %i.do = getelementptr i8, ptr %i.dk, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue157, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue157 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.dk, i64 %index ; 3 uses
  %i.dp = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.dp, i64 1
  %i.dq = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.dq, i64 2
  %i.dr = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.dr, i64 3
  %i.ds = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.ds, i64 4
  %i.dt = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.dt, i64 5
  %i.du = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.du, i64 6
  %i.dv = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.dv, i64 7
  %i.dw = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.dw, i64 8
  %i.dx = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.dx, i64 9
  %i.dy = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.dy, i64 10
  %i.dz = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.dz, i64 11
  %i.ea = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.ea, i64 12
  %i.eb = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep76 = getelementptr i8, ptr %i.eb, i64 13
  %i.ec = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep77 = getelementptr i8, ptr %i.ec, i64 14
  %i.ed = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep78 = getelementptr i8, ptr %i.ed, i64 15
  %i.ee = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep79 = getelementptr i8, ptr %i.ee, i64 16
  %i.ef = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep80 = getelementptr i8, ptr %i.ef, i64 17
  %i.eg = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep81 = getelementptr i8, ptr %i.eg, i64 18
  %i.eh = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep82 = getelementptr i8, ptr %i.eh, i64 19
  %i.ei = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep83 = getelementptr i8, ptr %i.ei, i64 20
  %i.ej = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep84 = getelementptr i8, ptr %i.ej, i64 21
  %i.ek = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep85 = getelementptr i8, ptr %i.ek, i64 22
  %i.el = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep86 = getelementptr i8, ptr %i.el, i64 23
  %i.em = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep87 = getelementptr i8, ptr %i.em, i64 24
  %i.en = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep88 = getelementptr i8, ptr %i.en, i64 25
  %i.eo = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep89 = getelementptr i8, ptr %i.eo, i64 26
  %i.ep = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep90 = getelementptr i8, ptr %i.ep, i64 27
  %i.eq = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep91 = getelementptr i8, ptr %i.eq, i64 28
  %i.er = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep92 = getelementptr i8, ptr %i.er, i64 29
  %i.es = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep93 = getelementptr i8, ptr %i.es, i64 30
  %i.et = getelementptr i8, ptr %i.dk, i64 %index
  %next.gep94 = getelementptr i8, ptr %i.et, i64 31
  %i.eu = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !34
  %wide.load95 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !34
  %i.ev = icmp eq <16 x i8> %wide.load, splat (i8 47) ; 16 uses
  %i.ew = icmp eq <16 x i8> %wide.load95, splat (i8 47) ; 16 uses
  %i.ex = extractelement <16 x i1> %i.ev, i64 0
  br i1 %i.ex, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 46, ptr %next.gep, align 1, !tbaa !34
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ey = extractelement <16 x i1> %i.ev, i64 1
  br i1 %i.ey, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue
  store i8 46, ptr %next.gep64, align 1, !tbaa !34
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue
  %i.ez = extractelement <16 x i1> %i.ev, i64 2
  br i1 %i.ez, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  store i8 46, ptr %next.gep65, align 1, !tbaa !34
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.fa = extractelement <16 x i1> %i.ev, i64 3
  br i1 %i.fa, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  store i8 46, ptr %next.gep66, align 1, !tbaa !34
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.fb = extractelement <16 x i1> %i.ev, i64 4
  br i1 %i.fb, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  store i8 46, ptr %next.gep67, align 1, !tbaa !34
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.fc = extractelement <16 x i1> %i.ev, i64 5
  br i1 %i.fc, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  store i8 46, ptr %next.gep68, align 1, !tbaa !34
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.fd = extractelement <16 x i1> %i.ev, i64 6
  br i1 %i.fd, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  store i8 46, ptr %next.gep69, align 1, !tbaa !34
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.fe = extractelement <16 x i1> %i.ev, i64 7
  br i1 %i.fe, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  store i8 46, ptr %next.gep70, align 1, !tbaa !34
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.ff = extractelement <16 x i1> %i.ev, i64 8
  br i1 %i.ff, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  store i8 46, ptr %next.gep71, align 1, !tbaa !34
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.fg = extractelement <16 x i1> %i.ev, i64 9
  br i1 %i.fg, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  store i8 46, ptr %next.gep72, align 1, !tbaa !34
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.fh = extractelement <16 x i1> %i.ev, i64 10
  br i1 %i.fh, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  store i8 46, ptr %next.gep73, align 1, !tbaa !34
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.fi = extractelement <16 x i1> %i.ev, i64 11
  br i1 %i.fi, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  store i8 46, ptr %next.gep74, align 1, !tbaa !34
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.fj = extractelement <16 x i1> %i.ev, i64 12
  br i1 %i.fj, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  store i8 46, ptr %next.gep75, align 1, !tbaa !34
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %i.fk = extractelement <16 x i1> %i.ev, i64 13
  br i1 %i.fk, label %pred.store.if120, label %pred.store.continue121

pred.store.if120:                                 ; preds = %pred.store.continue119
  store i8 46, ptr %next.gep76, align 1, !tbaa !34
  br label %pred.store.continue121

pred.store.continue121:                           ; preds = %pred.store.if120, %pred.store.continue119
  %i.fl = extractelement <16 x i1> %i.ev, i64 14
  br i1 %i.fl, label %pred.store.if122, label %pred.store.continue123

pred.store.if122:                                 ; preds = %pred.store.continue121
  store i8 46, ptr %next.gep77, align 1, !tbaa !34
  br label %pred.store.continue123

pred.store.continue123:                           ; preds = %pred.store.if122, %pred.store.continue121
  %i.fm = extractelement <16 x i1> %i.ev, i64 15
  br i1 %i.fm, label %pred.store.if124, label %pred.store.continue125

pred.store.if124:                                 ; preds = %pred.store.continue123
  store i8 46, ptr %next.gep78, align 1, !tbaa !34
  br label %pred.store.continue125

pred.store.continue125:                           ; preds = %pred.store.if124, %pred.store.continue123
  %i.fn = extractelement <16 x i1> %i.ew, i64 0
  br i1 %i.fn, label %pred.store.if126, label %pred.store.continue127

end_hunk_1
begin_hunk_2_@_ZNK11flatbuffers6python12_GLOBAL__N_119PythonStubGenerator9UnionTypeB5cxx11ERKNS_7EnumDefEPNS0_7ImportsE:bb.a
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i: ; preds = %bb.aa
  %i.eu = load i64, ptr %i.i, align 8, !tbaa !34, !noalias !4031
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #25, !noalias !4031
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !4031
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i
  %.pn25.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn25.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84.i ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.i ]
  resume { ptr, i32 } %.pn25.pn.pn.pn.pn.i

_ZNK11flatbuffers6python12_GLOBAL__N_119PythonStubGenerator9UnionTypeIZNKS2_9UnionTypeB5cxx11ERKNS_7EnumDefEPNS0_7ImportsEEUlRKNS_9StructDefEE_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S8_T_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !4031
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK11flatbuffers6python12_GLOBAL__N_119PythonStubGenerator13ModuleForFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(414) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !152, !align !166 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1816
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1824
  %i.d = load i64, ptr %i.c, align 8, !tbaa !184  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !184
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %2, align 8, !tbaa !33
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !33
  %bcmp.i = tail call i32 @bcmp(ptr %i.j, ptr %i.i, i64 %i.d)
  %i.k = icmp eq i32 %bcmp.i, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !35
  store i8 46, ptr %i.l, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.m, align 8, !tbaa !184
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 0, ptr %i.n, align 1, !tbaa !34
  br label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @_ZN11flatbuffers14StripExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !4047)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1240
  %i.q = load i64, ptr %i.p, align 8, !tbaa !184, !noalias !4047
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !33, !noalias !4047
  %i.s = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.r, i64 noundef %i.q)
          to label %.noexc11 unwind label %bb.j   ; 6 uses

.noexc11:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread28
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !35, !alias.scope !4047
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !33   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %.noexc11
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !184  ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc11
  store ptr %i.u, ptr %3, align 8, !tbaa !33, !alias.scope !4047
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !34
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !34, !alias.scope !4047
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !184
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ac = phi i64 [ %i.y, %bb.c ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !184, !alias.scope !4047
  store ptr %i.v, ptr %i.s, align 8, !tbaa !33
  store i64 0, ptr %i.ad, align 8, !tbaa !184
  store i8 0, ptr %i.v, align 8, !tbaa !34
  %i.af = load ptr, ptr %1, align 8, !tbaa !165, !nonnull !152, !align !166 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4048)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1520
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !184, !noalias !4048 ; 2 uses
  %i.ai = sub i64 4611686018427387903, %i.ac
  %i.aj = icmp ult i64 %i.ai, %i.ah
  br i1 %i.aj, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %.noexc15 unwind label %bb.k

.noexc15:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 1512
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33, !noalias !4048
  %i.am = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.al, i64 noundef %i.ah)
          to label %.noexc16 unwind label %bb.k   ; 6 uses

.noexc16:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.an, ptr %0, align 8, !tbaa !35, !alias.scope !4048
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !33 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 5 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

bb.f:                                             ; preds = %.noexc16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !184 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  %i.au = add nuw nsw i64 %i.as, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.au, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %.noexc16
  store ptr %i.ao, ptr %0, align 8, !tbaa !33, !alias.scope !4048
  %i.av = load i64, ptr %i.ap, align 8, !tbaa !34
  store i64 %i.av, ptr %i.an, align 8, !tbaa !34, !alias.scope !4048
  %.phi.trans.insert.i13 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.pre.i14 = load i64, ptr %.phi.trans.insert.i13, align 8, !tbaa !184
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.f
  %i.aw = phi i64 [ %i.as, %bb.f ], [ %.pre.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !184, !alias.scope !4048
  store ptr %i.ap, ptr %i.am, align 8, !tbaa !33
  store i64 0, ptr %i.ax, align 8, !tbaa !184
  store i8 0, ptr %i.ap, align 8, !tbaa !34
  %i.az = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.t
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %bb.g
  %i.bb = load i64, ptr %i.t, align 8, !tbaa !34
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  %i.bd = load ptr, ptr %4, align 8, !tbaa !33    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !34
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bi = load ptr, ptr %0, align 8, !tbaa !33    ; 44 uses
  %i.bj = load i64, ptr %i.ay, align 8, !tbaa !184 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %.not6.i = icmp samesign eq i64 %i.bj, 0
  br i1 %.not6.i, label %_ZSt7replaceIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcEvT_SA_RKT0_SD_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %min.iters.check = icmp ult i64 %i.bj, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i64 %i.bj, 32
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %i.bj, 24
  %n.vec = and i64 %i.bj, -32                     ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bi, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue138, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue138 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %index ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep45 = getelementptr i8, ptr %i.bn, i64 1
  %i.bo = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep46 = getelementptr i8, ptr %i.bo, i64 2
  %i.bp = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep47 = getelementptr i8, ptr %i.bp, i64 3
  %i.bq = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep48 = getelementptr i8, ptr %i.bq, i64 4
  %i.br = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep49 = getelementptr i8, ptr %i.br, i64 5
  %i.bs = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep50 = getelementptr i8, ptr %i.bs, i64 6
  %i.bt = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep51 = getelementptr i8, ptr %i.bt, i64 7
  %i.bu = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep52 = getelementptr i8, ptr %i.bu, i64 8
  %i.bv = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep53 = getelementptr i8, ptr %i.bv, i64 9
  %i.bw = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep54 = getelementptr i8, ptr %i.bw, i64 10
  %i.bx = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep55 = getelementptr i8, ptr %i.bx, i64 11
  %i.by = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep56 = getelementptr i8, ptr %i.by, i64 12
  %i.bz = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep57 = getelementptr i8, ptr %i.bz, i64 13
  %i.ca = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep58 = getelementptr i8, ptr %i.ca, i64 14
  %i.cb = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep59 = getelementptr i8, ptr %i.cb, i64 15
  %i.cc = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep60 = getelementptr i8, ptr %i.cc, i64 16
  %i.cd = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep61 = getelementptr i8, ptr %i.cd, i64 17
  %i.ce = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep62 = getelementptr i8, ptr %i.ce, i64 18
  %i.cf = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep63 = getelementptr i8, ptr %i.cf, i64 19
  %i.cg = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep64 = getelementptr i8, ptr %i.cg, i64 20
  %i.ch = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep65 = getelementptr i8, ptr %i.ch, i64 21
  %i.ci = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep66 = getelementptr i8, ptr %i.ci, i64 22
  %i.cj = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep67 = getelementptr i8, ptr %i.cj, i64 23
  %i.ck = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep68 = getelementptr i8, ptr %i.ck, i64 24
  %i.cl = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep69 = getelementptr i8, ptr %i.cl, i64 25
  %i.cm = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep70 = getelementptr i8, ptr %i.cm, i64 26
  %i.cn = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep71 = getelementptr i8, ptr %i.cn, i64 27
  %i.co = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep72 = getelementptr i8, ptr %i.co, i64 28
  %i.cp = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep73 = getelementptr i8, ptr %i.cp, i64 29
  %i.cq = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.cq, i64 30
  %i.cr = getelementptr i8, ptr %i.bi, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.cr, i64 31
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !34
  %wide.load76 = load <16 x i8>, ptr %i.cs, align 1, !tbaa !34
  %i.ct = icmp eq <16 x i8> %wide.load, splat (i8 47) ; 16 uses
  %i.cu = icmp eq <16 x i8> %wide.load76, splat (i8 47) ; 16 uses
  %i.cv = extractelement <16 x i1> %i.ct, i64 0
  br i1 %i.cv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 46, ptr %next.gep, align 1, !tbaa !34
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cw = extractelement <16 x i1> %i.ct, i64 1
  br i1 %i.cw, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue
  store i8 46, ptr %next.gep45, align 1, !tbaa !34
  br label %pred.store.continue78

pred.store.continue78:                            ; preds = %pred.store.if77, %pred.store.continue
  %i.cx = extractelement <16 x i1> %i.ct, i64 2
  br i1 %i.cx, label %pred.store.if79, label %pred.store.continue80

pred.store.if79:                                  ; preds = %pred.store.continue78
  store i8 46, ptr %next.gep46, align 1, !tbaa !34
  br label %pred.store.continue80

pred.store.continue80:                            ; preds = %pred.store.if79, %pred.store.continue78
  %i.cy = extractelement <16 x i1> %i.ct, i64 3
  br i1 %i.cy, label %pred.store.if81, label %pred.store.continue82

pred.store.if81:                                  ; preds = %pred.store.continue80
  store i8 46, ptr %next.gep47, align 1, !tbaa !34
  br label %pred.store.continue82

pred.store.continue82:                            ; preds = %pred.store.if81, %pred.store.continue80
  %i.cz = extractelement <16 x i1> %i.ct, i64 4
  br i1 %i.cz, label %pred.store.if83, label %pred.store.continue84

pred.store.if83:                                  ; preds = %pred.store.continue82
  store i8 46, ptr %next.gep48, align 1, !tbaa !34
  br label %pred.store.continue84

pred.store.continue84:                            ; preds = %pred.store.if83, %pred.store.continue82
  %i.da = extractelement <16 x i1> %i.ct, i64 5
  br i1 %i.da, label %pred.store.if85, label %pred.store.continue86

pred.store.if85:                                  ; preds = %pred.store.continue84
  store i8 46, ptr %next.gep49, align 1, !tbaa !34
  br label %pred.store.continue86

pred.store.continue86:                            ; preds = %pred.store.if85, %pred.store.continue84
  %i.db = extractelement <16 x i1> %i.ct, i64 6
  br i1 %i.db, label %pred.store.if87, label %pred.store.continue88

pred.store.if87:                                  ; preds = %pred.store.continue86
  store i8 46, ptr %next.gep50, align 1, !tbaa !34
  br label %pred.store.continue88

pred.store.continue88:                            ; preds = %pred.store.if87, %pred.store.continue86
  %i.dc = extractelement <16 x i1> %i.ct, i64 7
  br i1 %i.dc, label %pred.store.if89, label %pred.store.continue90

pred.store.if89:                                  ; preds = %pred.store.continue88
  store i8 46, ptr %next.gep51, align 1, !tbaa !34
  br label %pred.store.continue90

pred.store.continue90:                            ; preds = %pred.store.if89, %pred.store.continue88
  %i.dd = extractelement <16 x i1> %i.ct, i64 8
  br i1 %i.dd, label %pred.store.if91, label %pred.store.continue92

pred.store.if91:                                  ; preds = %pred.store.continue90
  store i8 46, ptr %next.gep52, align 1, !tbaa !34
  br label %pred.store.continue92

pred.store.continue92:                            ; preds = %pred.store.if91, %pred.store.continue90
  %i.de = extractelement <16 x i1> %i.ct, i64 9
  br i1 %i.de, label %pred.store.if93, label %pred.store.continue94

pred.store.if93:                                  ; preds = %pred.store.continue92
  store i8 46, ptr %next.gep53, align 1, !tbaa !34
  br label %pred.store.continue94

pred.store.continue94:                            ; preds = %pred.store.if93, %pred.store.continue92
  %i.df = extractelement <16 x i1> %i.ct, i64 10
  br i1 %i.df, label %pred.store.if95, label %pred.store.continue96

pred.store.if95:                                  ; preds = %pred.store.continue94
  store i8 46, ptr %next.gep54, align 1, !tbaa !34
  br label %pred.store.continue96

pred.store.continue96:                            ; preds = %pred.store.if95, %pred.store.continue94
  %i.dg = extractelement <16 x i1> %i.ct, i64 11
  br i1 %i.dg, label %pred.store.if97, label %pred.store.continue98

pred.store.if97:                                  ; preds = %pred.store.continue96
  store i8 46, ptr %next.gep55, align 1, !tbaa !34
  br label %pred.store.continue98

pred.store.continue98:                            ; preds = %pred.store.if97, %pred.store.continue96
  %i.dh = extractelement <16 x i1> %i.ct, i64 12
  br i1 %i.dh, label %pred.store.if99, label %pred.store.continue100

pred.store.if99:                                  ; preds = %pred.store.continue98
  store i8 46, ptr %next.gep56, align 1, !tbaa !34
  br label %pred.store.continue100

pred.store.continue100:                           ; preds = %pred.store.if99, %pred.store.continue98
  %i.di = extractelement <16 x i1> %i.ct, i64 13
  br i1 %i.di, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue100
  store i8 46, ptr %next.gep57, align 1, !tbaa !34
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue100
  %i.dj = extractelement <16 x i1> %i.ct, i64 14
  br i1 %i.dj, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  store i8 46, ptr %next.gep58, align 1, !tbaa !34
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %i.dk = extractelement <16 x i1> %i.ct, i64 15
  br i1 %i.dk, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  store i8 46, ptr %next.gep59, align 1, !tbaa !34
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %i.dl = extractelement <16 x i1> %i.cu, i64 0
  br i1 %i.dl, label %pred.store.if107, label %pred.store.continue108

end_hunk_2

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvarvalue?download=true
inline.NumInlined: 1454
inline.NumDeleted: 447
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN11colvarvalue17apply_constraintsEv:bb.a
  %i.bs = load ptr, ptr %i.am, align 8, !tbaa !40
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.k, %bb.j
  %i.bw = load ptr, ptr %i.an, align 8, !tbaa !39 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.bx = load ptr, ptr %i.ao, align 8, !tbaa !40
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.l, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.cb = load ptr, ptr %i.ap, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.cc = load ptr, ptr %i.aq, align 8, !tbaa !42
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.cb to i64
  %i.cf = sub i64 %i.cd, %i.ce
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cf) #22
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.cg = load ptr, ptr %i.ar, align 8, !tbaa !33 ; 5 uses
  %i.ch = load ptr, ptr %i.as, align 8, !tbaa !32
  %.not.i.i.i4.i = icmp eq ptr %i.ch, %i.cg
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  store ptr %i.cg, ptr %i.as, align 8, !tbaa !32
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i, label %_ZN11colvarvalueD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i
  %i.ci = load ptr, ptr %i.at, align 8, !tbaa !34
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = ptrtoint ptr %i.cg to i64
  %i.cl = sub i64 %i.cj, %i.ck
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cl) #22
  br label %_ZN11colvarvalueD2Ev.exit

_ZN11colvarvalueD2Ev.exit:                        ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !46
  %.pre26 = load ptr, ptr %i.ac, align 8, !tbaa !41
  br label %bb.o

bb.o:                                             ; preds = %bb.e, %_ZN11colvarvalueD2Ev.exit
  %i.cm = phi ptr [ %i.au, %bb.e ], [ %.pre26, %_ZN11colvarvalueD2Ev.exit ] ; 2 uses
  %i.cn = phi ptr [ %i.av, %bb.e ], [ %.pre, %_ZN11colvarvalueD2Ev.exit ] ; 2 uses
  %i.co = add nuw i64 %.01124, 1                  ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 2
  %i.ct = icmp ult i64 %i.co, %i.cs
  br i1 %i.ct, label %bb.e, label %.loopexit, !llvm.loop !126

bb.p:                                             ; preds = %bb.f
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %2, align 8, !tbaa !33    ; 5 uses
  %i.cw = load ptr, ptr %i.aj, align 8, !tbaa !32
  %.not.i.i.i14 = icmp eq ptr %i.cw, %i.cv
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i16, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i15

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i15:    ; preds = %bb.p
  store ptr %i.cv, ptr %i.aj, align 8, !tbaa !32
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i16

_ZNSt6vectorIdSaIdEE5clearEv.exit.i16:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i15, %bb.p
  %.not.i.i.i.i17 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i17, label %_ZN12colvarmodule8vector1dIdED2Ev.exit18, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i16
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !34
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = ptrtoint ptr %i.cv to i64
  %i.da = sub i64 %i.cy, %i.cz
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.da) #22
  br label %_ZN12colvarmodule8vector1dIdED2Ev.exit18

_ZN12colvarmodule8vector1dIdED2Ev.exit18:         ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i16, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.s

bb.r:                                             ; preds = %bb.i, %_ZN12colvarmodule8vector1dIdED2Ev.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11colvarvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %1) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN12colvarmodule8vector1dIdED2Ev.exit18
  %.pn = phi { ptr, i32 } [ %i.db, %bb.r ], [ %i.cu, %_ZN12colvarmodule8vector1dIdED2Ev.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %.pn

.loopexit:                                        ; preds = %bb.o, %bb.a, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK12colvarmodule8vector1dIdE5sliceEmm(ptr dead_on_unwind noalias writable sret(%"class.colvarmodule::vector1d") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = icmp ult i64 %3, %2
  br i1 %i.c, label %.noexc.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = load ptr, ptr %1, align 8, !tbaa !33
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %.not = icmp ult i64 %3, %i.j
  br i1 %.not, label %bb.f, label %.noexc.i

.noexc.i:                                         ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 60, ptr %i.b, align 8, !tbaa !59
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %4, align 8, !tbaa !55
  %i.m = load i64, ptr %i.b, align 8, !tbaa !59   ; 3 uses
  store i64 %i.m, ptr %i.k, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.l, ptr noundef nonnull align 1 dereferenceable(60) @.str.24, i64 60, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  store i8 0, ptr %i.o, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.p = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef -1)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %.noexc
  %i.q = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.k
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.k, align 8, !tbaa !58
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.e:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.k
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  %i.y = load i64, ptr %i.k, align 8, !tbaa !58
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

common.resume:                                    ; preds = %bb.h, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ], [ %i.ah, %bb.i ], [ %i.ah, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.d
  %.pn = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.v, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.aa = sub i64 %3, %2                          ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i = icmp eq i64 %3, %2                    ; 2 uses
  br i1 %.not.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aa)
          to label %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge.i unwind label %bb.h

._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge.i:  ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.ab, align 8, !tbaa !32
  %.pre4.i = load ptr, ptr %0, align 8, !tbaa !33
  %i.ac = ptrtoint ptr %.pre.i to i64
  %i.ad = ptrtoint ptr %.pre4.i to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i

_ZNSt6vectorIdSaIdEE6resizeEm.exit.i:             ; preds = %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge.i, %bb.f
  %i.ag = phi i64 [ %i.af, %._ZNSt6vectorIdSaIdEE6resizeEm.exit_crit_edge.i ], [ 0, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !35
  invoke void @_ZNSt6vectorIdSaIdEE14_M_fill_assignEmRKd(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ag, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN12colvarmodule8vector1dIdEC2Em.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !33    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #22
  br label %common.resume

_ZN12colvarmodule8vector1dIdEC2Em.exit:           ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN12colvarmodule8vector1dIdEC2Em.exit
  %i.ao = load ptr, ptr %1, align 8, !tbaa !33    ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.ao, i64 %2 ; 6 uses
  %i.aq = load ptr, ptr %0, align 8, !tbaa !33    ; 7 uses
  %min.iters.check = icmp ult i64 %i.aa, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %i.as = ptrtoaddr ptr %i.ao to i64
  %i.at = shl i64 %2, 3
  %i.au = add i64 %i.at, %i.as
  %i.av = sub i64 %i.au, %i.ar
  %diff.check = icmp ugt i64 %i.av, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = getelementptr [8 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !35
  %wide.load29 = load <2 x double>, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x double> %wide.load, ptr %i.ay, align 8, !tbaa !35
  store <2 x double> %wide.load29, ptr %i.az, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.022.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.022.prol = phi i64 [ %i.be, %scalar.ph.prol ], [ %.022.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bb = getelementptr [8 x i8], ptr %i.ap, i64 %.022.prol
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.022.prol
  store double %i.bc, ptr %i.bd, align 8, !tbaa !35
  %i.be = add nuw i64 %.022.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !128

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.022.unr = phi i64 [ %.022.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %i.bf = sub i64 %.022.ph, %3
  %i.bg = add i64 %i.bf, %2
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.022 = phi i64 [ %i.bx, %scalar.ph ], [ %.022.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr [8 x i8], ptr %i.ap, i64 %.022
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.022
  store double %i.bj, ptr %i.bk, align 8, !tbaa !35
  %i.bl = add nuw i64 %.022, 1                    ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.ap, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !35
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bl
  store double %i.bn, ptr %i.bo, align 8, !tbaa !35
  %i.bp = add nuw i64 %.022, 2                    ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.ap, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bp
  store double %i.br, ptr %i.bs, align 8, !tbaa !35
  %i.bt = add nuw i64 %.022, 3                    ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %i.ap, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !35
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bt
  store double %i.bv, ptr %i.bw, align 8, !tbaa !35
  %i.bx = add nuw i64 %.022, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bx, %i.aa
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !129

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN12colvarmodule8vector1dIdEC2Em.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11colvarvalue8set_elemEiRKS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(168) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %.noexc.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %1 to i64                       ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = tail call noundef i32 @_ZN11colvarvalue18check_types_assignERKNS_4TypeES2_(ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.f
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.f
  %i.p = load i32, ptr %i.o, align 4, !tbaa !50
  %i.q = add nsw i32 %i.p, %i.l
  tail call void @_ZN11colvarvalue8set_elemEiiRKS_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %i.l, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(168) %2)
  br label %bb.e

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 100, ptr %i.a, align 8, !tbaa !59
  %i.s = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !55
  %i.t = load i64, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  store i64 %i.t, ptr %i.r, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.s, ptr noundef nonnull align 1 dereferenceable(100) @.str.30, i64 100, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  store i8 0, ptr %i.v, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.w = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef -1)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %.noexc.i
  %i.x = load ptr, ptr %3, align 8, !tbaa !55     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.r
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.z = load i64, ptr %i.r, align 8, !tbaa !58
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.e

bb.d:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %3, align 8, !tbaa !55    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.r
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.d
  %i.ae = load i64, ptr %i.r, align 8, !tbaa !58
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.ab

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN11colvarvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2

_ZNSt6vectorIiSaIiEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #22
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %.not.i.i.i4 = icmp eq ptr %i.y, %i.w
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit
  store ptr %i.w, ptr %i.x, align 8, !tbaa !32
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN12colvarmodule8vector1dIdED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
end_hunk_0
begin_hunk_1_@_ZN11colvarvalue8add_elemERKS_:bb.a
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = ashr exact i64 %i.dh, 3                 ; 3 uses
  %i.dj = icmp ugt i64 %i.dc, %i.di
  br i1 %i.dj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit22
  %i.dk = sub nuw nsw i64 %i.dc, %i.di
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.dk)
  br label %_ZN12colvarmodule8vector1dIdE6resizeEm.exit

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit22
  %i.dl = icmp ult i64 %i.dc, %i.di
  br i1 %i.dl, label %bb.v, label %_ZN12colvarmodule8vector1dIdE6resizeEm.exit

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.dd, %i.dm
  br i1 %.not.i.i.i23, label %_ZN12colvarmodule8vector1dIdE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.v
  store ptr %i.dm, ptr %i.s, align 8, !tbaa !32
  br label %_ZN12colvarmodule8vector1dIdE6resizeEm.exit

_ZN12colvarmodule8vector1dIdE6resizeEm.exit:      ; preds = %bb.t, %bb.u, %bb.v, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i
  tail call void @_ZN11colvarvalue8set_elemEiRKS_(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(168) %1)
  br label %bb.w

bb.w:                                             ; preds = %_ZN12colvarmodule8vector1dIdE6resizeEm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11colvarvalue8get_elemEiiNS_4TypeE(ptr dead_on_unwind noalias writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.colvarmodule::vector1d", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !33
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %.noexc.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.g = sext i32 %2 to i64
  %i.h = sext i32 %3 to i64
  call void @_ZNK12colvarmodule8vector1dIdE5sliceEmm(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::vector1d") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.g, i64 noundef %i.h)
  invoke void @_ZN11colvarvalueC1ERKN12colvarmodule8vector1dIdEENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %5, align 8, !tbaa !33     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.c
  store ptr %i.i, ptr %i.j, align 8, !tbaa !32
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i, %bb.c
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN12colvarmodule8vector1dIdED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.p) #22
  br label %_ZN12colvarmodule8vector1dIdED2Ev.exit

_ZN12colvarmodule8vector1dIdED2Ev.exit:           ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %5, align 8, !tbaa !33     ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %.not.i.i.i10 = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i12, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i11

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i11:    ; preds = %bb.e
  store ptr %i.r, ptr %i.s, align 8, !tbaa !32
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i12

_ZNSt6vectorIdSaIdEE5clearEv.exit.i12:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i11, %bb.e
  %.not.i.i.i.i13 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i13, label %_ZN12colvarmodule8vector1dIdED2Ev.exit14, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i12
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !34
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.y) #22
  br label %_ZN12colvarmodule8vector1dIdED2Ev.exit14

_ZN12colvarmodule8vector1dIdED2Ev.exit14:         ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i12, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.k

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.z, ptr %6, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 70, ptr %i.a, align 8, !tbaa !59
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.aa, ptr %6, align 8, !tbaa !55
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(70) %i.aa, ptr noundef nonnull align 1 dereferenceable(70) @.str.27, i64 70, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ae = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef -1)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.z
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !58
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4, !tbaa !38
  call void @_ZN11colvarvalueC1ERKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.j

bb.h:                                             ; preds = %.noexc.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.i:                                             ; preds = %.noexc
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.z
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.i
  %i.an = load i64, ptr %i.z, align 8, !tbaa !58
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.ak, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN12colvarmodule8vector1dIdED2Ev.exit
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZN12colvarmodule8vector1dIdED2Ev.exit14
  %.pn8 = phi { ptr, i32 } [ %i.q, %_ZN12colvarmodule8vector1dIdED2Ev.exit14 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define void @_ZN11colvarvalue8set_elemEiiRKS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(168) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.colvarmodule::vector1d", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !33
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %.noexc.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sext i32 %1 to i64                       ; 4 uses
  %i.h = sext i32 %2 to i64                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNK11colvarvalue9as_vectorEv(ptr dead_on_unwind nonnull writable sret(%"class.colvarmodule::vector1d") align 8 %5, ptr noundef nonnull align 8 dereferenceable(168) %3)
  %i.i = icmp ult i32 %2, %1
  br i1 %i.i, label %.noexc.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %.not.i = icmp ugt i64 %i.o, %i.h
  br i1 %.not.i, label %bb.f, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 60, ptr %i.b, align 8, !tbaa !59
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 3 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.q, ptr %4, align 8, !tbaa !55
  %i.r = load i64, ptr %i.b, align 8, !tbaa !59   ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(60) %i.q, ptr noundef nonnull align 1 dereferenceable(60) @.str.24, i64 60, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.u = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef -1)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %.noexc
  %i.v = load ptr, ptr %4, align 8, !tbaa !55     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.p
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.p, align 8, !tbaa !58
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %4, align 8, !tbaa !55    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.p
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %bb.e
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !58
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.c
  %i.ae = sub nsw i64 %i.h, %i.g                  ; 5 uses
  %.not21.i = icmp eq i32 %2, %1
  %.pre = load ptr, ptr %5, align 8, !tbaa !33    ; 12 uses
  %.pre27 = ptrtoaddr ptr %.pre to i64
  br i1 %.not21.i, label %_ZN12colvarmodule8vector1dIdE11sliceassignEmmRKS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.g ; 6 uses
  %min.iters.check = icmp ult i64 %i.ae, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ah = ptrtoaddr ptr %i.af to i64
  %i.ai = shl nsw i64 %i.g, 3
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = sub i64 %.pre27, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <2 x double>, ptr %i.al, align 8, !tbaa !35
  %wide.load28 = load <2 x double>, ptr %i.am, align 8, !tbaa !35
  %i.an = getelementptr [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  store <2 x double> %wide.load, ptr %i.an, align 8, !tbaa !35
  store <2 x double> %wide.load28, ptr %i.ao, align 8, !tbaa !35
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZN12colvarmodule8vector1dIdE11sliceassignEmmRKS1_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.020.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.020.i.prol = phi i64 [ %i.at, %scalar.ph.prol ], [ %.020.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.020.i.prol
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !35
  %i.as = getelementptr [8 x i8], ptr %i.ag, i64 %.020.i.prol
  store double %i.ar, ptr %i.as, align 8, !tbaa !35
  %i.at = add nuw i64 %.020.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !131

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.020.i.unr = phi i64 [ %.020.i.ph, %scalar.ph.preheader ], [ %i.at, %scalar.ph.prol ]
  %i.au = sub nsw i64 %.020.i.ph, %i.h
  %i.av = add nsw i64 %i.au, %i.g
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %_ZN12colvarmodule8vector1dIdE11sliceassignEmmRKS1_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.020.i = phi i64 [ %i.bm, %scalar.ph ], [ %.020.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.020.i
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !35
  %i.az = getelementptr [8 x i8], ptr %i.ag, i64 %.020.i
  store double %i.ay, ptr %i.az, align 8, !tbaa !35
  %i.ba = add nuw i64 %.020.i, 1                  ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !35
  %i.bd = getelementptr [8 x i8], ptr %i.ag, i64 %i.ba
  store double %i.bc, ptr %i.bd, align 8, !tbaa !35
  %i.be = add nuw i64 %.020.i, 2                  ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !35
  %i.bh = getelementptr [8 x i8], ptr %i.ag, i64 %i.be
  store double %i.bg, ptr %i.bh, align 8, !tbaa !35
  %i.bi = add nuw i64 %.020.i, 3                  ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !35
  %i.bl = getelementptr [8 x i8], ptr %i.ag, i64 %i.bi
  store double %i.bk, ptr %i.bl, align 8, !tbaa !35
  %i.bm = add nuw i64 %.020.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bm, %i.ae
  br i1 %exitcond.not.i.3, label %_ZN12colvarmodule8vector1dIdE11sliceassignEmmRKS1_.exit, label %scalar.ph, !llvm.loop !132

_ZN12colvarmodule8vector1dIdE11sliceassignEmmRKS1_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  %.not.i.i.i = icmp eq ptr %i.bo, %.pre
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZN12colvarmodule8vector1dIdE11sliceassignEmmRKS1_.exit
  store ptr %.pre, ptr %i.bn, align 8, !tbaa !32
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i:              ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i, %_ZN12colvarmodule8vector1dIdE11sliceassignEmmRKS1_.exit
  %.not.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i, label %_ZN12colvarmodule8vector1dIdED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !34
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %.pre to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.bt) #22
  br label %_ZN12colvarmodule8vector1dIdED2Ev.exit

_ZN12colvarmodule8vector1dIdED2Ev.exit:           ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.m

bb.h:                                             ; preds = %.noexc.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.bu, %bb.h ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.i ]
  %i.bv = load ptr, ptr %5, align 8, !tbaa !33    ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !32
  %.not.i.i.i10 = icmp eq ptr %i.bx, %i.bv
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i12, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i11

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i11:    ; preds = %.body
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !32
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i12

_ZNSt6vectorIdSaIdEE5clearEv.exit.i12:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i11, %.body
  %.not.i.i.i.i13 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i13, label %_ZN12colvarmodule8vector1dIdED2Ev.exit14, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i12
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !34
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bv to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cc) #22
  br label %_ZN12colvarmodule8vector1dIdED2Ev.exit14

_ZN12colvarmodule8vector1dIdED2Ev.exit14:         ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i12, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.n

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.cd, ptr %6, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 69, ptr %i.a, align 8, !tbaa !59
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc15 unwind label %bb.k   ; 3 uses

.noexc15:                                         ; preds = %.noexc.i
  store ptr %i.ce, ptr %6, align 8, !tbaa !55
  %i.cf = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(69) %i.ce, ptr noundef nonnull align 1 dereferenceable(69) @.str.28, i64 69, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cf
  store i8 0, ptr %i.ch, align 1, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ci = invoke noundef i32 @_ZN12colvarmodule5errorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef -1)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %.noexc15
  %i.cj = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.cd
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.cl = load i64, ptr %i.cd, align 8, !tbaa !58
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.m

bb.k:                                             ; preds = %.noexc.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.l:                                             ; preds = %.noexc15
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cp = load ptr, ptr %6, align 8, !tbaa !55    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cd
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.l
  %i.cr = load i64, ptr %i.cd, align 8, !tbaa !58
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.k ], [ %i.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.co, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN12colvarmodule8vector1dIdED2Ev.exit
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZN12colvarmodule8vector1dIdED2Ev.exit14
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %_ZN12colvarmodule8vector1dIdED2Ev.exit14 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ]
  resume { ptr, i32 } %.pn8
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK11colvarvalue9as_vectorEv(ptr dead_on_unwind noalias writable sret(%"class.colvarmodule::vector1d") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !31
  switch i32 %i.b, label %bb.j [
    i32 1, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
    i32 2, label %_ZNK12colvarmodule7rvector9as_vectorEv.exit
    i32 3, label %_ZNK12colvarmodule7rvector9as_vectorEv.exit
    i32 4, label %_ZNK12colvarmodule7rvector9as_vectorEv.exit
    i32 5, label %_ZNK12colvarmodule10quaternion9as_vectorEv.exit
    i32 6, label %_ZNK12colvarmodule10quaternion9as_vectorEv.exit
    i32 7, label %bb.d
  ]

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %.noexc9 unwind label %bb.b    ; 3 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !35
end_hunk_1

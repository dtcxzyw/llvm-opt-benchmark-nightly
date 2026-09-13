Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/printer?download=true
inline.NumInlined: 3013
inline.NumDeleted: 673
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_Z28printer_getMemoryWithUnitStrB5cxx11m:._crit_edge.i.i
  br label %.lr.ph.preheader

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.016148.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gg, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod215)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.016148.epil = phi i64 [ %i.di, %.lr.ph.epil ], [ %.016148.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.de = mul i64 %.016148.epil, 10
  %i.df = and i64 %i.de, 4294967294
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.016148.epil
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !32
  %i.di = add nuw i64 %.016148.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.loopexit, label %.lr.ph.epil, !llvm.loop !660

.preheader.loopexit:                              ; preds = %.lr.ph.epil, %.preheader.loopexit.unr-lcssa
  %i.dj = ptrtoint ptr %i.cz to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0127.0214 = phi ptr [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cy, %.preheader.loopexit ] ; 6 uses
  %.sroa.12.0212 = phi i64 [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.dj, %.preheader.loopexit ] ; 2 uses
  br label %bb.f

.body:                                            ; preds = %.thread, %bb.a
  %i.dk = phi { ptr, i32 } [ %i.ak, %.thread ], [ %i.ap, %bb.a ]
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !34 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 272 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %.body
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !35
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !34 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !35
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.1
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !34 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.1
  %i.eb = load i64, ptr %i.dz, align 8, !tbaa !35
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.ec) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.2
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !34 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 176 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.2
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !35
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.3
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !34 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.3
  %i.en = load i64, ptr %i.el, align 8, !tbaa !35
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.4
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !34 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.4
  %i.et = load i64, ptr %i.er, align 8, !tbaa !35
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.5
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !34 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.5
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !35
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.6
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !34 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.6
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !35
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.7
  %i.fh = load ptr, ptr %3, align 8, !tbaa !34    ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.7
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !35
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97.8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.s

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.016148 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.gg, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.fn = mul i64 %.016148, 10
  %i.fo = and i64 %i.fn, 4294967288
  %i.fp = shl nuw i64 1, %i.fo
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %.016148
  store i64 %i.fp, ptr %i.fq, align 8, !tbaa !32
  %i.fr = or disjoint i64 %.016148, 1             ; 2 uses
  %i.fs = mul i64 %i.fr, 10
  %i.ft = and i64 %i.fs, 4294967290
  %i.fu = shl nuw i64 1, %i.ft
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fr
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !32
  %i.fw = or disjoint i64 %.016148, 2             ; 2 uses
  %i.fx = mul i64 %i.fw, 10
  %i.fy = and i64 %i.fx, 4294967292
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fw
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !32
  %i.gb = or disjoint i64 %.016148, 3             ; 2 uses
  %i.gc = mul i64 %i.gb, 10
  %i.gd = and i64 %i.gc, 4294967294
  %i.ge = shl nuw i64 1, %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.gb
  store i64 %i.ge, ptr %i.gf, align 8, !tbaa !32
  %i.gg = add nuw i64 %.016148, 4                 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !661

bb.f:                                             ; preds = %bb.f, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 1, %.preheader ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0127.0214, i64 %indvars.iv
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !32
  %i.gj = icmp ugt i64 %1, %i.gi
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.gj, label %bb.f, label %bb.g, !llvm.loop !662

bb.g:                                             ; preds = %bb.f
  %6 = uitofp i64 %1 to double
  %7 = shl i64 %indvars.iv, 32
  %sext = add i64 %7, -4294967296
  %8 = ashr exact i64 %sext, 32                   ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0127.0214, i64 %8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !32
  %i.gm = uitofp i64 %i.gl to double
  %i.gn = fdiv double %6, %i.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  invoke void @_Z10floatToStrIdENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_bi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, double noundef %i.gn, i1 noundef zeroext false, i32 noundef 4)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !36, !noalias !667
  %i.gq = icmp eq i64 %i.gp, 4611686018427387903
  br i1 %i.gq, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #31
          to label %.noexc104 unwind label %bb.p

.noexc104:                                        ; preds = %bb.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.h
  %i.gr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.60, i64 noundef 1)
          to label %.noexc105 unwind label %bb.p  ; 6 uses

.noexc105:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.gs, ptr %4, align 8, !tbaa !30, !alias.scope !667
  %i.gt = load ptr, ptr %i.gr, align 8, !tbaa !34 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 5 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

bb.j:                                             ; preds = %.noexc105
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !36 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  %i.gz = add nuw nsw i64 %i.gx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gs, ptr noundef nonnull align 8 dereferenceable(1) %i.gu, i64 %i.gz, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %.noexc105
  store ptr %i.gt, ptr %4, align 8, !tbaa !34, !alias.scope !667
  %i.ha = load i64, ptr %i.gu, align 8, !tbaa !35
  store i64 %i.ha, ptr %i.gs, align 8, !tbaa !35, !alias.scope !667
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.j
  %i.hb = phi i64 [ %i.gx, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.hb, ptr %i.hd, align 8, !tbaa !36, !alias.scope !667
  store ptr %i.gu, ptr %i.gr, align 8, !tbaa !34
  store i64 0, ptr %i.hc, align 8, !tbaa !36
  store i8 0, ptr %i.gu, align 8, !tbaa !35
  %i.he = getelementptr inbounds nuw [32 x i8], ptr %i.aj, i64 %8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !36, !noalias !668 ; 2 uses
  %i.hh = load i64, ptr %i.hd, align 8, !tbaa !36, !noalias !668
  %i.hi = sub i64 4611686018427387903, %i.hh
  %i.hj = icmp ult i64 %i.hi, %i.hg
  br i1 %i.hj, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.50) #31
          to label %.noexc109 unwind label %bb.q

.noexc109:                                        ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.k
  %i.hk = load ptr, ptr %i.he, align 8, !tbaa !34, !noalias !668
  %i.hl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.hk, i64 noundef %i.hg)
          to label %.noexc110 unwind label %bb.q  ; 6 uses

.noexc110:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.hm, ptr %0, align 8, !tbaa !30, !alias.scope !668
  %i.hn = load ptr, ptr %i.hl, align 8, !tbaa !34 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 5 uses
  %i.hp = icmp eq ptr %i.hn, %i.ho
  br i1 %i.hp, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106

bb.m:                                             ; preds = %.noexc110
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !36 ; 3 uses
  %i.hs = icmp ult i64 %i.hr, 16
  call void @llvm.assume(i1 %i.hs)
  %i.ht = add nuw nsw i64 %i.hr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hm, ptr noundef nonnull align 8 dereferenceable(1) %i.ho, i64 %i.ht, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106: ; preds = %.noexc110
  store ptr %i.hn, ptr %0, align 8, !tbaa !34, !alias.scope !668
  %i.hu = load i64, ptr %i.ho, align 8, !tbaa !35
  store i64 %i.hu, ptr %i.hm, align 8, !tbaa !35, !alias.scope !668
  %.phi.trans.insert.i107 = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %.pre.i108 = load i64, ptr %.phi.trans.insert.i107, align 8, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106, %bb.m
  %i.hv = phi i64 [ %i.hr, %bb.m ], [ %.pre.i108, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i106 ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.hv, ptr %i.hx, align 8, !tbaa !36, !alias.scope !668
  store ptr %i.ho, ptr %i.hl, align 8, !tbaa !34
  store i64 0, ptr %i.hw, align 8, !tbaa !36
  store i8 0, ptr %i.ho, align 8, !tbaa !35
  %i.hy = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.gs
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.n
  %i.ia = load i64, ptr %i.gs, align 8, !tbaa !35
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  %i.ic = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ie = icmp eq ptr %i.ic, %i.id
  br i1 %i.ie, label %_ZNSt6vectorImSaImEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.if = load i64, ptr %i.id, align 8, !tbaa !35
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.ig) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ih = ptrtoint ptr %.sroa.0127.0214 to i64
  %i.ii = sub i64 %.sroa.12.0212, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0127.0214, i64 noundef %i.ii) #32
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.io, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aj, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  %i.ij = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !35
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #32
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i117 = icmp eq ptr %i.io, %i.ao
  br i1 %.not.i.i.i117, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %_ZNSt6vectorImSaImEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 288) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.o:                                             ; preds = %bb.g
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit126

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.i
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.ir = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.is = load ptr, ptr %4, align 8, !tbaa !34    ; 2 uses
  %i.it = icmp eq ptr %i.is, %i.gs
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.q
  %i.iu = load i64, ptr %i.gs, align 8, !tbaa !35
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.is, i64 noundef %i.iv) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, %bb.p
  %.pn58 = phi { ptr, i32 } [ %i.iq, %bb.p ], [ %i.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119 ], [ %i.ir, %bb.q ] ; 2 uses
  %i.iw = load ptr, ptr %5, align 8, !tbaa !34    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNSt6vectorImSaImEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !35
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #32
  br label %_ZNSt6vectorImSaImEED2Ev.exit126

_ZNSt6vectorImSaImEED2Ev.exit126:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.o
end_hunk_0

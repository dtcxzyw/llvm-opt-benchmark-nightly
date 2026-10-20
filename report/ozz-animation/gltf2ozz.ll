Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/gltf2ozz?download=true
inline.NumInlined: 15962
inline.NumDeleted: 4531
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN8tinygltf13base64_encodeB5cxx11EPKhj:bb.a
bb.e:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.as = phi ptr [ %.pre.i.i, %.noexc ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  store i8 %i.aj, ptr %i.at, align 1, !tbaa !75
  store i64 %i.al, ptr %i.d, align 8, !tbaa !129
  %i.au = load ptr, ptr %0, align 8, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.al
  store i8 0, ptr %i.av, align 1, !tbaa !75
  %i.aw = zext nneg i8 %i.aa to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @.str, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !75
  %i.az = load i64, ptr %i.d, align 8, !tbaa !129 ; 4 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.c
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %bb.e
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !75
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1: ; preds = %bb.e
  %i.be = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.bf = phi i64 [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.1 ]
  %i.bg = icmp ugt i64 %i.ba, %i.bf
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.az, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.1:                                         ; preds = %bb.f
  %.pre.i.i.1 = load ptr, ptr %0, align 8, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %.noexc.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1
  %i.bh = phi ptr [ %.pre.i.i.1, %.noexc.1 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.1 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  store i8 %i.ay, ptr %i.bi, align 1, !tbaa !75
  store i64 %i.ba, ptr %i.d, align 8, !tbaa !129
  %i.bj = load ptr, ptr %0, align 8, !tbaa !89
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ba
  store i8 0, ptr %i.bk, align 1, !tbaa !75
  %i.bl = zext nneg i8 %i.af to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @.str, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !75
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !129 ; 4 uses
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.c
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %bb.g
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !75
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.2: ; preds = %bb.g
  %i.bt = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.bu = phi i64 [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.2 ]
  %i.bv = icmp ugt i64 %i.bp, %i.bu
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bo, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.2:                                         ; preds = %bb.h
  %.pre.i.i.2 = load ptr, ptr %0, align 8, !tbaa !89
  br label %bb.i

bb.i:                                             ; preds = %.noexc.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2
  %i.bw = phi ptr [ %.pre.i.i.2, %.noexc.2 ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.2 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i8 %i.bn, ptr %i.bx, align 1, !tbaa !75
  store i64 %i.bp, ptr %i.d, align 8, !tbaa !129
  %i.by = load ptr, ptr %0, align 8, !tbaa !89
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bp
  store i8 0, ptr %i.bz, align 1, !tbaa !75
  %i.ca = zext nneg i8 %i.ag to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !75
  %i.cd = load i64, ptr %i.d, align 8, !tbaa !129 ; 4 uses
  %i.ce = add i64 %i.cd, 1                        ; 3 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.c
  br i1 %i.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %bb.i
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !75
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.3: ; preds = %bb.i
  %i.ci = icmp ult i64 %i.cd, 16
  tail call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.cj = phi i64 [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.3 ]
  %i.ck = icmp ugt i64 %i.ce, %i.cj
  br i1 %i.ck, label %bb.j, label %.loopexit45.loopexit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cd, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc.3:                                         ; preds = %bb.j
  %.pre.i.i.3 = load ptr, ptr %0, align 8, !tbaa !89
  br label %.loopexit45.loopexit

.loopexit45.loopexit:                             ; preds = %.noexc.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3
  %i.cl = phi ptr [ %.pre.i.i.3, %.noexc.3 ], [ %i.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.3 ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  store i8 %i.cc, ptr %i.cm, align 1, !tbaa !75
  store i64 %i.ce, ptr %i.d, align 8, !tbaa !129
  %i.cn = load ptr, ptr %0, align 8, !tbaa !89
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ce
  store i8 0, ptr %i.co, align 1, !tbaa !75
  br label %.loopexit45

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.l, %bb.n, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.h, %bb.f, %bb.d
  %lpad.loopexit.split-lp61 = landingpad { ptr, i32 }
          cleanup
  store i8 %i.v, ptr %i.b, align 1
  store i8 %i.aa, ptr %i.f, align 1
  store i8 %i.af, ptr %i.h, align 1
  store i8 %i.ag, ptr %i.i, align 1
  br label %.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp61, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.cp = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.c
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp
  %i.cr = load i64, ptr %i.c, align 8, !tbaa !75
  %i.cs = add i64 %i.cr, 1
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.phi

.loopexit45:                                      ; preds = %.loopexit45.loopexit, %bb.b
  %i.ct = phi i8 [ %i.j, %bb.b ], [ %i.ag, %.loopexit45.loopexit ] ; 2 uses
  %i.cu = phi i8 [ %i.k, %bb.b ], [ %i.af, %.loopexit45.loopexit ] ; 2 uses
  %i.cv = phi i8 [ %i.l, %bb.b ], [ %i.aa, %.loopexit45.loopexit ] ; 2 uses
  %i.cw = phi i8 [ %i.m, %bb.b ], [ %i.v, %.loopexit45.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.q, %bb.b ], [ 0, %.loopexit45.loopexit ] ; 6 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !785

._crit_edge:                                      ; preds = %.loopexit45
  store i8 %i.cw, ptr %i.b, align 1
  store i8 %i.cv, ptr %i.f, align 1
  store i8 %i.cu, ptr %i.h, align 1
  store i8 %i.ct, ptr %i.i, align 1
  %.not26 = icmp eq i32 %.2, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %._crit_edge
  %i.cx = zext nneg i32 %.2 to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.cx
  %narrow = sub i32 3, %.2
  %i.cy = zext i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.cy, i1 false), !tbaa !75
  %i.cz = load i8, ptr %i.a, align 1, !tbaa !75   ; 2 uses
  %i.da = lshr i8 %i.cz, 2
  store i8 %i.da, ptr %i.b, align 1, !tbaa !75
  %i.db = shl i8 %i.cz, 4
  %i.dc = and i8 %i.db, 48
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !75  ; 2 uses
  %i.df = lshr i8 %i.de, 4
  %i.dg = or disjoint i8 %i.df, %i.dc
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !75
  %i.di = shl i8 %i.de, 2
  %i.dj = and i8 %i.di, 60
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !75
  %i.dm = lshr i8 %i.dl, 6
  %i.dn = or disjoint i8 %i.dm, %i.dj
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !75
  br label %.lr.ph57

.lr.ph59.preheader:                               ; preds = %bb.m
  %i.dp = icmp eq i32 %.2, 2
  %i.dq = load i64, ptr %i.d, align 8, !tbaa !129 ; 4 uses
  %i.dr = add i64 %i.dq, 1                        ; 3 uses
  %i.ds = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.c
  br i1 %i.dt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.peel: ; preds = %.lr.ph59.preheader
  %i.du = load i64, ptr %i.c, align 8, !tbaa !75
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37.peel: ; preds = %.lr.ph59.preheader
  %i.dv = icmp ult i64 %i.dq, 16
  tail call void @llvm.assume(i1 %i.dv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.peel
  %i.dw = phi i64 [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34.peel ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37.peel ]
  %i.dx = icmp ugt i64 %i.dr, %i.dw
  br i1 %i.dx, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39.peel

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.peel
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dq, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc38.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc38.peel:                                    ; preds = %bb.k
  %.pre.i.i36.peel = load ptr, ptr %0, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39.peel: ; preds = %.noexc38.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.peel
  %i.dy = phi ptr [ %.pre.i.i36.peel, %.noexc38.peel ], [ %i.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35.peel ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq
  store i8 61, ptr %i.dz, align 1, !tbaa !75
  store i64 %i.dr, ptr %i.d, align 8, !tbaa !129
  %i.ea = load ptr, ptr %0, align 8, !tbaa !89
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dr
  store i8 0, ptr %i.eb, align 1, !tbaa !75
  br i1 %i.dp, label %.loopexit, label %.lr.ph59

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph57.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !75
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !75
  %i.eh = load i64, ptr %i.d, align 8, !tbaa !129 ; 4 uses
  %i.ei = add i64 %i.eh, 1                        ; 3 uses
  %i.ej = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.c
  br i1 %i.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i31: ; preds = %.lr.ph57
  %i.el = icmp ult i64 %i.eh, 16
  tail call void @llvm.assume(i1 %i.el)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28: ; preds = %.lr.ph57
  %i.em = load i64, ptr %i.c, align 8, !tbaa !75
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i31
  %i.en = phi i64 [ %i.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i28 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i31 ]
  %i.eo = icmp ugt i64 %i.ei, %i.en
  br i1 %i.eo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.eh, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc32:                                         ; preds = %bb.l
  %.pre.i.i30 = load ptr, ptr %0, align 8, !tbaa !89
  br label %bb.m

bb.m:                                             ; preds = %.noexc32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29
  %i.ep = phi ptr [ %.pre.i.i30, %.noexc32 ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i29 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eh
  store i8 %i.eg, ptr %i.eq, align 1, !tbaa !75
  store i64 %i.ei, ptr %i.d, align 8, !tbaa !129
  %i.er = load ptr, ptr %0, align 8, !tbaa !89
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ei
  store i8 0, ptr %i.es, align 1, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %3 = trunc nuw i64 %indvars.iv.next to i32
  %.not27 = icmp slt i32 %.2, %3
  br i1 %.not27, label %.lr.ph59.preheader, label %.lr.ph57, !llvm.loop !786

.lr.ph59:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39.peel
  %i.et = load i64, ptr %i.d, align 8, !tbaa !129 ; 4 uses
  %i.eu = add i64 %i.et, 1                        ; 3 uses
  %i.ev = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.c
  br i1 %i.ew, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37: ; preds = %.lr.ph59
  %i.ex = icmp ult i64 %i.et, 16
  tail call void @llvm.assume(i1 %i.ex)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34: ; preds = %.lr.ph59
  %i.ey = load i64, ptr %i.c, align 8, !tbaa !75
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37
  %i.ez = phi i64 [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i34 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i37 ]
  %i.fa = icmp ugt i64 %i.eu, %i.ez
  br i1 %i.fa, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.et, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc38:                                         ; preds = %bb.n
  %.pre.i.i36 = load ptr, ptr %0, align 8, !tbaa !89
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35, %.noexc38
  %i.fb = phi ptr [ %.pre.i.i36, %.noexc38 ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i35 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.et
  store i8 61, ptr %i.fc, align 1, !tbaa !75
  store i64 %i.eu, ptr %i.d, align 8, !tbaa !129
  %i.fd = load ptr, ptr %0, align 8, !tbaa !89
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.eu
  store i8 0, ptr %i.fe, align 1, !tbaa !75
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit39, %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8tinygltf13base64_decodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [4 x i8], align 1                 ; 14 uses
  %i.c = alloca [3 x i8], align 1                 ; 11 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !396
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  store i64 0, ptr %i.g, align 8, !tbaa !129
  store i8 0, ptr %i.f, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 64, ptr %i.a, align 8, !tbaa !398
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %2, align 8, !tbaa !89
  %i.j = load i64, ptr %i.a, align 8, !tbaa !398  ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.i, ptr noundef nonnull align 1 dereferenceable(64) @.str, i64 64, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !129
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.m = trunc i64 %i.e to i32                    ; 2 uses
  %.not64 = icmp eq i32 %i.m, 0
  br i1 %.not64, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %.loopexit59
  %i.s = phi i8 [ undef, %.lr.ph ], [ %i.ct, %.loopexit59 ] ; 3 uses
  %i.t = phi i8 [ undef, %.lr.ph ], [ %i.cu, %.loopexit59 ] ; 3 uses
  %i.u = phi i8 [ undef, %.lr.ph ], [ %i.cv, %.loopexit59 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.loopexit59 ] ; 2 uses
  %.in = phi i32 [ %i.m, %.lr.ph ], [ %i.v, %.loopexit59 ]
  %.03665 = phi i32 [ 0, %.lr.ph ], [ %.3, %.loopexit59 ] ; 4 uses
  %i.v = add nsw i32 %.in, -1                     ; 2 uses
  %i.w = load ptr, ptr %1, align 8, !tbaa !89
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.y = load i8, ptr %i.x, align 1, !tbaa !75    ; 4 uses
  %.not41 = icmp eq i8 %i.y, 61
  br i1 %.not41, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = zext i8 %i.y to i32
  %i.aa = call i32 @isalnum(i32 noundef %i.z) #43
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = and i8 %i.y, -5
  %i.ad = icmp eq i8 %i.ac, 43
  %spec.select.i = or i1 %i.ad, %i.ab
  br i1 %spec.select.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ae = add nsw i32 %.03665, 1                  ; 2 uses
  %i.af = sext i32 %.03665 to i64
  %i.ag = getelementptr inbounds i8, ptr %i.b, i64 %i.af
  store i8 %i.y, ptr %i.ag, align 1, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ah = icmp eq i32 %i.ae, 4
  br i1 %i.ah, label %.preheader60.preheader, label %.loopexit59

.preheader60.preheader:                           ; preds = %bb.c
  %i.ai = load i8, ptr %i.b, align 1, !tbaa !75
  %i.aj = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext %i.ai, i64 noundef 0) #41
  %i.ak = trunc i64 %i.aj to i8                   ; 2 uses
  store i8 %i.ak, ptr %i.b, align 1, !tbaa !75
  %i.al = load i8, ptr %i.n, align 1, !tbaa !75
  %i.am = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext %i.al, i64 noundef 0) #41
  %i.an = trunc i64 %i.am to i8                   ; 3 uses
  store i8 %i.an, ptr %i.n, align 1, !tbaa !75
  %i.ao = load i8, ptr %i.o, align 1, !tbaa !75
  %i.ap = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext %i.ao, i64 noundef 0) #41
  %i.aq = trunc i64 %i.ap to i8                   ; 3 uses
  store i8 %i.aq, ptr %i.o, align 1, !tbaa !75
  %i.ar = load i8, ptr %i.q, align 1, !tbaa !75
  %i.as = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext %i.ar, i64 noundef 0) #41
  %i.at = trunc i64 %i.as to i8                   ; 2 uses
  store i8 %i.at, ptr %i.q, align 1, !tbaa !75
  %i.au = shl i8 %i.ak, 2
  %i.av = lshr i8 %i.an, 4
  %i.aw = and i8 %i.av, 3
  %i.ax = or disjoint i8 %i.aw, %i.au             ; 3 uses
  %i.ay = shl i8 %i.an, 4
  %i.az = lshr i8 %i.aq, 2
  %i.ba = and i8 %i.az, 15
  %i.bb = or disjoint i8 %i.ba, %i.ay             ; 3 uses
  %i.bc = shl i8 %i.aq, 6
  %i.bd = add i8 %i.bc, %i.at                     ; 3 uses
  %i.be = load i64, ptr %i.g, align 8, !tbaa !129 ; 4 uses
  %i.bf = add i64 %i.be, 1                        ; 3 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !89    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.f
  br i1 %i.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %.noexc.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp.loopexit:                      ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.i, %bb.g, %bb.e
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  store i8 %i.ax, ptr %i.c, align 1
  store i8 %i.bb, ptr %i.p, align 1
  store i8 %i.bd, ptr %i.r, align 1
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !tbaa !89    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.h
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp
  %i.bl = load i64, ptr %i.h, align 8, !tbaa !75
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %.preheader60.preheader
  %i.bn = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.preheader60.preheader
  %i.bo = load i64, ptr %i.f, align 8, !tbaa !75
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bp = phi i64 [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.bq = icmp ugt i64 %i.bf, %i.bp
  br i1 %i.bq, label %bb.e, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN8tinygltf8TinyGLTF20WriteGltfSceneToFileEPKNS_5ModelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbbb:bb.a
          catch ptr null
  %i.ve = extractvalue { ptr, i32 } %i.vd, 0
  call void @__clang_call_terminate(ptr %i.ve) #40, !inline_history !76
  unreachable

_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit320: ; preds = %.critedge156
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #41
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit320, %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit319, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302
  %.11113 = phi i1 [ %i.sw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %.0.i308, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ], [ false, %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit319 ], [ false, %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit320 ]
  %i.vf = load ptr, ptr %22, align 8, !tbaa !153  ; 3 uses
  %.not.i.i.i321 = icmp eq ptr %i.vf, null
  br i1 %.not.i.i.i321, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vg = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !431
  %i.vi = ptrtoint ptr %i.vh to i64
  %i.vj = ptrtoint ptr %i.vf to i64
  %i.vk = sub i64 %i.vi, %i.vj
  call void @_ZdlPvm(ptr noundef nonnull %i.vf, i64 noundef %i.vk) #42
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.dv, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  %i.vl = load ptr, ptr %21, align 8, !tbaa !309  ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !308 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.vl, %i.vn
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.vt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.vl, %_ZNSt6vectorIhSaIhEED2Ev.exit ] ; 3 uses
  %i.vo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !89 ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.vq = icmp eq ptr %i.vo, %i.vp
  br i1 %i.vq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.vr = load i64, ptr %i.vp, align 8, !tbaa !75
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vo, i64 noundef %i.vs) #42
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.vt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i322 = icmp eq ptr %i.vt, %i.vn
  br i1 %.not.i.i.i322, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %21, align 8, !tbaa !309
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.vu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.vl, %_ZNSt6vectorIhSaIhEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.vu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.dx

bb.dx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.vv = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !394
  %i.vx = ptrtoint ptr %i.vw to i64
  %i.vy = ptrtoint ptr %i.vu to i64
  %i.vz = sub i64 %i.vx, %i.vy
  call void @_ZdlPvm(ptr noundef nonnull %i.vu, i64 noundef %i.vz) #42
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  %i.wa = load ptr, ptr %20, align 8, !tbaa !89   ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.wc = icmp eq ptr %i.wa, %i.wb
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.wd = load i64, ptr %i.wb, align 8, !tbaa !75
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wa, i64 noundef %i.we) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  %i.wf = load ptr, ptr %18, align 8, !tbaa !89   ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.h
  br i1 %i.wg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325
  %i.wh = load i64, ptr %i.h, align 8, !tbaa !75
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wi) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  %i.wj = load ptr, ptr %17, align 8, !tbaa !89   ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.wl = icmp eq ptr %i.wj, %i.wk
  br i1 %i.wl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  %i.wm = load i64, ptr %i.wk, align 8, !tbaa !75
  %i.wn = add i64 %i.wm, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wn) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  %i.wo = load i8, ptr %16, align 8, !tbaa !81
  invoke void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i8 noundef zeroext %i.wo) #39
          to label %_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit332 unwind label %bb.dy, !inline_history !76

bb.dy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  %i.wp = landingpad { ptr, i32 }
          catch ptr null
  %i.wq = extractvalue { ptr, i32 } %i.wp, 0
  call void @__clang_call_terminate(ptr %i.wq) #40, !inline_history !76
  unreachable

_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit332: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  ret i1 %.11113

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %.body292, %.body275
  %.pn135.pn = phi { ptr, i32 } [ %.pn135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305 ], [ %.pn133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ], [ %.pn131, %.body292 ], [ %.pn127, %.body275 ]
  %i.wr = load ptr, ptr %22, align 8, !tbaa !153  ; 3 uses
  %.not.i.i.i333 = icmp eq ptr %i.wr, null
  br i1 %.not.i.i.i333, label %_ZNSt6vectorIhSaIhEED2Ev.exit334, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ws = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !431
  %i.wu = ptrtoint ptr %i.wt to i64
  %i.wv = ptrtoint ptr %i.wr to i64
  %i.ww = sub i64 %i.wu, %i.wv
  call void @_ZdlPvm(ptr noundef nonnull %i.wr, i64 noundef %i.ww) #42
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit334

_ZNSt6vectorIhSaIhEED2Ev.exit334:                 ; preds = %bb.dz, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #41
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #41
  br label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit334, %bb.q
  %.pn135.pn.pn = phi { ptr, i32 } [ %.pn135.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit334 ], [ %i.az, %bb.q ] ; 2 uses
  %i.wx = load ptr, ptr %20, align 8, !tbaa !89   ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.wz = icmp eq ptr %i.wx, %i.wy
  br i1 %i.wz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %bb.eb
  %i.xa = load i64, ptr %i.wy, align 8, !tbaa !75
  %i.xb = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %i.wx, i64 noundef %i.xb) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %bb.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.p
  %.pn135.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.p ], [ %.pn135.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ], [ %.pn135.pn.pn, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br label %bb.ec

bb.ec:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, %bb.l
  %.pn135.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn135.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337 ], [ %i.at, %bb.l ] ; 2 uses
  %i.xc = load ptr, ptr %18, align 8, !tbaa !89   ; 2 uses
  %i.xd = icmp eq ptr %i.xc, %i.h
  br i1 %i.xd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338: ; preds = %bb.ec
  %i.xe = load i64, ptr %i.h, align 8, !tbaa !75
  %i.xf = add i64 %i.xe, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xf) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340: ; preds = %bb.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i338
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  %i.xg = load ptr, ptr %17, align 8, !tbaa !89   ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.xi = icmp eq ptr %i.xg, %i.xh
  br i1 %i.xi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340
  %i.xj = load i64, ptr %i.xh, align 8, !tbaa !75
  %i.xk = add i64 %i.xj, 1
  call void @_ZdlPvm(ptr noundef %i.xg, i64 noundef %i.xk) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341, %bb.k
  %.pn135.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.as, %bb.k ], [ %.pn135.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ], [ %.pn135.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit340 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  call void @_ZN8nlohmann16json_abi_v3_11_310basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  resume { ptr, i32 } %.pn135.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8tinygltfL15GetBaseFilenameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.143, i64 noundef -1, i64 noundef 2) #41 ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i64 %i.c, 1                      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3584)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !129, !noalias !3584 ; 3 uses
  %2 = icmp ugt i64 %i.d, %i.f
  br i1 %2, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.287, i64 noundef %i.d, i64 noundef %i.f) #44, !noalias !3584
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !396, !alias.scope !3584
  %i.h = load ptr, ptr %1, align 8, !tbaa !89, !noalias !3584
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %i.j = sub nuw i64 %i.f, %i.d                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41, !noalias !3584
  store i64 %i.j, ptr %i.b, align 8, !tbaa !398, !noalias !3584
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !89, !alias.scope !3584
  %i.m = load i64, ptr %i.b, align 8, !tbaa !398, !noalias !3584
  store i64 %i.m, ptr %i.g, align 8, !tbaa !75, !alias.scope !3584
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.n = phi ptr [ %i.l, %.noexc10.i.i ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.j, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.o = load i8, ptr %i.i, align 1, !tbaa !75
  store i8 %i.o, ptr %i.n, align 1, !tbaa !75
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.i, i64 %i.j, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.p = load i64, ptr %i.b, align 8, !tbaa !398, !noalias !3584 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !129, !alias.scope !3584
  %i.r = load ptr, ptr %0, align 8, !tbaa !89, !alias.scope !3584
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41, !noalias !3584
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !396
  %i.u = load ptr, ptr %1, align 8, !tbaa !89     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !129  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 %i.w, ptr %i.a, align 8, !tbaa !398
  %i.x = icmp ugt i64 %i.w, 15
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.f
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !89
  %i.z = load i64, ptr %i.a, align 8, !tbaa !398
  store i64 %i.z, ptr %i.t, align 8, !tbaa !75
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.f
  %i.aa = phi ptr [ %i.y, %.noexc.i ], [ %i.t, %bb.f ] ; 2 uses
  switch i64 %i.w, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !75
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !398 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !129
  %i.ae = load ptr, ptr %0, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !129  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !129
  %i.e = sub i64 4611686018427387903, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #44
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !89
  %i.h = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.g, i64 noundef %i.b) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !396
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !89   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 5 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.j, ptr %0, align 8, !tbaa !89
  %i.q = load i64, ptr %i.k, align 8, !tbaa !75
  store i64 %i.q, ptr %i.i, align 8, !tbaa !75
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !129
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = phi i64 [ %i.n, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.t, align 8, !tbaa !129
  store ptr %i.k, ptr %i.h, align 8, !tbaa !89
  store i64 0, ptr %i.s, align 8, !tbaa !129
  store i8 0, ptr %i.k, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8tinygltfL8JoinPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !129  ; 6 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !396
  %i.f = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !129  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i64 %i.h, ptr %i.a, align 8, !tbaa !398
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.j = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !89
  %i.k = load i64, ptr %i.a, align 8, !tbaa !398
  store i64 %i.k, ptr %i.e, align 8, !tbaa !75
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %i.j, %.noexc.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.h, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !75
  store i8 %i.m, ptr %i.l, align 1, !tbaa !75
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.n = load i64, ptr %i.a, align 8, !tbaa !398  ; 2 uses
end_hunk_1

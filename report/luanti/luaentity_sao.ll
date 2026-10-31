Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/luaentity_sao?download=true
inline.NumInlined: 1527
inline.NumDeleted: 763
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN12LuaEntitySAOC2EP17ServerEnvironmentN4core8vector3dIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ay = load i64, ptr %i.au, align 8, !tbaa !22 ; 2 uses
  store i64 %i.ay, ptr %i.aa, align 8, !tbaa !22
  %i.az = load ptr, ptr %5, align 8, !tbaa !105
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 0, ptr %i.ba, align 1, !tbaa !23
  %.pre.i = load ptr, ptr %8, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ar, ptr %5, align 8, !tbaa !105
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bc = load <2 x i64>, ptr %i.bb, align 8, !tbaa !23
  store <2 x i64> %i.bc, ptr %i.aa, align 8, !tbaa !23
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bd = load i64, ptr %i.z, align 8, !tbaa !23
  store ptr %i.ar, ptr %5, align 8, !tbaa !105
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bf = load <2 x i64>, ptr %i.be, align 8, !tbaa !23
  store <2 x i64> %i.bf, ptr %i.aa, align 8, !tbaa !23
  %.not.i33 = icmp eq ptr %i.ap, null
  br i1 %.not.i33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ap, ptr %8, align 8, !tbaa !105
  store i64 %i.bd, ptr %i.as, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.as, ptr %8, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.bg = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ap, %bb.i ], [ %i.as, %bb.j ]
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !22
  store i8 0, ptr %i.bg, align 1, !tbaa !23
  %i.bi = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !23
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_Z19deSerializeString32B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bn = load ptr, ptr %6, align 8, !tbaa !105   ; 6 uses
  %i.bo = icmp eq ptr %i.bn, %i.ab
  %i.bp = load ptr, ptr %9, align 8, !tbaa !105   ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.br = icmp eq ptr %i.bp, %i.bq                ; 2 uses
  br i1 %i.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i39: ; preds = %bb.k
  br i1 %i.br, label %bb.l, label %.thread.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i34: ; preds = %bb.k
  br i1 %i.br, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i35

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i39
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !22 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 16
  call void @llvm.assume(i1 %i.bu)
  switch i64 %i.bt, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bv = load i8, ptr %i.bp, align 1, !tbaa !23
  store i8 %i.bv, ptr %i.bn, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr align 1 %i.bp, i64 %i.bt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37: ; preds = %bb.n, %bb.m, %bb.l
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !22 ; 2 uses
  store i64 %i.bw, ptr %i.ac, align 8, !tbaa !22
  %i.bx = load ptr, ptr %6, align 8, !tbaa !105
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bw
  store i8 0, ptr %i.by, align 1, !tbaa !23
  %.pre.i38 = load ptr, ptr %9, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41

.thread.i40:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i39
  store ptr %i.bp, ptr %6, align 8, !tbaa !105
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ca = load <2 x i64>, ptr %i.bz, align 8, !tbaa !23
  store <2 x i64> %i.ca, ptr %i.ac, align 8, !tbaa !23
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i35: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i34
  %i.cb = load i64, ptr %i.ab, align 8, !tbaa !23
  store ptr %i.bp, ptr %6, align 8, !tbaa !105
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cd = load <2 x i64>, ptr %i.cc, align 8, !tbaa !23
  store <2 x i64> %i.cd, ptr %i.ac, align 8, !tbaa !23
  %.not.i36 = icmp eq ptr %i.bn, null
  br i1 %.not.i36, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i35
  store ptr %i.bn, ptr %9, align 8, !tbaa !105
  store i64 %i.cb, ptr %i.bq, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i35, %.thread.i40
  store ptr %i.bq, ptr %9, align 8, !tbaa !105
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37, %bb.o, %bb.p
  %i.ce = phi ptr [ %.pre.i38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i37 ], [ %i.bn, %bb.o ], [ %i.bq, %bb.p ]
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cf, align 8, !tbaa !22
  store i8 0, ptr %i.ce, align 1, !tbaa !23
  %i.cg = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !23
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.cl = icmp eq i8 %i.ao, 0
  br i1 %i.cl, label %.thread, label %bb.t

bb.q:                                             ; preds = %bb.b
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.r:                                             ; preds = %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ah

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ah

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #29
  store i16 0, ptr %i.k, align 2
  %i.cp = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.k, i64 noundef 2)
          to label %.noexc46 unwind label %bb.af  ; 0 uses

.noexc46:                                         ; preds = %bb.t
  %i.cq = load ptr, ptr %7, align 8, !tbaa !15
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds i8, ptr %7, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !104
  %i.cw = and i32 %i.cv, 2
  %.not.i45 = icmp eq i32 %i.cw, 0
  br i1 %.not.i45, label %bb.u, label %.invoke

bb.u:                                             ; preds = %.noexc46
  %.0.copyload.i.i = load i16, ptr %i.k, align 2
  %rev.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, i8 0, i64 12, i1 false)
  %i.cx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.j, i64 noundef 12)
          to label %.noexc49 unwind label %bb.af  ; 0 uses

.noexc49:                                         ; preds = %bb.u
  %i.cy = load ptr, ptr %7, align 8, !tbaa !15
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr %7, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !104
  %i.de = and i32 %i.dd, 2
  %.not.i48 = icmp eq i32 %i.de, 0
  br i1 %.not.i48, label %bb.v, label %.invoke

bb.v:                                             ; preds = %.noexc49
  %i.df = load <2 x i32>, ptr %i.j, align 8
  %i.dg = call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %i.df)
  %i.dh = sitofp nsz <2 x i32> %i.dg to <2 x float>
  %i.di = fdiv nsz <2 x float> %i.dh, splat (float 1.000000e+03) ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.0.copyload.i.i.i4.i.i = load i32, ptr %i.dj, align 8
  %i.dk = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i4.i.i)
  %i.dl = sitofp nsz i32 %i.dk to float
  %i.dm = fdiv nsz float %i.dl, 1.000000e+03      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #29
  store i32 0, ptr %i.i, align 4
  %i.dn = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.i, i64 noundef 4)
          to label %.noexc52 unwind label %bb.af  ; 0 uses

.noexc52:                                         ; preds = %bb.v
  %i.do = load ptr, ptr %7, align 8, !tbaa !15
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %7, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !104
  %i.du = and i32 %i.dt, 2
  %.not.i51 = icmp eq i32 %i.du, 0
  br i1 %.not.i51, label %bb.w, label %.invoke

bb.w:                                             ; preds = %.noexc52
  %.0.copyload.i.i.i.i = load i32, ptr %i.i, align 4
  %i.dv = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i)
  %i.dw = sitofp nsz i32 %i.dv to float
  %i.dx = fdiv nsz float %i.dw, 1.000000e+03      ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  %i.dy = invoke noundef i32 @_ZNSi4peekEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.x unwind label %bb.af

bb.x:                                             ; preds = %bb.w
  %.not = icmp eq i32 %i.dy, -1
  br i1 %.not, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  store i8 0, ptr %i.h, align 1
  %i.dz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.h, i64 noundef 1)
          to label %.noexc56 unwind label %bb.af  ; 0 uses

.noexc56:                                         ; preds = %bb.y
  %i.ea = load ptr, ptr %7, align 8, !tbaa !15
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds i8, ptr %7, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 32
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !104
  %i.eg = and i32 %i.ef, 2
  %.not.i55 = icmp eq i32 %i.eg, 0
  br i1 %.not.i55, label %bb.z, label %.invoke

bb.z:                                             ; preds = %.noexc56
  %i.eh = load i8, ptr %i.h, align 1, !tbaa !23   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  %i.ei = icmp eq i8 %i.eh, 0
  br i1 %i.ei, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  store i32 0, ptr %i.g, align 4
  %i.ej = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.g, i64 noundef 4)
          to label %.noexc61 unwind label %bb.af  ; 0 uses

.noexc61:                                         ; preds = %bb.aa
  %i.ek = load ptr, ptr %7, align 8, !tbaa !15
  %i.el = getelementptr i8, ptr %i.ek, i64 -24
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds i8, ptr %7, i64 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !104
  %i.eq = and i32 %i.ep, 2
  %.not.i59 = icmp eq i32 %i.eq, 0
  br i1 %.not.i59, label %bb.ab, label %.invoke

bb.ab:                                            ; preds = %.noexc61
  %.0.copyload.i.i.i.i60 = load i32, ptr %i.g, align 4
  %i.er = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i60)
  %i.es = sitofp nsz i32 %i.er to float
  %i.et = fdiv nsz float %i.es, 1.000000e+03      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  store i32 0, ptr %i.f, align 4
  %i.eu = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.f, i64 noundef 4)
          to label %.noexc66 unwind label %bb.af  ; 0 uses

.noexc66:                                         ; preds = %bb.ab
  %i.ev = load ptr, ptr %7, align 8, !tbaa !15
  %i.ew = getelementptr i8, ptr %i.ev, i64 -24
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds i8, ptr %7, i64 %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !104
  %i.fb = and i32 %i.fa, 2
  %.not.i64 = icmp eq i32 %i.fb, 0
  br i1 %.not.i64, label %bb.ac, label %.invoke

.invoke:                                          ; preds = %.noexc66, %.noexc61, %.noexc56, %.noexc52, %.noexc49, %.noexc46, %.noexc
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.cont unwind label %bb.af

.cont:                                            ; preds = %.invoke
  unreachable

bb.ac:                                            ; preds = %.noexc66
  %.0.copyload.i.i.i.i65 = load i32, ptr %i.f, align 4
  %i.fc = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i65)
  %i.fd = sitofp nsz i32 %i.fc to float
  %i.fe = fdiv nsz float %i.fd, 1.000000e+03      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  %i.ff = icmp eq i8 %i.eh, 1
  br i1 %i.ff, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.fh = invoke { i64, i64 } @_ZN13GUIDGenerator4nextEv(ptr noundef nonnull align 8 dereferenceable(2520) %i.fg)
          to label %bb.ae unwind label %bb.af     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.fi = extractvalue { i64, i64 } %i.fh, 0
  %i.fj = extractvalue { i64, i64 } %i.fh, 1
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 1025
  store i64 %i.fi, ptr %i.fk, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1033
  store i64 %i.fj, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !23
  br label %.thread

bb.af:                                            ; preds = %.invoke, %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.v, %bb.u, %bb.t, %bb.c, %bb.ag, %bb.ad
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1025
  invoke void @_ZN6MyGUID11deSerializeERSi(ptr noundef nonnull align 1 dereferenceable(16) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %.thread unwind label %bb.af

.thread:                                          ; preds = %bb.x, %bb.ag, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %bb.ae
  %.sroa.7.0 = phi nsz float [ 0.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.dm, %bb.z ], [ %i.dm, %bb.ae ], [ %i.dm, %bb.ag ], [ %i.dm, %bb.x ]
  %.sroa.0128.0 = phi nsz <2 x float> [ zeroinitializer, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.di, %bb.z ], [ %i.di, %bb.ae ], [ %i.di, %bb.ag ], [ %i.di, %bb.x ]
  %.sroa.8.0 = phi nsz float [ 0.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ 0.000000e+00, %bb.z ], [ %i.fe, %bb.ae ], [ %i.fe, %bb.ag ], [ 0.000000e+00, %bb.x ]
  %.sroa.6.0 = phi nsz float [ 0.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.dx, %bb.z ], [ %i.dx, %bb.ae ], [ %i.dx, %bb.ag ], [ %i.dx, %bb.x ]
  %.sroa.0.0 = phi nsz float [ 0.000000e+00, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ 0.000000e+00, %bb.z ], [ %i.et, %bb.ae ], [ %i.et, %bb.ag ], [ 0.000000e+00, %bb.x ]
  %.025 = phi i16 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %rev.i.i.i, %bb.z ], [ %rev.i.i.i, %bb.ae ], [ %rev.i.i.i, %bb.ag ], [ %rev.i.i.i, %bb.x ]
  %i.fn = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.fn, ptr %7, align 8, !tbaa !15
  %i.fo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fp = getelementptr i8, ptr %i.fn, i64 -24
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds i8, ptr %7, i64 %i.fq
  store ptr %i.fo, ptr %i.fr, align 8, !tbaa !15
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.fs, align 8, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !105 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.thread
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !23
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #30
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.fs, align 8, !tbaa !15
  %i.fz = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fz) #29
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.ga, ptr %7, align 8, !tbaa !15
  %i.gb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.gc = getelementptr i8, ptr %i.ga, i64 -24
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = getelementptr inbounds i8, ptr %7, i64 %i.gd
  store ptr %i.gb, ptr %i.ge, align 8, !tbaa !15
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.gf, align 8, !tbaa !316
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.gg) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af, %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.fl, %bb.af ], [ %i.cn, %bb.r ], [ %i.co, %bb.s ]
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %7) #29
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ah ], [ %i.cm, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.bi

bb.aj:                                            ; preds = %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.a
  %.sroa.7.1 = phi nsz float [ 0.000000e+00, %bb.a ], [ %.sroa.7.0, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %.sroa.0128.1 = phi nsz <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.0128.0, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %.sroa.8.1 = phi nsz float [ 0.000000e+00, %bb.a ], [ %.sroa.8.0, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %.sroa.6.1 = phi nsz float [ 0.000000e+00, %bb.a ], [ %.sroa.6.0, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
  %.sroa.0.1 = phi nsz float [ 0.000000e+00, %bb.a ], [ %.sroa.0.0, %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ]
end_hunk_0
begin_hunk_1_@_ZN12LuaEntitySAO4stepEfb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.bj

bb.bj:                                            ; preds = %_ZN19collisionMoveResultD2Ev.exit130, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %.pn85.pn = phi { ptr, i32 } [ %.pn85169, %_ZN19collisionMoveResultD2Ev.exit130 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90 ]
  resume { ptr, i32 } %.pn85.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12LuaEntitySAO17getPropertyPacketB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1145) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 408
  tail call void @_ZNK7UnitSAO28generateSetPropertiesCommandB5cxx11ERK16ObjectProperties(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(954) %1, ptr noundef nonnull align 8 dereferenceable(351) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK12LuaEntitySAO28generateSetTextureModCommandB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1145) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 18 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 2, ptr %i.a, align 1, !tbaa !23
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %bb.b unwind label %bb.g       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1120
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  invoke void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %i.f, ptr %i.d)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %3, align 8, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.g, i64 noundef %i.i)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.i ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.k = load ptr, ptr %3, align 8, !tbaa !105    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !23
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !19, !alias.scope !366
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !22, !alias.scope !366
  store i8 0, ptr %i.p, align 8, !tbaa !23, !alias.scope !366
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !242, !noalias !366 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !noalias !366 ; 2 uses
  %i.v = icmp ugt ptr %i.s, %i.u
  %.08.i.i.i = select i1 %i.v, ptr %i.s, ptr %i.u ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !243, !noalias !366 ; 2 uses
  %i.y = ptrtoint ptr %.08.i.i.i to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.aa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !105, !alias.scope !366 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.p
  br i1 %i.ae, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.af = load i64, ptr %i.p, align 8, !tbaa !23, !alias.scope !366
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #30
  br label %.body

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ah)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.e

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.f, %bb.d
  %i.ai = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !15
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.an, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !105 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.an, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.au) #29
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.av) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.g:                                             ; preds = %bb.a
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.i:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !23
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.ay, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %.body

.body:                                            ; preds = %bb.e, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %.pn5 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9 ], [ %i.aw, %bb.g ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ac, %bb.e ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector3dIfEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !120    ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !104
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !120
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4, !tbaa !134
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load float, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !134
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.28, i64 noundef 1) ; 0 uses
  %i.k = fpext nsz <2 x float> %.sroa.01.0.copyload to <2 x double> ; 2 uses
  %i.l = extractelement <2 x double> %i.k, i64 0
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, double noundef %i.l) ; 2 uses
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.o = extractelement <2 x double> %i.k, i64 1
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.m, double noundef %i.o) ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.29, i64 noundef 1) ; 0 uses
  %i.r = fpext nsz float %.sroa.22.0.copyload to double
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.p, double noundef %i.r)
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12LuaEntitySAO12sendPositionEbb(ptr noundef nonnull align 8 dereferenceable(1145) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.d = load i16, ptr %i.c, align 8, !tbaa !232
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7UnitSAO16sendOutdatedDataEv(ptr noundef nonnull align 8 dereferenceable(954) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.e, align 8, !tbaa !134 ; 4 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !134 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 0
  %i.g = load float, ptr %i.f, align 4, !tbaa !367
  %i.h = fsub nsz float %.sroa.0.0.vec.extract, %i.g ; 2 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.01.0.copyload.i, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.j = load float, ptr %i.i, align 8, !tbaa !368
  %i.k = fsub nsz float %.sroa.0.4.vec.extract, %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1076 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !237
  %i.n = fsub nsz float %.sroa.22.0.copyload.i, %i.m ; 2 uses
  %i.o = fmul nsz float %i.k, %i.k
  %i.p = tail call nsz float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.o)
  %i.q = tail call nsz float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.p)
  %i.r = tail call nsz noundef float @llvm.sqrt.f32(float %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1108
  store float %i.r, ptr %i.s, align 4, !tbaa !239
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float 0.000000e+00, ptr %i.t, align 8, !tbaa !233
  store <2 x float> %.sroa.01.0.copyload.i, ptr %i.f, align 4, !tbaa !134
  store float %.sroa.22.0.copyload.i, ptr %i.l, align 4, !tbaa !134
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1044 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1080
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !235
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1092
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.x, ptr noundef nonnull align 8 dereferenceable(12) %i.w, i64 12, i1 false), !tbaa.struct !235
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !139
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 3320
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store <2 x float> %.sroa.01.0.copyload.i, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.sroa.22.0.copyload.i, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1056
  call void @_ZN7UnitSAO29generateUpdatePositionCommandB5cxx11ERKN4core8vector3dIfEES4_S4_S4_bbf(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %i.u, ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i1 noundef zeroext %1, i1 noundef zeroext %2, float noundef %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !225
  store i16 %i.af, ptr %i.a, align 2, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i8 0, ptr %i.b, align 1, !tbaa !231
  %i.ag = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt5dequeI19ActiveObjectMessageSaIS0_EE12emplace_backIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.ad, ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit unwind label %bb.d ; 0 uses

_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ah = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !23
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt5queueI19ActiveObjectMessageSt5dequeIS0_SaIS0_EEE7emplaceIJtbRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.d:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.an = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.d
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !23
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %i.am
}

declare void @_ZN18ServerActiveObject15setBasePositionEN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(324), <2 x float>, float) local_unnamed_addr #2

declare void @_Z19collisionMoveSimpleP11EnvironmentP8IGameDefRKN4core8aabbox3dIfEEffPNS3_8vector3dIfEESA_S9_P12ActiveObjectb10StepUpMode(ptr dead_on_unwind writable sret(%struct.collisionMoveResult) align 8, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(24), float noundef, float noundef, ptr noundef, ptr noundef, <2 x float>, float, ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare void @_ZN15ScriptApiEntity14luaentity_StepEtfPK19collisionMoveResult(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, float noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN7UnitSAO16sendOutdatedDataEv(ptr noundef nonnull align 8 dereferenceable(954)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12LuaEntitySAO27getClientInitializationDataB5cxx11Et(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1145) %1, i16 noundef zeroext %2) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  %i.c = alloca [12 x i8], align 1                ; 6 uses
  %i.d = alloca [12 x i8], align 1                ; 6 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [1 x i8], align 1                 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 25 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 23 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %3, i32 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  store i8 1, ptr %i.g, align 1, !tbaa !23
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.g, i64 noundef 1)
          to label %bb.b unwind label %bb.o       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 968
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22
  invoke void @_Z17serializeString16B5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %i.l, ptr %i.j)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %4, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.m, i64 noundef %i.o)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.q ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.c
  %i.q = load ptr, ptr %4, align 8, !tbaa !105    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !23
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #30
end_hunk_1

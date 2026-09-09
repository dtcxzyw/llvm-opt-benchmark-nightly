Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/floating_point?download=true
inline.NumInlined: 428
inline.NumDeleted: 116
begin_hunk_0_@_ZNK4bzla13FloatingPoint4hashEv:bb.a
  %.fr = freeze i32 %i.k
  %i.l = icmp slt i32 %.fr, 0                     ; 3 uses
  %spec.select = select i1 %i.l, i32 -1, i32 1    ; 3 uses
  %i.m = add i64 %i.d, %i.a
  %i.n = mul i64 %i.m, 333444569                  ; 5 uses
  switch i64 %i.h, label %bb.l [
    i64 -9223372036854775805, label %._crit_edge.i.i
    i64 -9223372036854775807, label %._crit_edge.i.i89
  ]

._crit_edge.i.i:                                  ; preds = %_ZNK4bzla13FloatingPoint7fpisnegEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %.str.4..str.5 = select i1 %i.l, ptr @.str.4, ptr @.str.5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.o, ptr %1, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.o, ptr noundef nonnull align 1 dereferenceable(3) %.str.4..str.5, i64 3, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 3, ptr %i.p, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 19
  store i8 0, ptr %i.q, align 1, !tbaa !18
  %i.r = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.o, i64 noundef 3, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit unwind label %bb.c

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #16
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit: ; preds = %._crit_edge.i.i
  %i.u = invoke noundef i64 @_ZN4bzla4util4hash8fnv1a_64Emm(i64 noundef %i.r, i64 noundef %i.n)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit
  %i.v = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.o, align 8, !tbaa !18
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.n

bb.e:                                             ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.o
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.e
  %i.ac = load i64, ptr %i.o, align 8, !tbaa !18
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.m

._crit_edge.i.i78:                                ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.ae, ptr %2, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ae, ptr noundef nonnull align 1 dereferenceable(3) @.str.6, i64 3, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 3, ptr %i.af, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 19
  store i8 0, ptr %i.ag, align 1, !tbaa !18
  %i.ah = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.ae, i64 noundef 3, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit82 unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i78
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #16
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit82: ; preds = %._crit_edge.i.i78
  %i.ak = add i64 %i.d, %i.a
  %i.al = mul i64 %i.ak, 333444569
  %i.am = invoke noundef i64 @_ZN4bzla4util4hash8fnv1a_64Emm(i64 noundef %i.ah, i64 noundef %i.al)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit82
  %i.an = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ae
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.g
  %i.ap = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.n

bb.h:                                             ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit82
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.ae
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.h
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.m

._crit_edge.i.i89:                                ; preds = %_ZNK4bzla13FloatingPoint7fpisnegEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %.str.7..str.8 = select i1 %i.l, ptr @.str.7, ptr @.str.8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.aw, ptr %3, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aw, ptr noundef nonnull align 1 dereferenceable(5) %.str.7..str.8, i64 5, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 5, ptr %i.ax, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 21
  store i8 0, ptr %i.ay, align 1, !tbaa !18
  %i.az = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.aw, i64 noundef 5, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit93 unwind label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i89
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #16
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit93: ; preds = %._crit_edge.i.i89
  %i.bc = sext i32 %spec.select to i64
  %i.bd = mul i64 %i.az, %i.bc
  %i.be = invoke noundef i64 @_ZN4bzla4util4hash8fnv1a_64Emm(i64 noundef %i.bd, i64 noundef %i.n)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit93
  %i.bf = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.aw
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %bb.j
  %i.bh = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.n

bb.k:                                             ; preds = %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit93
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %3, align 8, !tbaa !15    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.aw
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %bb.k
  %i.bm = load i64, ptr %i.aw, align 8, !tbaa !18
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.m

bb.l:                                             ; preds = %_ZNK4bzla13FloatingPoint7fpisnegEv.exit
  %i.bo = load i32, ptr @__gmp_bits_per_limb, align 4, !tbaa !48 ; 2 uses
  %i.bp = sext i32 %i.bo to i64                   ; 3 uses
  %i.bq = add i64 %i.d, -1
  %i.br = add i64 %i.bq, %i.bp                    ; 2 uses
  %i.bs = udiv i64 %i.br, %i.bp                   ; 2 uses
  %.not = icmp ult i64 %i.br, %i.bp
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !49 ; 2 uses
  %i.bv = icmp eq i32 %i.bo, 64
  br i1 %i.bv, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.065108.us = phi i64 [ %i.dk, %.lr.ph.split.us ], [ %i.n, %.lr.ph ]
  %.066107.us = phi i64 [ %spec.store.select3.us, %.lr.ph.split.us ], [ 1, %.lr.ph ] ; 2 uses
  %.068106.us = phi i64 [ %i.dl, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %i.bw = add nuw nsw i64 %.066107.us, 1          ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @_ZN4bzla13FloatingPoint13s_hash_primesE, i64 %.066107.us
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !48
  %i.bz = zext i32 %i.by to i64
  %i.ca = icmp eq i64 %i.bw, 3
  %spec.store.select.us = select i1 %i.ca, i64 0, i64 %i.bw ; 2 uses
  %i.cb = add nuw nsw i64 %spec.store.select.us, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr @_ZN4bzla4util4hashL13s_hash_primesE, i64 %spec.store.select.us
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !48
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp eq i64 %i.cb, 3
  %spec.store.select2.us = select i1 %i.cf, i64 0, i64 %i.cb ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.068106.us
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !17 ; 2 uses
  %i.ci = lshr i64 %i.ch, 32
  %i.cj = xor i64 %i.ch, %.065108.us              ; 2 uses
  %i.ck = lshr i64 %i.cj, 16
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = mul i64 %i.cl, %i.bz                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 16
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = mul i64 %i.co, %i.ce                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 16
  %i.cr = add nuw nsw i64 %spec.store.select2.us, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @_ZN4bzla13FloatingPoint13s_hash_primesE, i64 %spec.store.select2.us
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !48
  %i.cu = zext i32 %i.ct to i64
  %i.cv = icmp eq i64 %i.cr, 3
  %spec.store.select1.us = select i1 %i.cv, i64 0, i64 %i.cr ; 2 uses
  %i.cw = add nuw nsw i64 %spec.store.select1.us, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr @_ZN4bzla13FloatingPoint13s_hash_primesE, i64 %spec.store.select1.us
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !48
  %i.cz = zext i32 %i.cy to i64
  %i.da = icmp eq i64 %i.cw, 3
  %spec.store.select3.us = select i1 %i.da, i64 0, i64 %i.cw ; 2 uses
  %i.db = xor i64 %i.ci, %i.cq
  %i.dc = xor i64 %i.db, %i.cp                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 16
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = mul i64 %i.de, %i.cu                    ; 2 uses
  %i.dg = lshr i64 %i.df, 16
  %i.dh = xor i64 %i.dg, %i.df
  %i.di = mul i64 %i.dh, %i.cz                    ; 2 uses
  %i.dj = lshr i64 %i.di, 16
  %i.dk = xor i64 %i.dj, %i.di                    ; 2 uses
  %i.dl = add nuw i64 %.068106.us, 1              ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.bs
  br i1 %i.dm, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !47

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.065108 = phi i64 [ %i.eh, %.lr.ph.split ], [ %i.n, %.lr.ph ]
  %.066107 = phi i64 [ %spec.store.select2, %.lr.ph.split ], [ 1, %.lr.ph ] ; 2 uses
  %.068106 = phi i64 [ %i.ei, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.dn = add nuw nsw i64 %.066107, 1             ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @_ZN4bzla13FloatingPoint13s_hash_primesE, i64 %.066107
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !48
  %i.dq = zext i32 %i.dp to i64
  %i.dr = icmp eq i64 %i.dn, 3
  %spec.store.select = select i1 %i.dr, i64 0, i64 %i.dn ; 2 uses
  %i.ds = add nuw nsw i64 %spec.store.select, 1   ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr @_ZN4bzla4util4hashL13s_hash_primesE, i64 %spec.store.select
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !48
  %i.dv = zext i32 %i.du to i64
  %i.dw = icmp eq i64 %i.ds, 3
  %spec.store.select2 = select i1 %i.dw, i64 0, i64 %i.ds ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.068106
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !17
  %i.dz = xor i64 %i.dy, %.065108                 ; 2 uses
  %i.ea = lshr i64 %i.dz, 16
  %i.eb = xor i64 %i.ea, %i.dz
  %i.ec = mul i64 %i.eb, %i.dq                    ; 2 uses
  %i.ed = lshr i64 %i.ec, 16
  %i.ee = xor i64 %i.ed, %i.ec
  %i.ef = mul i64 %i.ee, %i.dv                    ; 2 uses
  %i.eg = lshr i64 %i.ef, 16
  %i.eh = xor i64 %i.eg, %i.ef                    ; 2 uses
  %i.ei = add nuw i64 %.068106, 1                 ; 2 uses
  %i.ej = icmp ult i64 %i.ei, %i.bs
  br i1 %i.ej, label %.lr.ph.split, label %._crit_edge, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.l
  %.066.lcssa = phi i64 [ 1, %bb.l ], [ %spec.store.select3.us, %.lr.ph.split.us ], [ %spec.store.select2, %.lr.ph.split ]
  %.065.lcssa = phi i64 [ %i.n, %bb.l ], [ %i.dk, %.lr.ph.split.us ], [ %i.eh, %.lr.ph.split ]
  %i.ek = ashr i32 %spec.select, 16
  %i.el = xor i32 %i.ek, %spec.select
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @_ZN4bzla4util4hashL13s_hash_primesE, i64 %.066.lcssa
  %i.en = load i32, ptr %i.em, align 4, !tbaa !48
  %i.eo = mul i32 %i.en, %i.el
  %i.ep = zext i32 %i.eo to i64
  %i.eq = tail call noundef i64 @_ZN4bzla4util4hash8fnv1a_64Emm(i64 noundef %i.ep, i64 noundef %.065.lcssa)
  %i.er = load i64, ptr %i.g, align 8, !tbaa !22
  %i.es = tail call noundef i64 @_ZN4bzla4util4hash8fnv1a_64Emm(i64 noundef %i.er, i64 noundef %i.eq)
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn72.pn = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ]
  resume { ptr, i32 } %.pn72.pn

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %._crit_edge, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %i.es, %._crit_edge ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4bzla13FloatingPoint7fpisnegEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !24
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.h, -9223372036854775806
  %or.cond = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !26
  %i.l = icmp slt i32 %i.k, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4bzla13FloatingPoint7fpisinfEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !24
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp eq i64 %i.h, -9223372036854775805
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

declare noundef i64 @_ZN4bzla4util4hash8fnv1a_64Emm(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4bzla13FloatingPoint7fpisnanEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !24
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp eq i64 %i.h, -9223372036854775806
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK4bzla13FloatingPoint8fpiszeroEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !24
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp eq i64 %i.h, -9223372036854775807
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4bzla13FloatingPoint3strB5cxx11Eh(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.bzla::BitVector", align 8   ; 5 uses
  %4 = alloca %"class.bzla::BitVector", align 8   ; 5 uses
  %5 = alloca %"class.bzla::BitVector", align 8   ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %7 = alloca %"class.bzla::BitVector", align 8   ; 9 uses
  %8 = alloca %"class.bzla::BitVector", align 8   ; 10 uses
  %9 = alloca %"class.bzla::BitVector", align 8   ; 10 uses
  %10 = alloca %"class.bzla::BitVector", align 8  ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !24
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.g, ptr noundef nonnull align 1 dereferenceable(6) @.str.9, i64 6, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 6, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 0, ptr %i.i, align 2, !tbaa !18
  br label %bb.at

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZN4bzla9BitVectorC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %1, align 8, !tbaa !24
  %i.k = load i64, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  invoke void @_ZNK4bzla13FloatingPoint5as_bvEv(ptr dead_on_unwind nonnull writable sret(%"class.bzla::BitVector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %10, align 8, !tbaa !10    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.m = add i64 %i.l, 4294967295
end_hunk_0

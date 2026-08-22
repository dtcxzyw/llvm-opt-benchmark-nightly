Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFExporter?download=true
inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN4glTF8LazyDictINS_4NodeEE3GetEPKc:bb.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.t = load i64, ptr %i.e, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = insertvalue { ptr, i32 } poison, ptr %i.v, 0
  %i.z = insertvalue { ptr, i32 } %i.y, i32 %i.x, 1
  br label %bb.ac

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.i
  %i.ae = load i64, ptr %i.e, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ad

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA24_KcRPS1_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(24) @.str.82, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %bb.ad

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36, !noalias !145
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, -281474976710656
  %i.as = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.ao, align 8
  store i32 %i.am, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 4 uses
  %i.ba = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.bb, 5
  %i.bc = getelementptr i8, ptr %i.az, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not9.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.bd = lshr i64 %i.as, 40
  %i.be = trunc i64 %i.bd to i8
  %i.bf = and i64 %i.at, 1152921504606846976
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bf, 0        ; 2 uses
  %i.bg = sext i8 %i.be to i32
  %i.bh = sub nsw i32 13, %i.bg
  %i.bi = select i1 %.not.i.i.i.i.i.i, i32 %i.am, i32 %i.bh ; 2 uses
  %i.bj = and i64 %i.as, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = select i1 %.not.i.i.i.i.i.i, ptr %i.bk, ptr %3 ; 2 uses
  %i.bm = zext i32 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.ce, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.bp, 0      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = load i32, ptr %.010.i.i.i, align 8
  %i.bv = select i1 %.not.i.i13.i.i.i.i, i32 %i.bu, i32 %i.bt
  %.not.i.i.i.i = icmp eq i32 %i.bi, %i.bv
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = select i1 %.not.i.i13.i.i.i.i, ptr %i.ca, ptr %.010.i.i.i ; 2 uses
  %i.cc = icmp eq ptr %i.bl, %i.cb
  br i1 %i.cc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.p
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.cb, i64 %i.bm)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cd, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %i.bc
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.o, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.p, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %i.az, %bb.n ], [ %i.bc, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.p ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bb
  %i.cg = icmp eq ptr %.0.lcssa.i.i.i, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA31_KcRPS1_RA7_S1_S5_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(31) @.str.84, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #30
  br label %bb.ad

bb.t:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = icmp eq i16 %i.cm, 3
  br i1 %i.cn, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA23_KcRPS1_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 1 dereferenceable(23) @.str.86, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(23) @.str.87)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.co) #30
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.cq = call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #33 ; 17 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(344) %i.cr, i8 0, i64 344, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8
  store i8 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8
  store i8 0, ptr %i.cv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF4NodeE, i64 16), ptr %i.cq, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 200
  store i8 0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 236
  store i8 0, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 248
  store i32 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 264
  store i32 0, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 272
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 312
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 328 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cw, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.db, i8 0, i64 36, i1 false)
  store ptr %i.dd, ptr %i.dc, align 8
  store i8 0, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 352
  store i32 0, ptr %i.de, align 8
  %i.df = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.dg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.df) ; 0 uses
  %i.dh = load i16, ptr %i.cl, align 2
  %i.di = icmp eq i16 %i.dh, 3
  br i1 %i.di, label %bb.y, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.dj, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = and i64 %i.dm, -281474976710656
  %i.do = or i64 %i.dn, ptrtoint (ptr @.str.88 to i64) ; 2 uses
  %i.dp = inttoptr i64 %i.do to ptr
  store ptr %i.dp, ptr %i.dk, align 8
  store i32 4, ptr %2, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = and i64 %i.ds, 281474976710655
  %i.du = inttoptr i64 %i.dt to ptr               ; 4 uses
  %i.dv = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dw, 5
  %i.dx = getelementptr i8, ptr %i.du, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.dy = lshr i64 ptrtoint (ptr @.str.88 to i64), 40
  %i.dz = trunc i64 %i.dy to i8
  %i.ea = and i64 %i.do, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ea, 0      ; 2 uses
  %i.eb = sext i8 %i.dz to i32
  %i.ec = sub nsw i32 13, %i.eb
  %i.ed = select i1 %.not.i.i.i.i.i.i.i, i32 4, i32 %i.ec ; 2 uses
  %i.ee = and i64 ptrtoint (ptr @.str.88 to i64), 281474976710655
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ef, ptr %2 ; 2 uses
  %i.eh = zext i32 %i.ed to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i.i ], [ %i.ez, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ej = load i16, ptr %i.ei, align 2
  %i.ek = and i16 %i.ej, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ek, 0    ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.em = load i8, ptr %i.el, align 1
  %i.en = sext i8 %i.em to i32
  %i.eo = sub nsw i32 13, %i.en
  %i.ep = load i32, ptr %.010.i.i.i.i, align 8
  %i.eq = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.ep, i32 %i.eo
  %.not.i.i.i.i.i = icmp eq i32 %i.ed, %i.eq
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = and i64 %i.et, 281474976710655
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.ev, ptr %.010.i.i.i.i ; 2 uses
  %i.ex = icmp eq ptr %i.eg, %i.ew
  br i1 %i.ex, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.aa
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.eg, ptr %i.ew, i64 %i.eh)
  %i.ey = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ey, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.z
  %i.ez = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.ez, %i.dx
  br i1 %.not.i.i.i.i24, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.z, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i.i.i.i = phi ptr [ %i.du, %bb.y ], [ %.010.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.dx, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.fa = getelementptr inbounds nuw [32 x i8], ptr %i.du, i64 %i.dw
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.fa
  br i1 %.not.i, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.fc = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4ReadERN9rapidjson12GenericValueINS8_4UTF8IcEENS8_19MemoryPoolAllocatorINS8_12CrtAllocatorEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) ; 0 uses
  br label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.ab
  %i.fd = load ptr, ptr %i.c, align 8, !nonnull !16, !align !112
  call void @_ZN4glTF4Node4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(360) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(2032) %i.fd)
  %i.fe = call { ptr, i32 } @_ZN4glTF8LazyDictINS_4NodeEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.cq)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, %bb.g
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.fe, %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged

bb.ad:                                            ; preds = %bb.s, %bb.w, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.m ], [ %i.cj, %bb.s ], [ %i.cp, %bb.w ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_Z10ExportDataRN4glTF5AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEjPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = icmp ne i32 %3, 0
  %i.b = icmp ne ptr %4, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %_ZN4glTF8Accessor9WriteDataEmPKvm.exit

bb.b:                                             ; preds = %bb.a
  %i.c = zext i32 %5 to i64
  %i.d = getelementptr inbounds nuw [16 x i8], ptr @_ZN4glTF10AttribType4dataILi0EE5infosE, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = zext i32 %6 to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @_ZN4glTF10AttribType4dataILi0EE5infosE, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = tail call noundef i32 @_ZN4glTF17ComponentTypeSizeENS_13ComponentTypeE(i32 noundef %7) ; 3 uses
  %i.l = load ptr, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = zext i32 %i.n to i64
  %i.p = load ptr, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 72 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 4 uses
  %i.u = zext i32 %i.k to i64
  %i.v = urem i64 %i.t, %i.u                      ; 2 uses
  %i.w = mul i32 %i.j, %3
  %i.x = mul i32 %i.w, %i.k
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = add nuw nsw i64 %i.v, %i.y               ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN4glTF6Buffer4GrowEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 120 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = add i64 %i.z, %i.t                      ; 3 uses
  %.not.i = icmp ult i64 %i.ac, %i.ad
  br i1 %.not.i, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.ae = lshr i64 %i.ac, 1
  %i.af = add i64 %i.ae, %i.ac
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %i.ad) ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.ab, align 8
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i) #33 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 96 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.ai, null
  br i1 %.not11.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %i.ai, i64 %i.t, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EE5resetIhSt14default_deleteIA_hEEENSt9enable_ifIXsr21__sp_is_constructibleIhT_EE5valueEvE4typeEPS8_T0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull %i.ag)
  %i.aj = load i64, ptr %i.s, align 8
  %i.ak = add i64 %i.aj, %i.z
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.c
  %.sink.i = phi i64 [ %i.ak, %bb.f ], [ %i.ad, %bb.c ]
  store i64 %.sink.i, ptr %i.s, align 8
  br label %_ZN4glTF6Buffer4GrowEm.exit

_ZN4glTF6Buffer4GrowEm.exit:                      ; preds = %bb.b, %.sink.split.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 696
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @_ZN4glTF5Asset12FindUniqueIDERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.68)
  %i.am = load ptr, ptr %9, align 8
  %i.an = invoke { ptr, i32 } @_ZN4glTF8LazyDictINS_10BufferViewEE6CreateEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.al, ptr noundef %i.am)
          to label %_ZN4glTF8LazyDictINS_10BufferViewEE6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.h ; 2 uses

_ZN4glTF8LazyDictINS_10BufferViewEE6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN4glTF6Buffer4GrowEm.exit
  %i.ao = add i64 %i.v, %i.t
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.an, 0 ; 5 uses
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.an, 1 ; 2 uses
  %i.ap = load ptr, ptr %9, align 8               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4glTF8LazyDictINS_10BufferViewEE6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.as = load i64, ptr %i.aq, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
begin_hunk_1_@_ZN6Assimp12glTFExporter10ExportNodeEPK6aiNodeRN10glTFCommon3RefIN4glTF4NodeEEE:bb.a
  %i.fa = load ptr, ptr %i.ew, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store ptr %i.fb, ptr %i.ew, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backEOS4_.exit

bb.q:                                             ; preds = %bb.o
  %i.fc = load ptr, ptr %i.et, align 8            ; 5 uses
  %i.fd = ptrtoint ptr %i.ex to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 4 uses
  %i.fg = icmp eq i64 %i.ff, 9223372036854775792
  br i1 %i.fg, label %bb.r, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.fh = ashr exact i64 %i.ff, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i44 = call i64 @llvm.umax.i64(i64 %i.fh, i64 1)
  %i.fi = add nsw i64 %.sroa.speculated.i.i.i.i44, %i.fh ; 2 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  %i.fk = call i64 @llvm.umin.i64(i64 %i.fi, i64 576460752303423487)
  %i.fl = select i1 %i.fj, i64 576460752303423487, i64 %i.fk ; 3 uses
  %.not.i.i.i.i45 = icmp ne i64 %i.fl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i45)
  %i.fm = shl nuw nsw i64 %i.fl, 4
  %i.fn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fm) #33 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ff ; 2 uses
  store ptr %i.ev, ptr %i.fo, align 8
  %.sroa.5.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i32 %i.ep, ptr %.sroa.5.0..sroa_idx54, align 8
  %.not10.i.i.i.i.i.i46 = icmp eq ptr %i.fc, %i.ex
  br i1 %.not10.i.i.i.i.i.i46, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i47

.lr.ph.i.i.i.i.i.i47:                             ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i47
  %.012.i.i.i.i.i.i48 = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i47 ], [ %i.fn, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i49 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i47 ], [ %i.fc, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i48, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i49, i64 16, i1 false), !alias.scope !178
  %i.fp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i49, i64 16 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i48, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i50 = icmp eq ptr %i.fp, %i.ex
  br i1 %.not.i.i.i.i.i.i50, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i47, !llvm.loop !29

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i47, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i51 = phi ptr [ %i.fn, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.fq, %.lr.ph.i.i.i.i.i.i47 ]
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i51, i64 16
  %.not.i23.i.i.i52 = icmp eq ptr %i.fc, null
  br i1 %.not.i23.i.i.i52, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.ff) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i
  store ptr %i.fn, ptr %i.et, align 8
  store ptr %i.fr, ptr %i.ew, align 8
  %i.fs = getelementptr inbounds nuw [16 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.fs, ptr %i.ey, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.p, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %i.ft = load i32, ptr %i.da, align 8
  %i.fu = zext i32 %i.ft to i64
  %i.fv = icmp samesign ult i64 %indvars.iv.next75, %i.fu
  br i1 %i.fv, label %bb.o, label %._crit_edge, !llvm.loop !182
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_5SceneEE6CreateEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc13 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.44)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.j
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #30
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ae, i8 0, i64 64, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  store i8 0, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF5SceneE, i64 16), ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.ak) ; 0 uses
  %i.am = call { ptr, i32 } @_ZN4glTF8LazyDictINS_5SceneEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.ad)
  ret { ptr, i32 } %i.am

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare i32 @aiGetVersionMajor() local_unnamed_addr #4

declare i32 @aiGetVersionMinor() local_unnamed_addr #4

declare i32 @aiGetVersionRevision() local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z12ai_to_stringIjENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2)
  %i.a = zext i32 %1 to i64
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.a)
          to label %_ZNSolsEj.exit unwind label %bb.e ; 0 uses

_ZNSolsEj.exit:                                   ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !189
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !189
  store i8 0, ptr %i.c, align 8, !alias.scope !189
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !189 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !189 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSolsEj.exit
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !189 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !alias.scope !189 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !189
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #31
  br label %.body

bb.d:                                             ; preds = %_ZNSolsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %2, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %2, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #30
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

bb.e:                                             ; preds = %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.p, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z20ExtractAnimationDataRN4glTF5AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_9AnimationEEERNSA_INS_6BufferEEEPK10aiNodeAnimf(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef %4, float noundef %5) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 1028 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1056 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 1040 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call i32 @llvm.umax.i32(i32 %i.b, i32 %i.e)
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 %i.g) ; 2 uses
  %i.j = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1) ; 8 uses
  %spec.select.2 = zext i32 %i.j to i64           ; 25 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.a
  %i.k = shl nuw nsw i64 %spec.select.2, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #33 ; 8 uses
  store float 0.000000e+00, ptr %i.l, align 4
  %i.m = add nsw i64 %spec.select.2, -1           ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.o = getelementptr i8, ptr %i.l, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.o, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false)
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 1032
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = fpext float %5 to double                 ; 3 uses
  %i.s = add nsw i64 %spec.select.2, -1           ; 2 uses
  %xtraiter = and i64 %spec.select.2, 1
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %spec.select.2, 4294967294
  br label %bb.b

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.0111155.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ar, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod179 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod179)
  %i.u = mul i64 %.0111155.epil.init, %i.c
  %i.v = udiv i64 %i.u, %spec.select.2
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.v
  %i.x = load double, ptr %i.w, align 8
  %i.y = fdiv double %i.x, %i.r
  %i.z = fptrunc double %i.y to float
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0111155.epil.init
  store float %i.z, ptr %i.aa, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.ab = invoke { ptr, i32 } @_Z10ExportDataRN4glTF5AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEjPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.j, ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 0, i32 noundef 5126, i32 noundef 0)
          to label %bb.c unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit120 ; 2 uses

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.0111155 = phi i64 [ 0, %.lr.ph.new ], [ %i.ar, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ac = mul i64 %.0111155, %i.c
  %i.ad = udiv i64 %i.ac, %spec.select.2
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fdiv double %i.af, %i.r
  %i.ah = fptrunc double %i.ag to float
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0111155
  store float %i.ah, ptr %i.ai, align 4
  %i.aj = or disjoint i64 %.0111155, 1            ; 2 uses
  %i.ak = mul i64 %i.aj, %i.c
  %i.al = udiv i64 %i.ak, %spec.select.2
end_hunk_1
begin_hunk_2_@_ZN9rapidjson8internal6Grisu2EdPcPiS2_:bb.a
  %i.ar = and i64 %i.ah, 4294967295               ; 6 uses
  %i.as = mul nuw i64 %i.aq, %i.ao
  %i.at = mul nuw i64 %i.aq, %i.ap                ; 2 uses
  %i.au = mul nuw i64 %i.ar, %i.ao                ; 2 uses
  %i.av = mul nuw i64 %i.ar, %i.ap
  %i.aw = lshr i64 %i.av, 32
  %i.ax = and i64 %i.au, 4294967295
  %i.ay = and i64 %i.at, 4294967294
  %i.az = add nuw nsw i64 %i.ax, 2147483648
  %i.ba = add nuw nsw i64 %i.az, %i.aw
  %i.bb = add nuw nsw i64 %i.ba, %i.ay
  %i.bc = lshr i64 %i.au, 32
  %i.bd = add nuw i64 %i.bc, %i.as
  %i.be = lshr i64 %i.at, 32
  %i.bf = add nuw i64 %i.bd, %i.be
  %i.bg = lshr i64 %i.bb, 32
  %i.bh = add nuw i64 %i.bf, %i.bg
  %i.bi = add nsw i32 %.sink.i, 64
  %i.bj = sub nsw i32 %i.bi, %i.am
  %i.bk = add nsw i32 %i.bj, %i.ak
  store i64 %i.bh, ptr %4, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bk, ptr %.sroa.210.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bl = lshr i64 %i.n, 32                       ; 2 uses
  %i.bm = and i64 %i.n, 4294966272                ; 2 uses
  %i.bn = mul nuw i64 %i.aq, %i.bl
  %i.bo = mul nuw i64 %i.aq, %i.bm                ; 2 uses
  %i.bp = mul nuw i64 %i.ar, %i.bl                ; 2 uses
  %i.bq = mul nuw i64 %i.ar, %i.bm
  %i.br = lshr i64 %i.bq, 32
  %i.bs = and i64 %i.bp, 4294967295
  %i.bt = and i64 %i.bo, 4294966272
  %i.bu = add nuw nsw i64 %i.bs, 2147483648
  %i.bv = add nuw nsw i64 %i.bu, %i.br
  %i.bw = add nuw nsw i64 %i.bv, %i.bt
  %i.bx = lshr i64 %i.bp, 32
  %i.by = add nuw i64 %i.bx, %i.bn
  %i.bz = lshr i64 %i.bo, 32
  %i.ca = add nuw i64 %i.by, %i.bz
  %i.cb = lshr i64 %i.bw, 32
  %i.cc = add nuw i64 %i.ca, %i.cb
  %i.cd = add i32 %.sroa.7.0.lcssa.i.i, 54
  %i.ce = add i32 %i.cd, %i.ak
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.ce, ptr %.sroa.26.0..sroa_idx, align 8
  %i.cf = lshr i64 %i.t, 32                       ; 2 uses
  %i.cg = and i64 %i.t, 4294967295                ; 2 uses
  %i.ch = mul nuw i64 %i.cf, %i.aq
  %i.ci = mul nuw i64 %i.cg, %i.aq                ; 2 uses
  %i.cj = mul nuw i64 %i.cf, %i.ar                ; 2 uses
  %i.ck = mul nuw i64 %i.cg, %i.ar
  %i.cl = lshr i64 %i.ck, 32
  %i.cm = and i64 %i.cj, 4294967295
  %i.cn = and i64 %i.ci, 4294967295
  %i.co = add nuw nsw i64 %i.cm, 2147483648
  %i.cp = add nuw nsw i64 %i.co, %i.cl
  %i.cq = add nuw nsw i64 %i.cp, %i.cn
  %i.cr = lshr i64 %i.cj, 32
  %i.cs = add nuw i64 %i.cr, %i.ch
  %i.ct = lshr i64 %i.ci, 32
  %i.cu = add nuw i64 %i.cs, %i.ct
  %i.cv = lshr i64 %i.cq, 32
  %i.cw = add i64 %i.cu, %i.cv
  %.neg = xor i64 %i.cw, -1
  %i.cx = add i64 %i.cc, -1                       ; 2 uses
  store i64 %i.cx, ptr %5, align 8
  %i.cy = add i64 %i.cx, %.neg
  call void @_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %5, i64 noundef %i.cy, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN9rapidjson8internal8PrettifyEPciii(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = add i32 %2, %1                           ; 13 uses
  %i.b = icmp sgt i32 %2, -1
  %i.c = icmp slt i32 %i.a, 22
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not146 = icmp eq i32 %2, 0
  br i1 %.not146, label %._crit_edge129, label %.lr.ph128.preheader

.lr.ph128.preheader:                              ; preds = %.preheader
  %i.d = sext i32 %1 to i64
  %scevgep133 = getelementptr i8, ptr %0, i64 %i.d
  %i.e = add i32 %1, 1
  %smax134 = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.e)
  %i.f = xor i32 %1, -1
  %i.g = add i32 %smax134, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep133, i8 48, i64 %i.i, i1 false)
  br label %._crit_edge129

._crit_edge129:                                   ; preds = %.lr.ph128.preheader, %.preheader
  %i.j = sext i32 %i.a to i64
  %i.k = getelementptr inbounds i8, ptr %0, i64 %i.j ; 3 uses
  store i8 46, ptr %i.k, align 1
  %i.l = getelementptr i8, ptr %i.k, i64 1
  store i8 48, ptr %i.l, align 1
  %i.m = getelementptr i8, ptr %i.k, i64 2
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.b:                                             ; preds = %bb.a
  %i.n = add i32 %i.a, -1                         ; 5 uses
  %or.cond4 = icmp ult i32 %i.n, 21
  br i1 %or.cond4, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = add nuw nsw i32 %i.a, 1                  ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p
  %i.r = zext nneg i32 %i.a to i64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r ; 3 uses
  %i.t = sub i32 0, %2
  %i.u = sext i32 %i.t to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.s, i64 %i.u, i1 false)
  store i8 46, ptr %i.s, align 1
  %i.v = add nsw i32 %3, %2
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not108122 = icmp sgt i32 %3, 1
  br i1 %.not108122, label %.lr.ph125.preheader, label %._crit_edge126

.lr.ph125.preheader:                              ; preds = %bb.d
  %i.x = add nuw nsw i32 %i.a, %3
  br label %.lr.ph125

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %bb.e
  %.097123 = phi i32 [ %i.ae, %bb.e ], [ %i.x, %.lr.ph125.preheader ] ; 3 uses
  %i.y = zext nneg i32 %.097123 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %.not107 = icmp eq i8 %i.aa, 48
  br i1 %.not107, label %bb.e, label %.thread

.thread:                                          ; preds = %.lr.ph125
  %i.ab = sext i32 %.097123 to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.e:                                             ; preds = %.lr.ph125
  %i.ae = add nsw i32 %.097123, -1                ; 2 uses
  %.not108 = icmp sgt i32 %i.ae, %i.o
  br i1 %.not108, label %.lr.ph125, label %._crit_edge126, !llvm.loop !224

._crit_edge126:                                   ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.f:                                             ; preds = %bb.c
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr i8, ptr %0, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.g:                                             ; preds = %bb.b
  %i.aj = add i32 %i.a, 5
  %or.cond6 = icmp ult i32 %i.aj, 6
  br i1 %or.cond6, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ak = sub nsw i32 2, %i.a                     ; 3 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = sext i32 %1 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %0, i64 %i.an, i1 false)
  store i8 48, ptr %0, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 46, ptr %i.ao, align 1
  %i.ap = icmp slt i32 %i.a, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %scevgep = getelementptr i8, ptr %0, i64 2
  %i.aq = tail call i32 @llvm.umax.i32(i32 %i.ak, i32 3)
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = add nsw i64 %i.ar, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.as, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.h
  %i.at = sub i32 0, %2
  %i.au = icmp slt i32 %3, %i.at
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %._crit_edge
  %i.av = icmp slt i32 %3, 2
  br i1 %i.av, label %.loopexit142, label %.lr.ph121.preheader

.lr.ph121.preheader:                              ; preds = %bb.i
  %i.aw = add nuw nsw i32 %3, 1
  br label %.lr.ph121

bb.j:                                             ; preds = %.lr.ph121
  %4 = add nsw i32 %.0119, -1
  %i.ax = icmp slt i32 %.0119, 4
  br i1 %i.ax, label %.loopexit142, label %.lr.ph121, !llvm.loop !225

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %bb.j
  %.0119 = phi i32 [ %4, %bb.j ], [ %i.aw, %.lr.ph121.preheader ] ; 3 uses
  %5 = zext nneg i32 %.0119 to i64                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %i.az = load i8, ptr %i.ay, align 1
  %.not = icmp eq i8 %i.az, 48
  br i1 %.not, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph121
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

.loopexit142:                                     ; preds = %bb.j, %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bd = add nsw i32 %i.ak, %1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %0, i64 %i.be
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.l:                                             ; preds = %bb.g
  %i.bg = sub nsw i32 0, %3
  %i.bh = icmp slt i32 %i.a, %i.bg
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 48, ptr %0, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 46, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 48, ptr %i.bj, align 1
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.n:                                             ; preds = %bb.l
  %i.bl = icmp eq i32 %1, 1
  br i1 %i.bl, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 101, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bo = icmp slt i32 %i.n, 0
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 45, ptr %i.bn, align 1
  %i.bq = sub i32 1, %i.a
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.020.i = phi ptr [ %i.bp, %bb.p ], [ %i.bn, %bb.o ] ; 9 uses
  %.0.i = phi i32 [ %i.bq, %bb.p ], [ %i.n, %bb.o ] ; 6 uses
  %i.br = icmp samesign ugt i32 %.0.i, 99
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bs = udiv i32 %.0.i, 100
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = add i8 %i.bt, 48
  %i.bv = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.bu, ptr %.020.i, align 1
  %i.bw = urem i32 %.0.i, 100
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.ca, ptr %i.bv, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.020.i, i64 3
  store i8 %i.cd, ptr %i.cb, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.s:                                             ; preds = %bb.q
  %i.cf = icmp samesign ugt i32 %.0.i, 9
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = shl nuw nsw i32 %.0.i, 1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.cj, ptr %.020.i, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.020.i, i64 2
  store i8 %i.cm, ptr %i.ck, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.u:                                             ; preds = %bb.s
  %i.co = trunc nuw nsw i32 %.0.i to i8
  %i.cp = or disjoint i8 %i.co, 48
  %i.cq = getelementptr inbounds nuw i8, ptr %.020.i, i64 1
  store i8 %i.cp, ptr %.020.i, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.v:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ct = add nsw i32 %1, -1
  %i.cu = sext i32 %i.ct to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull align 1 %i.cs, i64 %i.cu, i1 false)
  store i8 46, ptr %i.cs, align 1
  %i.cv = sext i32 %1 to i64
  %i.cw = getelementptr i8, ptr %0, i64 %i.cv     ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 1
  store i8 101, ptr %i.cx, align 1
  %i.cy = getelementptr i8, ptr %i.cw, i64 2      ; 2 uses
  %i.cz = icmp slt i32 %i.n, 0
  br i1 %i.cz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr i8, ptr %i.cw, i64 3
  store i8 45, ptr %i.cy, align 1
  %i.db = sub i32 1, %i.a
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.020.i109 = phi ptr [ %i.da, %bb.w ], [ %i.cy, %bb.v ] ; 9 uses
  %.0.i110 = phi i32 [ %i.db, %bb.w ], [ %i.n, %bb.v ] ; 6 uses
  %i.dc = icmp samesign ugt i32 %.0.i110, 99
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dd = udiv i32 %.0.i110, 100
  %i.de = trunc i32 %i.dd to i8
  %i.df = add i8 %i.de, 48
  %i.dg = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.df, ptr %.020.i109, align 1
  %i.dh = urem i32 %.0.i110, 100
  %i.di = shl nuw nsw i32 %i.dh, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.dj ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.020.i109, i64 2
  store i8 %i.dl, ptr %i.dg, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.020.i109, i64 3
  store i8 %i.do, ptr %i.dm, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.z:                                             ; preds = %bb.x
  %i.dq = icmp samesign ugt i32 %.0.i110, 9
  br i1 %i.dq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dr = shl nuw nsw i32 %.0.i110, 1
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZZN9rapidjson8internal12GetDigitsLutEvE10cDigitsLut, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.du, ptr %.020.i109, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.020.i109, i64 2
  store i8 %i.dx, ptr %i.dv, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

bb.ab:                                            ; preds = %bb.z
  %i.dz = trunc nuw nsw i32 %.0.i110 to i8
  %i.ea = or disjoint i8 %i.dz, 48
  %i.eb = getelementptr inbounds nuw i8, ptr %.020.i109, i64 1
  store i8 %i.ea, ptr %.020.i109, align 1
  br label %_ZN9rapidjson8internal13WriteExponentEiPc.exit

_ZN9rapidjson8internal13WriteExponentEiPc.exit:   ; preds = %.loopexit142, %.loopexit, %bb.ab, %bb.aa, %bb.y, %bb.u, %bb.t, %bb.r, %.thread, %bb.k, %bb.m, %bb.f, %._crit_edge126, %._crit_edge129
  %.3 = phi ptr [ %i.m, %._crit_edge129 ], [ %i.af, %._crit_edge126 ], [ %i.ad, %.thread ], [ %i.ai, %bb.f ], [ %i.cq, %bb.u ], [ %i.bk, %bb.m ], [ %i.eb, %bb.ab ], [ %i.bf, %bb.k ], [ %i.ce, %bb.r ], [ %i.cn, %bb.t ], [ %i.dp, %bb.y ], [ %i.dy, %bb.aa ], [ %i.bc, %.loopexit142 ], [ %i.bb, %.loopexit ]
  ret ptr %.3
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN9rapidjson8internal8DigitGenERKNS0_5DiyFpES3_mPcPiS5_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sub nsw i32 0, %i.b
  %i.d = zext nneg i32 %i.c to i64                ; 5 uses
  %i.e = shl nuw i64 1, %i.d                      ; 4 uses
  %i.f = load i64, ptr %1, align 8                ; 3 uses
  %i.g = load i64, ptr %0, align 8
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = lshr i64 %i.f, %i.d
  %i.j = trunc i64 %i.i to i32                    ; 9 uses
  %i.k = add i64 %i.e, -1                         ; 2 uses
  %i.l = and i64 %i.k, %i.f                       ; 2 uses
  %i.m = icmp ult i32 %i.j, 10
  br i1 %i.m, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp ult i32 %i.j, 100
  br i1 %i.n, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i32 %i.j, 1000
  br i1 %i.o, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ult i32 %i.j, 10000
  br i1 %i.p, label %_ZN9rapidjson8internal19CountDecimalDigit32Ej.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult i32 %i.j, 100000
end_hunk_2
begin_hunk_3_@_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE:bb.a
_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit27: ; preds = %bb.w, %bb.x
  %i.en = phi ptr [ %i.ei, %bb.w ], [ %.pre.i.i26, %bb.x ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.eb
  store ptr %i.eo, ptr %i.eh, align 8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.en, i8 %i.ee, i64 %i.eb, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit27, %bb.h, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit
  %i.ep = load i64, ptr %i.e, align 8
  %i.eq = add i64 %i.ep, 1
  store i64 %i.eq, ptr %i.e, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.a
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.er, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #31
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !235

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

declare i32 @aiGetMaterialIntegerArray(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @aiGetMaterialTextureCount(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @aiGetMaterialString(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_10BufferViewEE6CreateEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc13 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.44)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.j
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #30
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33 ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ae, i8 0, i64 96, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  store i8 0, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF10BufferViewE, i64 16), ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i32 0, ptr %i.aj, align 8
  %i.ak = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.al = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.ak) ; 0 uses
  %i.am = call { ptr, i32 } @_ZN4glTF8LazyDictINS_10BufferViewEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.ad)
  ret { ptr, i32 } %i.am

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_10BufferViewEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN4glTF10BufferViewESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorIPN4glTF10BufferViewESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.h ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.h
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #33 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.g, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4glTF10BufferViewESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.d, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4glTF10BufferViewESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.i, align 8
  br label %_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4glTF10BufferViewESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.x = trunc i64 %i.h to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  store i32 %i.x, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !16, !align !112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  store i32 1, ptr %i.ae, align 4
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.x, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF10BufferViewD0Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF6ObjectE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31, !inline_history !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4glTF6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31, !inline_history !7
  br label %_ZN4glTF6ObjectD2Ev.exit

_ZN4glTF6ObjectD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EE5resetIhSt14default_deleteIA_hEEENSt9enable_ifIXsr21__sp_is_constructibleIhT_EE5valueEvE4typeEPS8_T0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2IhSt14default_deleteIA_hEvEEPT_T0_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #30 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %1) #31
  br label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i: ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #34
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #32
  unreachable

bb.g:                                             ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i
  unreachable

_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2IhSt14default_deleteIA_hEvEEPT_T0_.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.j, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPhSt14default_deleteIA_hESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.k, align 8
  store ptr %1, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  store ptr %i.a, ptr %i.l, align 8
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIhLN9__gnu_cxx12_Lock_policyE2EEC2IhSt14default_deleteIA_hEvEEPT_T0_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #30, !inline_history !5
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
end_hunk_3
begin_hunk_4_@_ZN17DeadlyImportErrorC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_:bb.a
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #30
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #30
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #30
  resume { ptr, i32 } %i.o
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %3, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %3, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #30
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #30
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_8AccessorEE6CreateEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc13 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.44)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.j
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #30
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #33 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ae, i8 0, i64 96, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  store i8 0, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF8AccessorE, i64 16), ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i8 0, i64 48, i1 false)
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.am = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.al) ; 0 uses
  %i.an = call { ptr, i32 } @_ZN4glTF8LazyDictINS_8AccessorEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.ad)
  ret { ptr, i32 } %i.an

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_8AccessorEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN4glTF8AccessorESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorIPN4glTF8AccessorESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.h ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.h
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #33 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.g, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4glTF8AccessorESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.d, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4glTF8AccessorESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.i, align 8
  br label %_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4glTF8AccessorESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.x = trunc i64 %i.h to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  store i32 %i.x, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !16, !align !112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  store i32 1, ptr %i.ae, align 4
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.x, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8AccessorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF8AccessorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIdSaIdEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit2

_ZNSt6vectorIdSaIdEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF6ObjectE, i64 16), ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit2
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #31, !inline_history !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN4glTF6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.y = load i64, ptr %i.w, align 8
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #31, !inline_history !7
  br label %_ZN4glTF6ObjectD2Ev.exit

_ZN4glTF6ObjectD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF8AccessorD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF8AccessorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31, !inline_history !238
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit.i

_ZNSt6vectorIdSaIdEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31, !inline_history !238
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit2.i

_ZNSt6vectorIdSaIdEED2Ev.exit2.i:                 ; preds = %bb.c, %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF6ObjectE, i64 16), ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit2.i
  %i.s = load i64, ptr %i.q, align 8
  %i.t = add i64 %i.s, 1
end_hunk_4
begin_hunk_5_@_ZN4glTF8LazyDictINS_4MeshEE3GetEPKc:bb.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.t = load i64, ptr %i.e, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = insertvalue { ptr, i32 } poison, ptr %i.v, 0
  %i.z = insertvalue { ptr, i32 } %i.y, i32 %i.x, 1
  br label %bb.ac

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.i
  %i.ae = load i64, ptr %i.e, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ad

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA24_KcRPS1_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(24) @.str.82, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %bb.ad

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36, !noalias !286
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, -281474976710656
  %i.as = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.ao, align 8
  store i32 %i.am, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 4 uses
  %i.ba = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.bb, 5
  %i.bc = getelementptr i8, ptr %i.az, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not9.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.bd = lshr i64 %i.as, 40
  %i.be = trunc i64 %i.bd to i8
  %i.bf = and i64 %i.at, 1152921504606846976
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bf, 0        ; 2 uses
  %i.bg = sext i8 %i.be to i32
  %i.bh = sub nsw i32 13, %i.bg
  %i.bi = select i1 %.not.i.i.i.i.i.i, i32 %i.am, i32 %i.bh ; 2 uses
  %i.bj = and i64 %i.as, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = select i1 %.not.i.i.i.i.i.i, ptr %i.bk, ptr %3 ; 2 uses
  %i.bm = zext i32 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.ce, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.bp, 0      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = load i32, ptr %.010.i.i.i, align 8
  %i.bv = select i1 %.not.i.i13.i.i.i.i, i32 %i.bu, i32 %i.bt
  %.not.i.i.i.i = icmp eq i32 %i.bi, %i.bv
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = select i1 %.not.i.i13.i.i.i.i, ptr %i.ca, ptr %.010.i.i.i ; 2 uses
  %i.cc = icmp eq ptr %i.bl, %i.cb
  br i1 %i.cc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.p
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.cb, i64 %i.bm)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cd, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %i.bc
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.o, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.p, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %i.az, %bb.n ], [ %i.bc, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.p ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bb
  %i.cg = icmp eq ptr %.0.lcssa.i.i.i, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA31_KcRPS1_RA7_S1_S5_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(31) @.str.84, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #30
  br label %bb.ad

bb.t:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = icmp eq i16 %i.cm, 3
  br i1 %i.cn, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA23_KcRPS1_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 1 dereferenceable(23) @.str.86, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(23) @.str.87)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.co) #30
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.cq = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33 ; 12 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cr, i8 0, i64 64, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8
  store i8 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8
  store i8 0, ptr %i.cv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF4MeshE, i64 16), ptr %i.cq, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, i8 0, i64 24, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 96 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 104
  store ptr %i.cx, ptr %i.cy, align 8
  store ptr %i.cx, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  store i64 0, ptr %i.cz, align 8
  %i.da = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.db = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.da) ; 0 uses
  %i.dc = load i16, ptr %i.cl, align 2
  %i.dd = icmp eq i16 %i.dc, 3
  br i1 %i.dd, label %bb.y, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.de, align 2
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = and i64 %i.dh, -281474976710656
  %i.dj = or i64 %i.di, ptrtoint (ptr @.str.88 to i64) ; 2 uses
  %i.dk = inttoptr i64 %i.dj to ptr
  store ptr %i.dk, ptr %i.df, align 8
  store i32 4, ptr %2, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = and i64 %i.dn, 281474976710655
  %i.dp = inttoptr i64 %i.do to ptr               ; 4 uses
  %i.dq = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dr, 5
  %i.ds = getelementptr i8, ptr %i.dp, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.dt = lshr i64 ptrtoint (ptr @.str.88 to i64), 40
  %i.du = trunc i64 %i.dt to i8
  %i.dv = and i64 %i.dj, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dv, 0      ; 2 uses
  %i.dw = sext i8 %i.du to i32
  %i.dx = sub nsw i32 13, %i.dw
  %i.dy = select i1 %.not.i.i.i.i.i.i.i, i32 4, i32 %i.dx ; 2 uses
  %i.dz = and i64 ptrtoint (ptr @.str.88 to i64), 281474976710655
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ea, ptr %2 ; 2 uses
  %i.ec = zext i32 %i.dy to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %i.eu, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ee = load i16, ptr %i.ed, align 2
  %i.ef = and i16 %i.ee, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ef, 0    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = sext i8 %i.eh to i32
  %i.ej = sub nsw i32 13, %i.ei
  %i.ek = load i32, ptr %.010.i.i.i.i, align 8
  %i.el = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.ek, i32 %i.ej
  %.not.i.i.i.i.i = icmp eq i32 %i.dy, %i.el
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.em = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = and i64 %i.eo, 281474976710655
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.eq, ptr %.010.i.i.i.i ; 2 uses
  %i.es = icmp eq ptr %i.eb, %i.er
  br i1 %i.es, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.aa
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.eb, ptr %i.er, i64 %i.ec)
  %i.et = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.et, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.eu, %i.ds
  br i1 %.not.i.i.i.i24, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.z, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dp, %bb.y ], [ %.010.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.ds, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.dp, i64 %i.dr
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ev
  br i1 %.not.i, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ex = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4ReadERN9rapidjson12GenericValueINS8_4UTF8IcEENS8_19MemoryPoolAllocatorINS8_12CrtAllocatorEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) ; 0 uses
  br label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.ab
  %i.ey = load ptr, ptr %i.c, align 8, !nonnull !16, !align !112
  call void @_ZN4glTF4Mesh4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(120) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(2032) %i.ey)
  %i.ez = call { ptr, i32 } @_ZN4glTF8LazyDictINS_4MeshEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.cq)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, %bb.g
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.ez, %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged

bb.ad:                                            ; preds = %bb.s, %bb.w, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.m ], [ %i.cj, %bb.s ], [ %i.cp, %bb.w ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_6CameraEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19 unwind label %bb.h   ; 2 uses

.noexc19:                                         ; preds = %.noexc.i
  store ptr %i.i, ptr %4, align 8
  %i.j = load i64, ptr %i.a, align 8
  store i64 %i.j, ptr %i.e, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc19, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc19 ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %1, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %1, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit unwind label %bb.i ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %4, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.t = load i64, ptr %i.e, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = insertvalue { ptr, i32 } poison, ptr %i.v, 0
  %i.z = insertvalue { ptr, i32 } %i.y, i32 %i.x, 1
  br label %bb.ac

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.i
  %i.ae = load i64, ptr %i.e, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ad

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA24_KcRPS1_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(24) @.str.82, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %bb.ad

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36, !noalias !289
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, -281474976710656
  %i.as = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.ao, align 8
  store i32 %i.am, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 4 uses
  %i.ba = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.bb, 5
  %i.bc = getelementptr i8, ptr %i.az, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not9.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.bd = lshr i64 %i.as, 40
  %i.be = trunc i64 %i.bd to i8
  %i.bf = and i64 %i.at, 1152921504606846976
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bf, 0        ; 2 uses
  %i.bg = sext i8 %i.be to i32
  %i.bh = sub nsw i32 13, %i.bg
  %i.bi = select i1 %.not.i.i.i.i.i.i, i32 %i.am, i32 %i.bh ; 2 uses
  %i.bj = and i64 %i.as, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = select i1 %.not.i.i.i.i.i.i, ptr %i.bk, ptr %3 ; 2 uses
  %i.bm = zext i32 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.ce, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.bp, 0      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = load i32, ptr %.010.i.i.i, align 8
  %i.bv = select i1 %.not.i.i13.i.i.i.i, i32 %i.bu, i32 %i.bt
  %.not.i.i.i.i = icmp eq i32 %i.bi, %i.bv
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = select i1 %.not.i.i13.i.i.i.i, ptr %i.ca, ptr %.010.i.i.i ; 2 uses
  %i.cc = icmp eq ptr %i.bl, %i.cb
  br i1 %i.cc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.p
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.cb, i64 %i.bm)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cd, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %i.bc
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.o, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.p, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %i.az, %bb.n ], [ %i.bc, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.p ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bb
  %i.cg = icmp eq ptr %.0.lcssa.i.i.i, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA31_KcRPS1_RA7_S1_S5_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(31) @.str.84, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #30
  br label %bb.ad

bb.t:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = icmp eq i16 %i.cm, 3
  br i1 %i.cn, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA23_KcRPS1_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 1 dereferenceable(23) @.str.86, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(23) @.str.87)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.co) #30
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.cq = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cr, i8 0, i64 80, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8
  store i8 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8
  store i8 0, ptr %i.cv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF6CameraE, i64 16), ptr %i.cq, align 8
  %i.cw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.cw) ; 0 uses
  %i.cy = load i16, ptr %i.cl, align 2
  %i.cz = icmp eq i16 %i.cy, 3
  br i1 %i.cz, label %bb.y, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.da, align 2
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, -281474976710656
  %i.df = or i64 %i.de, ptrtoint (ptr @.str.88 to i64) ; 2 uses
  %i.dg = inttoptr i64 %i.df to ptr
  store ptr %i.dg, ptr %i.db, align 8
  store i32 4, ptr %2, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = and i64 %i.dj, 281474976710655
  %i.dl = inttoptr i64 %i.dk to ptr               ; 4 uses
  %i.dm = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dn, 5
  %i.do = getelementptr i8, ptr %i.dl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.dp = lshr i64 ptrtoint (ptr @.str.88 to i64), 40
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = and i64 %i.df, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dr, 0      ; 2 uses
  %i.ds = sext i8 %i.dq to i32
  %i.dt = sub nsw i32 13, %i.ds
  %i.du = select i1 %.not.i.i.i.i.i.i.i, i32 4, i32 %i.dt ; 2 uses
  %i.dv = and i64 ptrtoint (ptr @.str.88 to i64), 281474976710655
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.dw, ptr %2 ; 2 uses
  %i.dy = zext i32 %i.du to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i ], [ %i.eq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = and i16 %i.ea, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.eb, 0    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = sext i8 %i.ed to i32
  %i.ef = sub nsw i32 13, %i.ee
  %i.eg = load i32, ptr %.010.i.i.i.i, align 8
  %i.eh = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.eg, i32 %i.ef
  %.not.i.i.i.i.i = icmp eq i32 %i.du, %i.eh
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = and i64 %i.ek, 281474976710655
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.em, ptr %.010.i.i.i.i ; 2 uses
  %i.eo = icmp eq ptr %i.dx, %i.en
  br i1 %i.eo, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.aa
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.dx, ptr %i.en, i64 %i.dy)
  %i.ep = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ep, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.eq, %i.do
  br i1 %.not.i.i.i.i24, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.z, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dl, %bb.y ], [ %.010.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.do, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %i.dn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.er
  br i1 %.not.i, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.et = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4ReadERN9rapidjson12GenericValueINS8_4UTF8IcEENS8_19MemoryPoolAllocatorINS8_12CrtAllocatorEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) ; 0 uses
  br label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.ab
  %i.eu = load ptr, ptr %i.c, align 8, !nonnull !16, !align !112
  call void @_ZN4glTF6Camera4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(92) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(2032) %i.eu)
  %i.ev = call { ptr, i32 } @_ZN4glTF8LazyDictINS_6CameraEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.cq)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, %bb.g
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.ev, %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged

bb.ad:                                            ; preds = %bb.s, %bb.w, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.m ], [ %i.cj, %bb.s ], [ %i.cp, %bb.w ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_5LightEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19 unwind label %bb.h   ; 2 uses

.noexc19:                                         ; preds = %.noexc.i
  store ptr %i.i, ptr %4, align 8
  %i.j = load i64, ptr %i.a, align 8
  store i64 %i.j, ptr %i.e, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc19, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc19 ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %1, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %1, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit unwind label %bb.i ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %4, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.t = load i64, ptr %i.e, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = insertvalue { ptr, i32 } poison, ptr %i.v, 0
  %i.z = insertvalue { ptr, i32 } %i.y, i32 %i.x, 1
  br label %bb.ac

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.i
  %i.ae = load i64, ptr %i.e, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ad

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA24_KcRPS1_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(24) @.str.82, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %bb.ad

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36, !noalias !292
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, -281474976710656
  %i.as = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.ao, align 8
  store i32 %i.am, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 4 uses
  %i.ba = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.bb, 5
  %i.bc = getelementptr i8, ptr %i.az, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not9.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.bd = lshr i64 %i.as, 40
  %i.be = trunc i64 %i.bd to i8
  %i.bf = and i64 %i.at, 1152921504606846976
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bf, 0        ; 2 uses
  %i.bg = sext i8 %i.be to i32
  %i.bh = sub nsw i32 13, %i.bg
  %i.bi = select i1 %.not.i.i.i.i.i.i, i32 %i.am, i32 %i.bh ; 2 uses
  %i.bj = and i64 %i.as, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = select i1 %.not.i.i.i.i.i.i, ptr %i.bk, ptr %3 ; 2 uses
  %i.bm = zext i32 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.ce, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.bp, 0      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = load i32, ptr %.010.i.i.i, align 8
  %i.bv = select i1 %.not.i.i13.i.i.i.i, i32 %i.bu, i32 %i.bt
  %.not.i.i.i.i = icmp eq i32 %i.bi, %i.bv
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = select i1 %.not.i.i13.i.i.i.i, ptr %i.ca, ptr %.010.i.i.i ; 2 uses
  %i.cc = icmp eq ptr %i.bl, %i.cb
  br i1 %i.cc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.p
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.cb, i64 %i.bm)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cd, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %i.bc
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.o, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.p, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %i.az, %bb.n ], [ %i.bc, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.p ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bb
  %i.cg = icmp eq ptr %.0.lcssa.i.i.i, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA31_KcRPS1_RA7_S1_S5_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(31) @.str.84, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #30
  br label %bb.ad

bb.t:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = icmp eq i16 %i.cm, 3
  br i1 %i.cn, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA23_KcRPS1_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 1 dereferenceable(23) @.str.86, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(23) @.str.87)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.co) #30
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.cq = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33 ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.cr, i8 0, i64 104, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8
  store i8 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8
  store i8 0, ptr %i.cv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF5LightE, i64 16), ptr %i.cq, align 8
  %i.cw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.cw) ; 0 uses
  %i.cy = load i16, ptr %i.cl, align 2
  %i.cz = icmp eq i16 %i.cy, 3
  br i1 %i.cz, label %bb.y, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.da, align 2
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, -281474976710656
  %i.df = or i64 %i.de, ptrtoint (ptr @.str.88 to i64) ; 2 uses
  %i.dg = inttoptr i64 %i.df to ptr
  store ptr %i.dg, ptr %i.db, align 8
  store i32 4, ptr %2, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = and i64 %i.dj, 281474976710655
  %i.dl = inttoptr i64 %i.dk to ptr               ; 4 uses
  %i.dm = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dn, 5
  %i.do = getelementptr i8, ptr %i.dl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.dp = lshr i64 ptrtoint (ptr @.str.88 to i64), 40
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = and i64 %i.df, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dr, 0      ; 2 uses
  %i.ds = sext i8 %i.dq to i32
  %i.dt = sub nsw i32 13, %i.ds
  %i.du = select i1 %.not.i.i.i.i.i.i.i, i32 4, i32 %i.dt ; 2 uses
  %i.dv = and i64 ptrtoint (ptr @.str.88 to i64), 281474976710655
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.dw, ptr %2 ; 2 uses
  %i.dy = zext i32 %i.du to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i ], [ %i.eq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = and i16 %i.ea, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.eb, 0    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = sext i8 %i.ed to i32
  %i.ef = sub nsw i32 13, %i.ee
  %i.eg = load i32, ptr %.010.i.i.i.i, align 8
  %i.eh = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.eg, i32 %i.ef
  %.not.i.i.i.i.i = icmp eq i32 %i.du, %i.eh
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = and i64 %i.ek, 281474976710655
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.em, ptr %.010.i.i.i.i ; 2 uses
  %i.eo = icmp eq ptr %i.dx, %i.en
  br i1 %i.eo, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.aa
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.dx, ptr %i.en, i64 %i.dy)
  %i.ep = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ep, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.eq, %i.do
  br i1 %.not.i.i.i.i24, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.z, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dl, %bb.y ], [ %.010.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.do, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %i.dn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.er
  br i1 %.not.i, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.et = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4ReadERN9rapidjson12GenericValueINS8_4UTF8IcEENS8_19MemoryPoolAllocatorINS8_12CrtAllocatorEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) ; 0 uses
  br label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.ab
  %i.eu = load ptr, ptr %i.c, align 8, !nonnull !16, !align !112
  call void @_ZN4glTF5Light4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(116) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(2032) %i.eu)
  %i.ev = call { ptr, i32 } @_ZN4glTF8LazyDictINS_5LightEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.cq)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, %bb.g
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.ev, %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged

bb.ad:                                            ; preds = %bb.s, %bb.w, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.m ], [ %i.cj, %bb.s ], [ %i.cp, %bb.w ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN10glTFCommon10ReadHelperIA3_fE4ReadERN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEERS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp eq i16 %i.b, 4
  %i.d = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.d, 3
  %or.cond = select i1 %i.c, i1 %.not, i1 false   ; 2 uses
  br i1 %or.cond, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, 281474976710655
  %i.i = inttoptr i64 %i.h to ptr                 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 14
  %i.k = load i16, ptr %i.j, align 2              ; 2 uses
  %i.l = and i16 %i.k, 16
  %.not11 = icmp eq i16 %i.l, 0
  br i1 %.not11, label %bb.k, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.m = zext i16 %i.k to i32                     ; 4 uses
  %i.n = and i32 %i.m, 512
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load double, ptr %i.i, align 8
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.d:                                             ; preds = %bb.b
  %i.p = and i32 %i.m, 32
  %.not2.i = icmp eq i32 %i.p, 0
  br i1 %.not2.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.i, align 8
  %i.r = sitofp i32 %i.q to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.f:                                             ; preds = %bb.d
  %i.s = and i32 %i.m, 64
  %.not3.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.i, align 8
  %i.u = uitofp i32 %i.t to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.h:                                             ; preds = %bb.f
  %i.v = and i32 %i.m, 128
  %.not4.i = icmp eq i32 %i.v, 0
  %i.w = load i64, ptr %i.i, align 8              ; 2 uses
  br i1 %.not4.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = sitofp i64 %i.w to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

bb.j:                                             ; preds = %bb.h
  %i.y = uitofp i64 %i.w to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit: ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.j
  %.0.i = phi double [ %i.o, %bb.c ], [ %i.r, %bb.e ], [ %i.u, %bb.g ], [ %i.x, %bb.i ], [ %i.y, %bb.j ]
  %i.z = fptrunc double %.0.i to float
  store float %i.z, ptr %1, align 4
  %.pre = load ptr, ptr %i.e, align 8
  %.pre15 = ptrtoint ptr %.pre to i64
  %.pre16 = and i64 %.pre15, 281474976710655
  %.pre18 = inttoptr i64 %.pre16 to ptr
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit
  %.pre-phi19 = phi ptr [ %i.i, %.preheader ], [ %.pre18, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre-phi19, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre-phi19, i64 30
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  %i.ad = and i16 %i.ac, 16
  %.not11.1 = icmp eq i16 %i.ad, 0
  br i1 %.not11.1, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = zext i16 %i.ac to i32                   ; 4 uses
  %i.af = and i32 %i.ae, 512
  %.not.i.1 = icmp eq i32 %i.af, 0
  br i1 %.not.i.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_5
begin_hunk_6_@_ZN4glTF8LazyDictINS_8AccessorEE3GetEPKc:bb.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.t = load i64, ptr %i.e, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = insertvalue { ptr, i32 } poison, ptr %i.v, 0
  %i.z = insertvalue { ptr, i32 } %i.y, i32 %i.x, 1
  br label %bb.ac

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.i
  %i.ae = load i64, ptr %i.e, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ad

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA24_KcRPS1_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(24) @.str.82, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %bb.ad

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36, !noalias !300
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, -281474976710656
  %i.as = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.ao, align 8
  store i32 %i.am, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 4 uses
  %i.ba = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.bb, 5
  %i.bc = getelementptr i8, ptr %i.az, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not9.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.bd = lshr i64 %i.as, 40
  %i.be = trunc i64 %i.bd to i8
  %i.bf = and i64 %i.at, 1152921504606846976
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bf, 0        ; 2 uses
  %i.bg = sext i8 %i.be to i32
  %i.bh = sub nsw i32 13, %i.bg
  %i.bi = select i1 %.not.i.i.i.i.i.i, i32 %i.am, i32 %i.bh ; 2 uses
  %i.bj = and i64 %i.as, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = select i1 %.not.i.i.i.i.i.i, ptr %i.bk, ptr %3 ; 2 uses
  %i.bm = zext i32 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.ce, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.bp, 0      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = load i32, ptr %.010.i.i.i, align 8
  %i.bv = select i1 %.not.i.i13.i.i.i.i, i32 %i.bu, i32 %i.bt
  %.not.i.i.i.i = icmp eq i32 %i.bi, %i.bv
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = select i1 %.not.i.i13.i.i.i.i, ptr %i.ca, ptr %.010.i.i.i ; 2 uses
  %i.cc = icmp eq ptr %i.bl, %i.cb
  br i1 %i.cc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.p
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.cb, i64 %i.bm)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cd, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %i.bc
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.o, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.p, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %i.az, %bb.n ], [ %i.bc, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.p ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bb
  %i.cg = icmp eq ptr %.0.lcssa.i.i.i, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA31_KcRPS1_RA7_S1_S5_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(31) @.str.84, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #30
  br label %bb.ad

bb.t:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = icmp eq i16 %i.cm, 3
  br i1 %i.cn, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA23_KcRPS1_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 1 dereferenceable(23) @.str.86, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(23) @.str.87)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.co) #30
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.cq = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #33 ; 10 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.cr, i8 0, i64 96, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8
  store i8 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8
  store i8 0, ptr %i.cv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF8AccessorE, i64 16), ptr %i.cq, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  store i32 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cx, i8 0, i64 48, i1 false)
  %i.cy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.cz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.cy) ; 0 uses
  %i.da = load i16, ptr %i.cl, align 2
  %i.db = icmp eq i16 %i.da, 3
  br i1 %i.db, label %bb.y, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.dc, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = and i64 %i.df, -281474976710656
  %i.dh = or i64 %i.dg, ptrtoint (ptr @.str.88 to i64) ; 2 uses
  %i.di = inttoptr i64 %i.dh to ptr
  store ptr %i.di, ptr %i.dd, align 8
  store i32 4, ptr %2, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = and i64 %i.dl, 281474976710655
  %i.dn = inttoptr i64 %i.dm to ptr               ; 4 uses
  %i.do = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dp, 5
  %i.dq = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.do, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.dr = lshr i64 ptrtoint (ptr @.str.88 to i64), 40
  %i.ds = trunc i64 %i.dr to i8
  %i.dt = and i64 %i.dh, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dt, 0      ; 2 uses
  %i.du = sext i8 %i.ds to i32
  %i.dv = sub nsw i32 13, %i.du
  %i.dw = select i1 %.not.i.i.i.i.i.i.i, i32 4, i32 %i.dv ; 2 uses
  %i.dx = and i64 ptrtoint (ptr @.str.88 to i64), 281474976710655
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = select i1 %.not.i.i.i.i.i.i.i, ptr %i.dy, ptr %2 ; 2 uses
  %i.ea = zext i32 %i.dw to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %i.es, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = and i16 %i.ec, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ed, 0    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = sext i8 %i.ef to i32
  %i.eh = sub nsw i32 13, %i.eg
  %i.ei = load i32, ptr %.010.i.i.i.i, align 8
  %i.ej = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.ei, i32 %i.eh
  %.not.i.i.i.i.i = icmp eq i32 %i.dw, %i.ej
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = and i64 %i.em, 281474976710655
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.eo, ptr %.010.i.i.i.i ; 2 uses
  %i.eq = icmp eq ptr %i.dz, %i.ep
  br i1 %i.eq, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.aa
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.dz, ptr %i.ep, i64 %i.ea)
  %i.er = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.er, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.z
  %i.es = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.es, %i.dq
  br i1 %.not.i.i.i.i24, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.z, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dn, %bb.y ], [ %.010.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.dq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.dp
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.et
  br i1 %.not.i, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ev = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4ReadERN9rapidjson12GenericValueINS8_4UTF8IcEENS8_19MemoryPoolAllocatorINS8_12CrtAllocatorEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) ; 0 uses
  br label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.ab
  %i.ew = load ptr, ptr %i.c, align 8, !nonnull !16, !align !112
  call void @_ZN4glTF8Accessor4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(160) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(2032) %i.ew)
  %i.ex = call { ptr, i32 } @_ZN4glTF8LazyDictINS_8AccessorEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.cq)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, %bb.g
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.ex, %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged

bb.ad:                                            ; preds = %bb.s, %bb.w, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.m ], [ %i.cj, %bb.s ], [ %i.cp, %bb.w ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_8MaterialEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.e, ptr %4, align 8
  %i.f = icmp eq ptr %1, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.g, ptr %i.a, align 8
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19 unwind label %bb.h   ; 2 uses

.noexc19:                                         ; preds = %.noexc.i
  store ptr %i.i, ptr %4, align 8
  %i.j = load i64, ptr %i.a, align 8
  store i64 %i.j, ptr %i.e, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc19, %bb.c
  %i.k = phi ptr [ %i.i, %.noexc19 ], [ %i.e, %bb.c ] ; 2 uses
  switch i64 %i.g, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %1, align 1
  store i8 %i.l, ptr %i.k, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %1, i64 %i.g, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit unwind label %bb.i ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %4, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.e
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.t = load i64, ptr %i.e, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = insertvalue { ptr, i32 } poison, ptr %i.v, 0
  %i.z = insertvalue { ptr, i32 } %i.y, i32 %i.x, 1
  br label %bb.ac

bb.h:                                             ; preds = %.noexc.i, %bb.b
end_hunk_6
begin_hunk_7_@_ZN4glTF8LazyDictINS_10BufferViewEE3GetEPKc:bb.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.t = load i64, ptr %i.e, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = insertvalue { ptr, i32 } poison, ptr %i.v, 0
  %i.z = insertvalue { ptr, i32 } %i.y, i32 %i.x, 1
  br label %bb.ac

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.i
  %i.ae = load i64, ptr %i.e, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ad

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA24_KcRPS1_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(24) @.str.82, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %bb.ad

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36, !noalias !317
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, -281474976710656
  %i.as = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.ao, align 8
  store i32 %i.am, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 4 uses
  %i.ba = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.bb, 5
  %i.bc = getelementptr i8, ptr %i.az, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not9.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.bd = lshr i64 %i.as, 40
  %i.be = trunc i64 %i.bd to i8
  %i.bf = and i64 %i.at, 1152921504606846976
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bf, 0        ; 2 uses
  %i.bg = sext i8 %i.be to i32
  %i.bh = sub nsw i32 13, %i.bg
  %i.bi = select i1 %.not.i.i.i.i.i.i, i32 %i.am, i32 %i.bh ; 2 uses
  %i.bj = and i64 %i.as, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = select i1 %.not.i.i.i.i.i.i, ptr %i.bk, ptr %3 ; 2 uses
  %i.bm = zext i32 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.ce, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.bp, 0      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = load i32, ptr %.010.i.i.i, align 8
  %i.bv = select i1 %.not.i.i13.i.i.i.i, i32 %i.bu, i32 %i.bt
  %.not.i.i.i.i = icmp eq i32 %i.bi, %i.bv
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = select i1 %.not.i.i13.i.i.i.i, ptr %i.ca, ptr %.010.i.i.i ; 2 uses
  %i.cc = icmp eq ptr %i.bl, %i.cb
  br i1 %i.cc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.p
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.cb, i64 %i.bm)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cd, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %i.bc
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.o, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.p, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %i.az, %bb.n ], [ %i.bc, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.p ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bb
  %i.cg = icmp eq ptr %.0.lcssa.i.i.i, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA31_KcRPS1_RA7_S1_S5_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(31) @.str.84, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #30
  br label %bb.ad

bb.t:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = icmp eq i16 %i.cm, 3
  br i1 %i.cn, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA23_KcRPS1_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 1 dereferenceable(23) @.str.86, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(23) @.str.87)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.co) #30
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.cq = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #33 ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.cr, i8 0, i64 96, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8
  store i8 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8
  store i8 0, ptr %i.cv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF10BufferViewE, i64 16), ptr %i.cq, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  store i32 0, ptr %i.cw, align 8
  %i.cx = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.cy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.cx) ; 0 uses
  %i.cz = load i16, ptr %i.cl, align 2
  %i.da = icmp eq i16 %i.cz, 3
  br i1 %i.da, label %bb.y, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.db, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = and i64 %i.de, -281474976710656
  %i.dg = or i64 %i.df, ptrtoint (ptr @.str.88 to i64) ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr
  store ptr %i.dh, ptr %i.dc, align 8
  store i32 4, ptr %2, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = and i64 %i.dk, 281474976710655
  %i.dm = inttoptr i64 %i.dl to ptr               ; 4 uses
  %i.dn = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.do = zext i32 %i.dn to i64                   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.do, 5
  %i.dp = getelementptr i8, ptr %i.dm, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.dq = lshr i64 ptrtoint (ptr @.str.88 to i64), 40
  %i.dr = trunc i64 %i.dq to i8
  %i.ds = and i64 %i.dg, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ds, 0      ; 2 uses
  %i.dt = sext i8 %i.dr to i32
  %i.du = sub nsw i32 13, %i.dt
  %i.dv = select i1 %.not.i.i.i.i.i.i.i, i32 4, i32 %i.du ; 2 uses
  %i.dw = and i64 ptrtoint (ptr @.str.88 to i64), 281474976710655
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = select i1 %.not.i.i.i.i.i.i.i, ptr %i.dx, ptr %2 ; 2 uses
  %i.dz = zext i32 %i.dv to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.i.i ], [ %i.er, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.eb = load i16, ptr %i.ea, align 2
  %i.ec = and i16 %i.eb, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ec, 0    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = sext i8 %i.ee to i32
  %i.eg = sub nsw i32 13, %i.ef
  %i.eh = load i32, ptr %.010.i.i.i.i, align 8
  %i.ei = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.eh, i32 %i.eg
  %.not.i.i.i.i.i = icmp eq i32 %i.dv, %i.ei
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = and i64 %i.el, 281474976710655
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.en, ptr %.010.i.i.i.i ; 2 uses
  %i.ep = icmp eq ptr %i.dy, %i.eo
  br i1 %i.ep, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.aa
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.dy, ptr %i.eo, i64 %i.dz)
  %i.eq = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.eq, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.z
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.er, %i.dp
  br i1 %.not.i.i.i.i24, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.z, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dm, %bb.y ], [ %.010.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.dp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.es = getelementptr inbounds nuw [32 x i8], ptr %i.dm, i64 %i.do
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.es
  br i1 %.not.i, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.eu = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4ReadERN9rapidjson12GenericValueINS8_4UTF8IcEENS8_19MemoryPoolAllocatorINS8_12CrtAllocatorEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) ; 0 uses
  br label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.ab
  %i.ev = load ptr, ptr %i.c, align 8, !nonnull !16, !align !112
  call void @_ZN4glTF10BufferView4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(108) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(2032) %i.ev)
  %i.ew = call { ptr, i32 } @_ZN4glTF8LazyDictINS_10BufferViewEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.cq)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, %bb.g
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.ew, %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged

bb.ad:                                            ; preds = %bb.s, %bb.w, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.m ], [ %i.cj, %bb.s ], [ %i.cp, %bb.w ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF10BufferView4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(2032) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 3 uses
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp eq i16 %i.b, 3
  br i1 %i.c, label %bb.b, label %_ZN10glTFCommonL15MemberOrDefaultIjEET_RN9rapidjson12GenericValueINS2_4UTF8IcEENS2_19MemoryPoolAllocatorINS2_12CrtAllocatorEEEEEPKcS1_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -281474976710656
  %i.i = or i64 %i.h, ptrtoint (ptr @.str.105 to i64) ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  store ptr %i.j, ptr %i.e, align 8
  store i32 6, ptr %5, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = and i64 %i.m, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  %i.p = load i32, ptr %1, align 8                ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 5
  %i.r = getelementptr i8, ptr %i.o, i64 %.idx.i.i.i.i.i ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i32 %i.p, 0
  %i.s = lshr i64 %i.m, 48
  %i.t = trunc nuw i64 %i.s to i16                ; 3 uses
  br i1 %.not9.i.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b
  %i.u = lshr i64 ptrtoint (ptr @.str.105 to i64), 40
  %i.v = trunc i64 %i.u to i8
  %i.w = and i64 %i.i, 1152921504606846976
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.w, 0     ; 2 uses
  %i.x = sext i8 %i.v to i32
  %i.y = sub nsw i32 13, %i.x
  %i.z = select i1 %.not.i.i.i.i.i.i.i.i, i32 6, i32 %i.y ; 2 uses
  %i.aa = and i64 ptrtoint (ptr @.str.105 to i64), 281474976710655
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = select i1 %.not.i.i.i.i.i.i.i.i, ptr %i.ab, ptr %5 ; 2 uses
  %i.ad = zext i32 %i.z to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i ], [ %i.av, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 14
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, 4096
  %.not.i.i13.i.i.i.i.i.i = icmp eq i16 %i.ag, 0  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i32
  %i.ak = sub nsw i32 13, %i.aj
  %i.al = load i32, ptr %.010.i.i.i.i.i, align 8
  %i.am = select i1 %.not.i.i13.i.i.i.i.i.i, i32 %i.al, i32 %i.ak
  %.not.i.i.i.i.i.i = icmp eq i32 %i.z, %i.am
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = select i1 %.not.i.i13.i.i.i.i.i.i, ptr %i.ar, ptr %.010.i.i.i.i.i ; 2 uses
  %i.at = icmp eq ptr %i.ac, %i.as
  br i1 %i.at, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.ac, ptr %i.as, i64 %i.ad)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.av, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i, label %bb.c, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i, %bb.d, %bb.b
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.o, %bb.b ], [ %i.r, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i.i ], [ %.010.i.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i.i ], [ %.010.i.i.i.i.i, %bb.d ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.q
  %.not.i.i = icmp eq ptr %.0.lcssa.i.i.i.i.i, %i.aw
  br i1 %.not.i.i, label %_ZN10glTFCommonL15MemberOrDefaultIPKcEET_RN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEES2_S3_.exit.thread, label %bb.e
end_hunk_7
begin_hunk_8_@_ZN4glTF8LazyDictINS_7TextureEE3GetEPKc:bb.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.t = load i64, ptr %i.e, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = insertvalue { ptr, i32 } poison, ptr %i.v, 0
  %i.z = insertvalue { ptr, i32 } %i.y, i32 %i.x, 1
  br label %bb.ac

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.i
  %i.ae = load i64, ptr %i.e, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ad

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA24_KcRPS1_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(24) @.str.82, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %bb.ad

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36, !noalias !349
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, -281474976710656
  %i.as = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.ao, align 8
  store i32 %i.am, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 4 uses
  %i.ba = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.bb, 5
  %i.bc = getelementptr i8, ptr %i.az, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not9.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.bd = lshr i64 %i.as, 40
  %i.be = trunc i64 %i.bd to i8
  %i.bf = and i64 %i.at, 1152921504606846976
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bf, 0        ; 2 uses
  %i.bg = sext i8 %i.be to i32
  %i.bh = sub nsw i32 13, %i.bg
  %i.bi = select i1 %.not.i.i.i.i.i.i, i32 %i.am, i32 %i.bh ; 2 uses
  %i.bj = and i64 %i.as, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = select i1 %.not.i.i.i.i.i.i, ptr %i.bk, ptr %3 ; 2 uses
  %i.bm = zext i32 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.ce, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.bp, 0      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = load i32, ptr %.010.i.i.i, align 8
  %i.bv = select i1 %.not.i.i13.i.i.i.i, i32 %i.bu, i32 %i.bt
  %.not.i.i.i.i = icmp eq i32 %i.bi, %i.bv
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = select i1 %.not.i.i13.i.i.i.i, ptr %i.ca, ptr %.010.i.i.i ; 2 uses
  %i.cc = icmp eq ptr %i.bl, %i.cb
  br i1 %i.cc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.p
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.cb, i64 %i.bm)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cd, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %i.bc
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.o, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.p, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %i.az, %bb.n ], [ %i.bc, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.p ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bb
  %i.cg = icmp eq ptr %.0.lcssa.i.i.i, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA31_KcRPS1_RA7_S1_S5_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(31) @.str.84, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #30
  br label %bb.ad

bb.t:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = icmp eq i16 %i.cm, 3
  br i1 %i.cn, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA23_KcRPS1_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 1 dereferenceable(23) @.str.86, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(23) @.str.87)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.co) #30
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.cq = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #33 ; 10 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.cr, i8 0, i64 88, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8
  store i8 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8
  store i8 0, ptr %i.cv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF7TextureE, i64 16), ptr %i.cq, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 80
  store i32 0, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 96
  store i32 0, ptr %i.cx, align 8
  %i.cy = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.cz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.cy) ; 0 uses
  %i.da = load i16, ptr %i.cl, align 2
  %i.db = icmp eq i16 %i.da, 3
  br i1 %i.db, label %bb.y, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.dc, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = and i64 %i.df, -281474976710656
  %i.dh = or i64 %i.dg, ptrtoint (ptr @.str.88 to i64) ; 2 uses
  %i.di = inttoptr i64 %i.dh to ptr
  store ptr %i.di, ptr %i.dd, align 8
  store i32 4, ptr %2, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = and i64 %i.dl, 281474976710655
  %i.dn = inttoptr i64 %i.dm to ptr               ; 4 uses
  %i.do = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dp, 5
  %i.dq = getelementptr i8, ptr %i.dn, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.do, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.dr = lshr i64 ptrtoint (ptr @.str.88 to i64), 40
  %i.ds = trunc i64 %i.dr to i8
  %i.dt = and i64 %i.dh, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dt, 0      ; 2 uses
  %i.du = sext i8 %i.ds to i32
  %i.dv = sub nsw i32 13, %i.du
  %i.dw = select i1 %.not.i.i.i.i.i.i.i, i32 4, i32 %i.dv ; 2 uses
  %i.dx = and i64 ptrtoint (ptr @.str.88 to i64), 281474976710655
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = select i1 %.not.i.i.i.i.i.i.i, ptr %i.dy, ptr %2 ; 2 uses
  %i.ea = zext i32 %i.dw to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %i.es, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = and i16 %i.ec, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ed, 0    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = sext i8 %i.ef to i32
  %i.eh = sub nsw i32 13, %i.eg
  %i.ei = load i32, ptr %.010.i.i.i.i, align 8
  %i.ej = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.ei, i32 %i.eh
  %.not.i.i.i.i.i = icmp eq i32 %i.dw, %i.ej
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = and i64 %i.em, 281474976710655
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.eo, ptr %.010.i.i.i.i ; 2 uses
  %i.eq = icmp eq ptr %i.dz, %i.ep
  br i1 %i.eq, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.aa
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.dz, ptr %i.ep, i64 %i.ea)
  %i.er = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.er, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.z
  %i.es = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.es, %i.dq
  br i1 %.not.i.i.i.i24, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.z, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dn, %bb.y ], [ %.010.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.dq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.et = getelementptr inbounds nuw [32 x i8], ptr %i.dn, i64 %i.dp
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.et
  br i1 %.not.i, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.ev = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4ReadERN9rapidjson12GenericValueINS8_4UTF8IcEENS8_19MemoryPoolAllocatorINS8_12CrtAllocatorEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) ; 0 uses
  br label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.ab
  %i.ew = load ptr, ptr %i.c, align 8, !nonnull !16, !align !112
  call void @_ZN4glTF7Texture4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(104) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(2032) %i.ew)
  %i.ex = call { ptr, i32 } @_ZN4glTF8LazyDictINS_7TextureEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.cq)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, %bb.g
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.ex, %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged

bb.ad:                                            ; preds = %bb.s, %bb.w, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.m ], [ %i.cj, %bb.s ], [ %i.cp, %bb.w ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF7Texture4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(2032) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp eq i16 %i.b, 3
  br i1 %i.c, label %bb.b, label %_ZN10glTFCommonL10ReadMemberIPKcEEbRN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEES2_RT_.exit30.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 1029, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -281474976710656
  %i.i = or i64 %i.h, ptrtoint (ptr @.str.152 to i64) ; 2 uses
  %i.j = inttoptr i64 %i.i to ptr
  store ptr %i.j, ptr %i.e, align 8
  store i32 6, ptr %4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = and i64 %i.m, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr                 ; 4 uses
  %i.p = load i32, ptr %1, align 8                ; 2 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.q, 5
  %i.r = getelementptr i8, ptr %i.o, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.p, 0
  %i.s = lshr i64 %i.m, 48
  %i.t = trunc nuw i64 %i.s to i16                ; 2 uses
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.u = lshr i64 ptrtoint (ptr @.str.152 to i64), 40
  %i.v = trunc i64 %i.u to i8
  %i.w = and i64 %i.i, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.w, 0       ; 2 uses
  %i.x = sext i8 %i.v to i32
  %i.y = sub nsw i32 13, %i.x
  %i.z = select i1 %.not.i.i.i.i.i.i.i, i32 6, i32 %i.y ; 2 uses
  %i.aa = and i64 ptrtoint (ptr @.str.152 to i64), 281474976710655
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = select i1 %.not.i.i.i.i.i.i.i, ptr %i.ab, ptr %4 ; 2 uses
  %i.ad = zext i32 %i.z to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i ], [ %i.av, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ag, 0    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i32
  %i.ak = sub nsw i32 13, %i.aj
  %i.al = load i32, ptr %.010.i.i.i.i, align 8
  %i.am = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.al, i32 %i.ak
  %.not.i.i.i.i.i = icmp eq i32 %i.z, %i.am
  br i1 %.not.i.i.i.i.i, label %bb.d, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = and i64 %i.ap, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.ar, ptr %.010.i.i.i.i ; 2 uses
  %i.at = icmp eq ptr %i.ac, %i.as
  br i1 %i.at, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ac, ptr %i.as, i64 %i.ad)
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.au, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.r
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.c, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d, %bb.b
  %.0.lcssa.i.i.i.i = phi ptr [ %i.o, %bb.b ], [ %.010.i.i.i.i, %bb.d ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.r, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.q
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.aw
  br i1 %.not.i, label %_ZN10glTFCommonL10ReadMemberIPKcEEbRN9rapidjson12GenericValueINS3_4UTF8IcEENS3_19MemoryPoolAllocatorINS3_12CrtAllocatorEEEEES2_RT_.exit.thread, label %bb.e

end_hunk_8
begin_hunk_9_@_ZN4glTF8LazyDictINS_7SamplerEE3GetEPKc:bb.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit
  %i.t = load i64, ptr %i.e, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_jEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.not29 = icmp eq ptr %i.q, null
  br i1 %.not29, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.x = load i32, ptr %i.w, align 8
  %i.y = insertvalue { ptr, i32 } poison, ptr %i.v, 0
  %i.z = insertvalue { ptr, i32 } %i.y, i32 %i.x, 1
  br label %bb.ac

bb.h:                                             ; preds = %.noexc.i, %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.i:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.i
  %i.ae = load i64, ptr %i.e, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %i.ab, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.ad

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA24_KcRPS1_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(24) @.str.82, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ai) #30
  br label %bb.ad

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.al = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36, !noalias !355
  %i.am = trunc i64 %i.al to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 14
  store i16 1029, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = and i64 %i.aq, -281474976710656
  %i.as = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.at = or i64 %i.ar, %i.as                     ; 2 uses
  %i.au = inttoptr i64 %i.at to ptr
  store ptr %i.au, ptr %i.ao, align 8
  store i32 %i.am, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = and i64 %i.ax, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 4 uses
  %i.ba = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.bb, 5
  %i.bc = getelementptr i8, ptr %i.az, i64 %.idx.i.i.i ; 2 uses
  %.not9.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not9.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %i.bd = lshr i64 %i.as, 40
  %i.be = trunc i64 %i.bd to i8
  %i.bf = and i64 %i.at, 1152921504606846976
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bf, 0        ; 2 uses
  %i.bg = sext i8 %i.be to i32
  %i.bh = sub nsw i32 13, %i.bg
  %i.bi = select i1 %.not.i.i.i.i.i.i, i32 %i.am, i32 %i.bh ; 2 uses
  %i.bj = and i64 %i.as, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = select i1 %.not.i.i.i.i.i.i, ptr %i.bk, ptr %3 ; 2 uses
  %i.bm = zext i32 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %.lr.ph.i.i.i
  %.010.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.ce, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ] ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 14
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = and i16 %i.bo, 4096
  %.not.i.i13.i.i.i.i = icmp eq i16 %i.bp, 0      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = sub nsw i32 13, %i.bs
  %i.bu = load i32, ptr %.010.i.i.i, align 8
  %i.bv = select i1 %.not.i.i13.i.i.i.i, i32 %i.bu, i32 %i.bt
  %.not.i.i.i.i = icmp eq i32 %i.bi, %i.bv
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = and i64 %i.by, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = select i1 %.not.i.i13.i.i.i.i, ptr %i.ca, ptr %.010.i.i.i ; 2 uses
  %i.cc = icmp eq ptr %i.bl, %i.cb
  br i1 %i.cc, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i: ; preds = %bb.p
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bl, ptr %i.cb, i64 %i.bm)
  %i.cd = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.cd, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %bb.o
  %i.ce = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, %i.bc
  br i1 %.not.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit, label %bb.o, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit: ; preds = %bb.p, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %i.az, %bb.n ], [ %i.bc, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i ], [ %.010.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i ], [ %.010.i.i.i, %bb.p ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.az, i64 %i.bb
  %i.cg = icmp eq ptr %.0.lcssa.i.i.i, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.t

bb.q:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ch = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN17DeadlyImportErrorC2IJRA31_KcRPS1_RA7_S1_S5_RA2_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(31) @.str.84, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 1 dereferenceable(2) @.str.83)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ch) #30
  br label %bb.ad

bb.t:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 30 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = icmp eq i16 %i.cm, 3
  br i1 %i.cn, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA23_KcRPS1_S3_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 1 dereferenceable(23) @.str.86, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(23) @.str.87)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.co) #30
  br label %bb.ad

bb.x:                                             ; preds = %bb.t
  %i.cq = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33 ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.cr, i8 0, i64 72, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cs, align 8
  store i8 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 40 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 56 ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8
  store i8 0, ptr %i.cv, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF7SamplerE, i64 16), ptr %i.cq, align 8
  %i.cw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.cx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cs, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.cw) ; 0 uses
  %i.cy = load i16, ptr %i.cl, align 2
  %i.cz = icmp eq i16 %i.cy, 3
  br i1 %i.cz, label %bb.y, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 14
  store i16 1029, ptr %i.da, align 2
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = and i64 %i.dd, -281474976710656
  %i.df = or i64 %i.de, ptrtoint (ptr @.str.88 to i64) ; 2 uses
  %i.dg = inttoptr i64 %i.df to ptr
  store ptr %i.dg, ptr %i.db, align 8
  store i32 4, ptr %2, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = and i64 %i.dj, 281474976710655
  %i.dl = inttoptr i64 %i.dk to ptr               ; 4 uses
  %i.dm = load i32, ptr %i.ck, align 8            ; 2 uses
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.dn, 5
  %i.do = getelementptr i8, ptr %i.dl, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y
  %i.dp = lshr i64 ptrtoint (ptr @.str.88 to i64), 40
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = and i64 %i.df, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dr, 0      ; 2 uses
  %i.ds = sext i8 %i.dq to i32
  %i.dt = sub nsw i32 13, %i.ds
  %i.du = select i1 %.not.i.i.i.i.i.i.i, i32 4, i32 %i.dt ; 2 uses
  %i.dv = and i64 ptrtoint (ptr @.str.88 to i64), 281474976710655
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = select i1 %.not.i.i.i.i.i.i.i, ptr %i.dw, ptr %2 ; 2 uses
  %i.dy = zext i32 %i.du to i64
  br label %bb.z

bb.z:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i ], [ %i.eq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ea = load i16, ptr %i.dz, align 2
  %i.eb = and i16 %i.ea, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.eb, 0    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = sext i8 %i.ed to i32
  %i.ef = sub nsw i32 13, %i.ee
  %i.eg = load i32, ptr %.010.i.i.i.i, align 8
  %i.eh = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.eg, i32 %i.ef
  %.not.i.i.i.i.i = icmp eq i32 %i.du, %i.eh
  br i1 %.not.i.i.i.i.i, label %bb.aa, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ei = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = and i64 %i.ek, 281474976710655
  %i.em = inttoptr i64 %i.el to ptr
  %i.en = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.em, ptr %.010.i.i.i.i ; 2 uses
  %i.eo = icmp eq ptr %i.dx, %i.en
  br i1 %i.eo, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.aa
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.dx, ptr %i.en, i64 %i.dy)
  %i.ep = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ep, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.z
  %i.eq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.eq, %i.do
  br i1 %.not.i.i.i.i24, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.z, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.aa, %bb.y
  %.0.lcssa.i.i.i.i = phi ptr [ %i.dl, %bb.y ], [ %.010.i.i.i.i, %bb.aa ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.do, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %i.dl, i64 %i.dn
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.er
  br i1 %.not.i, label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %i.et = call noundef zeroext i1 @_ZN10glTFCommon10ReadHelperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4ReadERN9rapidjson12GenericValueINS8_4UTF8IcEENS8_19MemoryPoolAllocatorINS8_12CrtAllocatorEEEEERS6_(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(32) %i.cu) ; 0 uses
  br label %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit

_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit: ; preds = %bb.x, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, %bb.ab
  %i.eu = load ptr, ptr %i.c, align 8, !nonnull !16, !align !112
  call void @_ZN4glTF7Sampler4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(88) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(2032) %i.eu)
  %i.ev = call { ptr, i32 } @_ZN4glTF8LazyDictINS_7SamplerEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.cq)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit, %bb.g
  %.fca.1.insert.merged = phi { ptr, i32 } [ %i.z, %bb.g ], [ %i.ev, %_ZN10glTFCommonL10ReadMemberINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRN9rapidjson12GenericValueINS7_4UTF8IcEENS7_19MemoryPoolAllocatorINS7_12CrtAllocatorEEEEEPKcRT_.exit ]
  ret { ptr, i32 } %.fca.1.insert.merged

bb.ad:                                            ; preds = %bb.s, %bb.w, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.pn16.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.ak, %bb.m ], [ %i.cj, %bb.s ], [ %i.cp, %bb.w ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN4glTF5Image4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(2032) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %4 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %5 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %6 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %7 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %8 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %9 = alloca %"class.rapidjson::GenericValue", align 8 ; 7 uses
  %10 = alloca %"struct.glTFCommon::Util::DataURI", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 14
  store i16 1029, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = and i64 %i.e, -281474976710656
  %i.g = or i64 %i.f, ptrtoint (ptr @.str.93 to i64) ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.h, ptr %i.c, align 8
  store i32 10, ptr %9, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = and i64 %i.k, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr                 ; 4 uses
  %i.n = load i32, ptr %1, align 8                ; 2 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.o, 5
  %i.p = getelementptr i8, ptr %i.m, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.q = lshr i64 ptrtoint (ptr @.str.93 to i64), 40
  %i.r = trunc i64 %i.q to i8
  %i.s = and i64 %i.g, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.s, 0       ; 2 uses
  %i.t = sext i8 %i.r to i32
  %i.u = sub nsw i32 13, %i.t
  %i.v = select i1 %.not.i.i.i.i.i.i.i, i32 10, i32 %i.u ; 2 uses
  %i.w = and i64 ptrtoint (ptr @.str.93 to i64), 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = select i1 %.not.i.i.i.i.i.i.i, ptr %i.x, ptr %9 ; 2 uses
  %i.z = zext i32 %i.v to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ar, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = and i16 %i.ab, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ac, 0    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = sext i8 %i.ae to i32
  %i.ag = sub nsw i32 13, %i.af
  %i.ah = load i32, ptr %.010.i.i.i.i, align 8
  %i.ai = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.ah, i32 %i.ag
  %.not.i.i.i.i.i = icmp eq i32 %i.v, %i.ai
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = and i64 %i.al, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.an, ptr %.010.i.i.i.i ; 2 uses
  %i.ap = icmp eq ptr %i.y, %i.ao
  br i1 %i.ap, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.y, ptr %i.ao, i64 %i.z)
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.aq, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, %i.p
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.b, !llvm.loop !148

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.c, %bb.a
  %.0.lcssa.i.i.i.i = phi ptr [ %i.m, %bb.a ], [ %.010.i.i.i.i, %bb.c ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.p, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.o
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.as
  br i1 %.not.i, label %_ZN10glTFCommon10FindObjectERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
end_hunk_9
begin_hunk_10_@_ZN4glTF5AssetD2Ev:bb.a
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN4glTF12LazyDictBaseESaIS2_EED2Ev.exit
  %i.bw = load i64, ptr %i.bu, align 8
  %i.bx = add i64 %i.bw, 1
  tail call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4glTF12LazyDictBaseESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN4glTF5AssetELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !436
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !436
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !6

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_7SamplerEE6CreateEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc13 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.44)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.j
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #30
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.ae, i8 0, i64 72, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  store i8 0, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF7SamplerE, i64 16), ptr %i.ad, align 8
  %i.aj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.ak = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.aj) ; 0 uses
  %i.al = call { ptr, i32 } @_ZN4glTF8LazyDictINS_7SamplerEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.ad)
  ret { ptr, i32 } %i.al

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_7TextureEE6CreateEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc13 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.44)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.j
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #30
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #33 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.ae, i8 0, i64 88, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  store i8 0, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF7TextureE, i64 16), ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i32 0, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  store i32 0, ptr %i.ak, align 8
  %i.al = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.am = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.al) ; 0 uses
  %i.an = call { ptr, i32 } @_ZN4glTF8LazyDictINS_7TextureEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.ad)
  ret { ptr, i32 } %i.an

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, unsigned int>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %0, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #33 ; 8 uses
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEEvPSt13_Rb_tree_nodeIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1        ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.e, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.c, align 8
  %i.q = tail call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i) #30 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.r = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i
  %i.t = phi i1 [ %i.s, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g) #30
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.u, align 8
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.x

bb.f:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #31
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #31
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.e, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load ptr, ptr %2, align 8
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = tail call i32 @memcmp(ptr noundef %i.n, ptr noundef %i.m, i64 noundef %.sroa.speculated.i.i.i) #30 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.p = sub i64 %i.h, %i.j
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.p, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.q = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.q, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.b
  %i.r = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8              ; 4 uses
  %.sroa.speculated.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v) ; 3 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i10, 0
  br i1 %i.y, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i10) #30 ; 2 uses
  %.not.i.i.i12 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i12, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18: ; preds = %bb.e
  %i.ad = sub i64 %i.v, %i.x
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
  %i.af = sub i64 %i.v, %i.x
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11
  %i.ah = icmp slt i32 %i.ac, 0
  br i1 %i.ah, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29

bb.f:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread68, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18.thread, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit18
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #36 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load i64, ptr %i.am, align 8            ; 2 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.an) ; 2 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i.i19, 0
  br i1 %i.ao, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i20: ; preds = %bb.g
end_hunk_10
begin_hunk_11_@_ZN4glTF8LazyDictINS_8MaterialEE6CreateEPKc:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #30
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #33 ; 24 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %i.ag, align 8
  store i8 0, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 0, ptr %i.aj, align 8
  store i8 0, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF8MaterialE, i64 16), ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store ptr null, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store ptr null, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store ptr null, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  store i32 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  store i32 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  store i8 0, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 201
  store i8 0, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 204
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 212
  store i32 0, ptr %i.az, align 4
  %i.ba = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.bb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.ba) ; 0 uses
  %i.bc = call { ptr, i32 } @_ZN4glTF8LazyDictINS_8MaterialEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.ad)
  ret { ptr, i32 } %i.bc

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_4SkinEE6CreateEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc13 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.44)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.j
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #30
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #33 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.ae, i8 0, i64 200, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  store i8 0, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF4SkinE, i64 16), ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 200 ; 2 uses
  store ptr %i.am, ptr %i.al, align 8
  store i8 0, ptr %i.am, align 8
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.an) ; 0 uses
  %i.ap = call { ptr, i32 } @_ZN4glTF8LazyDictINS_4SkinEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.ad)
  ret { ptr, i32 } %i.ap

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_4SkinEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN4glTF4SkinESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN4glTF4SkinESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorIPN4glTF4SkinESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.h ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.h
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #33 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.g, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN4glTF4SkinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4glTF4SkinESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.d, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN4glTF4SkinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4glTF4SkinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4glTF4SkinESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4glTF4SkinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4glTF4SkinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIPN4glTF4SkinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4glTF4SkinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4glTF4SkinESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.i, align 8
  br label %_ZNSt6vectorIPN4glTF4SkinESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4glTF4SkinESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4glTF4SkinESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.x = trunc i64 %i.h to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  store i32 %i.x, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !16, !align !112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  store i32 1, ptr %i.ae, align 4
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.x, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF4SkinD2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF4SkinE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF6ObjectE, i64 16), ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31, !inline_history !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4glTF6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.x = load i64, ptr %i.v, align 8
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #31, !inline_history !7
  br label %_ZN4glTF6ObjectD2Ev.exit

_ZN4glTF6ObjectD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF4SkinD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF4SkinE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31, !inline_history !923
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #31, !inline_history !923
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF6ObjectE, i64 16), ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit.i
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
end_hunk_11
begin_hunk_12_@_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_:bb.a
  %i.j = load ptr, ptr %i.i, align 8, !noalias !937 ; 2 uses
  %i.k = icmp ugt ptr %i.h, %i.j
  %.08.i.i.i.i.i = select i1 %i.k, ptr %i.h, ptr %i.j ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !noalias !937 ; 2 uses
  %i.n = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.m, i64 noundef %i.p)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %0, align 8, !alias.scope !937 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.e
  br i1 %i.t, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.u = load i64, ptr %i.e, align 8, !alias.scope !937
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #31
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.x = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.x, ptr %4, align 8
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.z = getelementptr i8, ptr %i.x, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %4, i64 %i.aa
  store ptr %i.y, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ac, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aj) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ak) #30
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #30
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_4MeshEE6CreateEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc13 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.44)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.j
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #30
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #33 ; 11 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ae, i8 0, i64 64, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  store i8 0, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF4MeshE, i64 16), ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 96 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store ptr %i.ak, ptr %i.al, align 8
  store ptr %i.ak, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store i64 0, ptr %i.am, align 8
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.an) ; 0 uses
  %i.ap = call { ptr, i32 } @_ZN4glTF8LazyDictINS_4MeshEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.ad)
  ret { ptr, i32 } %i.ap

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5o3dgc19TriangleListEncoderItEC2Ev(ptr noundef nonnull align 8 dereferenceable(556) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.c, align 8
  store i64 16, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 16, ptr %i.d, align 8
  %i.e = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znam(i64 noundef 128) #33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  store ptr %i.e, ptr %i.f, align 8
  %i.g = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znam(i64 noundef 128) #33
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %i.j, align 8
  store i64 16, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 16, ptr %i.k, align 8
  %i.l = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znam(i64 noundef 128) #33
          to label %.noexc11 unwind label %bb.d

.noexc11:                                         ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.l, ptr %i.m, align 8
  %i.n = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znam(i64 noundef 128) #33
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %.noexc11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.q, align 8
  store i64 16, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 16, ptr %i.r, align 8
  %i.s = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znam(i64 noundef 128) #33
          to label %.noexc14 unwind label %bb.e

.noexc14:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.s, ptr %i.t, align 8
  %i.u = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znam(i64 noundef 128) #33
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.noexc14
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i64 128, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 8, ptr %i.y, align 8
  %i.z = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znam(i64 noundef 64) #33
          to label %.noexc17 unwind label %bb.f

.noexc17:                                         ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = invoke noalias noundef nonnull dereferenceable(1024) ptr @_Znam(i64 noundef 1024) #33
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.noexc17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(164) %i.ad, i8 0, i64 164, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i32 0, ptr %i.af, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ae, i8 0, i64 120, i1 false)
  ret void

bb.d:                                             ; preds = %.noexc11, %.noexc
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %.noexc14, %bb.a
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %.noexc17, %bb.b
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5o3dgc13AdjacencyInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.p) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.ah, %bb.e ]
  tail call void @_ZN5o3dgc13AdjacencyInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.i) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.g ], [ %i.ag, %bb.d ]
  tail call void @_ZN5o3dgc13AdjacencyInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.b) #30
  %.pre = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aj = icmp eq ptr %.pre, null
  br i1 %i.aj, label %_ZN5o3dgc4FIFOIlED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #31
  br label %_ZN5o3dgc4FIFOIlED2Ev.exit

_ZN5o3dgc4FIFOIlED2Ev.exit:                       ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5o3dgc19TriangleListEncoderItED2Ev(ptr noundef nonnull align 8 dead_on_return(556) dereferenceable(556) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
end_hunk_12
begin_hunk_13_@_ZN5o3dgc12BinaryStream14WriteUIntASCIIEm:bb.a

_ZN5o3dgc6VectorIhE8PushBackERKh.exit14:          ; preds = %._crit_edge.i8, %bb.k
  %i.ac = phi i64 [ %i.v, %._crit_edge.i8 ], [ %.pre6.i13, %bb.k ] ; 2 uses
  %i.ad = phi ptr [ %.pre.i9, %._crit_edge.i8 ], [ %i.z, %bb.k ]
  %i.ae = add i64 %i.ac, 1
  store i64 %i.ae, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 %i.u, ptr %i.af, align 1
  br i1 %i.s, label %bb.g, label %.loopexit, !llvm.loop !975

bb.l:                                             ; preds = %bb.a
  %i.ag = trunc nuw nsw i64 %1 to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.m, label %._crit_edge.i15

._crit_edge.i15:                                  ; preds = %bb.l
  %.pre.i16 = load ptr, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21

bb.m:                                             ; preds = %bb.l
  %i.am = shl i64 %i.ai, 1
  %spec.select.i17 = tail call i64 @llvm.umax.i64(i64 %i.am, i64 32) ; 2 uses
  store i64 %spec.select.i17, ptr %i.aj, align 8
  %i.an = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i17) #33 ; 3 uses
  %.not.i18 = icmp eq i64 %i.ai, 0
  br i1 %.not.i18, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = load ptr, ptr %0, align 8               ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr align 1 %i.ao, i64 %i.ai, i1 false)
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdaPv(ptr noundef nonnull %i.ao) #31
  %.pre6.pre.i19 = load i64, ptr %i.ah, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.pre6.i20 = phi i64 [ %i.ai, %bb.n ], [ %.pre6.pre.i19, %bb.o ], [ 0, %bb.m ]
  store ptr %i.an, ptr %0, align 8
  br label %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21

_ZN5o3dgc6VectorIhE8PushBackERKh.exit21:          ; preds = %._crit_edge.i15, %bb.p
  %i.aq = phi i64 [ %i.ai, %._crit_edge.i15 ], [ %.pre6.i20, %bb.p ] ; 2 uses
  %i.ar = phi ptr [ %.pre.i16, %._crit_edge.i15 ], [ %i.an, %bb.p ]
  %i.as = add i64 %i.aq, 1
  store i64 %i.as, ptr %i.ah, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 %i.ag, ptr %i.at, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5o3dgc6VectorIhE8PushBackERKh.exit14, %_ZN5o3dgc6VectorIhE8PushBackERKh.exit21
  ret void
}

declare noundef i32 @_ZN5o3dgc16Arithmetic_Codec12stop_encoderEv(ptr noundef nonnull align 8 dereferenceable(44)) local_unnamed_addr #4

declare void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef nonnull align 4 dereferenceable(20)) local_unnamed_addr #4

declare void @_ZN5o3dgc16Arithmetic_Codec6encodeEjRNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_4NodeEE6CreateEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc13 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.44)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.j
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #30
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noalias noundef nonnull dereferenceable(360) ptr @_Znwm(i64 noundef 360) #33 ; 16 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(344) %i.ae, i8 0, i64 344, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  store i8 0, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF4NodeE, i64 16), ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  store i8 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 236
  store i8 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 248
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  store i32 0, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 272
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 312
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 328 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.ao, i8 0, i64 36, i1 false)
  store ptr %i.aq, ptr %i.ap, align 8
  store i8 0, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 352
  store i32 0, ptr %i.ar, align 8
  %i.as = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.at = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.as) ; 0 uses
  %i.au = call { ptr, i32 } @_ZN4glTF8LazyDictINS_4NodeEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.ad)
  ret { ptr, i32 } %i.au

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_5SceneEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN4glTF5SceneESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorIPN4glTF5SceneESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.h ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.h
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #33 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.g, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4glTF5SceneESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.d, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4glTF5SceneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4glTF5SceneESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4glTF5SceneESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.i, align 8
  br label %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4glTF5SceneESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.x = trunc i64 %i.h to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  store i32 %i.x, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !16, !align !112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  store i32 1, ptr %i.ae, align 4
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.x, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF5SceneD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF5SceneE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF6ObjectE, i64 16), ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31, !inline_history !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4glTF6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31, !inline_history !7
  br label %_ZN4glTF6ObjectD2Ev.exit

_ZN4glTF6ObjectD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF5SceneD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF5SceneE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31, !inline_history !1037
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF6ObjectE, i64 16), ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31, !inline_history !1038
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZN4glTF5SceneD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31, !inline_history !1038
  br label %_ZN4glTF5SceneD2Ev.exit

_ZN4glTF5SceneD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_9AnimationEE6CreateEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !align !112
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.d, ptr %2, align 8
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.79) #34
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.f, ptr %i.a, align 8
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc13 unwind label %bb.i   ; 2 uses

.noexc13:                                         ; preds = %.noexc.i
  store ptr %i.h, ptr %2, align 8
  %i.i = load i64, ptr %i.a, align 8
  store i64 %i.i, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc13, %bb.c
  %i.j = phi ptr [ %i.h, %.noexc13 ], [ %i.d, %bb.c ] ; 2 uses
  switch i64 %i.f, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %1, align 1
  store i8 %i.k, ptr %i.j, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr nonnull align 1 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %2, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.q = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit unwind label %bb.j

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit: ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8                ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit
  %i.t = load i64, ptr %i.d, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull @.str.44)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.i:                                             ; preds = %.noexc.i, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.j:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %2, align 8                ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.j
  %i.aa = load i64, ptr %i.d, align 8
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.i
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.x, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.m

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.v) #30
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = call noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #33 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ae, i8 0, i64 144, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8
  store i8 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 56 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8
  store i8 0, ptr %i.ai, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF9AnimationE, i64 16), ptr %i.ad, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store i32 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 152
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aj, i8 0, i64 36, i1 false)
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.ap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.ao) ; 0 uses
  %i.aq = call { ptr, i32 } @_ZN4glTF8LazyDictINS_9AnimationEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.ad)
  ret { ptr, i32 } %i.aq

bb.m:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn11 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  resume { ptr, i32 } %.pn11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_9AnimationEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 6 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %i.c, align 8
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN4glTF9AnimationESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorIPN4glTF9AnimationESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i, %i.h ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.h
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #33 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.g ; 2 uses
  store ptr %1, ptr %i.t, align 8
  %i.u = icmp sgt i64 %i.g, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4glTF9AnimationESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.d, i64 %i.g, i1 false)
  br label %_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4glTF9AnimationESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.i, align 8
  br label %_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4glTF9AnimationESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.x = trunc i64 %i.h to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  store i32 %i.x, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !16, !align !112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ae = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.z)
  store i32 1, ptr %i.ae, align 4
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.x, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF9AnimationD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF9AnimationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZNSt6vectorIN4glTF9Animation11AnimSamplerESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4glTF9Animation11AnimChannelES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN4glTF9Animation11AnimChannelEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyIN4glTF9Animation11AnimChannelEEvPT_.exit.i.i.i ], [ %i.c, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 64 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZN4glTF9Animation11AnimChannel10AnimTargetD2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZN4glTF9Animation11AnimChannel10AnimTargetD2Ev.exit.i.i.i.i.i

_ZN4glTF9Animation11AnimChannel10AnimTargetD2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %.05.i.i.i, align 8        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyIN4glTF9Animation11AnimChannelEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN4glTF9Animation11AnimChannel10AnimTargetD2Ev.exit.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZSt8_DestroyIN4glTF9Animation11AnimChannelEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4glTF9Animation11AnimChannelEEvPT_.exit.i.i.i: ; preds = %_ZN4glTF9Animation11AnimChannel10AnimTargetD2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4glTF9Animation11AnimChannelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1039

_ZSt8_DestroyIPN4glTF9Animation11AnimChannelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4glTF9Animation11AnimChannelEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8
  br label %_ZSt8_DestroyIPN4glTF9Animation11AnimChannelES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4glTF9Animation11AnimChannelES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4glTF9Animation11AnimChannelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.r = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4glTF9Animation11AnimChannelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4glTF9Animation11AnimChannelESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4glTF9Animation11AnimChannelES2_EvT_S4_RSaIT0_E.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #31
  br label %_ZNSt6vectorIN4glTF9Animation11AnimChannelESaIS2_EED2Ev.exit

_ZNSt6vectorIN4glTF9Animation11AnimChannelESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4glTF9Animation11AnimChannelES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4glTF6ObjectE, i64 16), ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN4glTF9Animation11AnimChannelESaIS2_EED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #31, !inline_history !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorIN4glTF9Animation11AnimChannelESaIS2_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZN4glTF6ObjectD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ah = load i64, ptr %i.af, align 8
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31, !inline_history !7
  br label %_ZN4glTF6ObjectD2Ev.exit

_ZN4glTF6ObjectD2Ev.exit:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4glTF9AnimationD0Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4glTF9AnimationD2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 184) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4glTF9Animation11AnimSamplerESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
end_hunk_13

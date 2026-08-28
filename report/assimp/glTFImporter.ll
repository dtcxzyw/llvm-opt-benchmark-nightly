Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFImporter?download=true
inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4glTF5Scene4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = and i64 %i.j, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = load i32, ptr %1, align 8                ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.n, 5
  %i.o = getelementptr i8, ptr %i.l, i64 %.idx.i.i.i.i ; 2 uses
  %.not9.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not9.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.p = lshr i64 ptrtoint (ptr @.str.32 to i64), 40
  %i.q = trunc i64 %i.p to i8
  %i.r = and i64 %i.f, 1152921504606846976
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.r, 0       ; 2 uses
  %i.s = sext i8 %i.q to i32
  %i.t = sub nsw i32 13, %i.s
  %i.u = select i1 %.not.i.i.i.i.i.i.i, i32 5, i32 %i.t ; 2 uses
  %i.v = and i64 ptrtoint (ptr @.str.32 to i64), 281474976710655
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = select i1 %.not.i.i.i.i.i.i.i, ptr %i.w, ptr %3 ; 2 uses
  %i.y = zext i32 %i.u to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %.lr.ph.i.i.i.i
  %.010.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.aq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 14
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = and i16 %i.aa, 4096
  %.not.i.i13.i.i.i.i.i = icmp eq i16 %i.ab, 0    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = sext i8 %i.ad to i32
  %i.af = sub nsw i32 13, %i.ae
  %i.ag = load i32, ptr %.010.i.i.i.i, align 8
  %i.ah = select i1 %.not.i.i13.i.i.i.i.i, i32 %i.ag, i32 %i.af
  %.not.i.i.i.i.i = icmp eq i32 %i.u, %i.ah
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = and i64 %i.ak, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = select i1 %.not.i.i13.i.i.i.i.i, ptr %i.am, ptr %.010.i.i.i.i ; 2 uses
  %i.ao = icmp eq ptr %i.x, %i.an
  br i1 %i.ao, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.x, ptr %i.an, i64 %i.y)
  %i.ap = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ap, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.o
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.b, !llvm.loop !20

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.c, %bb.a
  %.0.lcssa.i.i.i.i = phi ptr [ %i.l, %bb.a ], [ %.010.i.i.i.i, %bb.c ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.o, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.n
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.ar
  br i1 %.not.i, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.au = load i16, ptr %i.at, align 2
  %i.av = icmp eq i16 %i.au, 4
  br i1 %i.av, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.preheader, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.preheader: ; preds = %bb.d
  %i.aw = load i32, ptr %i.as, align 8
  %.not21 = icmp eq i32 %i.aw, 0
  br i1 %.not21, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 1296
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.bc = load ptr, ptr %i.ax, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = and i64 %i.bd, 281474976710655
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %indvars.iv ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 14
  %i.bi = load i16, ptr %i.bh, align 2            ; 2 uses
  %i.bj = and i16 %i.bi, 1024
  %.not = icmp eq i16 %i.bj, 0
  br i1 %.not, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = and i16 %i.bi, 4096
  %.not.i.i = icmp eq i16 %i.bk, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = and i64 %i.bn, 281474976710655
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = select i1 %.not.i.i, ptr %i.bp, ptr %i.bg
  %i.br = call { ptr, i32 } @_ZN4glTF8LazyDictINS_4NodeEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.ay, ptr noundef %i.bq) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.br, 0 ; 5 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.br, 1 ; 3 uses
  %.not.i11 = icmp eq ptr %.fca.0.extract, null
  br i1 %.not.i11, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit, label %_ZNK10glTFCommon3RefIN4glTF4NodeEEcvbEv.exit

_ZNK10glTFCommon3RefIN4glTF4NodeEEcvbEv.exit:     ; preds = %bb.f
  %i.bs = zext i32 %.fca.1.extract to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %.fca.0.extract, align 8
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = ashr exact i64 %i.by, 3
  %i.ca = icmp ugt i64 %i.bz, %i.bs
  br i1 %i.ca, label %bb.g, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %_ZNK10glTFCommon3RefIN4glTF4NodeEEcvbEv.exit
  %i.cb = load ptr, ptr %i.ba, align 8            ; 6 uses
  %i.cc = load ptr, ptr %i.bb, align 8
  %.not.i12 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %.fca.0.extract, ptr %i.cb, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.6.0..sroa_idx, align 8
  %i.cd = load ptr, ptr %i.ba, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.ce, ptr %i.ba, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

bb.i:                                             ; preds = %bb.g
  %i.cf = load ptr, ptr %i.az, align 8            ; 5 uses
  %i.cg = ptrtoint ptr %i.cb to i64
  %i.ch = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.ci = sub i64 %i.cg, %i.ch                    ; 3 uses
  %i.cj = icmp eq i64 %i.ci, 9223372036854775792
  br i1 %i.cj, label %bb.j, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #31
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ck = ashr exact i64 %i.ci, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ck, i64 1)
  %i.cl = add nsw i64 %.sroa.speculated.i.i.i, %i.ck ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.ck
  %i.cn = call i64 @llvm.umin.i64(i64 %i.cl, i64 576460752303423487)
  %i.co = select i1 %i.cm, i64 576460752303423487, i64 %i.cn ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.co, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cp = shl nuw nsw i64 %i.co, 4
  %i.cq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cp) #32 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ci ; 2 uses
  store ptr %.fca.0.extract, ptr %i.cr, align 8
  %.sroa.6.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.6.0..sroa_idx15, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.cf, %i.cb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i ], [ %i.cq, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i ], [ %i.cf, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !668
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i13 = icmp eq ptr %i.cs, %i.cb
  br i1 %.not.i.i.i.i.i13, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !672

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cq, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ct, %.lr.ph.i.i.i.i.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.cv = load ptr, ptr %i.bb, align 8
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cx) #29
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.cq, ptr %i.az, align 8
  store ptr %i.cu, ptr %i.ba, align 8
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.cy, ptr %i.bb, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.f, %_ZNK10glTFCommon3RefIN4glTF4NodeEEcvbEv.exit, %bb.h, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cz = load i32, ptr %i.as, align 8
  %i.da = zext i32 %i.cz to i64
  %i.db = icmp samesign ult i64 %indvars.iv.next, %i.da
  br i1 %i.db, label %bb.e, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, !llvm.loop !673

_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit, %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.preheader, %bb.d, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN4glTF8LazyDictINS_5SceneEE3AddEPS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #31
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
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #32 ; 4 uses
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
  %i.w = load ptr, ptr %i.i, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.y) #29
  br label %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4glTF5SceneESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.v, ptr %i.b, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %i.i, align 8
  br label %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN4glTF5SceneESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4glTF5SceneESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.aa = trunc i64 %i.h to i32                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
  store i32 %i.aa, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !18, !align !154
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
  store i32 1, ptr %i.ah, align 4
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %i.a, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %i.aa, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %.not = icmp ugt i64 %i.b, 20
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.06.016 = load ptr, ptr %i.c, align 8     ; 3 uses
  %.not1117 = icmp eq ptr %.sroa.06.016, null
  br i1 %.not1117, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %.fr24 = freeze i64 %i.e                        ; 3 uses
  %i.f = icmp eq i64 %.fr24, 0
  %i.g = load ptr, ptr %1, align 8
  br i1 %i.f, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us
  %.sroa.06.018.us = phi ptr [ %.sroa.06.0.us, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us ], [ %.sroa.06.016, %.lr.ph ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.06.018.us, i64 16
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10.us: ; preds = %.lr.ph.split.us
  %.sroa.06.0.us = load ptr, ptr %.sroa.06.018.us, align 8 ; 2 uses
  %.not11.us = icmp eq ptr %.sroa.06.0.us, null
  br i1 %.not11.us, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split.us, !llvm.loop !674

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10
  %.sroa.06.018 = phi ptr [ %.sroa.06.0, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10 ], [ %.sroa.06.016, %.lr.ph ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %.fr24, %i.l
  br i1 %i.m, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit: ; preds = %.lr.ph.split
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.018, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.g, ptr %i.o, i64 %.fr24)
  %i.p = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.p, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread10: ; preds = %.lr.ph.split, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueIS9_Lb1EEE.exit
  %.sroa.06.0 = load ptr, ptr %.sroa.06.018, align 8 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.06.0, null
  br i1 %.not11, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %.lr.ph.split, !llvm.loop !674

bb.c:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %1, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.q, i64 noundef %i.s, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit unwind label %bb.d ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = urem i64 %i.t, %i.x                      ; 3 uses
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %i.ad = load i64, ptr %i.r, align 8
  %.fr22.i.i = freeze i64 %i.ad                   ; 3 uses
  %i.ae = icmp eq i64 %.fr22.i.i, 0
  %i.af = load ptr, ptr %1, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8 ; 2 uses
  br i1 %i.ae, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.g
  %i.ag = phi i64 [ %i.an, %bb.g ], [ %.pre26.i.i, %bb.e ]
  %.0.us.i.i = phi ptr [ %i.al, %bb.g ], [ %i.ac, %bb.e ] ; 3 uses
  %i.ah = icmp eq i64 %i.t, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

bb.f:                                             ; preds = %.split.us.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.us.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i: ; preds = %bb.f, %.split.us.i.i
  %i.al = load ptr, ptr %.0.us.i.i, align 8       ; 3 uses
  %.not18.us.i.i = icmp eq ptr %i.al, null
  br i1 %.not18.us.i.i, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_jESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS7_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_jENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.us.i.i
end_hunk_0
begin_hunk_1_@_ZN4glTF4Node4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a
_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.t
  br i1 %.not.i.i.i.i, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i, label %bb.d, !llvm.loop !20

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i, %bb.e, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.q, %bb.c ], [ %.010.i.i.i.i, %bb.e ], [ %.010.i.i.i.i, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i ], [ %i.t, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.s
  %.not.i = icmp eq ptr %.0.lcssa.i.i.i.i, %i.aw
  br i1 %.not.i, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 30
  %i.az = load i16, ptr %i.ay, align 2
  %i.ba = icmp eq i16 %i.az, 4
  br i1 %i.ba, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.bc = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.bb, align 8
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 4
  %i.bl = icmp ult i64 %i.bk, %i.bd
  br i1 %i.bl, label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bi
  %i.bq = shl nuw nsw i64 %i.bd, 4
  %i.br = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #32 ; 4 uses
  %i.bs = load ptr, ptr %i.bb, align 8            ; 5 uses
  %i.bt = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i77
  %.012.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i77 ], [ %i.br, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i77 ], [ %i.bs, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !680
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i78 = icmp eq ptr %i.bu, %i.bt
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i77, !llvm.loop !672

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i77, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.bs, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.bw = load ptr, ptr %i.be, align 8
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bs to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bz) #29
  br label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.br, ptr %i.bb, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store ptr %i.ca, ptr %i.bm, align 8
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bd
  store ptr %i.cb, ptr %i.be, align 8
  %.pre = load i32, ptr %i.ax, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE7reserveEm.exit: ; preds = %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.cc = phi i32 [ %i.bc, %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit ], [ %.pre, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE13_M_deallocateEPS4_m.exit.i ]
  %.not285 = icmp eq i32 %i.cc, 0
  br i1 %.not285, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE7reserveEm.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 1296
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.cg = load ptr, ptr %i.cd, align 8
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = and i64 %i.ch, 281474976710655
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %indvars.iv ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 14
  %i.cm = load i16, ptr %i.cl, align 2            ; 2 uses
  %i.cn = and i16 %i.cm, 1024
  %.not = icmp eq i16 %i.cn, 0
  br i1 %.not, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.co = and i16 %i.cm, 4096
  %.not.i.i = icmp eq i16 %i.co, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = and i64 %i.cr, 281474976710655
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = select i1 %.not.i.i, ptr %i.ct, ptr %i.ck
  %i.cv = call { ptr, i32 } @_ZN4glTF8LazyDictINS_4NodeEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.ce, ptr noundef %i.cu) ; 2 uses
  %.fca.0.extract33 = extractvalue { ptr, i32 } %i.cv, 0 ; 5 uses
  %.fca.1.extract34 = extractvalue { ptr, i32 } %i.cv, 1 ; 3 uses
  %.not.i79 = icmp eq ptr %.fca.0.extract33, null
  br i1 %.not.i79, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit, label %_ZNK10glTFCommon3RefIN4glTF4NodeEEcvbEv.exit

_ZNK10glTFCommon3RefIN4glTF4NodeEEcvbEv.exit:     ; preds = %bb.i
  %i.cw = zext i32 %.fca.1.extract34 to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.fca.0.extract33, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = load ptr, ptr %.fca.0.extract33, align 8
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 3
  %i.de = icmp ugt i64 %i.dd, %i.cw
  br i1 %i.de, label %bb.j, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

bb.j:                                             ; preds = %_ZNK10glTFCommon3RefIN4glTF4NodeEEcvbEv.exit
  %i.df = load ptr, ptr %i.cf, align 8            ; 6 uses
  %i.dg = load ptr, ptr %i.be, align 8
  %.not.i80 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i80, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %.fca.0.extract33, ptr %i.df, align 8
  %.sroa.6261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i32 %.fca.1.extract34, ptr %.sroa.6261.0..sroa_idx, align 8
  %i.dh = load ptr, ptr %i.cf, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %i.di, ptr %i.cf, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

bb.l:                                             ; preds = %bb.j
  %i.dj = load ptr, ptr %i.bb, align 8            ; 5 uses
  %i.dk = ptrtoint ptr %i.df to i64
  %i.dl = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dm = sub i64 %i.dk, %i.dl                    ; 3 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775792
  br i1 %i.dn, label %bb.m, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #31
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.do = ashr exact i64 %i.dm, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = add nsw i64 %.sroa.speculated.i.i.i, %i.do ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = call i64 @llvm.umin.i64(i64 %i.dp, i64 576460752303423487)
  %i.ds = select i1 %i.dq, i64 576460752303423487, i64 %i.dr ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ds, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.dt = shl nuw nsw i64 %i.ds, 4
  %i.du = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #32 ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dm ; 2 uses
  store ptr %.fca.0.extract33, ptr %i.dv, align 8
  %.sroa.6261.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i32 %.fca.1.extract34, ptr %.sroa.6261.0..sroa_idx262, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.dj, %i.df
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i ], [ %i.du, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %i.dj, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !684
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i81 = icmp eq ptr %i.dw, %i.df
  br i1 %.not.i.i.i.i.i81, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !672

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.du, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dx, %.lr.ph.i.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.dz = load ptr, ptr %i.be, align 8
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.dl
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.eb) #29
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.du, ptr %i.bb, align 8
  store ptr %i.dy, ptr %i.cf, align 8
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.ds
  store ptr %i.ec, ptr %i.be, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.i, %_ZNK10glTFCommon3RefIN4glTF4NodeEEcvbEv.exit, %bb.k, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = load i32, ptr %i.ax, align 8
  %i.ee = zext i32 %i.ed to i64
  %i.ef = icmp samesign ult i64 %indvars.iv.next, %i.ee
  br i1 %i.ef, label %bb.h, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, !llvm.loop !688

_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE7reserveEm.exit, %bb.f, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 14
  store i16 1029, ptr %i.eg, align 2
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = and i64 %i.ej, -281474976710656
  %i.el = or i64 %i.ek, ptrtoint (ptr @.str.116 to i64) ; 2 uses
  %i.em = inttoptr i64 %i.el to ptr
  store ptr %i.em, ptr %i.eh, align 8
  store i32 6, ptr %11, align 8
  %i.en = load ptr, ptr %i.m, align 8
  %i.eo = ptrtoint ptr %i.en to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 281474976710655
  %i.eq = inttoptr i64 %i.ep to ptr               ; 6 uses
  %i.er = load i32, ptr %1, align 8               ; 2 uses
  %i.es = zext i32 %i.er to i64                   ; 2 uses
  %.idx.i.i.i.i82 = shl nuw nsw i64 %i.es, 5
  %i.et = getelementptr i8, ptr %i.eq, i64 %.idx.i.i.i.i82 ; 4 uses
  %.not9.i.i.i.i83 = icmp eq i32 %i.er, 0         ; 2 uses
  br i1 %.not9.i.i.i.i83, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i91, label %.lr.ph.i.i.i.i84

.lr.ph.i.i.i.i84:                                 ; preds = %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread
  %i.eu = lshr i64 ptrtoint (ptr @.str.116 to i64), 40
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = and i64 %i.el, 1152921504606846976
  %.not.i.i.i.i.i.i.i85 = icmp eq i64 %i.ew, 0    ; 2 uses
  %i.ex = sext i8 %i.ev to i32
  %i.ey = sub nsw i32 13, %i.ex
  %i.ez = select i1 %.not.i.i.i.i.i.i.i85, i32 6, i32 %i.ey ; 2 uses
  %i.fa = and i64 ptrtoint (ptr @.str.116 to i64), 281474976710655
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = select i1 %.not.i.i.i.i.i.i.i85, ptr %i.fb, ptr %11 ; 2 uses
  %i.fd = zext i32 %i.ez to i64
  br label %bb.o

bb.o:                                             ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i89, %.lr.ph.i.i.i.i84
  %.010.i.i.i.i86 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i84 ], [ %i.fv, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i89 ] ; 8 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i86, i64 14
  %i.ff = load i16, ptr %i.fe, align 2
  %i.fg = and i16 %i.ff, 4096
  %.not.i.i13.i.i.i.i.i87 = icmp eq i16 %i.fg, 0  ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i86, i64 13
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = sext i8 %i.fi to i32
  %i.fk = sub nsw i32 13, %i.fj
  %i.fl = load i32, ptr %.010.i.i.i.i86, align 8
  %i.fm = select i1 %.not.i.i13.i.i.i.i.i87, i32 %i.fl, i32 %i.fk
  %.not.i.i.i.i.i88 = icmp eq i32 %i.ez, %i.fm
  br i1 %.not.i.i.i.i.i88, label %bb.p, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i89

bb.p:                                             ; preds = %bb.o
  %i.fn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i86, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = and i64 %i.fp, 281474976710655
  %i.fr = inttoptr i64 %i.fq to ptr
  %i.fs = select i1 %.not.i.i13.i.i.i.i.i87, ptr %i.fr, ptr %.010.i.i.i.i86 ; 2 uses
  %i.ft = icmp eq ptr %i.fc, %i.fs
  br i1 %i.ft, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i91, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i95

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i95: ; preds = %bb.p
  %bcmp.i.i.i.i.i96 = call i32 @bcmp(ptr %i.fc, ptr %i.fs, i64 %i.fd)
  %i.fu = icmp eq i32 %bcmp.i.i.i.i.i96, 0
  br i1 %i.fu, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i91, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i89

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i89: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i95, %bb.o
  %i.fv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i86, i64 32 ; 2 uses
  %.not.i.i.i.i90 = icmp eq ptr %i.fv, %i.et
  br i1 %.not.i.i.i.i90, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i91, label %bb.o, !llvm.loop !20

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i91: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i89, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i95, %bb.p, %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread
  %.0.lcssa.i.i.i.i92 = phi ptr [ %i.eq, %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread ], [ %.010.i.i.i.i86, %bb.p ], [ %.010.i.i.i.i86, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i95 ], [ %i.et, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i89 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %i.eq, i64 %i.es ; 2 uses
  %.not.i93 = icmp eq ptr %.0.lcssa.i.i.i.i92, %i.fw
  br i1 %.not.i93, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i91
  %i.fx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i92, i64 30
  %i.fy = load i16, ptr %i.fx, align 2
  %i.fz = icmp eq i16 %i.fy, 4
  br i1 %i.fz, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit97, label %bb.ac

_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit97: ; preds = %bb.q
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i92, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gc = load i32, ptr %i.ga, align 8
  %.not.i.i.i98 = icmp eq i32 %i.gc, 16
  br i1 %.not.i.i.i98, label %.preheader.i.i.i, label %_ZN10glTFCommonL10ReadMemberINS_8NullableIA4_fEEEEbRN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEEPKcRT_.exit.sink.split

.preheader.i.i.i:                                 ; preds = %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit97
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i92, i64 24
  br label %bb.r

bb.r:                                             ; preds = %bb.ab, %.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ab ] ; 3 uses
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = ptrtoint ptr %i.ge to i64
  %i.gg = and i64 %i.gf, 281474976710655
  %i.gh = inttoptr i64 %i.gg to ptr
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %indvars.iv.i.i.i ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 14
  %i.gk = load i16, ptr %i.gj, align 2            ; 2 uses
  %i.gl = and i16 %i.gk, 16
  %.not11.i.i.i = icmp eq i16 %i.gl, 0
  br i1 %.not11.i.i.i, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gm = zext i16 %i.gk to i32                   ; 4 uses
  %i.gn = and i32 %i.gm, 512
  %.not.i.i.i.i99 = icmp eq i32 %i.gn, 0
  br i1 %.not.i.i.i.i99, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.go = load double, ptr %i.gi, align 8
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.gp = and i32 %i.gm, 32
  %.not2.i.i.i.i = icmp eq i32 %i.gp, 0
  br i1 %.not2.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gq = load i32, ptr %i.gi, align 8
  %i.gr = sitofp i32 %i.gq to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.gs = and i32 %i.gm, 64
  %.not3.i.i.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not3.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gt = load i32, ptr %i.gi, align 8
  %i.gu = uitofp i32 %i.gt to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.gv = and i32 %i.gm, 128
  %.not4.i.i.i.i = icmp eq i32 %i.gv, 0
  %i.gw = load i64, ptr %i.gi, align 8            ; 2 uses
  br i1 %.not4.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gx = sitofp i64 %i.gw to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.gy = uitofp i64 %i.gw to double
  br label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i.i.i

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i.i.i: ; preds = %bb.aa, %bb.z, %bb.x, %bb.v, %bb.t
  %.0.i.i.i.i = phi double [ %i.go, %bb.t ], [ %i.gr, %bb.v ], [ %i.gu, %bb.x ], [ %i.gx, %bb.z ], [ %i.gy, %bb.aa ]
  %i.gz = fptrunc double %.0.i.i.i.i to float
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %indvars.iv.i.i.i
  store float %i.gz, ptr %i.ha, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE9GetDoubleEv.exit.i.i.i, %bb.r
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, 16
  br i1 %exitcond.not.i.i.i, label %_ZN10glTFCommonL10ReadMemberINS_8NullableIA4_fEEEEbRN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEEPKcRT_.exit.sink.split, label %bb.r, !llvm.loop !689

bb.ac:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i91, %bb.q
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %.mask = and i64 %i.eo, -281474976710656
  %i.hd = icmp eq i64 %.mask, 844424930131968
  br i1 %i.hd, label %bb.ad, label %_ZN10glTFCommonL10ReadMemberINS_8NullableIA4_fEEEEbRN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEEPKcRT_.exit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 14
  store i16 1029, ptr %i.he, align 2
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = and i64 %i.hh, -281474976710656
  %i.hj = or i64 %i.hi, ptrtoint (ptr @.str.72 to i64) ; 2 uses
  %i.hk = inttoptr i64 %i.hj to ptr
  store ptr %i.hk, ptr %i.hf, align 8
  store i32 11, ptr %10, align 8
  br i1 %.not9.i.i.i.i83, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i109, label %.lr.ph.i.i.i.i102

.lr.ph.i.i.i.i102:                                ; preds = %bb.ad
  %i.hl = lshr i64 ptrtoint (ptr @.str.72 to i64), 40
  %i.hm = trunc i64 %i.hl to i8
  %i.hn = and i64 %i.hj, 1152921504606846976
  %.not.i.i.i.i.i.i.i103 = icmp eq i64 %i.hn, 0   ; 2 uses
  %i.ho = sext i8 %i.hm to i32
end_hunk_1
begin_hunk_2_@_ZN4glTF4Node4ReadERN9rapidjson12GenericValueINS1_4UTF8IcEENS1_19MemoryPoolAllocatorINS1_12CrtAllocatorEEEEERNS_5AssetE:bb.a
  br i1 %i.ob, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i154, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i152

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i152: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i158, %bb.an
  %i.oc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i149, i64 32 ; 2 uses
  %.not.i.i.i.i153 = icmp eq ptr %i.oc, %i.na
  br i1 %.not.i.i.i.i153, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i154, label %bb.an, !llvm.loop !20

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i154: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i152, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i158, %bb.ao, %_ZN10glTFCommonL10ReadMemberINS_8NullableIA4_fEEEEbRN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEEPKcRT_.exit
  %.0.lcssa.i.i.i.i155 = phi ptr [ %i.mx, %_ZN10glTFCommonL10ReadMemberINS_8NullableIA4_fEEEEbRN9rapidjson12GenericValueINS4_4UTF8IcEENS4_19MemoryPoolAllocatorINS4_12CrtAllocatorEEEEEPKcRT_.exit ], [ %.010.i.i.i.i149, %bb.ao ], [ %.010.i.i.i.i149, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i158 ], [ %i.na, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i152 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.od = getelementptr inbounds nuw [32 x i8], ptr %i.mx, i64 %i.mz
  %.not.i156 = icmp eq ptr %.0.lcssa.i.i.i.i155, %i.od
  br i1 %.not.i156, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i154
  %i.oe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i155, i64 30
  %i.of = load i16, ptr %i.oe, align 2
  %i.og = icmp eq i16 %i.of, 4
  br i1 %i.og, label %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit160, label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit160: ; preds = %bb.ap
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i155, i64 16
  %i.oi = load i32, ptr %i.oh, align 8            ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  %i.ok = zext i32 %i.oi to i64                   ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = load ptr, ptr %i.oj, align 8
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = ptrtoint ptr %i.on to i64               ; 2 uses
  %i.oq = sub i64 %i.oo, %i.op
  %i.or = ashr exact i64 %i.oq, 4
  %i.os = icmp ult i64 %i.or, %i.ok
  br i1 %i.os, label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit160
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ou = load ptr, ptr %i.ot, align 8
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = sub i64 %i.ov, %i.op
  %i.ox = shl nuw nsw i64 %i.ok, 4
  %i.oy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ox) #32 ; 4 uses
  %i.oz = load ptr, ptr %i.oj, align 8            ; 5 uses
  %i.pa = load ptr, ptr %i.ot, align 8            ; 2 uses
  %.not10.i.i.i.i161 = icmp eq ptr %i.oz, %i.pa
  br i1 %.not10.i.i.i.i161, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i162

.lr.ph.i.i.i.i162:                                ; preds = %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i162
  %.012.i.i.i.i163 = phi ptr [ %i.pc, %.lr.ph.i.i.i.i162 ], [ %i.oy, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0911.i.i.i.i164 = phi ptr [ %i.pb, %.lr.ph.i.i.i.i162 ], [ %i.oz, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_M_allocateEm.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i163, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i164, i64 16, i1 false), !alias.scope !690
  %i.pb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i164, i64 16 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i163, i64 16
  %.not.i.i.i.i165 = icmp eq ptr %i.pb, %i.pa
  br i1 %.not.i.i.i.i165, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i162, !llvm.loop !694

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %.lr.ph.i.i.i.i162, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i166 = icmp eq ptr %i.oz, null
  br i1 %.not.i8.i166, label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.pd = load ptr, ptr %i.ol, align 8
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = ptrtoint ptr %i.oz to i64
  %i.pg = sub i64 %i.pe, %i.pf
  call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef %i.pg) #29
  br label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.aq, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.oy, ptr %i.oj, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.ow
  store ptr %i.ph, ptr %i.ot, align 8
  %i.pi = getelementptr inbounds nuw [16 x i8], ptr %i.oy, i64 %i.ok
  store ptr %i.pi, ptr %i.ol, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE7reserveEm.exit: ; preds = %_ZN10glTFCommon9FindArrayERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit160, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %.not286 = icmp eq i32 %i.oi, 0
  br i1 %.not286, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %.lr.ph284

.lr.ph284:                                        ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE7reserveEm.exit
  %i.pj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i155, i64 24
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 1176
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph284, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE9push_backERKS4_.exit
  %indvars.iv289 = phi i64 [ 0, %.lr.ph284 ], [ %indvars.iv.next290, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.pm = load ptr, ptr %i.pj, align 8
  %i.pn = ptrtoint ptr %i.pm to i64
  %i.po = and i64 %i.pn, 281474976710655
  %i.pp = inttoptr i64 %i.po to ptr
  %i.pq = getelementptr inbounds nuw [16 x i8], ptr %i.pp, i64 %indvars.iv289 ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 14
  %i.ps = load i16, ptr %i.pr, align 2            ; 2 uses
  %i.pt = and i16 %i.ps, 1024
  %.not280 = icmp eq i16 %i.pt, 0
  br i1 %.not280, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE9push_backERKS4_.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.pu = and i16 %i.ps, 4096
  %.not.i.i168 = icmp eq i16 %i.pu, 0
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8
  %i.px = ptrtoint ptr %i.pw to i64
  %i.py = and i64 %i.px, 281474976710655
  %i.pz = inttoptr i64 %i.py to ptr
  %i.qa = select i1 %.not.i.i168, ptr %i.pz, ptr %i.pq
  %i.qb = call { ptr, i32 } @_ZN4glTF8LazyDictINS_4MeshEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.pk, ptr noundef %i.qa) ; 2 uses
  %.fca.0.extract16 = extractvalue { ptr, i32 } %i.qb, 0 ; 5 uses
  %.fca.1.extract17 = extractvalue { ptr, i32 } %i.qb, 1 ; 3 uses
  %.not.i169 = icmp eq ptr %.fca.0.extract16, null
  br i1 %.not.i169, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE9push_backERKS4_.exit, label %_ZNK10glTFCommon3RefIN4glTF4MeshEEcvbEv.exit

_ZNK10glTFCommon3RefIN4glTF4MeshEEcvbEv.exit:     ; preds = %bb.as
  %i.qc = zext i32 %.fca.1.extract17 to i64
  %i.qd = getelementptr inbounds nuw i8, ptr %.fca.0.extract16, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8
  %i.qf = load ptr, ptr %.fca.0.extract16, align 8
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = sub i64 %i.qg, %i.qh
  %i.qj = ashr exact i64 %i.qi, 3
  %i.qk = icmp ugt i64 %i.qj, %i.qc
  br i1 %i.qk, label %bb.at, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE9push_backERKS4_.exit

bb.at:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF4MeshEEcvbEv.exit
  %i.ql = load ptr, ptr %i.pl, align 8            ; 6 uses
  %i.qm = load ptr, ptr %i.ol, align 8
  %.not.i170 = icmp eq ptr %i.ql, %i.qm
  br i1 %.not.i170, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store ptr %.fca.0.extract16, ptr %i.ql, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  store i32 %.fca.1.extract17, ptr %.sroa.7.0..sroa_idx, align 8
  %i.qn = load ptr, ptr %i.pl, align 8
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  store ptr %i.qo, ptr %i.pl, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE9push_backERKS4_.exit

bb.av:                                            ; preds = %bb.at
  %i.qp = load ptr, ptr %i.oj, align 8            ; 5 uses
  %i.qq = ptrtoint ptr %i.ql to i64
  %i.qr = ptrtoint ptr %i.qp to i64               ; 2 uses
  %i.qs = sub i64 %i.qq, %i.qr                    ; 3 uses
  %i.qt = icmp eq i64 %i.qs, 9223372036854775792
  br i1 %i.qt, label %.noexc180, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

.noexc180:                                        ; preds = %bb.av
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.39) #31
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.av
  %i.qu = ashr exact i64 %i.qs, 4                 ; 3 uses
  %.sroa.speculated.i.i.i171 = call i64 @llvm.umax.i64(i64 %i.qu, i64 1)
  %i.qv = add nsw i64 %.sroa.speculated.i.i.i171, %i.qu ; 2 uses
  %i.qw = icmp ult i64 %i.qv, %i.qu
  %i.qx = call i64 @llvm.umin.i64(i64 %i.qv, i64 576460752303423487)
  %i.qy = select i1 %i.qw, i64 576460752303423487, i64 %i.qx ; 3 uses
  %.not.i.i.i172 = icmp ne i64 %i.qy, 0
  call void @llvm.assume(i1 %.not.i.i.i172)
  %i.qz = shl nuw nsw i64 %i.qy, 4
  %i.ra = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qz) #32 ; 5 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.qs ; 2 uses
  store ptr %.fca.0.extract16, ptr %i.rb, align 8
  %.sroa.7.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  store i32 %.fca.1.extract17, ptr %.sroa.7.0..sroa_idx251, align 8
  %.not10.i.i.i.i.i173 = icmp eq ptr %i.qp, %i.ql
  br i1 %.not10.i.i.i.i.i173, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i174

.lr.ph.i.i.i.i.i174:                              ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i174
  %.012.i.i.i.i.i175 = phi ptr [ %i.rd, %.lr.ph.i.i.i.i.i174 ], [ %i.ra, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i176 = phi ptr [ %i.rc, %.lr.ph.i.i.i.i.i174 ], [ %i.qp, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i175, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i176, i64 16, i1 false), !alias.scope !695
  %i.rc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i176, i64 16 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i175, i64 16 ; 2 uses
  %.not.i.i.i.i.i177 = icmp eq ptr %i.rc, %i.ql
  br i1 %.not.i.i.i.i.i177, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i174, !llvm.loop !694

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i174, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i178 = phi ptr [ %i.ra, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.rd, %.lr.ph.i.i.i.i.i174 ]
  %i.re = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i178, i64 16
  %.not.i23.i.i179 = icmp eq ptr %i.qp, null
  br i1 %.not.i23.i.i179, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.rf = load ptr, ptr %i.ol, align 8
  %i.rg = ptrtoint ptr %i.rf to i64
  %i.rh = sub i64 %i.rg, %i.qr
  call void @_ZdlPvm(ptr noundef nonnull %i.qp, i64 noundef %i.rh) #29
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.aw, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.ra, ptr %i.oj, align 8
  store ptr %i.re, ptr %i.pl, align 8
  %i.ri = getelementptr inbounds nuw [16 x i8], ptr %i.ra, i64 %i.qy
  store ptr %i.ri, ptr %i.ol, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.as, %_ZNK10glTFCommon3RefIN4glTF4MeshEEcvbEv.exit, %bb.au, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.ar
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next290, %i.ok
  br i1 %exitcond.not, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.ar, !llvm.loop !699

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE9push_backERKS4_.exit, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4MeshEEESaIS4_EE7reserveEm.exit, %bb.ap, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i154
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i16 1029, ptr %i.rj, align 2
  %i.rk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = ptrtoint ptr %i.rl to i64
  %i.rn = and i64 %i.rm, -281474976710656
  %i.ro = or i64 %i.rn, ptrtoint (ptr @.str.189 to i64) ; 2 uses
  %i.rp = inttoptr i64 %i.ro to ptr
  store ptr %i.rp, ptr %i.rk, align 8
  store i32 6, ptr %6, align 8
  %i.rq = load ptr, ptr %i.m, align 8
  %i.rr = ptrtoint ptr %i.rq to i64
  %i.rs = and i64 %i.rr, 281474976710655
  %i.rt = inttoptr i64 %i.rs to ptr               ; 4 uses
  %i.ru = load i32, ptr %1, align 8               ; 2 uses
  %i.rv = zext i32 %i.ru to i64                   ; 2 uses
  %.idx.i.i.i.i184 = shl nuw nsw i64 %i.rv, 5
  %i.rw = getelementptr i8, ptr %i.rt, i64 %.idx.i.i.i.i184 ; 2 uses
  %.not9.i.i.i.i185 = icmp eq i32 %i.ru, 0
  br i1 %.not9.i.i.i.i185, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i193, label %.lr.ph.i.i.i.i186

.lr.ph.i.i.i.i186:                                ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.rx = lshr i64 ptrtoint (ptr @.str.189 to i64), 40
  %i.ry = trunc i64 %i.rx to i8
  %i.rz = and i64 %i.ro, 1152921504606846976
  %.not.i.i.i.i.i.i.i187 = icmp eq i64 %i.rz, 0   ; 2 uses
  %i.sa = sext i8 %i.ry to i32
  %i.sb = sub nsw i32 13, %i.sa
  %i.sc = select i1 %.not.i.i.i.i.i.i.i187, i32 6, i32 %i.sb ; 2 uses
  %i.sd = and i64 ptrtoint (ptr @.str.189 to i64), 281474976710655
  %i.se = inttoptr i64 %i.sd to ptr
  %i.sf = select i1 %.not.i.i.i.i.i.i.i187, ptr %i.se, ptr %6 ; 2 uses
  %i.sg = zext i32 %i.sc to i64
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i191, %.lr.ph.i.i.i.i186
  %.010.i.i.i.i188 = phi ptr [ %i.rt, %.lr.ph.i.i.i.i186 ], [ %i.sy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i191 ] ; 8 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i188, i64 14
  %i.si = load i16, ptr %i.sh, align 2
  %i.sj = and i16 %i.si, 4096
  %.not.i.i13.i.i.i.i.i189 = icmp eq i16 %i.sj, 0 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i188, i64 13
  %i.sl = load i8, ptr %i.sk, align 1
  %i.sm = sext i8 %i.sl to i32
  %i.sn = sub nsw i32 13, %i.sm
  %i.so = load i32, ptr %.010.i.i.i.i188, align 8
  %i.sp = select i1 %.not.i.i13.i.i.i.i.i189, i32 %i.so, i32 %i.sn
  %.not.i.i.i.i.i190 = icmp eq i32 %i.sc, %i.sp
  br i1 %.not.i.i.i.i.i190, label %bb.ay, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i191

bb.ay:                                            ; preds = %bb.ax
  %i.sq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i188, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = ptrtoint ptr %i.sr to i64
  %i.st = and i64 %i.ss, 281474976710655
  %i.su = inttoptr i64 %i.st to ptr
  %i.sv = select i1 %.not.i.i13.i.i.i.i.i189, ptr %i.su, ptr %.010.i.i.i.i188 ; 2 uses
  %i.sw = icmp eq ptr %i.sf, %i.sv
  br i1 %i.sw, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i193, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i197

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i197: ; preds = %bb.ay
  %bcmp.i.i.i.i.i198 = call i32 @bcmp(ptr %i.sf, ptr %i.sv, i64 %i.sg)
  %i.sx = icmp eq i32 %bcmp.i.i.i.i.i198, 0
  br i1 %i.sx, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i193, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i191

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i191: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i197, %bb.ax
  %i.sy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i188, i64 32 ; 2 uses
  %.not.i.i.i.i192 = icmp eq ptr %i.sy, %i.rw
  br i1 %.not.i.i.i.i192, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i193, label %bb.ax, !llvm.loop !20

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i193: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i191, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i197, %bb.ay, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %.0.lcssa.i.i.i.i194 = phi ptr [ %i.rt, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ %.010.i.i.i.i188, %bb.ay ], [ %.010.i.i.i.i188, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i197 ], [ %i.rw, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i191 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.sz = getelementptr inbounds nuw [32 x i8], ptr %i.rt, i64 %i.rv
  %.not.i195 = icmp eq ptr %.0.lcssa.i.i.i.i194, %i.sz
  br i1 %.not.i195, label %_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %bb.az

bb.az:                                            ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i193
  %i.ta = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i194, i64 30
  %i.tb = load i16, ptr %i.ta, align 2            ; 2 uses
  %i.tc = and i16 %i.tb, 1024
  %.not6.i = icmp eq i16 %i.tc, 0
  br i1 %.not6.i, label %_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit

_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit: ; preds = %bb.az
  %i.td = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i194, i64 16
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 816
  %i.tf = and i16 %i.tb, 4096
  %.not.i.i199 = icmp eq i16 %i.tf, 0
  %i.tg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i194, i64 24
  %i.th = load ptr, ptr %i.tg, align 8
  %i.ti = ptrtoint ptr %i.th to i64
  %i.tj = and i64 %i.ti, 281474976710655
  %i.tk = inttoptr i64 %i.tj to ptr
  %i.tl = select i1 %.not.i.i199, ptr %i.tk, ptr %i.td
  %i.tm = call { ptr, i32 } @_ZN4glTF8LazyDictINS_6CameraEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.te, ptr noundef %i.tl) ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.tm, 0 ; 4 uses
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.tm, 1 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %.fca.0.extract7, ptr %i.tn, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i32 %.fca.1.extract8, ptr %.sroa.412.0..sroa_idx, align 8
  %.not.i200 = icmp eq ptr %.fca.0.extract7, null
  br i1 %.not.i200, label %_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread, label %_ZNK10glTFCommon3RefIN4glTF6CameraEEcvbEv.exit

_ZNK10glTFCommon3RefIN4glTF6CameraEEcvbEv.exit:   ; preds = %_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit
  %i.to = zext i32 %.fca.1.extract8 to i64        ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.fca.0.extract7, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = load ptr, ptr %.fca.0.extract7, align 8 ; 2 uses
  %i.ts = ptrtoint ptr %i.tq to i64
  %i.tt = ptrtoint ptr %i.tr to i64
  %i.tu = sub i64 %i.ts, %i.tt
  %i.tv = ashr exact i64 %i.tu, 3
  %i.tw = icmp ugt i64 %i.tv, %i.to
  br i1 %i.tw, label %bb.ba, label %_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

bb.ba:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF6CameraEEcvbEv.exit
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %i.to
  %i.tz = load ptr, ptr %i.ty, align 8
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ua, ptr noundef nonnull align 8 dereferenceable(32) %i.tx)
  br label %_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread

_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread: ; preds = %_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit, %bb.az, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i193, %_ZNK10glTFCommon3RefIN4glTF6CameraEEcvbEv.exit, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 1029, ptr %i.ub, align 2
  %i.uc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ud = load ptr, ptr %i.uc, align 8
  %i.ue = ptrtoint ptr %i.ud to i64
  %i.uf = and i64 %i.ue, -281474976710656
  %i.ug = or i64 %i.uf, ptrtoint (ptr @.str.40 to i64) ; 2 uses
  %i.uh = inttoptr i64 %i.ug to ptr
  store ptr %i.uh, ptr %i.uc, align 8
  store i32 10, ptr %5, align 8
  %i.ui = load ptr, ptr %i.m, align 8
  %i.uj = ptrtoint ptr %i.ui to i64
  %i.uk = and i64 %i.uj, 281474976710655
  %i.ul = inttoptr i64 %i.uk to ptr               ; 4 uses
  %i.um = load i32, ptr %1, align 8               ; 2 uses
  %i.un = zext i32 %i.um to i64                   ; 2 uses
  %.idx.i.i.i.i201 = shl nuw nsw i64 %i.un, 5
  %i.uo = getelementptr i8, ptr %i.ul, i64 %.idx.i.i.i.i201 ; 2 uses
  %.not9.i.i.i.i202 = icmp eq i32 %i.um, 0
  br i1 %.not9.i.i.i.i202, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i210, label %.lr.ph.i.i.i.i203

.lr.ph.i.i.i.i203:                                ; preds = %_ZN10glTFCommon10FindStringERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEEPKc.exit.thread
  %i.up = lshr i64 ptrtoint (ptr @.str.40 to i64), 40
  %i.uq = trunc i64 %i.up to i8
  %i.ur = and i64 %i.ug, 1152921504606846976
  %.not.i.i.i.i.i.i.i204 = icmp eq i64 %i.ur, 0   ; 2 uses
  %i.us = sext i8 %i.uq to i32
  %i.ut = sub nsw i32 13, %i.us
  %i.uu = select i1 %.not.i.i.i.i.i.i.i204, i32 10, i32 %i.ut ; 2 uses
  %i.uv = and i64 ptrtoint (ptr @.str.40 to i64), 281474976710655
  %i.uw = inttoptr i64 %i.uv to ptr
  %i.ux = select i1 %.not.i.i.i.i.i.i.i204, ptr %i.uw, ptr %5 ; 2 uses
  %i.uy = zext i32 %i.uu to i64
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i208, %.lr.ph.i.i.i.i203
  %.010.i.i.i.i205 = phi ptr [ %i.ul, %.lr.ph.i.i.i.i203 ], [ %i.vq, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i208 ] ; 8 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i205, i64 14
  %i.va = load i16, ptr %i.uz, align 2
  %i.vb = and i16 %i.va, 4096
  %.not.i.i13.i.i.i.i.i206 = icmp eq i16 %i.vb, 0 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i205, i64 13
  %i.vd = load i8, ptr %i.vc, align 1
  %i.ve = sext i8 %i.vd to i32
  %i.vf = sub nsw i32 13, %i.ve
  %i.vg = load i32, ptr %.010.i.i.i.i205, align 8
  %i.vh = select i1 %.not.i.i13.i.i.i.i.i206, i32 %i.vg, i32 %i.vf
  %.not.i.i.i.i.i207 = icmp eq i32 %i.uu, %i.vh
  br i1 %.not.i.i.i.i.i207, label %bb.bc, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i208

bb.bc:                                            ; preds = %bb.bb
  %i.vi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i205, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8
  %i.vk = ptrtoint ptr %i.vj to i64
  %i.vl = and i64 %i.vk, 281474976710655
  %i.vm = inttoptr i64 %i.vl to ptr
  %i.vn = select i1 %.not.i.i13.i.i.i.i.i206, ptr %i.vm, ptr %.010.i.i.i.i205 ; 2 uses
  %i.vo = icmp eq ptr %i.ux, %i.vn
  br i1 %i.vo, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i210, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i214

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i214: ; preds = %bb.bc
  %bcmp.i.i.i.i.i215 = call i32 @bcmp(ptr %i.ux, ptr %i.vn, i64 %i.uy)
  %i.vp = icmp eq i32 %bcmp.i.i.i.i.i215, 0
  br i1 %i.vp, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE10FindMemberEPKc.exit.i210, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread7.i.i.i.i208

end_hunk_2

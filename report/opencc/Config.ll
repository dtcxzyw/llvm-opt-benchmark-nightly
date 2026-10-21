Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/Config?download=true
inline.NumInlined: 5017
inline.NumDeleted: 1341
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEEC2EPSA_RKNS_14GenericPointerIS9_S7_EERKS9_SI_PS7_RKNS_10GenericUriIS9_S7_EE:bb.a
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = and i64 %i.uw, 281474976710655
  %i.uy = inttoptr i64 %i.ux to ptr
  %i.uz = select i1 %.not.i.i13.i.i.i.i.i458, ptr %i.uy, ptr %storemerge6.i.i.i.i457 ; 2 uses
  %i.va = icmp eq ptr %i.uj, %i.uz
  br i1 %i.va, label %.loopexit1090, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i465

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i465: ; preds = %bb.cn
  %bcmp.i.i.i.i.i466 = call i32 @bcmp(ptr %i.uj, ptr %i.uz, i64 %i.uk), !noalias !1233
  %i.vb = icmp eq i32 %bcmp.i.i.i.i.i466, 0
  br i1 %i.vb, label %.loopexit1090, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i460

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i460: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i465, %bb.cm
  %i.vc = getelementptr inbounds nuw i8, ptr %storemerge6.i.i.i.i457, i64 32 ; 2 uses
  %.not.i.i.i.i461 = icmp eq ptr %i.vc, %i.tx
  br i1 %.not.i.i.i.i461, label %.loopexit1090, label %bb.cm, !llvm.loop !4

.loopexit1090:                                    ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i460, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i465, %bb.cn, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEv.exit
  %storemerge.lcssa.i.i.i.i462 = phi ptr [ %i.tu, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEv.exit ], [ %storemerge6.i.i.i.i457, %bb.cn ], [ %storemerge6.i.i.i.i457, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i465 ], [ %i.tx, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i460 ] ; 6 uses
  %i.vd = getelementptr inbounds nuw [32 x i8], ptr %i.tu, i64 %i.tw
  %.not.i463 = icmp eq ptr %storemerge.lcssa.i.i.i.i462, %i.vd ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i462, i64 16 ; 4 uses
  %i.vf = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v acquire, align 8
  %i.vg = icmp eq i8 %i.vf, 0
  br i1 %i.vg, label %bb.co, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEv.exit, !prof !200

bb.co:                                            ; preds = %.loopexit1090
  %i.vh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v) #33
  %.not.i468 = icmp eq i32 %i.vh, 0
  br i1 %.not.i468, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEv.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i64 14), align 2, !tbaa !60
  %i.vi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i64 8), align 8, !tbaa !60
  %i.vj = ptrtoint ptr %i.vi to i64
  %i.vk = and i64 %i.vj, -281474976710656
  %i.vl = or i64 %i.vk, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1s to i64)
  %i.vm = inttoptr i64 %i.vl to ptr
  store ptr %i.vm, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, align 8, !tbaa !60
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEv.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEv.exit: ; preds = %.loopexit1090, %bb.co, %bb.cp
  %i.vn = load ptr, ptr %i.hb, align 8, !tbaa !60, !noalias !1234
  %i.vo = ptrtoint ptr %i.vn to i64
  %i.vp = and i64 %i.vo, 281474976710655
  %i.vq = inttoptr i64 %i.vp to ptr               ; 4 uses
  %i.vr = load i32, ptr %3, align 8, !tbaa !60, !noalias !1235 ; 2 uses
  %i.vs = zext i32 %i.vr to i64                   ; 2 uses
  %.idx.i.i.i.i469 = shl nuw nsw i64 %i.vs, 5
  %i.vt = getelementptr i8, ptr %i.vq, i64 %.idx.i.i.i.i469 ; 2 uses
  %.not5.i.i.i.i470 = icmp eq i32 %i.vr, 0
  br i1 %.not5.i.i.i.i470, label %.loopexit1089, label %.lr.ph.i.i.i.i471

.lr.ph.i.i.i.i471:                                ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEv.exit
  %i.vu = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i64 14), align 2, !tbaa !60, !noalias !1236
  %i.vv = and i16 %i.vu, 4096
  %.not.i.i.i.i.i.i.i472 = icmp eq i16 %i.vv, 0   ; 2 uses
  %i.vw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i64 13), align 1, !noalias !1236
  %i.vx = sext i8 %i.vw to i32
  %i.vy = sub nsw i32 13, %i.vx
  %i.vz = load i32, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, align 8, !noalias !1236
  %i.wa = select i1 %.not.i.i.i.i.i.i.i472, i32 %i.vz, i32 %i.vy ; 2 uses
  %i.wb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v, i64 8), align 8, !noalias !1236
  %i.wc = ptrtoint ptr %i.wb to i64
  %i.wd = and i64 %i.wc, 281474976710655
  %i.we = inttoptr i64 %i.wd to ptr
  %i.wf = select i1 %.not.i.i.i.i.i.i.i472, ptr %i.we, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEvE1v ; 2 uses
  %i.wg = zext i32 %i.wa to i64
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i476, %.lr.ph.i.i.i.i471
  %storemerge6.i.i.i.i473 = phi ptr [ %i.vq, %.lr.ph.i.i.i.i471 ], [ %i.wy, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i476 ] ; 8 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %storemerge6.i.i.i.i473, i64 14
  %i.wi = load i16, ptr %i.wh, align 2, !tbaa !60, !noalias !1236
  %i.wj = and i16 %i.wi, 4096
  %.not.i.i13.i.i.i.i.i474 = icmp eq i16 %i.wj, 0 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %storemerge6.i.i.i.i473, i64 13
  %i.wl = load i8, ptr %i.wk, align 1, !noalias !1236
  %i.wm = sext i8 %i.wl to i32
  %i.wn = sub nsw i32 13, %i.wm
  %i.wo = load i32, ptr %storemerge6.i.i.i.i473, align 8, !noalias !1236
  %i.wp = select i1 %.not.i.i13.i.i.i.i.i474, i32 %i.wo, i32 %i.wn
  %.not.i.i.i.i.i475 = icmp eq i32 %i.wa, %i.wp
  br i1 %.not.i.i.i.i.i475, label %bb.cr, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i476

bb.cr:                                            ; preds = %bb.cq
  %i.wq = getelementptr inbounds nuw i8, ptr %storemerge6.i.i.i.i473, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8, !noalias !1236
  %i.ws = ptrtoint ptr %i.wr to i64
  %i.wt = and i64 %i.ws, 281474976710655
  %i.wu = inttoptr i64 %i.wt to ptr
  %i.wv = select i1 %.not.i.i13.i.i.i.i.i474, ptr %i.wu, ptr %storemerge6.i.i.i.i473 ; 2 uses
  %i.ww = icmp eq ptr %i.wf, %i.wv
  br i1 %i.ww, label %.loopexit1089, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i481

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i481: ; preds = %bb.cr
  %bcmp.i.i.i.i.i482 = call i32 @bcmp(ptr %i.wf, ptr %i.wv, i64 %i.wg), !noalias !1236
  %i.wx = icmp eq i32 %bcmp.i.i.i.i.i482, 0
  br i1 %i.wx, label %.loopexit1089, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i476

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i476: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i481, %bb.cq
  %i.wy = getelementptr inbounds nuw i8, ptr %storemerge6.i.i.i.i473, i64 32 ; 2 uses
  %.not.i.i.i.i477 = icmp eq ptr %i.wy, %i.vt
  br i1 %.not.i.i.i.i477, label %.loopexit1089, label %bb.cq, !llvm.loop !4

.loopexit1089:                                    ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i476, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i481, %bb.cr, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEv.exit
  %storemerge.lcssa.i.i.i.i478 = phi ptr [ %i.vq, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17GetRequiredStringEv.exit ], [ %storemerge6.i.i.i.i473, %bb.cr ], [ %storemerge6.i.i.i.i473, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i481 ], [ %i.vt, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i476 ] ; 6 uses
  %i.wz = getelementptr inbounds nuw [32 x i8], ptr %i.vq, i64 %i.vs
  %.not.i479 = icmp eq ptr %storemerge.lcssa.i.i.i.i478, %i.wz ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i478, i64 16 ; 4 uses
  %i.xb = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v acquire, align 8
  %i.xc = icmp eq i8 %i.xb, 0
  br i1 %i.xc, label %bb.cs, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit, !prof !200

bb.cs:                                            ; preds = %.loopexit1089
  %i.xd = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v) #33
  %.not.i484 = icmp eq i32 %i.xd, 0
  br i1 %.not.i484, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 14), align 2, !tbaa !60
  %i.xe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 8), align 8, !tbaa !60
  %i.xf = ptrtoint ptr %i.xe to i64
  %i.xg = and i64 %i.xf, -281474976710656
  %i.xh = or i64 %i.xg, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1s to i64)
  %i.xi = inttoptr i64 %i.xh to ptr
  store ptr %i.xi, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 12, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, align 8, !tbaa !60
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit: ; preds = %.loopexit1089, %bb.cs, %bb.ct
  %i.xj = load ptr, ptr %i.hb, align 8, !tbaa !60, !noalias !1237
  %i.xk = ptrtoint ptr %i.xj to i64
  %i.xl = and i64 %i.xk, 281474976710655
  %i.xm = inttoptr i64 %i.xl to ptr               ; 4 uses
  %i.xn = load i32, ptr %3, align 8, !tbaa !60, !noalias !1238 ; 2 uses
  %i.xo = zext i32 %i.xn to i64                   ; 2 uses
  %.idx.i.i.i.i485 = shl nuw nsw i64 %i.xo, 5
  %i.xp = getelementptr i8, ptr %i.xm, i64 %.idx.i.i.i.i485 ; 2 uses
  %.not5.i.i.i.i486 = icmp eq i32 %i.xn, 0
  br i1 %.not5.i.i.i.i486, label %.loopexit1088, label %.lr.ph.i.i.i.i487

.lr.ph.i.i.i.i487:                                ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit
  %i.xq = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 14), align 2, !tbaa !60, !noalias !1239
  %i.xr = and i16 %i.xq, 4096
  %.not.i.i.i.i.i.i.i488 = icmp eq i16 %i.xr, 0   ; 2 uses
  %i.xs = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 13), align 1, !noalias !1239
  %i.xt = sext i8 %i.xs to i32
  %i.xu = sub nsw i32 13, %i.xt
  %i.xv = load i32, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, align 8, !noalias !1239
  %i.xw = select i1 %.not.i.i.i.i.i.i.i488, i32 %i.xv, i32 %i.xu ; 2 uses
  %i.xx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 8), align 8, !noalias !1239
  %i.xy = ptrtoint ptr %i.xx to i64
  %i.xz = and i64 %i.xy, 281474976710655
  %i.ya = inttoptr i64 %i.xz to ptr
  %i.yb = select i1 %.not.i.i.i.i.i.i.i488, ptr %i.ya, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v ; 2 uses
  %i.yc = zext i32 %i.xw to i64
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i492, %.lr.ph.i.i.i.i487
  %storemerge6.i.i.i.i489 = phi ptr [ %i.xm, %.lr.ph.i.i.i.i487 ], [ %i.yu, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i492 ] ; 8 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %storemerge6.i.i.i.i489, i64 14
  %i.ye = load i16, ptr %i.yd, align 2, !tbaa !60, !noalias !1239
  %i.yf = and i16 %i.ye, 4096
  %.not.i.i13.i.i.i.i.i490 = icmp eq i16 %i.yf, 0 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %storemerge6.i.i.i.i489, i64 13
  %i.yh = load i8, ptr %i.yg, align 1, !noalias !1239
  %i.yi = sext i8 %i.yh to i32
  %i.yj = sub nsw i32 13, %i.yi
  %i.yk = load i32, ptr %storemerge6.i.i.i.i489, align 8, !noalias !1239
  %i.yl = select i1 %.not.i.i13.i.i.i.i.i490, i32 %i.yk, i32 %i.yj
  %.not.i.i.i.i.i491 = icmp eq i32 %i.xw, %i.yl
  br i1 %.not.i.i.i.i.i491, label %bb.cv, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i492

bb.cv:                                            ; preds = %bb.cu
  %i.ym = getelementptr inbounds nuw i8, ptr %storemerge6.i.i.i.i489, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8, !noalias !1239
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = and i64 %i.yo, 281474976710655
  %i.yq = inttoptr i64 %i.yp to ptr
  %i.yr = select i1 %.not.i.i13.i.i.i.i.i490, ptr %i.yq, ptr %storemerge6.i.i.i.i489 ; 2 uses
  %i.ys = icmp eq ptr %i.yb, %i.yr
  br i1 %i.ys, label %.loopexit1088, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i497

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i497: ; preds = %bb.cv
  %bcmp.i.i.i.i.i498 = call i32 @bcmp(ptr %i.yb, ptr %i.yr, i64 %i.yc), !noalias !1239
  %i.yt = icmp eq i32 %bcmp.i.i.i.i.i498, 0
  br i1 %i.yt, label %.loopexit1088, label %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i492

_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i492: ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i497, %bb.cu
  %i.yu = getelementptr inbounds nuw i8, ptr %storemerge6.i.i.i.i489, i64 32 ; 2 uses
  %.not.i.i.i.i493 = icmp eq ptr %i.yu, %i.xp
  br i1 %.not.i.i.i.i493, label %.loopexit1088, label %bb.cu, !llvm.loop !4

.loopexit1088:                                    ; preds = %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i492, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i497, %bb.cv, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit
  %storemerge.lcssa.i.i.i.i494 = phi ptr [ %i.xm, %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit ], [ %storemerge6.i.i.i.i489, %bb.cv ], [ %storemerge6.i.i.i.i489, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.i.i.i.i497 ], [ %i.xp, %_ZNK9rapidjson12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEE11StringEqualIS5_EEbRKNS0_IS2_T_EE.exit.thread3.i.i.i.i492 ] ; 6 uses
  %i.yv = getelementptr inbounds nuw [32 x i8], ptr %i.xm, i64 %i.xo
  %.not.i495 = icmp ne ptr %storemerge.lcssa.i.i.i.i494, %i.yv
  %i.yw = freeze i1 %.not.i495                    ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i494, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  %i.yy = getelementptr inbounds nuw i8, ptr %39, i64 14
  store i16 4, ptr %i.yy, align 2, !tbaa !60
  br i1 %.not.i463, label %.loopexit1087, label %bb.cw

bb.cw:                                            ; preds = %.loopexit1088
  %i.yz = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i462, i64 30
  %i.za = load i16, ptr %i.yz, align 2, !tbaa !60
  %i.zb = icmp eq i16 %i.za, 3
  br i1 %i.zb, label %bb.cx, label %.loopexit1087

bb.cx:                                            ; preds = %bb.cw
  %i.zc = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i462, i64 24 ; 2 uses
  %i.zd = load i32, ptr %i.ve, align 8, !tbaa !60
  %.not10441117 = icmp eq i32 %i.zd, 0
  br i1 %.not10441117, label %.loopexit1087, label %.lr.ph1119.preheader

.lr.ph1119.preheader:                             ; preds = %bb.cx
  %i.ze = load ptr, ptr %i.zc, align 8, !tbaa !60
  %i.zf = ptrtoint ptr %i.ze to i64
  %i.zg = and i64 %i.zf, 281474976710655
  %i.zh = inttoptr i64 %i.zg to ptr
  br label %.lr.ph1119

.lr.ph1119:                                       ; preds = %.lr.ph1119.preheader, %bb.cy
  %.sroa.01027.01118 = phi ptr [ %i.zi, %bb.cy ], [ %i.zh, %.lr.ph1119.preheader ] ; 2 uses
  invoke void @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16AddUniqueElementINS3_IS5_S7_EES9_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01027.01118)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %.lr.ph1119
  %i.zi = getelementptr inbounds nuw i8, ptr %.sroa.01027.01118, i64 32 ; 2 uses
  %i.zj = load ptr, ptr %i.zc, align 8, !tbaa !60
  %i.zk = ptrtoint ptr %i.zj to i64
  %i.zl = and i64 %i.zk, 281474976710655
  %i.zm = inttoptr i64 %i.zl to ptr
  %i.zn = load i32, ptr %i.ve, align 8, !tbaa !60
  %i.zo = zext i32 %i.zn to i64
  %i.zp = getelementptr inbounds nuw [32 x i8], ptr %i.zm, i64 %i.zo
  %.not1044 = icmp eq ptr %i.zi, %i.zp
  br i1 %.not1044, label %.loopexit1087, label %.lr.ph1119, !llvm.loop !974

.loopexit1087:                                    ; preds = %bb.cy, %bb.cx, %bb.cw, %.loopexit1088
  br i1 %.not.i479, label %.loopexit1084, label %bb.cz

bb.cz:                                            ; preds = %.loopexit1087
  %i.zq = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i478, i64 30
  %i.zr = load i16, ptr %i.zq, align 2, !tbaa !60
  %i.zs = icmp eq i16 %i.zr, 4
  br i1 %i.zs, label %bb.da, label %.loopexit1084

bb.da:                                            ; preds = %bb.cz
  %i.zt = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i478, i64 24 ; 2 uses
  %i.zu = load i32, ptr %i.xa, align 8, !tbaa !60 ; 2 uses
  %.not2991120 = icmp eq i32 %i.zu, 0
  br i1 %.not2991120, label %.loopexit1084, label %.lr.ph1122.preheader

.lr.ph1122.preheader:                             ; preds = %bb.da
  %i.zv = load ptr, ptr %i.zt, align 8, !tbaa !60 ; 2 uses
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = and i64 %i.zw, 281474976710655
  %i.zy = inttoptr i64 %i.zx to ptr
  br label %.lr.ph1122

.lr.ph1122:                                       ; preds = %.lr.ph1122.preheader, %bb.dc
  %i.zz = phi i32 [ %i.aae, %bb.dc ], [ %i.zu, %.lr.ph1122.preheader ]
  %i.aaa = phi ptr [ %i.aaf, %bb.dc ], [ %i.zv, %.lr.ph1122.preheader ]
  %.02051121 = phi ptr [ %i.aag, %bb.dc ], [ %i.zy, %.lr.ph1122.preheader ] ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.02051121, i64 14
  %i.aac = load i16, ptr %i.aab, align 2, !tbaa !60
  %i.aad = and i16 %i.aac, 1024
  %.not1045 = icmp eq i16 %i.aad, 0
  br i1 %.not1045, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.lr.ph1122
  invoke void @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16AddUniqueElementINS3_IS5_S7_EES9_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %.02051121)
          to label %._crit_edge1178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge1178:                                  ; preds = %bb.db
  %.pre1179 = load ptr, ptr %i.zt, align 8, !tbaa !60
  %.pre1180 = load i32, ptr %i.xa, align 8, !tbaa !60
  br label %bb.dc

bb.dc:                                            ; preds = %._crit_edge1178, %.lr.ph1122
  %i.aae = phi i32 [ %.pre1180, %._crit_edge1178 ], [ %i.zz, %.lr.ph1122 ] ; 2 uses
  %i.aaf = phi ptr [ %.pre1179, %._crit_edge1178 ], [ %i.aaa, %.lr.ph1122 ] ; 2 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.02051121, i64 16 ; 2 uses
  %i.aah = ptrtoint ptr %i.aaf to i64
  %i.aai = and i64 %i.aah, 281474976710655
  %i.aaj = inttoptr i64 %i.aai to ptr
  %i.aak = zext i32 %i.aae to i64
  %i.aal = getelementptr inbounds nuw [16 x i8], ptr %i.aaj, i64 %i.aak
  %.not299 = icmp eq ptr %i.aag, %i.aal
  br i1 %.not299, label %.loopexit1084, label %.lr.ph1122, !llvm.loop !975

.loopexit1084:                                    ; preds = %bb.dc, %bb.da, %bb.cz, %.loopexit1087
  %i.aam = load i32, ptr %i.dr, align 4, !tbaa !1215
  %i.aan = and i32 %i.aam, -2
  %i.aao = icmp ne i32 %i.aan, 2
  %or.cond.not = select i1 %i.yw, i1 %i.aao, i1 false
  br i1 %or.cond.not, label %bb.dd, label %.loopexit1080

bb.dd:                                            ; preds = %.loopexit1084
  %i.aap = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i494, i64 30
  %i.aaq = load i16, ptr %i.aap, align 2, !tbaa !60
  %i.aar = icmp eq i16 %i.aaq, 3
  br i1 %i.aar, label %bb.de, label %.loopexit1080

bb.de:                                            ; preds = %bb.dd
  %i.aas = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i494, i64 24 ; 2 uses
  %i.aat = load i32, ptr %i.yx, align 8, !tbaa !60
  %.not10461126 = icmp eq i32 %i.aat, 0
  br i1 %.not10461126, label %.loopexit1080, label %.lr.ph1128.preheader

.lr.ph1128.preheader:                             ; preds = %bb.de
  %i.aau = load ptr, ptr %i.aas, align 8, !tbaa !60
  %i.aav = ptrtoint ptr %i.aau to i64
  %i.aaw = and i64 %i.aav, 281474976710655
  %i.aax = inttoptr i64 %i.aaw to ptr
  br label %.lr.ph1128

.lr.ph1128:                                       ; preds = %.lr.ph1128.preheader, %.loopexit1078
  %.sroa.01020.01127 = phi ptr [ %i.abv, %.loopexit1078 ], [ %i.aax, %.lr.ph1128.preheader ] ; 5 uses
  invoke void @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16AddUniqueElementINS3_IS5_S7_EES9_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01020.01127)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.df:                                            ; preds = %.lr.ph1128
  %i.aay = getelementptr inbounds nuw i8, ptr %.sroa.01020.01127, i64 16 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %.sroa.01020.01127, i64 30
  %i.aba = load i16, ptr %i.aaz, align 2, !tbaa !60
  %i.abb = icmp eq i16 %i.aba, 4
  br i1 %i.abb, label %bb.dg, label %.loopexit1078

bb.dg:                                            ; preds = %bb.df
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.01020.01127, i64 24 ; 2 uses
  %i.abd = load i32, ptr %i.aay, align 8, !tbaa !60 ; 2 uses
  %.not3551123 = icmp eq i32 %i.abd, 0
  br i1 %.not3551123, label %.loopexit1078, label %.lr.ph1125.preheader

.lr.ph1125.preheader:                             ; preds = %bb.dg
  %i.abe = load ptr, ptr %i.abc, align 8, !tbaa !60 ; 2 uses
  %i.abf = ptrtoint ptr %i.abe to i64
  %i.abg = and i64 %i.abf, 281474976710655
  %i.abh = inttoptr i64 %i.abg to ptr
  br label %.lr.ph1125

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph1128, %bb.dh, %bb.db, %.lr.ph1119
  %lpad.loopexit.split-lp1417 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %39) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  br label %.loopexit.split-lp1096.loopexit.split-lp

.lr.ph1125:                                       ; preds = %.lr.ph1125.preheader, %bb.di
  %i.abi = phi i32 [ %i.abn, %bb.di ], [ %i.abd, %.lr.ph1125.preheader ]
  %i.abj = phi ptr [ %i.abo, %bb.di ], [ %i.abe, %.lr.ph1125.preheader ]
  %.02041124 = phi ptr [ %i.abp, %bb.di ], [ %i.abh, %.lr.ph1125.preheader ] ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.02041124, i64 14
  %i.abl = load i16, ptr %i.abk, align 2, !tbaa !60
  %i.abm = and i16 %i.abl, 1024
  %.not1047 = icmp eq i16 %i.abm, 0
  br i1 %.not1047, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.lr.ph1125
  invoke void @_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE16AddUniqueElementINS3_IS5_S7_EES9_EEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(419) %0, ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(16) %.02041124)
          to label %._crit_edge1181 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge1181:                                  ; preds = %bb.dh
  %.pre1182 = load ptr, ptr %i.abc, align 8, !tbaa !60
  %.pre1183 = load i32, ptr %i.aay, align 8, !tbaa !60
  br label %bb.di

bb.di:                                            ; preds = %._crit_edge1181, %.lr.ph1125
  %i.abn = phi i32 [ %.pre1183, %._crit_edge1181 ], [ %i.abi, %.lr.ph1125 ] ; 2 uses
  %i.abo = phi ptr [ %.pre1182, %._crit_edge1181 ], [ %i.abj, %.lr.ph1125 ] ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %.02041124, i64 16 ; 2 uses
  %i.abq = ptrtoint ptr %i.abo to i64
  %i.abr = and i64 %i.abq, 281474976710655
  %i.abs = inttoptr i64 %i.abr to ptr
  %i.abt = zext i32 %i.abn to i64
  %i.abu = getelementptr inbounds nuw [16 x i8], ptr %i.abs, i64 %i.abt
  %.not355 = icmp eq ptr %i.abp, %i.abu
  br i1 %.not355, label %.loopexit1078, label %.lr.ph1125, !llvm.loop !976

.loopexit1078:                                    ; preds = %bb.di, %bb.dg, %bb.df
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.01020.01127, i64 32 ; 2 uses
  %i.abw = load ptr, ptr %i.aas, align 8, !tbaa !60
  %i.abx = ptrtoint ptr %i.abw to i64
  %i.aby = and i64 %i.abx, 281474976710655
  %i.abz = inttoptr i64 %i.aby to ptr
  %i.aca = load i32, ptr %i.yx, align 8, !tbaa !60
  %i.acb = zext i32 %i.aca to i64
  %i.acc = getelementptr inbounds nuw [32 x i8], ptr %i.abz, i64 %i.acb
  %.not1046 = icmp eq ptr %i.abv, %i.acc
  br i1 %.not1046, label %.loopexit1080, label %.lr.ph1128, !llvm.loop !977

.loopexit1080:                                    ; preds = %.loopexit1078, %bb.de, %.loopexit1084, %bb.dd
  %i.acd = load i32, ptr %39, align 8, !tbaa !60  ; 3 uses
  %.not301 = icmp eq i32 %i.acd, 0
  br i1 %.not301, label %.loopexit1077, label %.lr.ph1130

.lr.ph1130:                                       ; preds = %.loopexit1080
  store i32 %i.acd, ptr %i.as, align 4, !tbaa !366
  %i.ace = zext i32 %i.acd to i64
  %i.acf = mul nuw nsw i64 %i.ace, 56
  %i.acg = call noalias ptr @malloc(i64 noundef %i.acf) #37 ; 2 uses
  store ptr %i.acg, ptr %i.ao, align 8, !tbaa !367
  %i.ach = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.aci = getelementptr inbounds nuw i8, ptr %30, i64 14
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph1130, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEaSERS4_.exit
  %i.acj = phi ptr [ %i.acg, %.lr.ph1130 ], [ %i.acv, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEaSERS4_.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph1130 ], [ %indvars.iv.next, %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEaSERS4_.exit ] ; 5 uses
  %i.ack = getelementptr inbounds nuw [56 x i8], ptr %i.acj, i64 %indvars.iv ; 3 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 40
  store ptr null, ptr %i.acl, align 8, !tbaa !369
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 48
  store i8 0, ptr %i.acm, align 8, !tbaa !370
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ack, i8 0, i64 36, i1 false)
  %i.acn = load ptr, ptr %i.ach, align 8, !tbaa !60
  %i.aco = ptrtoint ptr %i.acn to i64
  %i.acp = and i64 %i.aco, 281474976710655
  %i.acq = inttoptr i64 %i.acp to ptr
  %i.acr = getelementptr inbounds nuw [16 x i8], ptr %i.acq, i64 %indvars.iv ; 3 uses
  %i.acs = load ptr, ptr %i.ao, align 8, !tbaa !367 ; 2 uses
  %i.act = getelementptr inbounds nuw [56 x i8], ptr %i.acs, i64 %indvars.iv ; 3 uses
  %.not.i503 = icmp eq ptr %i.act, %i.acr
  br i1 %.not.i503, label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEaSERS4_.exit, label %bb.dk, !prof !76

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %i.acr, i64 16, i1 false), !tbaa.struct !371
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acr, i64 14
  store i16 0, ptr %i.acu, align 2, !tbaa !60
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.act) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.act, ptr noundef nonnull align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !371
  store i16 0, ptr %i.aci, align 2, !tbaa !60
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  %.pre1184 = load ptr, ptr %i.ao, align 8, !tbaa !367
  br label %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEaSERS4_.exit

_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEaSERS4_.exit: ; preds = %bb.dj, %bb.dk
  %i.acv = phi ptr [ %i.acs, %bb.dj ], [ %.pre1184, %bb.dk ] ; 2 uses
  %i.acw = load ptr, ptr %i.z, align 8, !tbaa !339
  %i.acx = getelementptr inbounds nuw [56 x i8], ptr %i.acv, i64 %indvars.iv
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 16
  store ptr %i.acw, ptr %i.acy, align 8, !tbaa !372
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.acz = load i32, ptr %i.as, align 4, !tbaa !366
  %i.ada = zext i32 %i.acz to i64
  %i.adb = icmp samesign ult i64 %indvars.iv.next, %i.ada
  br i1 %i.adb, label %bb.dj, label %.loopexit1077, !llvm.loop !978

.loopexit1077:                                    ; preds = %_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEEaSERS4_.exit, %.loopexit1080
  call void @_ZN9rapidjson12GenericValueINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %39) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  br i1 %.not.i463, label %bb.el, label %bb.dl

bb.dl:                                            ; preds = %.loopexit1077
  %i.adc = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i462, i64 30
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !60
  %i.ade = icmp eq i16 %i.add, 3
  br i1 %i.ade, label %bb.dm, label %bb.el

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #33
  %i.adf = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v acquire, align 8
  %i.adg = icmp eq i8 %i.adf, 0
  br i1 %i.adg, label %bb.dn, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEv.exit505, !prof !200

bb.dn:                                            ; preds = %bb.dm
  %i.adh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v) #33
  %.not.i504 = icmp eq i32 %i.adh, 0
  br i1 %.not.i504, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEv.exit505, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v, i64 14), align 2, !tbaa !60
  %i.adi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v, i64 8), align 8, !tbaa !60
  %i.adj = ptrtoint ptr %i.adi to i64
  %i.adk = and i64 %i.adj, -281474976710656
  %i.adl = or i64 %i.adk, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1s to i64)
  %i.adm = inttoptr i64 %i.adl to ptr
  store ptr %i.adm, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 10, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v, align 8, !tbaa !60
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEv.exit505

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEv.exit505: ; preds = %bb.dm, %bb.dn, %bb.do
  %i.adn = load ptr, ptr %0, align 8, !tbaa !337  ; 2 uses
  %i.ado = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v, i64 14), align 2, !tbaa !60, !noalias !1240 ; 2 uses
  %i.adp = and i16 %i.ado, 1024
  %.not.i506 = icmp eq i16 %i.adp, 0
  br i1 %.not.i506, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEv.exit505
  %i.adq = and i16 %i.ado, 4096
  %.not.i.i.i507 = icmp eq i16 %i.adq, 0          ; 2 uses
  %i.adr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v, i64 8), align 8, !noalias !1240
  %i.ads = ptrtoint ptr %i.adr to i64             ; 2 uses
  %i.adt = and i64 %i.ads, 281474976710655
  %i.adu = inttoptr i64 %i.adt to ptr
  %i.adv = select i1 %.not.i.i.i507, ptr %i.adu, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v
  %i.adw = lshr i64 %i.ads, 40
  %i.adx = trunc i64 %i.adw to i8
  %i.ady = sext i8 %i.adx to i32
  %i.adz = sub nsw i32 13, %i.ady
  %i.aea = load i32, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE19GetPropertiesStringEvE1v, align 8, !noalias !1240
end_hunk_0
begin_hunk_1_@_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEEC2EPSA_RKNS_14GenericPointerIS9_S7_EERKS9_SI_PS7_RKNS_10GenericUriIS9_S7_EE:bb.a
  %i.aoy = load i32, ptr %i.xa, align 8, !tbaa !60 ; 2 uses
  %.not3051139 = icmp eq i32 %i.aoy, 0
  br i1 %.not3051139, label %.loopexit1075, label %.lr.ph1142.preheader

.lr.ph1142.preheader:                             ; preds = %bb.fq
  %i.aoz = load ptr, ptr %i.aox, align 8, !tbaa !60 ; 2 uses
  %i.apa = ptrtoint ptr %i.aoz to i64
  %i.apb = and i64 %i.apa, 281474976710655
  %i.apc = inttoptr i64 %i.apb to ptr
  br label %.lr.ph1142

.lr.ph1142:                                       ; preds = %.lr.ph1142.preheader, %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit571.thread
  %i.apd = phi i32 [ %i.aqr, %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit571.thread ], [ %i.aoy, %.lr.ph1142.preheader ] ; 3 uses
  %i.ape = phi ptr [ %i.aqs, %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit571.thread ], [ %i.aoz, %.lr.ph1142.preheader ] ; 3 uses
  %.02021140 = phi ptr [ %i.aqt, %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit571.thread ], [ %i.apc, %.lr.ph1142.preheader ] ; 6 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.02021140, i64 14
  %i.apg = load i16, ptr %i.apf, align 2, !tbaa !60 ; 2 uses
  %i.aph = and i16 %i.apg, 1024
  %.not1050 = icmp eq i16 %i.aph, 0
  br i1 %.not1050, label %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit571.thread, label %bb.fr

bb.fr:                                            ; preds = %.lr.ph1142
  %i.api = and i16 %i.apg, 4096
  %.not.i.i.i561 = icmp eq i16 %i.api, 0          ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %.02021140, i64 13
  %i.apk = load i8, ptr %i.apj, align 1
  %i.apl = sext i8 %i.apk to i32
  %i.apm = sub nsw i32 13, %i.apl
  %i.apn = load i32, ptr %.02021140, align 8
  %i.apo = select i1 %.not.i.i.i561, i32 %i.apn, i32 %i.apm ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %.02021140, i64 8
  %i.apq = load ptr, ptr %i.app, align 8
  %i.apr = ptrtoint ptr %i.apq to i64
  %i.aps = and i64 %i.apr, 281474976710655
  %i.apt = inttoptr i64 %i.aps to ptr
  %i.apu = select i1 %.not.i.i.i561, ptr %i.apt, ptr %.02021140
  %i.apv = load i32, ptr %i.as, align 4, !tbaa !366 ; 2 uses
  %.not22.not.i562 = icmp eq i32 %i.apv, 0
  br i1 %.not22.not.i562, label %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit571.thread, label %.lr.ph.i563

.lr.ph.i563:                                      ; preds = %bb.fr
  %i.apw = load ptr, ptr %i.ao, align 8, !tbaa !367
  %i.apx = zext i32 %i.apo to i64
  %wide.trip.count.i564 = zext i32 %i.apv to i64
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fu, %.lr.ph.i563
  %indvars.iv.i565 = phi i64 [ 0, %.lr.ph.i563 ], [ %indvars.iv.next.i567, %bb.fu ] ; 2 uses
  %i.apy = getelementptr inbounds nuw [56 x i8], ptr %i.apw, i64 %indvars.iv.i565 ; 6 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 14
  %i.aqa = load i16, ptr %i.apz, align 2, !tbaa !60
  %i.aqb = and i16 %i.aqa, 4096
  %.not.i.i17.i566 = icmp eq i16 %i.aqb, 0        ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apy, i64 13
  %i.aqd = load i8, ptr %i.aqc, align 1
  %i.aqe = sext i8 %i.aqd to i32
  %i.aqf = sub nsw i32 13, %i.aqe
  %i.aqg = load i32, ptr %i.apy, align 8
  %i.aqh = select i1 %.not.i.i17.i566, i32 %i.aqg, i32 %i.aqf
  %i.aqi = icmp eq i32 %i.aqh, %i.apo
  br i1 %i.aqi, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.apy, i64 8
  %i.aqk = load ptr, ptr %i.aqj, align 8
  %i.aql = ptrtoint ptr %i.aqk to i64
  %i.aqm = and i64 %i.aql, 281474976710655
  %i.aqn = inttoptr i64 %i.aqm to ptr
  %i.aqo = select i1 %.not.i.i17.i566, ptr %i.aqn, ptr %i.apy
  %bcmp.i570 = call i32 @bcmp(ptr %i.aqo, ptr %i.apu, i64 %i.apx)
  %i.aqp = icmp eq i32 %bcmp.i570, 0
  br i1 %i.aqp, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %bb.fs
  %indvars.iv.next.i567 = add nuw nsw i64 %indvars.iv.i565, 1 ; 2 uses
  %exitcond.not.i568 = icmp eq i64 %indvars.iv.next.i567, %wide.trip.count.i564
  br i1 %exitcond.not.i568, label %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit571.thread, label %bb.fs, !llvm.loop !28

bb.fv:                                            ; preds = %bb.ft
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.apy, i64 48
  store i8 1, ptr %i.aqq, align 8, !tbaa !370
  store i8 1, ptr %i.ax, align 2, !tbaa !377
  %.pre1187 = load ptr, ptr %i.aox, align 8, !tbaa !60
  %.pre1188 = load i32, ptr %i.xa, align 8, !tbaa !60
  br label %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit571.thread

_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit571.thread: ; preds = %bb.fu, %bb.fr, %bb.fv, %.lr.ph1142
  %i.aqr = phi i32 [ %i.apd, %.lr.ph1142 ], [ %i.apd, %bb.fr ], [ %.pre1188, %bb.fv ], [ %i.apd, %bb.fu ] ; 2 uses
  %i.aqs = phi ptr [ %i.ape, %.lr.ph1142 ], [ %i.ape, %bb.fr ], [ %.pre1187, %bb.fv ], [ %i.ape, %bb.fu ] ; 2 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %.02021140, i64 16 ; 2 uses
  %i.aqu = ptrtoint ptr %i.aqs to i64
  %i.aqv = and i64 %i.aqu, 281474976710655
  %i.aqw = inttoptr i64 %i.aqv to ptr
  %i.aqx = zext i32 %i.aqr to i64
  %i.aqy = getelementptr inbounds nuw [16 x i8], ptr %i.aqw, i64 %i.aqx
  %.not305 = icmp eq ptr %i.aqt, %i.aqy
  br i1 %.not305, label %.loopexit1075, label %.lr.ph1142, !llvm.loop !1013

.loopexit1075:                                    ; preds = %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit571.thread, %bb.fq, %bb.fp, %bb.fo
  %i.aqz = load i32, ptr %i.dr, align 4, !tbaa !1215
  %i.ara = and i32 %i.aqz, -2
  %i.arb = icmp ne i32 %i.ara, 2
  %or.cond1065.not = select i1 %i.yw, i1 %i.arb, i1 false
  br i1 %or.cond1065.not, label %bb.fw, label %bb.hb

bb.fw:                                            ; preds = %.loopexit1075
  %i.arc = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i494, i64 30
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !60
  %i.are = icmp eq i16 %i.ard, 3
  br i1 %i.are, label %bb.fx, label %bb.hb

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #33
  %i.arf = load atomic i8, ptr @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v acquire, align 8
  %i.arg = icmp eq i8 %i.arf, 0
  br i1 %i.arg, label %bb.fy, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit573, !prof !200

bb.fy:                                            ; preds = %bb.fx
  %i.arh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v) #33
  %.not.i572 = icmp eq i32 %i.arh, 0
  br i1 %.not.i572, label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit573, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i8 0, i64 16, i1 false)
  store i16 1029, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 14), align 2, !tbaa !60
  %i.ari = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 8), align 8, !tbaa !60
  %i.arj = ptrtoint ptr %i.ari to i64
  %i.ark = and i64 %i.arj, -281474976710656
  %i.arl = or i64 %i.ark, ptrtoint (ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1s to i64)
  %i.arm = inttoptr i64 %i.arl to ptr
  store ptr %i.arm, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 8), align 8, !tbaa !60
  store i32 12, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, align 8, !tbaa !60
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v) #33
  br label %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit573

_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit573: ; preds = %bb.fx, %bb.fy, %bb.fz
  %i.arn = load ptr, ptr %0, align 8, !tbaa !337  ; 2 uses
  %i.aro = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 14), align 2, !tbaa !60, !noalias !1255 ; 2 uses
  %i.arp = and i16 %i.aro, 1024
  %.not.i574 = icmp eq i16 %i.arp, 0
  br i1 %.not.i574, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit573
  %i.arq = and i16 %i.aro, 4096
  %.not.i.i.i575 = icmp eq i16 %i.arq, 0          ; 2 uses
  %i.arr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, i64 8), align 8, !noalias !1255
  %i.ars = ptrtoint ptr %i.arr to i64             ; 2 uses
  %i.art = and i64 %i.ars, 281474976710655
  %i.aru = inttoptr i64 %i.art to ptr
  %i.arv = select i1 %.not.i.i.i575, ptr %i.aru, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v
  %i.arw = lshr i64 %i.ars, 40
  %i.arx = trunc i64 %i.arw to i8
  %i.ary = sext i8 %i.arx to i32
  %i.arz = sub nsw i32 13, %i.ary
  %i.asa = load i32, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, align 8, !noalias !1255
  %i.asb = select i1 %.not.i.i.i575, i32 %i.asa, i32 %i.arz
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33, !noalias !1256
  store ptr %i.arv, ptr %21, align 8, !tbaa !363, !noalias !1256
  %i.asc = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i32 %i.asb, ptr %i.asc, align 8, !tbaa !364, !noalias !1256
  %i.asd = getelementptr inbounds nuw i8, ptr %21, i64 12
  store i32 -1, ptr %i.asd, align 4, !tbaa !365, !noalias !1256
  invoke void @_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E6AppendERKNS8_5TokenEPS5_(ptr dead_on_unwind nonnull writable sret(%"class.rapidjson::GenericPointer") align 8 %44, ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef %i.arn)
          to label %.noexc576 unwind label %bb.gg

.noexc576:                                        ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33, !noalias !1256
  br label %bb.gc

bb.gb:                                            ; preds = %_ZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEv.exit573
  %i.ase = load i64, ptr @_ZZN9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE21GetDependenciesStringEvE1v, align 8, !tbaa !60, !noalias !1255
  %i.asf = trunc i64 %i.ase to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33, !noalias !1257
  %i.asg = invoke noundef ptr @_ZN9rapidjson8internal6u32toaEjPc(i32 noundef %i.asf, ptr noundef nonnull %i.g)
          to label %.noexc577 unwind label %bb.gg

.noexc577:                                        ; preds = %bb.gb
  %i.ash = ptrtoint ptr %i.asg to i64
  %i.asi = ptrtoint ptr %i.g to i64
  %i.asj = sub i64 %i.ash, %i.asi                 ; 2 uses
  %i.ask = trunc i64 %i.asj to i32
  %i.asl = and i64 %i.asj, 4294967295
  %i.asm = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.asl
  store i8 0, ptr %i.asm, align 1, !tbaa !60, !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33, !noalias !1257
  store ptr %i.g, ptr %20, align 8, !tbaa !363, !noalias !1257
  %i.asn = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i32 %i.ask, ptr %i.asn, align 8, !tbaa !364, !noalias !1257
  %i.aso = getelementptr inbounds nuw i8, ptr %20, i64 12
  store i32 %i.asf, ptr %i.aso, align 4, !tbaa !365, !noalias !1257
  invoke void @_ZNK9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_E6AppendERKNS8_5TokenEPS5_(ptr dead_on_unwind nonnull writable sret(%"class.rapidjson::GenericPointer") align 8 %44, ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef %i.arn)
          to label %.noexc578 unwind label %bb.gg

.noexc578:                                        ; preds = %.noexc577
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33, !noalias !1257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33, !noalias !1257
  br label %bb.gc

bb.gc:                                            ; preds = %.noexc576, %.noexc578
  store i8 1, ptr %i.aw, align 1, !tbaa !378
  %i.asp = getelementptr inbounds nuw i8, ptr %storemerge.lcssa.i.i.i.i494, i64 24 ; 2 uses
  %i.asq = load i32, ptr %i.yx, align 8, !tbaa !60
  %.not10511145 = icmp eq i32 %i.asq, 0
  br i1 %.not10511145, label %._crit_edge1150, label %.lr.ph1149

.lr.ph1149:                                       ; preds = %bb.gc
  %i.asr = load ptr, ptr %i.asp, align 8, !tbaa !60
  %i.ass = ptrtoint ptr %i.asr to i64
  %i.ast = and i64 %i.ass, 281474976710655
  %i.asu = inttoptr i64 %i.ast to ptr
  %i.asv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.asw = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.asx = ptrtoint ptr %i.f to i64
  %i.asy = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.asz = getelementptr inbounds nuw i8, ptr %18, i64 12
  %i.ata = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.atb = getelementptr inbounds nuw i8, ptr %45, i64 24
  %i.atc = getelementptr inbounds nuw i8, ptr %45, i64 8
  br label %bb.gh

._crit_edge1150:                                  ; preds = %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit592.thread, %bb.gc
  %i.atd = getelementptr inbounds nuw i8, ptr %44, i64 16
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !128
  %.not.i580 = icmp eq ptr %i.ate, null
  br i1 %.not.i580, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %._crit_edge1150
  %i.atf = getelementptr inbounds nuw i8, ptr %44, i64 24
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !129
  call void @free(ptr noundef %i.atg) #33
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %._crit_edge1150
  %i.ath = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !130 ; 2 uses
  %i.atj = icmp eq ptr %i.ati, null
  br i1 %i.atj, label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit581, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.ati, i64 noundef 1) #35
  br label %_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit581

_ZN9rapidjson14GenericPointerINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES5_ED2Ev.exit581: ; preds = %bb.ge, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #33
  br label %bb.hb

bb.gg:                                            ; preds = %.noexc577, %bb.gb, %bb.ga
  %i.atk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.gh:                                            ; preds = %.lr.ph1149, %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit592.thread
  %.sroa.0996.01146 = phi ptr [ %i.asu, %.lr.ph1149 ], [ %i.ayk, %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit592.thread ] ; 12 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %.sroa.0996.01146, i64 14 ; 2 uses
  %i.atm = load i16, ptr %i.atl, align 2, !tbaa !60
  %i.atn = and i16 %i.atm, 4096
  %.not.i.i.i582 = icmp eq i16 %i.atn, 0          ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %.sroa.0996.01146, i64 13
  %i.atp = load i8, ptr %i.ato, align 1
  %i.atq = sext i8 %i.atp to i32
  %i.atr = sub nsw i32 13, %i.atq
  %i.ats = load i32, ptr %.sroa.0996.01146, align 8
  %i.att = select i1 %.not.i.i.i582, i32 %i.ats, i32 %i.atr ; 2 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %.sroa.0996.01146, i64 8 ; 2 uses
  %i.atv = load ptr, ptr %i.atu, align 8
  %i.atw = ptrtoint ptr %i.atv to i64
  %i.atx = and i64 %i.atw, 281474976710655
  %i.aty = inttoptr i64 %i.atx to ptr
  %i.atz = select i1 %.not.i.i.i582, ptr %i.aty, ptr %.sroa.0996.01146
  %i.aua = load i32, ptr %i.as, align 4, !tbaa !366 ; 2 uses
  %.not22.not.i583 = icmp eq i32 %i.aua, 0
  br i1 %.not22.not.i583, label %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit592.thread, label %.lr.ph.i584

.lr.ph.i584:                                      ; preds = %bb.gh
  %i.aub = load ptr, ptr %i.ao, align 8, !tbaa !367 ; 2 uses
  %i.auc = zext i32 %i.att to i64
  %wide.trip.count.i585 = zext i32 %i.aua to i64  ; 4 uses
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gk, %.lr.ph.i584
  %indvars.iv.i586 = phi i64 [ 0, %.lr.ph.i584 ], [ %indvars.iv.next.i588, %bb.gk ] ; 3 uses
  %i.aud = getelementptr inbounds nuw [56 x i8], ptr %i.aub, i64 %indvars.iv.i586 ; 7 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 14
  %i.auf = load i16, ptr %i.aue, align 2, !tbaa !60
  %i.aug = and i16 %i.auf, 4096
  %.not.i.i17.i587 = icmp eq i16 %i.aug, 0        ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aud, i64 13
  %i.aui = load i8, ptr %i.auh, align 1
  %i.auj = sext i8 %i.aui to i32
  %i.auk = sub nsw i32 13, %i.auj
  %i.aul = load i32, ptr %i.aud, align 8
  %i.aum = select i1 %.not.i.i17.i587, i32 %i.aul, i32 %i.auk
  %i.aun = icmp eq i32 %i.aum, %i.att
  br i1 %i.aun, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aud, i64 8
  %i.aup = load ptr, ptr %i.auo, align 8
  %i.auq = ptrtoint ptr %i.aup to i64
  %i.aur = and i64 %i.auq, 281474976710655
  %i.aus = inttoptr i64 %i.aur to ptr
  %i.aut = select i1 %.not.i.i17.i587, ptr %i.aus, ptr %i.aud
  %bcmp.i591 = call i32 @bcmp(ptr %i.aut, ptr %i.atz, i64 %i.auc)
  %i.auu = icmp eq i32 %bcmp.i591, 0
  br i1 %i.auu, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %indvars.iv.next.i588 = add nuw nsw i64 %indvars.iv.i586, 1 ; 2 uses
  %exitcond.not.i589 = icmp eq i64 %indvars.iv.next.i588, %wide.trip.count.i585
  br i1 %exitcond.not.i589, label %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit592.thread, label %bb.gi, !llvm.loop !28

bb.gl:                                            ; preds = %bb.gj
  %i.auv = getelementptr inbounds nuw i8, ptr %.sroa.0996.01146, i64 16 ; 3 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %.sroa.0996.01146, i64 30
  %i.aux = load i16, ptr %i.auw, align 2, !tbaa !60
  switch i16 %i.aux, label %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit592.thread [
    i16 4, label %_ZN9rapidjson12CrtAllocator6MallocEm.exit595
    i16 3, label %bb.gq
  ]

_ZN9rapidjson12CrtAllocator6MallocEm.exit595:     ; preds = %bb.gl
  %i.auy = call noalias ptr @malloc(i64 noundef %wide.trip.count.i585) #37 ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aud, i64 40 ; 2 uses
  store ptr %i.auy, ptr %i.auz, align 8, !tbaa !369
  call void @llvm.memset.p0.i64(ptr align 1 %i.auy, i8 0, i64 %wide.trip.count.i585, i1 false)
  %i.ava = getelementptr inbounds nuw i8, ptr %.sroa.0996.01146, i64 24 ; 2 uses
  %i.avb = load i32, ptr %i.auv, align 8, !tbaa !60 ; 2 uses
  %.not3371143 = icmp eq i32 %i.avb, 0
  br i1 %.not3371143, label %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit592.thread, label %.lr.ph.i598.preheader

.lr.ph.i598.preheader:                            ; preds = %_ZN9rapidjson12CrtAllocator6MallocEm.exit595
  %i.avc = load ptr, ptr %i.ava, align 8, !tbaa !60 ; 2 uses
  %i.avd = ptrtoint ptr %i.avc to i64
  %i.ave = and i64 %i.avd, 281474976710655
  %i.avf = inttoptr i64 %i.ave to ptr
  br label %.lr.ph.i598

.lr.ph.i598:                                      ; preds = %.lr.ph.i598.preheader, %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit606.thread
  %i.avg = phi i32 [ %i.aws, %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit606.thread ], [ %i.avb, %.lr.ph.i598.preheader ]
  %i.avh = phi ptr [ %i.awt, %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit606.thread ], [ %i.avc, %.lr.ph.i598.preheader ]
  %.02011144 = phi ptr [ %i.awu, %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit606.thread ], [ %i.avf, %.lr.ph.i598.preheader ] ; 6 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %.02011144, i64 14
  %i.avj = load i16, ptr %i.avi, align 2, !tbaa !60
  %i.avk = and i16 %i.avj, 4096
  %.not.i.i.i596 = icmp eq i16 %i.avk, 0          ; 2 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %.02011144, i64 13
  %i.avm = load i8, ptr %i.avl, align 1
  %i.avn = sext i8 %i.avm to i32
  %i.avo = sub nsw i32 13, %i.avn
  %i.avp = load i32, ptr %.02011144, align 8
  %i.avq = select i1 %.not.i.i.i596, i32 %i.avp, i32 %i.avo ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %.02011144, i64 8
  %i.avs = load ptr, ptr %i.avr, align 8
  %i.avt = ptrtoint ptr %i.avs to i64
  %i.avu = and i64 %i.avt, 281474976710655
  %i.avv = inttoptr i64 %i.avu to ptr
  %i.avw = select i1 %.not.i.i.i596, ptr %i.avv, ptr %.02011144
  %i.avx = zext i32 %i.avq to i64
  br label %bb.gm

bb.gm:                                            ; preds = %bb.go, %.lr.ph.i598
  %indvars.iv.i600 = phi i64 [ 0, %.lr.ph.i598 ], [ %indvars.iv.next.i602, %bb.go ] ; 3 uses
  %i.avy = getelementptr inbounds nuw [56 x i8], ptr %i.aub, i64 %indvars.iv.i600 ; 5 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 14
  %i.awa = load i16, ptr %i.avz, align 2, !tbaa !60
  %i.awb = and i16 %i.awa, 4096
  %.not.i.i17.i601 = icmp eq i16 %i.awb, 0        ; 2 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avy, i64 13
  %i.awd = load i8, ptr %i.awc, align 1
  %i.awe = sext i8 %i.awd to i32
  %i.awf = sub nsw i32 13, %i.awe
  %i.awg = load i32, ptr %i.avy, align 8
  %i.awh = select i1 %.not.i.i17.i601, i32 %i.awg, i32 %i.awf
  %i.awi = icmp eq i32 %i.awh, %i.avq
  br i1 %i.awi, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.awj = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  %i.awk = load ptr, ptr %i.awj, align 8
  %i.awl = ptrtoint ptr %i.awk to i64
  %i.awm = and i64 %i.awl, 281474976710655
  %i.awn = inttoptr i64 %i.awm to ptr
  %i.awo = select i1 %.not.i.i17.i601, ptr %i.awn, ptr %i.avy
  %bcmp.i605 = call i32 @bcmp(ptr %i.awo, ptr %i.avw, i64 %i.avx)
  %i.awp = icmp eq i32 %bcmp.i605, 0
  br i1 %i.awp, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %indvars.iv.next.i602 = add nuw nsw i64 %indvars.iv.i600, 1 ; 2 uses
  %exitcond.not.i603 = icmp eq i64 %indvars.iv.next.i602, %wide.trip.count.i585
  br i1 %exitcond.not.i603, label %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit606.thread, label %bb.gm, !llvm.loop !28

bb.gp:                                            ; preds = %bb.gn
  %i.awq = load ptr, ptr %i.auz, align 8, !tbaa !369
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 %indvars.iv.i600
  store i8 1, ptr %i.awr, align 1, !tbaa !84
  %.pre1189 = load ptr, ptr %i.ava, align 8, !tbaa !60
  %.pre1190 = load i32, ptr %i.auv, align 8, !tbaa !60
  br label %_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit606.thread

_ZNK9rapidjson8internal6SchemaINS_21GenericSchemaDocumentINS_12GenericValueINS_4UTF8IcEENS_19MemoryPoolAllocatorINS_12CrtAllocatorEEEEES7_EEE17FindPropertyIndexERKS9_Pj.exit606.thread: ; preds = %bb.go, %bb.gp
end_hunk_1

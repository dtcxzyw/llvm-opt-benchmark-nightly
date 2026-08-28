Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSError?download=true
inline.NumInlined: 1842
inline.NumDeleted: 1067
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6hermes2vm7JSError8toStringENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE:bb.a
  %i.at = icmp eq i64 %.mask.i33, -1688849860263936
  br i1 %i.at, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.av = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.au, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #17
  br label %bb.q

bb.p:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit32
  %i.aw = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i29) #17 ; 2 uses
  %.not70 = icmp eq ptr %i.aw, inttoptr (i64 -1 to ptr)
  br i1 %.not70, label %.thread, label %bb.q, !prof !309

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge71.in.in = phi ptr [ %i.av, %bb.o ], [ %i.aw, %bb.p ]
  %storemerge71.in = ptrtoint ptr %storemerge71.in.in to i64 ; 2 uses
  %storemerge71 = or i64 %storemerge71.in, -844424930131968
  store i64 %storemerge71, ptr %.0.i.i.i.i.i.i31, align 8, !tbaa !70
  %.sroa.0.0.copyload.i.i34 = load i64, ptr %.0.i.i.i.i.i.i27, align 8, !tbaa !62
  %i.ax = and i64 %.sroa.0.0.copyload.i.i34, 281474976710655
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !432
  %i.bb = and i32 %i.ba, 2147483647               ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = and i64 %storemerge71.in, 281474976710655
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !432
  %i.bh = and i32 %i.bg, 2147483647               ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %narrow = add nuw i32 %i.bb, 2                  ; 2 uses
  %add.narrowed = add i32 %i.bh, %narrow          ; 4 uses
  %add.narrowed.overflow.not = icmp ult i32 %add.narrowed, %narrow
  br i1 %add.narrowed.overflow.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, label %bb.t

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17, !noalias !435
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 1, ptr %i.bj, align 8, !tbaa !438, !noalias !435
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 27, ptr %i.bk, align 8, !tbaa !441, !noalias !435
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.bl, align 8, !tbaa !442, !noalias !435
  store ptr @.str.15, ptr %2, align 8, !tbaa !66, !noalias !435
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 3, ptr %i.bm, align 8, !tbaa !443, !noalias !435
  %i.bn = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) #17, !noalias !435 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !435
  br label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bo = icmp ugt i32 %add.narrowed, 65535
  br i1 %i.bo, label %bb.v, label %bb.u, !prof !309

bb.u:                                             ; preds = %bb.t
  %i.bp = tail call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %add.narrowed) #17, !noalias !435
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

bb.v:                                             ; preds = %bb.t
  %i.bq = tail call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %add.narrowed) #17, !noalias !435
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i: ; preds = %bb.v, %bb.u
  %.pn.i.i = phi { i32, i64 } [ %i.bq, %bb.v ], [ %i.bp, %bb.u ] ; 2 uses
  %i.br = extractvalue { i32, i64 } %.pn.i.i, 0
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.thread, label %bb.w, !prof !309

bb.w:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i
  %i.bt = extractvalue { i32, i64 } %.pn.i.i, 1
  %i.bu = and i64 %i.bt, 281474976710655
  %i.bv = or disjoint i64 %i.bu, -844424930131968 ; 2 uses
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !39, !noalias !435 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 192 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !54, !noalias !435 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 200
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !55, !noalias !435
  %i.cb = icmp ult ptr %i.by, %i.ca
  br i1 %i.cb, label %bb.x, label %bb.y, !prof !69

bb.x:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !54, !noalias !435
  store i64 %i.bv, ptr %i.by, align 8, !tbaa !62, !noalias !435
  br label %_ZN6hermes2vm13StringBuilderC2ERNS0_7RuntimeEPNS0_15StringPrimitiveE.exit.i

bb.y:                                             ; preds = %bb.w
  %i.cd = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bw, i64 %i.bv) #17, !noalias !435
  br label %_ZN6hermes2vm13StringBuilderC2ERNS0_7RuntimeEPNS0_15StringPrimitiveE.exit.i

_ZN6hermes2vm13StringBuilderC2ERNS0_7RuntimeEPNS0_15StringPrimitiveE.exit.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %bb.x ], [ %i.cd, %bb.y ]
  %i.ce = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store i64 %i.ce, ptr %3, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i32 0, ptr %i.cf, align 8
  %.sroa.641.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %.sroa.641.8..sroa_idx, align 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i27, align 8, !tbaa !62
  %i.cg = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !432
  %i.ck = and i32 %i.cj, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull %.0.i.i.i.i.i.i27, i32 noundef %i.ck)
  %i.cl = load ptr, ptr %3, align 8, !tbaa !444
  %.sroa.0.0.copyload.i.i.i38 = load i64, ptr %i.cl, align 8, !tbaa !62
  %i.cm = and i64 %.sroa.0.0.copyload.i.i.i38, 281474976710655
  %i.cn = inttoptr i64 %i.cm to ptr               ; 7 uses
  %i.co = load i32, ptr %i.cn, align 4            ; 4 uses
  %i.cp = and i32 %i.co, 16777216
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = icmp ugt i32 %i.co, 150994943           ; 2 uses
  br i1 %i.cq, label %bb.z, label %bb.ae, !prof !69

bb.z:                                             ; preds = %_ZN6hermes2vm13StringBuilderC2ERNS0_7RuntimeEPNS0_15StringPrimitiveE.exit.i
  br i1 %i.cr, label %bb.aa, label %bb.ab, !prof !309

bb.aa:                                            ; preds = %bb.z
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !384
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.ab:                                            ; preds = %bb.z
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.co, 234881024
  %i.cu = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.cu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i: ; preds = %bb.ad, %bb.ac, %bb.aa
  %.0.i.i = phi ptr [ %i.ct, %bb.aa ], [ %i.cv, %bb.ac ], [ %i.cw, %bb.ad ]
  %i.cx = load i32, ptr %i.cf, align 8, !tbaa !446
  %i.cy = zext i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.cy
  store i16 8250, ptr %i.cz, align 1
  %.pre80 = load i32, ptr %i.cf, align 8, !tbaa !446
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

bb.ae:                                            ; preds = %_ZN6hermes2vm13StringBuilderC2ERNS0_7RuntimeEPNS0_15StringPrimitiveE.exit.i
  br i1 %i.cr, label %bb.af, label %bb.ag, !prof !309

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !310
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.ag:                                            ; preds = %bb.ae
  %.mask.i.i.i.i.i.i.i.i3.i = and i32 %i.co, 251658240
  %i.dc = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3.i, 117440512
  br i1 %i.dc, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.de = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i: ; preds = %bb.ai, %bb.ah, %bb.af
  %.0.i4.i = phi ptr [ %i.db, %bb.af ], [ %i.dd, %bb.ah ], [ %i.de, %bb.ai ]
  %i.df = load i32, ptr %i.cf, align 8, !tbaa !446 ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.0.i4.i, i64 %i.dg ; 2 uses
  store i16 58, ptr %i.dh, align 2, !tbaa !389
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  store i16 32, ptr %i.di, align 2, !tbaa !389
  br label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit

_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit: ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i, %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i
  %i.dj = phi i32 [ %i.df, %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i ], [ %.pre80, %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i ]
  %i.dk = add i32 %i.dj, 2
  store i32 %i.dk, ptr %i.cf, align 8, !tbaa !446
  %.sroa.0.0.copyload.i.i.i39 = load i64, ptr %.0.i.i.i.i.i.i31, align 8, !tbaa !62
  %i.dl = and i64 %.sroa.0.0.copyload.i.i.i39, 281474976710655
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !432
  %i.dp = and i32 %i.do, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nonnull %.0.i.i.i.i.i.i31, i32 noundef %i.dp)
  %i.dq = load i64, ptr %3, align 8, !tbaa !330
  %i.dr = inttoptr i64 %i.dq to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.thread

.thread:                                          ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i, %bb.p, %bb.h, %bb.i, %bb.r, %bb.q, %bb.a
  %.sroa.068.6 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.a ], [ %.0.i.i.i.i.i.i27, %bb.r ], [ inttoptr (i64 -1 to ptr), %bb.i ], [ inttoptr (i64 -1 to ptr), %bb.h ], [ %.0.i.i.i.i.i.i31, %bb.q ], [ inttoptr (i64 -1 to ptr), %bb.p ], [ %i.dr, %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i ], [ inttoptr (i64 -1 to ptr), %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i ]
  ret ptr %.sroa.068.6
}

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !444
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !62
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr                 ; 7 uses
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  %i.e = and i32 %i.d, 16777216
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp ugt i32 %i.d, 150994943             ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.j, !prof !69

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %bb.d, !prof !309

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !384
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.d:                                             ; preds = %bb.b
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.d, 234881024
  %i.j = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.e ], [ %i.l, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !446
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.o ; 2 uses
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.g, label %bb.h, !prof !69

bb.g:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.h:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.i:                                             ; preds = %bb.h
  %i.s = load i8, ptr %1, align 1, !tbaa !66
  store i8 %i.s, ptr %i.p, align 1, !tbaa !66
  br label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

bb.j:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.k, label %bb.l, !prof !309

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !310
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

bb.l:                                             ; preds = %bb.j
  %.mask.i.i.i.i.i.i.i.i3 = and i32 %i.d, 251658240
  %i.v = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3, 117440512
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

bb.n:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit: ; preds = %bb.k, %bb.m, %bb.n
  %.0.i4 = phi ptr [ %i.u, %bb.k ], [ %i.w, %bb.m ], [ %i.x, %bb.n ] ; 2 uses
  %i.y = icmp sgt i64 %2, 0
  br i1 %i.y, label %iter.check, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit

iter.check:                                       ; preds = %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !446
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr [2 x i8], ptr %.0.i4, i64 %i.ab ; 7 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ad = add nuw i64 %2, %i.ab
  %i.ae = shl i64 %i.ad, 1
  %scevgep = getelementptr i8, ptr %.0.i4, i64 %i.ae
  %scevgep12 = getelementptr i8, ptr %1, i64 %2
  %bound0 = icmp ult ptr %i.ac, %scevgep12
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %2, 16
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.ag = and i64 %2, 15
  %i.ah = shl nuw i64 %n.vec, 1
  %i.ai = getelementptr i8, ptr %i.ac, i64 %i.ah
  %i.aj = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.ak ; 2 uses
  %next.gep14 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep14, i64 8
  %wide.load = load <8 x i8>, ptr %next.gep14, align 1, !tbaa !66, !alias.scope !451
  %wide.load15 = load <8 x i8>, ptr %i.al, align 1, !tbaa !66, !alias.scope !451
  %i.am = sext <8 x i8> %wide.load to <8 x i16>
  %i.an = sext <8 x i8> %wide.load15 to <8 x i16>
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.am, ptr %next.gep, align 2, !tbaa !389, !alias.scope !454, !noalias !451
  store <8 x i16> %i.an, ptr %i.ao, align 2, !tbaa !389, !alias.scope !454, !noalias !451
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !456

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !396

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %2, 9223372036854775804      ; 4 uses
  %i.aq = and i64 %2, 3
  %i.ar = shl nuw i64 %n.vec18, 1
  %i.as = getelementptr i8, ptr %i.ac, i64 %i.ar
  %i.at = getelementptr i8, ptr %1, i64 %n.vec18
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 3 uses
  %i.au = shl i64 %index19, 1
  %next.gep20 = getelementptr i8, ptr %i.ac, i64 %i.au
  %next.gep21 = getelementptr i8, ptr %1, i64 %index19
  %wide.load22 = load <4 x i8>, ptr %next.gep21, align 1, !tbaa !66, !alias.scope !451
  %i.av = sext <4 x i8> %wide.load22 to <4 x i16>
  store <4 x i16> %i.av, ptr %next.gep20, align 2, !tbaa !389, !alias.scope !454, !noalias !451
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !457

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %2, %n.vec18
  br i1 %cmp.n24, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck ], [ %i.ai, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.at, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ax = load i8, ptr %.0910.i.i.i.i.i, align 1, !tbaa !66
  %i.ay = sext i8 %i.ax to i16
  store i16 %i.ay, ptr %.0811.i.i.i.i.i, align 2, !tbaa !389
  %i.az = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 2
  %i.bb = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bc = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIPKcPcET0_T_S4_S3_.exit, !llvm.loop !458

_ZSt4copyIPKcPcET0_T_S4_S3_.exit:                 ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit, %bb.i, %bb.h, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !446
  %i.bf = trunc i64 %2 to i32
  %i.bg = add i32 %i.be, %i.bf
  store i32 %i.bg, ptr %i.bd, align 8, !tbaa !446
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -128, 128) i32 @_ZN6hermes2vm7JSError10setMessageENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !62 ; 2 uses
end_hunk_0

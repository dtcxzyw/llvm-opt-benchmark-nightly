Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVCallingConv?download=true
inline.NumInlined: 566
inline.NumDeleted: 205
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZL14allocateRVVRegN4llvm3MVTEjRNS_7CCStateERKNS_19RISCVTargetLoweringE:bb.a
  br i1 %i.ak, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !40 ; 8 uses
  %i.ap = and i32 %i.ao, 4096
  %.not.i.i33 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i33, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = and i32 %i.ao, 32768
  %.not.i.i33.1 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i33.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = and i32 %i.ao, 65536
  %.not.i.i33.2 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i33.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = and i32 %i.ao, 262144
  %.not.i.i33.3 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i33.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = and i32 %i.ao, 524288
  %.not.i.i33.4 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i33.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.au = and i32 %i.ao, 4194304
  %.not.i.i33.5 = icmp eq i32 %i.au, 0
  br i1 %.not.i.i33.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.av = and i32 %i.ao, 8388608
  %.not.i.i33.6 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i33.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aw = and i32 %i.ao, 33554432
  %.not.i.i33.7 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i33.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %.0613.i.i32.lcssa.wide = phi i64 [ 0, %bb.t ], [ 1, %bb.u ], [ 2, %bb.v ], [ 3, %bb.w ], [ 4, %bb.x ], [ 5, %bb.y ], [ 6, %bb.z ], [ 7, %bb.aa ]
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @_ZL8ArgVRM2s, i64 %.0613.i.i32.lcssa.wide
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !41 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %1, i16 noundef zeroext %i.ay) #10
  %i.az = zext i16 %i.ay to i32
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.ab:                                            ; preds = %bb.s
  %i.ba = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 7808)
  br i1 %i.ba, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 44
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !40 ; 4 uses
  %i.bf = and i32 %i.be, 8192
  %.not.i.i38 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i38, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i40, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bg = and i32 %i.be, 131072
  %.not.i.i38.1 = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i38.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i40, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = and i32 %i.be, 1048576
  %.not.i.i38.2 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i38.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i40, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bi = and i32 %i.be, 16777216
  %.not.i.i38.3 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i38.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i40, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i40: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0613.i.i37.lcssa.wide = phi i64 [ 0, %bb.ac ], [ 1, %bb.ad ], [ 2, %bb.ae ], [ 3, %bb.af ]
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr @_ZL8ArgVRM4s, i64 %.0613.i.i37.lcssa.wide
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !41 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %1, i16 noundef zeroext %i.bk) #10
  %i.bl = zext i16 %i.bk to i32
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.ag:                                            ; preds = %bb.ab
  %i.bm = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 9408)
  br i1 %i.bm, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !40 ; 2 uses
  %i.br = and i32 %i.bq, 16384
  %.not.i.i43 = icmp eq i32 %i.br, 0
  br i1 %.not.i.i43, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i45, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bs = and i32 %i.bq, 2097152
  %.not.i.i43.1 = icmp eq i32 %i.bs, 0
  br i1 %.not.i.i43.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i45, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i45: ; preds = %bb.ai, %bb.ah
  %.0613.i.i42.lcssa.wide = phi i64 [ 0, %bb.ah ], [ 1, %bb.ai ]
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr @_ZL8ArgVRM8s, i64 %.0613.i.i42.lcssa.wide
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !41 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %1, i16 noundef zeroext %i.bu) #10
  %i.bv = zext i16 %i.bu to i32
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.aj:                                            ; preds = %bb.ag
  %i.bw = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 6848)
  br i1 %i.bw, label %bb.ak, label %bb.az

bb.ak:                                            ; preds = %bb.aj
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !39 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !40 ; 9 uses
  %i.cb = and i32 %i.ca, 8388608
  %.not.i.i48 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i48, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cc = and i32 %i.ca, 16777216
  %.not.i.i48.1 = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i48.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cd = and i32 %i.ca, 33554432
  %.not.i.i48.2 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i48.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ce = and i32 %i.ca, 67108864
  %.not.i.i48.3 = icmp eq i32 %i.ce, 0
  br i1 %.not.i.i48.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cf = and i32 %i.ca, 134217728
  %.not.i.i48.4 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i48.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cg = and i32 %i.ca, 268435456
  %.not.i.i48.5 = icmp eq i32 %i.cg, 0
  br i1 %.not.i.i48.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ch = and i32 %i.ca, 536870912
  %.not.i.i48.6 = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i48.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ci = and i32 %i.ca, 1073741824
  %.not.i.i48.7 = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i48.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not.i.i48.8 = icmp sgt i32 %i.ca, -1
  br i1 %.not.i.i48.8, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 52
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !40 ; 6 uses
  %i.cl = and i32 %i.ck, 1
  %.not.i.i48.9 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i48.9, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cm = and i32 %i.ck, 2
  %.not.i.i48.10 = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i48.10, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cn = and i32 %i.ck, 4
  %.not.i.i48.11 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i48.11, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.co = and i32 %i.ck, 8
  %.not.i.i48.12 = icmp eq i32 %i.co, 0
  br i1 %.not.i.i48.12, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cp = and i32 %i.ck, 16
  %.not.i.i48.13 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i48.13, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cq = and i32 %i.ck, 32
  %.not.i.i48.14 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i48.14, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %.0613.i.i47.lcssa.wide = phi i64 [ 0, %bb.ak ], [ 1, %bb.al ], [ 2, %bb.am ], [ 3, %bb.an ], [ 4, %bb.ao ], [ 5, %bb.ap ], [ 6, %bb.aq ], [ 7, %bb.ar ], [ 8, %bb.as ], [ 9, %bb.at ], [ 10, %bb.au ], [ 11, %bb.av ], [ 12, %bb.aw ], [ 13, %bb.ax ], [ 14, %bb.ay ]
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr @_ZL10ArgVRN2M1s, i64 %.0613.i.i47.lcssa.wide
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !41 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %1, i16 noundef zeroext %i.cs) #10
  %i.ct = zext i16 %i.cs to i32
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.az:                                            ; preds = %bb.aj
  %i.cu = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 7360)
  br i1 %i.cu, label %bb.ba, label %bb.bo

bb.ba:                                            ; preds = %bb.az
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !40 ; 14 uses
  %i.cz = and i32 %i.cy, 4096
  %.not.i.i53 = icmp eq i32 %i.cz, 0
  br i1 %.not.i.i53, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.da = and i32 %i.cy, 8192
  %.not.i.i53.1 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i53.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.db = and i32 %i.cy, 16384
  %.not.i.i53.2 = icmp eq i32 %i.db, 0
  br i1 %.not.i.i53.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dc = and i32 %i.cy, 32768
  %.not.i.i53.3 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.i53.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dd = and i32 %i.cy, 65536
  %.not.i.i53.4 = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i53.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.de = and i32 %i.cy, 131072
  %.not.i.i53.5 = icmp eq i32 %i.de, 0
  br i1 %.not.i.i53.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.df = and i32 %i.cy, 262144
  %.not.i.i53.6 = icmp eq i32 %i.df, 0
  br i1 %.not.i.i53.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dg = and i32 %i.cy, 524288
  %.not.i.i53.7 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i53.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dh = and i32 %i.cy, 1048576
  %.not.i.i53.8 = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i53.8, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.di = and i32 %i.cy, 2097152
  %.not.i.i53.9 = icmp eq i32 %i.di, 0
  br i1 %.not.i.i53.9, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dj = and i32 %i.cy, 4194304
  %.not.i.i53.10 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.i53.10, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dk = and i32 %i.cy, 8388608
  %.not.i.i53.11 = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i53.11, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.dl = and i32 %i.cy, 16777216
  %.not.i.i53.12 = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i53.12, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dm = and i32 %i.cy, 33554432
  %.not.i.i53.13 = icmp eq i32 %i.dm, 0
  br i1 %.not.i.i53.13, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.0613.i.i52.lcssa.wide = phi i64 [ 0, %bb.ba ], [ 1, %bb.bb ], [ 2, %bb.bc ], [ 3, %bb.bd ], [ 4, %bb.be ], [ 5, %bb.bf ], [ 6, %bb.bg ], [ 7, %bb.bh ], [ 8, %bb.bi ], [ 9, %bb.bj ], [ 10, %bb.bk ], [ 11, %bb.bl ], [ 12, %bb.bm ], [ 13, %bb.bn ]
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr @_ZL10ArgVRN3M1s, i64 %.0613.i.i52.lcssa.wide
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !41 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %1, i16 noundef zeroext %i.do) #10
  %i.dp = zext i16 %i.do to i32
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.bo:                                            ; preds = %bb.az
  %i.dq = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 7552)
  br i1 %i.dq, label %bb.bp, label %bb.cc

bb.bp:                                            ; preds = %bb.bo
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !39 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 60
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !40 ; 8 uses
  %i.dv = and i32 %i.du, 16777216
  %.not.i.i58 = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i58, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.dw = and i32 %i.du, 33554432
  %.not.i.i58.1 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i58.1, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.dx = and i32 %i.du, 67108864
  %.not.i.i58.2 = icmp eq i32 %i.dx, 0
  br i1 %.not.i.i58.2, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.dy = and i32 %i.du, 134217728
  %.not.i.i58.3 = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i58.3, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.dz = and i32 %i.du, 268435456
  %.not.i.i58.4 = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i58.4, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ea = and i32 %i.du, 536870912
  %.not.i.i58.5 = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i58.5, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eb = and i32 %i.du, 1073741824
  %.not.i.i58.6 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i58.6, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not.i.i58.7 = icmp sgt i32 %i.du, -1
  br i1 %.not.i.i58.7, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ds, i64 64
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !40 ; 5 uses
  %i.ee = and i32 %i.ed, 1
  %.not.i.i58.8 = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i58.8, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ef = and i32 %i.ed, 2
  %.not.i.i58.9 = icmp eq i32 %i.ef, 0
  br i1 %.not.i.i58.9, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.eg = and i32 %i.ed, 4
  %.not.i.i58.10 = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i58.10, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.eh = and i32 %i.ed, 8
  %.not.i.i58.11 = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i58.11, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ei = and i32 %i.ed, 16
  %.not.i.i58.12 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i58.12, label %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60: ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.0613.i.i57.lcssa.wide = phi i64 [ 0, %bb.bp ], [ 1, %bb.bq ], [ 2, %bb.br ], [ 3, %bb.bs ], [ 4, %bb.bt ], [ 5, %bb.bu ], [ 6, %bb.bv ], [ 7, %bb.bw ], [ 8, %bb.bx ], [ 9, %bb.by ], [ 10, %bb.bz ], [ 11, %bb.ca ], [ 12, %bb.cb ]
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr @_ZL10ArgVRN4M1s, i64 %.0613.i.i57.lcssa.wide
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !41 ; 2 uses
  tail call void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420) %1, i16 noundef zeroext %i.ek) #10
  %i.el = zext i16 %i.ek to i32
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.cc:                                            ; preds = %bb.bo
  %i.em = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 8256)
  br i1 %i.em, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.en = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %1, ptr nonnull @_ZL10ArgVRN5M1s, i64 12)
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.ce:                                            ; preds = %bb.cc
  %i.eo = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 8448)
  br i1 %i.eo, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ep = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %1, ptr nonnull @_ZL10ArgVRN6M1s, i64 11)
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.cg:                                            ; preds = %bb.ce
  %i.eq = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 8832)
  br i1 %i.eq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.er = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %1, ptr nonnull @_ZL10ArgVRN7M1s, i64 10)
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.ci:                                            ; preds = %bb.cg
  %i.es = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 9024)
  br i1 %i.es, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.et = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %1, ptr nonnull @_ZL10ArgVRN8M1s, i64 9)
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.ck:                                            ; preds = %bb.ci
  %i.eu = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 7680)
  br i1 %i.eu, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ev = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %1, ptr nonnull @_ZL10ArgVRN2M2s, i64 7)
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.cm:                                            ; preds = %bb.ck
  %i.ew = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 8576)
  br i1 %i.ew, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ex = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %1, ptr nonnull @_ZL10ArgVRN3M2s, i64 6)
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.co:                                            ; preds = %bb.cm
  %i.ey = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 9152)
  br i1 %i.ey, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ez = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %1, ptr nonnull @_ZL10ArgVRN4M2s, i64 5)
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

bb.cq:                                            ; preds = %bb.co
  %i.fa = icmp eq ptr %i.d, getelementptr inbounds nuw (i8, ptr @_ZN4llvm27RISCVMCRegisterClassStorageE, i64 9280)
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = tail call i32 @_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(420) %1, ptr nonnull @_ZL10ArgVRN2M4s, i64 3)
  br label %_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit

_ZN4llvm7CCState11AllocateRegENS_8ArrayRefItEE.exit: ; preds = %bb.cb, %bb.bn, %bb.ay, %bb.ai, %bb.af, %bb.aa, %bb.r, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i45, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i40, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i, %_ZN4llvm7CCState11AllocateRegEt.exit, %bb.cq, %bb.cp, %bb.cn, %bb.cl, %bb.cj, %bb.ch, %bb.cf, %bb.cd
  %.sroa.093.0 = phi i32 [ %i.fb, %bb.cq ], [ 36, %_ZN4llvm7CCState11AllocateRegEt.exit ], [ %i.dp, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i55 ], [ 0, %bb.af ], [ 0, %bb.ay ], [ 0, %bb.bn ], [ 0, %bb.r ], [ 0, %bb.aa ], [ %i.en, %bb.cd ], [ %i.ep, %bb.cf ], [ %i.er, %bb.ch ], [ %i.et, %bb.cj ], [ %i.ev, %bb.cl ], [ %i.ex, %bb.cn ], [ %i.ez, %bb.cp ], [ %i.aj, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i ], [ %i.ct, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i50 ], [ %i.az, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i35 ], [ %i.el, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i60 ], [ %i.bl, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i40 ], [ 0, %bb.ai ], [ %i.bv, %_ZNK4llvm7CCState19getFirstUnallocatedENS_8ArrayRefItEE.exit.i45 ], [ 0, %bb.cb ]
  ret i32 %.sroa.093.0
}

declare i16 @_ZNK4llvm19RISCVTargetLowering32getContainerForFixedLengthVectorENS_3MVTE(ptr noundef nonnull align 8 dereferenceable(518448), i16) local_unnamed_addr #3

declare void @_ZN4llvm7CCState13MarkAllocatedEt(ptr noundef nonnull align 8 dereferenceable(420), i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm7CCState18ensureMaxAlignmentENS_5AlignE(ptr noundef nonnull align 8 dereferenceable(420), i8) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EE15growAndPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::CCValAssign", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 32) #10
  %i.f = load ptr, ptr %0, align 8, !tbaa !39
  %i.g = load i32, ptr %i.a, align 8, !tbaa !63
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !63
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !63
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #10
  %i.f = load ptr, ptr %0, align 8, !tbaa !39
  %i.g = load i32, ptr %i.a, align 8, !tbaa !63
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store i64 %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !63
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !63
  ret void
}

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN4llvm7CCStateE", !5, i64 0, !10, i64 4, !10, i64 5, !11, i64 8, !13, i64 16, !14, i64 24, !15, i64 32, !10, i64 40, !16, i64 48, !17, i64 56, !18, i64 64, !24, i64 144, !29, i64 288, !34, i64 368, !5, i64 416}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTSN4llvm18TargetRegisterInfoE", !12, i64 0}
!14 = !{!"p1 _ZTSN4llvm15SmallVectorImplINS_11CCValAssignEEE", !12, i64 0}
!15 = !{!"p1 _ZTSN4llvm11LLVMContextE", !12, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSN4llvm5AlignE", !6, i64 0}
!18 = !{!"_ZTSN4llvm11SmallVectorIjLj16EEE", !19, i64 0, !23, i64 16}
!19 = !{!"_ZTSN4llvm15SmallVectorImplIjEE", !20, i64 0}
!20 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIjLb1EEE", !21, i64 0}
!21 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIjvEE", !22, i64 0}
!22 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !5, i64 8, !5, i64 12}
!23 = !{!"_ZTSN4llvm18SmallVectorStorageIjLj16EEE", !6, i64 0}
!24 = !{!"_ZTSN4llvm11SmallVectorINS_11CCValAssignELj4EEE", !25, i64 0, !28, i64 16}
!25 = !{!"_ZTSN4llvm15SmallVectorImplINS_11CCValAssignEEE", !26, i64 0}
!26 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_11CCValAssignELb1EEE", !27, i64 0}
!27 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_11CCValAssignEvEE", !22, i64 0}
!28 = !{!"_ZTSN4llvm18SmallVectorStorageINS_11CCValAssignELj4EEE", !6, i64 0}
!29 = !{!"_ZTSN4llvm11SmallVectorINS_3ISD10ArgFlagsTyELj4EEE", !30, i64 0, !33, i64 16}
!30 = !{!"_ZTSN4llvm15SmallVectorImplINS_3ISD10ArgFlagsTyEEE", !31, i64 0}
!31 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_3ISD10ArgFlagsTyELb1EEE", !32, i64 0}
!32 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_3ISD10ArgFlagsTyEvEE", !22, i64 0}
!33 = !{!"_ZTSN4llvm18SmallVectorStorageINS_3ISD10ArgFlagsTyELj4EEE", !6, i64 0}
!34 = !{!"_ZTSN4llvm11SmallVectorINS_7CCState9ByValInfoELj4EEE", !35, i64 0, !38, i64 16}
!35 = !{!"_ZTSN4llvm15SmallVectorImplINS_7CCState9ByValInfoEEE", !36, i64 0}
!36 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_7CCState9ByValInfoELb1EEE", !37, i64 0}
!37 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_7CCState9ByValInfoEvEE", !22, i64 0}
!38 = !{!"_ZTSN4llvm18SmallVectorStorageINS_7CCState9ByValInfoELj4EEE", !6, i64 0}
!39 = !{!22, !12, i64 0}
!40 = !{!5, !5, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !6, i64 0}
!43 = !{!44, !6, i64 8}
!44 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJN4llvm8RegisterEljEEE", !6, i64 0, !6, i64 8}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN4llvm11CCValAssign6getRegEjNS_3MVTENS_10MCRegisterES1_NS0_7LocInfoEb: argument 0"}
!47 = distinct !{!47, !"_ZN4llvm11CCValAssign6getRegEjNS_3MVTENS_10MCRegisterES1_NS0_7LocInfoEb"}
!48 = !{!49, !5, i64 16}
!49 = !{!"_ZTSN4llvm11CCValAssignE", !50, i64 0, !5, i64 16, !5, i64 20, !56, i64 20, !57, i64 22, !57, i64 24}
!50 = !{!"_ZTSSt7variantIJN4llvm8RegisterEljEE", !51, i64 0}
!51 = !{!"_ZTSNSt8__detail9__variant13_Variant_baseIJN4llvm8RegisterEljEEE", !52, i64 0}
!52 = !{!"_ZTSNSt8__detail9__variant17_Move_assign_baseILb1EJN4llvm8RegisterEljEEE", !53, i64 0}
!53 = !{!"_ZTSNSt8__detail9__variant17_Copy_assign_baseILb1EJN4llvm8RegisterEljEEE", !54, i64 0}
!54 = !{!"_ZTSNSt8__detail9__variant15_Move_ctor_baseILb1EJN4llvm8RegisterEljEEE", !55, i64 0}
!55 = !{!"_ZTSNSt8__detail9__variant15_Copy_ctor_baseILb1EJN4llvm8RegisterEljEEE", !44, i64 0}
!56 = !{!"_ZTSN4llvm11CCValAssign7LocInfoE", !6, i64 0}
!57 = !{!"_ZTSN4llvm3MVTE", !58, i64 0}
!58 = !{!"_ZTSN4llvm3MVT15SimpleValueTypeE", !6, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!9, !14, i64 24}
!61 = !{}
!62 = !{i64 8}
!63 = !{!22, !5, i64 8}
!64 = !{!22, !5, i64 12}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = !{!9, !11, i64 8}
!67 = !{!68, !71, i64 16}
!68 = !{!"_ZTSN4llvm15MachineFunctionE", !69, i64 0, !70, i64 8, !71, i64 16, !72, i64 24, !73, i64 32, !74, i64 40, !75, i64 48, !76, i64 56, !77, i64 64, !78, i64 72, !79, i64 80, !80, i64 88, !5, i64 112, !5, i64 116, !86, i64 120, !97, i64 200, !99, i64 208, !105, i64 288, !107, i64 296, !5, i64 312, !17, i64 316, !10, i64 317, !10, i64 318, !10, i64 319, !115, i64 320, !118, i64 328, !125, i64 336, !130, i64 360, !130, i64 384, !135, i64 408, !140, i64 432, !143, i64 456, !145, i64 480, !147, i64 504, !10, i64 528, !10, i64 529, !10, i64 530, !10, i64 531, !10, i64 532, !10, i64 533, !10, i64 534, !5, i64 536, !152, i64 540, !153, i64 544, !155, i64 568, !160, i64 592, !160, i64 616, !164, i64 640, !165, i64 648, !166, i64 656, !167, i64 664, !169, i64 688, !171, i64 712, !5, i64 856, !176, i64 864, !181, i64 1040, !10, i64 1064}
!69 = !{!"p1 _ZTSN4llvm8FunctionE", !12, i64 0}
!70 = !{!"p1 _ZTSN4llvm13TargetMachineE", !12, i64 0}
!71 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !12, i64 0}
!72 = !{!"p1 _ZTSN4llvm9MCContextE", !12, i64 0}
!73 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !12, i64 0}
!74 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !12, i64 0}
!75 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !12, i64 0}
!76 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !12, i64 0}
!77 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !12, i64 0}
!78 = !{!"p1 _ZTSN4llvm9MCSectionE", !12, i64 0}
!79 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !12, i64 0}
!80 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !81, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!84 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !85, i64 0}
!85 = !{!"any p2 pointer", !12, i64 0}
!86 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !87, i64 0, !16, i64 8, !88, i64 16, !93, i64 64}
!87 = !{!"p1 omnipotent char", !12, i64 0}
!88 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !89, i64 0, !92, i64 16}
!89 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !90, i64 0}
!90 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !91, i64 0}
!91 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !22, i64 0}
!92 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !6, i64 0}
!93 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !94, i64 0}
!94 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !95, i64 0}
!95 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !96, i64 0}
!96 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !22, i64 0}
!97 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !98, i64 0}
!98 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !12, i64 0}
!99 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EEE", !100, i64 0}
!100 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !101, i64 0, !104, i64 16}
!101 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEEE", !102, i64 0}
!102 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELb1EEE", !103, i64 0}
!103 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEvEE", !22, i64 0}
!104 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !6, i64 0}
!105 = !{!"_ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EEE", !106, i64 0}
!106 = !{!"p1 _ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EE8FreeNodeE", !12, i64 0}
!107 = !{!"_ZTSN4llvm6iplistINS_17MachineBasicBlockEJEEE", !108, i64 0}
!108 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_17MachineBasicBlockEJEEENS_12ilist_traitsIS2_EEEE", !109, i64 0}
end_hunk_0

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/asn?download=true
inline.NumInlined: 284
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 76
begin_hunk_0_@wc_GetDateInfo:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %5, i8 0, i64 80, i1 false)
  %i.b = call i32 @GetASN_Items(ptr noundef nonnull @dateASN, ptr noundef nonnull %5, i32 noundef 2, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef %1) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %GetDateInfo.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.e = load i8, ptr %i.d, align 1, !tbaa !32    ; 2 uses
  %.not20.i = icmp eq i8 %i.e, 0                  ; 3 uses
  %.not21.i = icmp eq ptr %3, null
  br i1 %.not21.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.gep.sroa.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 73
  %.sroa.gep.sroa.gep.val.i = load i8, ptr %.sroa.gep.sroa.gep.i, align 1
  %i.f = select i1 %.not20.i, i8 %.sroa.gep.sroa.gep.val.i, i8 %i.e
  store i8 %i.f, ptr %3, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not22.i = icmp eq ptr %2, null
  br i1 %.not22.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.sel27.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not20.i, i64 48, i64 8
  %.sroa.sel27.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.sel27.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.g = load ptr, ptr %.sroa.sel27.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !15
  store ptr %i.g, ptr %2, align 8, !tbaa !37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not23.i = icmp eq ptr %4, null
  br i1 %.not23.i, label %GetDateInfo.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.sel30.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not20.i, i64 56, i64 16
  %.sroa.sel30.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %5, i64 %.sroa.sel30.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.h = load i32, ptr %.sroa.sel30.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !15
  store i32 %i.h, ptr %4, align 4, !tbaa !26
  br label %GetDateInfo.exit

GetDateInfo.exit:                                 ; preds = %bb.a, %bb.b, %bb.g, %bb.h
  %.039.i = phi i32 [ %i.b, %bb.b ], [ 0, %bb.g ], [ 0, %bb.h ], [ -173, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.039.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -153, 1) i32 @wc_GetDateAsCalendarTime(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i8 noundef zeroext %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !26
  %i.b = call i32 @ExtractDate(ptr noundef %0, i8 noundef zeroext %2, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %1)
  %.not = icmp eq i32 %i.b, 0
  %. = select i1 %.not, i32 -153, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define i32 @wc_GetPubX509(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) initializes((0, 4)) %2) local_unnamed_addr #3 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !26
  %i.a = tail call fastcc i32 @DecodeCertInternal(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) ; 3 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  store i32 %i.a, ptr %i.c, align 8, !tbaa !85
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @DecodeCertInternal(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #3 {
bb.a:
  %6 = alloca [4 x %struct.ASNGetData], align 16  ; 10 uses
  %7 = alloca [2 x %struct.ASNGetData], align 16  ; 5 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %8 = alloca [3 x %struct.ASNGetData], align 16  ; 7 uses
  %9 = alloca [2 x %struct.ASNGetData], align 16  ; 6 uses
  %10 = alloca [3 x %struct.ASNGetData], align 16 ; 7 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 6 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %11 = alloca [32 x %struct.ASNGetData], align 16 ; 56 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1280) %11, i8 0, i64 1280, i1 false)
  store i8 0, ptr %i.l, align 1, !tbaa !15
  store i32 32, ptr %i.n, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 152
  store i8 1, ptr %i.o, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.l, ptr %i.p, align 16, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 192
  store i8 5, ptr %i.q, align 16, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 168
  store ptr %i.r, ptr %i.s, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 176
  store ptr %i.n, ptr %i.t, align 16, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %11, i64 260
  store i32 1, ptr %i.u, align 4, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 740
  store i32 2, ptr %i.v, align 4, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 820
  store i32 3, ptr %i.w, align 4, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 1140
  store i32 1, ptr %i.x, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 6 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 692
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !60
  %i.ad = call i32 @GetASN_Items(ptr noundef nonnull @x509CertASN, ptr noundef nonnull %11, i32 noundef 32, i32 noundef 1, ptr noundef %i.z, ptr noundef nonnull %i.aa, i32 noundef %i.ac) ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = load i8, ptr %i.l, align 1              ; 2 uses
  %i.ag = icmp ugt i8 %i.af, 3
  %or.cond = select i1 %i.ae, i1 %i.ag, i1 false
  %spec.store.select = select i1 %or.cond, i32 -140, i32 %i.ad ; 2 uses
  %i.ah = icmp eq i32 %spec.store.select, 0
  br i1 %i.ah, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.ai = icmp ne i32 %4, 0
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.aj = zext i8 %i.af to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 640 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 16, !tbaa !29 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !207
  %i.an = load i32, ptr %i.n, align 4, !tbaa !26  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !102
  %i.ap = icmp ne i32 %i.an, 0                    ; 2 uses
  %spec.select = select i1 %i.ap, i32 0, i32 -140
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 264
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !15
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !103
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 744
  %i.au = load i32, ptr %i.at, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.au, ptr %i.av, align 8, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !104
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 473
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !32  ; 2 uses
  %.not = icmp eq i8 %i.ba, 0                     ; 7 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %11, i64 480
  %.sroa.gep218 = getelementptr inbounds nuw i8, ptr %11, i64 440
  %.sroa.gep306 = getelementptr inbounds nuw i8, ptr %11, i64 513
  %.sroa.gep306.val = load i8, ptr %.sroa.gep306, align 1
  %i.bb = select i1 %.not, i8 %.sroa.gep306.val, i8 %i.ba ; 2 uses
  %.off.i = add i8 %i.bb, -23
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.c, label %CheckDate.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.sel.sroa.sel224.v.sroa.sel.v.sroa.sel.v = select i1 %.not, i64 484, i64 444
  %.sroa.sel.sroa.sel224.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.sroa.sel.sroa.sel224.v.sroa.sel.v.sroa.sel.v
  %i.bc = load i32, ptr %.sroa.sel.sroa.sel224.v.sroa.sel.v.sroa.sel, align 4, !tbaa !30
  %i.bd = add i32 %i.bc, -33
  %or.cond.i = icmp ult i32 %i.bd, -21
  br i1 %or.cond.i, label %CheckDate.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %.sroa.sel.sroa.sel221.v.sroa.sel.v.sroa.sel.v = select i1 %.not, i64 488, i64 448
  %.sroa.sel.sroa.sel221.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.sroa.sel.sroa.sel221.v.sroa.sel.v.sroa.sel.v
  %i.be = load ptr, ptr %.sroa.sel.sroa.sel221.v.sroa.sel.v.sroa.sel, align 8, !tbaa !15
  %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not, i64 496, i64 456
  %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.bf = load i32, ptr %.sroa.sel.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !15
  %i.bg = call range(i32 0, 2) i32 @wc_ValidateDateWithTime(ptr noundef readonly %i.be, i8 noundef zeroext %i.bb, i32 noundef 0, i64 noundef 0, i32 noundef %i.bf)
  %.not16.i = icmp eq i32 %i.bg, 0
  br label %CheckDate.exit

CheckDate.exit:                                   ; preds = %bb.b, %bb.c, %.thread.i
  %.2.i = phi i1 [ %.not16.i, %.thread.i ], [ true, %bb.c ], [ true, %bb.b ]
  %i.bh = icmp ne i32 %1, 0                       ; 4 uses
  %or.cond4 = and i1 %i.bh, %.2.i
  %i.bi = icmp ne i32 %1, 5                       ; 2 uses
  %or.cond6 = and i1 %i.bi, %or.cond4
  %.0170 = select i1 %or.cond6, i32 -150, i32 0
  %i.bj = load ptr, ptr %i.y, align 8, !tbaa !59  ; 4 uses
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 16
  %.sroa.gep218.val = load i32, ptr %.sroa.gep218, align 8
  %i.bk = select i1 %.not, i32 %.sroa.gep.val, i32 %.sroa.gep218.val ; 2 uses
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !208
  %.sroa.sel.sroa.sel233.v.sroa.sel.v.sroa.sel.v = select i1 %.not, i64 484, i64 444
  %.sroa.sel.sroa.sel233.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.sroa.sel.sroa.sel233.v.sroa.sel.v.sroa.sel.v
  %i.bo = load i32, ptr %.sroa.sel.sroa.sel233.v.sroa.sel.v.sroa.sel, align 4, !tbaa !30
  %.sroa.sel.sroa.sel230.v.sroa.sel.v.sroa.sel.v = select i1 %.not, i64 488, i64 448
  %.sroa.sel.sroa.sel230.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.sroa.sel.sroa.sel230.v.sroa.sel.v.sroa.sel.v
  %i.bp = load ptr, ptr %.sroa.sel.sroa.sel230.v.sroa.sel.v.sroa.sel, align 8, !tbaa !15
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = sub i32 %i.bo, %i.bk
  %i.bv = add i32 %i.bu, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 880
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !209
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 553
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32  ; 2 uses
  %.not183 = icmp eq i8 %i.by, 0                  ; 7 uses
  %.sroa.gep234 = getelementptr inbounds nuw i8, ptr %11, i64 560
  %.sroa.gep235 = getelementptr inbounds nuw i8, ptr %11, i64 520
  %.sroa.gep318 = getelementptr inbounds nuw i8, ptr %11, i64 593
  %.sroa.gep318.val = load i8, ptr %.sroa.gep318, align 1
  %i.bz = select i1 %.not183, i8 %.sroa.gep318.val, i8 %i.by ; 2 uses
  %.off.i210 = add i8 %i.bz, -23
  %switch.i211 = icmp ult i8 %.off.i210, 2
  br i1 %switch.i211, label %bb.d, label %CheckDate.exit._crit_edge

bb.d:                                             ; preds = %CheckDate.exit
  %.sroa.sel236.sroa.sel242.v.sroa.sel.v.sroa.sel.v = select i1 %.not183, i64 564, i64 524
  %.sroa.sel236.sroa.sel242.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.sroa.sel236.sroa.sel242.v.sroa.sel.v.sroa.sel.v
  %i.ca = load i32, ptr %.sroa.sel236.sroa.sel242.v.sroa.sel.v.sroa.sel, align 4, !tbaa !30
  %i.cb = add i32 %i.ca, -33
  %or.cond.i213 = icmp ult i32 %i.cb, -21
  br i1 %or.cond.i213, label %CheckDate.exit._crit_edge, label %.thread.i214

.thread.i214:                                     ; preds = %bb.d
  %.sroa.sel236.sroa.sel239.v.sroa.sel.v.sroa.sel.v = select i1 %.not183, i64 568, i64 528
  %.sroa.sel236.sroa.sel239.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.sroa.sel236.sroa.sel239.v.sroa.sel.v.sroa.sel.v
  %i.cc = load ptr, ptr %.sroa.sel236.sroa.sel239.v.sroa.sel.v.sroa.sel, align 8, !tbaa !15
  %.sroa.sel236.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not183, i64 576, i64 536
  %.sroa.sel236.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.sroa.sel236.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.cd = load i32, ptr %.sroa.sel236.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !15
  %i.ce = call range(i32 0, 2) i32 @wc_ValidateDateWithTime(ptr noundef readonly %i.cc, i8 noundef zeroext %i.bz, i32 noundef 1, i64 noundef 0, i32 noundef %i.cd)
  %.not16.i215 = icmp eq i32 %i.ce, 0
  %i.cf = and i1 %i.bh, %.not16.i215
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !59  ; 2 uses
  %.pre330 = ptrtoint ptr %.pre to i64
  br label %CheckDate.exit._crit_edge

CheckDate.exit._crit_edge:                        ; preds = %CheckDate.exit, %.thread.i214, %bb.d
  %.pre-phi = phi i64 [ %.pre330, %.thread.i214 ], [ %i.br, %bb.d ], [ %i.br, %CheckDate.exit ]
  %i.cg = phi ptr [ %.pre, %.thread.i214 ], [ %i.bj, %bb.d ], [ %i.bj, %CheckDate.exit ] ; 3 uses
  %.2.i212 = phi i1 [ %i.cf, %.thread.i214 ], [ %i.bh, %bb.d ], [ %i.bh, %CheckDate.exit ]
  %or.cond10 = and i1 %i.bi, %.2.i212
  %.1171 = select i1 %or.cond10, i32 -151, i32 %.0170 ; 4 uses
  %.sroa.gep234.val = load i32, ptr %.sroa.gep234, align 16
  %.sroa.gep235.val = load i32, ptr %.sroa.gep235, align 8
  %i.ch = select i1 %.not183, i32 %.sroa.gep234.val, i32 %.sroa.gep235.val ; 2 uses
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 888
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !210
  %.sroa.sel236.sroa.sel251.v.sroa.sel.v.sroa.sel.v = select i1 %.not183, i64 564, i64 524
  %.sroa.sel236.sroa.sel251.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.sroa.sel236.sroa.sel251.v.sroa.sel.v.sroa.sel.v
  %i.cl = load i32, ptr %.sroa.sel236.sroa.sel251.v.sroa.sel.v.sroa.sel, align 4, !tbaa !30
  %.sroa.sel236.sroa.sel248.v.sroa.sel.v.sroa.sel.v = select i1 %.not183, i64 568, i64 528
  %.sroa.sel236.sroa.sel248.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %11, i64 %.sroa.sel236.sroa.sel248.v.sroa.sel.v.sroa.sel.v
  %i.cm = load ptr, ptr %.sroa.sel236.sroa.sel248.v.sroa.sel.v.sroa.sel, align 8, !tbaa !15
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %.pre-phi
  %i.cp = trunc i64 %i.co to i32
  %i.cq = sub i32 %i.cl, %i.ch
  %i.cr = add i32 %i.cq, %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !211
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 360
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !29 ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cv ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 400
  %i.cy = load i32, ptr %i.cx, align 16, !tbaa !29
  %i.cz = sub i32 %i.cy, %i.cu                    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 600
  %i.db = load i32, ptr %i.da, align 8, !tbaa !29 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dc ; 3 uses
  %i.de = load i32, ptr %i.ak, align 16, !tbaa !29
  %i.df = sub i32 %i.de, %i.db                    ; 3 uses
  %i.dg = icmp ne i32 %4, 0                       ; 2 uses
  %or.cond12 = and i1 %i.dg, %i.ap
  br i1 %or.cond12, label %bb.e, label %bb.g

bb.e:                                             ; preds = %CheckDate.exit._crit_edge
  %.not184 = icmp eq ptr %3, null
  br i1 %.not184, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %.1171, ptr %3, align 4, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.e, %bb.f, %CheckDate.exit._crit_edge
  %or.cond12270 = phi i1 [ false, %CheckDate.exit._crit_edge ], [ true, %bb.f ], [ true, %bb.e ], [ false, %.thread ]
  %i.dh = phi i1 [ %i.dg, %CheckDate.exit._crit_edge ], [ true, %bb.f ], [ true, %bb.e ], [ %i.ai, %.thread ]
  %.0165266 = phi i32 [ %i.al, %CheckDate.exit._crit_edge ], [ %i.al, %bb.f ], [ %i.al, %bb.e ], [ 0, %.thread ] ; 7 uses
  %.0166265 = phi i32 [ %i.df, %CheckDate.exit._crit_edge ], [ %i.df, %bb.f ], [ %i.df, %bb.e ], [ 0, %.thread ]
  %.0167264 = phi ptr [ %i.dd, %CheckDate.exit._crit_edge ], [ %i.dd, %bb.f ], [ %i.dd, %bb.e ], [ null, %.thread ] ; 2 uses
  %.0168263 = phi i32 [ %i.cz, %CheckDate.exit._crit_edge ], [ %i.cz, %bb.f ], [ %i.cz, %bb.e ], [ 0, %.thread ]
  %.0169262 = phi ptr [ %i.cw, %CheckDate.exit._crit_edge ], [ %i.cw, %bb.f ], [ %i.cw, %bb.e ], [ null, %.thread ] ; 2 uses
  %.2261 = phi i32 [ %.1171, %CheckDate.exit._crit_edge ], [ %.1171, %bb.f ], [ %.1171, %bb.e ], [ 0, %.thread ] ; 3 uses
  %.2174260 = phi i32 [ %spec.select, %CheckDate.exit._crit_edge ], [ 0, %bb.f ], [ 0, %bb.e ], [ %spec.store.select, %.thread ] ; 2 uses
  %.0 = phi i32 [ 0, %CheckDate.exit._crit_edge ], [ 1, %bb.f ], [ 1, %bb.e ], [ 0, %.thread ] ; 5 uses
  %i.di = or i32 %.2174260, %4
  %or.cond14.not = icmp eq i32 %i.di, 0
  br i1 %or.cond14.not, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 1080
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !105
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 1248
  %i.dn = load ptr, ptr %i.dm, align 16, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !106
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 1256
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.dq, ptr %i.dr, align 8, !tbaa !107
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 1144
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !15 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !103
  %.not185 = icmp eq i32 %i.dt, %i.dv
  br i1 %.not185, label %bb.i, label %.thread278

bb.i:                                             ; preds = %bb.h
  switch i32 %i.dt, label %bb.j [
    i32 1296794135, label %IsSigAlgoNoParams.exit
    i32 1280016919, label %IsSigAlgoNoParams.exit
    i32 1246462487, label %IsSigAlgoNoParams.exit
    i32 826901015, label %IsSigAlgoNoParams.exit
  ]

IsSigAlgoNoParams.exit:                           ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 1193
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !32
  %.not191 = icmp eq i8 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 1233
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !32
  %.not192 = icmp eq i8 %i.dz, 0
  %i.ea = select i1 %.not192, i1 %.not191, i1 false
  %spec.select208 = select i1 %i.ea, i32 0, i32 -140
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 1200
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 1233
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !32
  %.not187 = icmp eq i8 %i.ed, 0
  br i1 %.not187, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not188 = icmp eq i32 %i.dt, 2025223208
  br i1 %.not188, label %bb.l, label %.thread278

bb.l:                                             ; preds = %bb.k
  %i.ee = load ptr, ptr %i.y, align 8, !tbaa !59  ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 320
  %i.eg = load i32, ptr %i.ef, align 16, !tbaa !29 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %11, i64 324
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !30
  %i.ej = getelementptr inbounds nuw i8, ptr %11, i64 328
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !15
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em
  %i.eo = trunc i64 %i.en to i32
  %i.ep = sub i32 %i.ei, %i.eg
  %i.eq = add i32 %i.ep, %i.eo                    ; 3 uses
  %i.er = load i32, ptr %i.eb, align 16, !tbaa !29 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %11, i64 1204
  %i.et = load i32, ptr %i.es, align 4, !tbaa !30 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %11, i64 1208
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !15
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = sub i64 %i.ew, %i.em
  %i.ey = trunc i64 %i.ex to i32
end_hunk_0

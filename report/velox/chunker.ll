inline.NumInlined: 955
inline.NumDeleted: 225
begin_hunk_0_@_ZN5arrow4json17MultiStringStream4TakeEv:bb.a
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 3 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !38
  %i.j = load i64, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  switch i64 %i.j, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit [
    i64 1, label %bb.c
    i64 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8, !tbaa !55
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 0) #20
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.b
  %i.k = add i64 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i64 %i.k, ptr %i.f, align 8, !tbaa !58
  store ptr %i.l, ptr %i.g, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, %bb.c
  %i.m = load i64, ptr %0, align 8, !tbaa !46
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %0, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi i8 [ %i.i, %bb.e ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseStringILj76ENS_4json17MultiStringStreamENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_b(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.arrow::rapidjson::GenericReader<arrow::rapidjson::UTF8<>, arrow::rapidjson::UTF8<>>::StackStream", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 5 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN5arrow4json17MultiStringStream4TakeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  switch i64 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i [
    i64 1, label %bb.c
    i64 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8, !tbaa !55
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 0) #20
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !94
  %i.j = add i64 %i.g, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i64 %i.j, ptr %i.f, align 8, !tbaa !58
  store ptr %i.k, ptr %i.h, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %bb.c
  %i.l = phi ptr [ %i.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.f, %bb.c ]
  %i.m = load i64, ptr %1, align 8, !tbaa !46
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %1, align 8, !tbaa !46
  br label %_ZN5arrow4json17MultiStringStream4TakeEv.exit

_ZN5arrow4json17MultiStringStream4TakeEv.exit:    ; preds = %bb.a, %bb.e
  %i.o = phi ptr [ %i.c, %bb.a ], [ %i.l, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %0, ptr %4, align 8, !tbaa !102
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 0, ptr %i.p, align 8, !tbaa !104
  %i.q = icmp eq ptr %i.o, %i.d
  br i1 %i.q, label %.thread42, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit.lr.ph

_ZNK5arrow4json17MultiStringStream4PeekEv.exit.lr.ph: ; preds = %_ZN5arrow4json17MultiStringStream4TakeEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  br label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit

_ZNK5arrow4json17MultiStringStream4PeekEv.exit:   ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit.lr.ph, %.critedge56.i
  %i.s = phi ptr [ %i.o, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit.lr.ph ], [ %i.dh, %.critedge56.i ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94   ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !38    ; 4 uses
  switch i8 %i.v, label %bb.w [
    i8 92, label %bb.f
    i8 34, label %bb.u
  ], !prof !106

bb.f:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  %i.w = load i64, ptr %1, align 8, !tbaa !46     ; 6 uses
  %i.x = call noundef signext i8 @_ZN5arrow4json17MultiStringStream4TakeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %.thread, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit20

_ZNK5arrow4json17MultiStringStream4PeekEv.exit20: ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !94
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !38  ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_E6escape, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !38  ; 2 uses
  %.not.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i, label %bb.i, label %bb.g, !prof !39

bb.g:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit20
  %i.ah = call noundef signext i8 @_ZN5arrow4json17MultiStringStream4TakeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.ai = load ptr, ptr %4, align 8, !tbaa !107, !nonnull !18, !align !88 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !98
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !99 ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp slt i64 %i.ap, 1
  br i1 %i.aq, label %bb.h, label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit, !prof !39

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i64 noundef 1)
  %.pre81 = load ptr, ptr %i.al, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit: ; preds = %bb.g, %bb.h
  %i.ar = phi ptr [ %i.am, %bb.g ], [ %.pre81, %bb.h ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.al, align 8, !tbaa !99
  store i8 %i.ag, ptr %i.ar, align 1, !tbaa !38
  %i.at = load i32, ptr %i.p, align 8, !tbaa !104
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr %i.p, align 8, !tbaa !104
  br label %.critedge56.i

bb.i:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit20
  %i.av = icmp eq i8 %i.ad, 117
  br i1 %i.av, label %bb.j, label %.thread, !prof !108

bb.j:                                             ; preds = %bb.i
  %i.aw = call noundef signext i8 @_ZN5arrow4json17MultiStringStream4TakeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.ax = call noundef i32 @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseHex4INS_4json17MultiStringStreamEEEjRT_m(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.w) ; 4 uses
  %i.ay = load i32, ptr %i.r, align 8, !tbaa !63
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.k, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread, !prof !100

bb.k:                                             ; preds = %bb.j
  %i.az = and i32 %i.ax, -2048
  %i.ba = icmp eq i32 %i.az, 55296
  br i1 %i.ba, label %bb.l, label %bb.t, !prof !39

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp samesign ult i32 %i.ax, 56320
  br i1 %i.bb, label %bb.m, label %bb.s, !prof !100

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %.critedge.i, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit22, !prof !109

_ZNK5arrow4json17MultiStringStream4PeekEv.exit22: ; preds = %bb.m
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !94
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !38
  %i.bi = icmp eq i8 %i.bh, 92
  br i1 %i.bi, label %bb.n, label %.critedge.i, !prof !108

bb.n:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit22
  %i.bj = call noundef signext i8 @_ZN5arrow4json17MultiStringStream4TakeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %.critedge.i, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit24

_ZNK5arrow4json17MultiStringStream4PeekEv.exit24: ; preds = %bb.n
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !94
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !38
  %i.bq = icmp eq i8 %i.bp, 117
  br i1 %i.bq, label %bb.o, label %.critedge.i, !prof !108

.critedge.i:                                      ; preds = %bb.n, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit24, %bb.m, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit22
  store i32 9, ptr %i.r, align 8, !tbaa !63
  br label %.critedge.sink.split

bb.o:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit24
  %i.br = call noundef signext i8 @_ZN5arrow4json17MultiStringStream4TakeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.bs = call noundef i32 @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseHex4INS_4json17MultiStringStreamEEEjRT_m(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.w) ; 2 uses
  %i.bt = load i32, ptr %i.r, align 8, !tbaa !63
  %.not50 = icmp eq i32 %i.bt, 0
  br i1 %.not50, label %bb.p, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread, !prof !100

bb.p:                                             ; preds = %bb.o
  %i.bu = add i32 %i.bs, -57344
  %i.bv = icmp ult i32 %i.bu, -1024
  br i1 %i.bv, label %bb.q, label %bb.r, !prof !39

bb.q:                                             ; preds = %bb.p
  store i32 9, ptr %i.r, align 8, !tbaa !63
  br label %.critedge.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bw = shl nuw nsw i32 %i.ax, 10
  %i.bx = add nsw i32 %i.bw, -56613888
  %i.by = add nuw nsw i32 %i.bx, %i.bs
  br label %bb.t

bb.s:                                             ; preds = %bb.l
  store i32 9, ptr %i.r, align 8, !tbaa !63
  br label %.critedge.sink.split

bb.t:                                             ; preds = %bb.r, %bb.k
  %.1.i = phi i32 [ %i.by, %bb.r ], [ %i.ax, %bb.k ]
  call void @_ZN5arrow9rapidjson4UTF8IcE6EncodeINS0_13GenericReaderIS2_S2_NS0_12CrtAllocatorEE11StackStreamIcEEEEvRT_j(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %.1.i)
  br label %.critedge56.i

.thread:                                          ; preds = %bb.f, %bb.i
  store i32 10, ptr %i.r, align 8, !tbaa !63
  br label %.critedge.sink.split

bb.u:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  %i.bz = call noundef signext i8 @_ZN5arrow4json17MultiStringStream4TakeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.ca = load ptr, ptr %4, align 8, !tbaa !107, !nonnull !18, !align !88 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !98
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !99 ; 2 uses
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = icmp slt i64 %i.ch, 1
  br i1 %i.ci, label %bb.v, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit, !prof !39

bb.v:                                             ; preds = %bb.u
  call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, i64 noundef 1)
  %.pre = load ptr, ptr %i.cd, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit

bb.w:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  %i.cj = icmp ult i8 %i.v, 32
  br i1 %i.cj, label %bb.x, label %bb.z, !prof !85

bb.x:                                             ; preds = %bb.w
  %i.ck = icmp eq i8 %i.v, 0
  br i1 %i.ck, label %.thread42, label %bb.y

.thread42:                                        ; preds = %.critedge56.i, %_ZN5arrow4json17MultiStringStream4TakeEv.exit, %bb.x
  %i.cl = load i64, ptr %1, align 8, !tbaa !46
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 11, ptr %i.cm, align 8, !tbaa !63
  br label %.critedge.sink.split

bb.y:                                             ; preds = %bb.x
  %i.cn = load i64, ptr %1, align 8, !tbaa !46
  store i32 12, ptr %i.r, align 8, !tbaa !63
  br label %.critedge.sink.split

bb.z:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !96 ; 2 uses
  switch i64 %i.cp, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i26 [
    i64 1, label %bb.aa
    i64 0, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  store ptr %i.co, ptr %i.b, align 8, !tbaa !55
  br label %_ZN5arrow4json17MultiStringStream4TakeEv.exit27

bb.ab:                                            ; preds = %bb.z
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 0) #20
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i26: ; preds = %bb.z
  %i.cq = add i64 %i.cp, -1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !58
  store ptr %i.cr, ptr %i.t, align 8, !tbaa !59
  br label %_ZN5arrow4json17MultiStringStream4TakeEv.exit27

_ZN5arrow4json17MultiStringStream4TakeEv.exit27:  ; preds = %bb.aa, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i26
  %i.cs = load i64, ptr %1, align 8, !tbaa !46
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %1, align 8, !tbaa !46
  %i.cu = load ptr, ptr %4, align 8, !tbaa !107, !nonnull !18, !align !88 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !98
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !99 ; 2 uses
  %i.cz = ptrtoint ptr %i.cw to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  %i.dc = icmp slt i64 %i.db, 1
  br i1 %i.dc, label %bb.ac, label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit16, !prof !39

bb.ac:                                            ; preds = %_ZN5arrow4json17MultiStringStream4TakeEv.exit27
  call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i64 noundef 1)
  %.pre82 = load ptr, ptr %i.cx, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit16

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit16: ; preds = %_ZN5arrow4json17MultiStringStream4TakeEv.exit27, %bb.ac
  %i.dd = phi ptr [ %i.cy, %_ZN5arrow4json17MultiStringStream4TakeEv.exit27 ], [ %.pre82, %bb.ac ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  store ptr %i.de, ptr %i.cx, align 8, !tbaa !99
  store i8 %i.v, ptr %i.dd, align 1, !tbaa !38
  %i.df = load i32, ptr %i.p, align 8, !tbaa !104
  %i.dg = add i32 %i.df, 1
  store i32 %i.dg, ptr %i.p, align 8, !tbaa !104
  br label %.critedge56.i

.critedge56.i:                                    ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit, %bb.t, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit16
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !55  ; 2 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %.thread42, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit: ; preds = %bb.v, %bb.u
  %i.dk = phi ptr [ %i.ce, %bb.u ], [ %.pre, %bb.v ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1
  store ptr %i.dl, ptr %i.cd, align 8, !tbaa !99
  store i8 0, ptr %i.dk, align 1, !tbaa !38
  %i.dm = load i32, ptr %i.p, align 8, !tbaa !104
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.p, align 8, !tbaa !104
  %.pre83 = load i32, ptr %i.r, align 8, !tbaa !63
  %i.do = icmp eq i32 %.pre83, 0
  br i1 %i.do, label %bb.ad, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread, !prof !108

bb.ad:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit
  %i.dp = load i32, ptr %i.p, align 8, !tbaa !104
  %i.dq = zext i32 %i.dp to i64
  %i.dr = load ptr, ptr %4, align 8, !tbaa !107, !nonnull !18, !align !88
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !99
  %i.du = sub nsw i64 0, %i.dq
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 %i.du
  store ptr %i.dv, ptr %i.ds, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread

.critedge.sink.split:                             ; preds = %.critedge.i, %bb.q, %bb.s, %bb.y, %.thread, %.thread42
  %.sink = phi i64 [ %i.cl, %.thread42 ], [ %i.w, %.thread ], [ %i.cn, %bb.y ], [ %i.w, %bb.s ], [ %i.w, %bb.q ], [ %i.w, %.critedge.i ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sink, ptr %5, align 8, !tbaa !66
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread: ; preds = %bb.j, %bb.o, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS_4json17MultiStringStreamENS5_11StackStreamIcEEEEvRT2_RT3_.exit, %.critedge.sink.split, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE10ParseValueILj76ENS_4json17MultiStringStreamENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit.thread, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit

_ZNK5arrow4json17MultiStringStream4PeekEv.exit:   ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = load i8, ptr %i.g, align 1, !tbaa !38
  switch i8 %i.h, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit.thread [
    i8 110, label %bb.b
    i8 116, label %bb.c
    i8 102, label %bb.d
    i8 34, label %bb.e
    i8 123, label %bb.f
    i8 91, label %bb.g
  ]

bb.b:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseNullILj76ENS_4json17MultiStringStreamENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %bb.h

bb.c:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseTrueILj76ENS_4json17MultiStringStreamENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %bb.h

bb.d:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE10ParseFalseILj76ENS_4json17MultiStringStreamENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %bb.h

bb.e:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseStringILj76ENS_4json17MultiStringStreamENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_b(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext false)
  br label %bb.h

bb.f:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseObjectILj76ENS_4json17MultiStringStreamENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %bb.h

bb.g:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE10ParseArrayILj76ENS_4json17MultiStringStreamENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %bb.h

_ZNK5arrow4json17MultiStringStream4PeekEv.exit.thread: ; preds = %bb.a, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseNumberILj76ENS_4json17MultiStringStreamENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %bb.h

bb.h:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit.thread, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIjEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !110
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #18 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !110
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8, !tbaa !71
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !98
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, 1
  %i.o = lshr i64 %i.n, 1
  %i.p = add i64 %i.o, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi = phi i64 [ %i.l, %bb.e ], [ 0, %bb.d ]
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.h, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !99
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %.pre-phi                  ; 2 uses
  %i.u = shl i64 %1, 2
  %i.v = add i64 %i.t, %i.u
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0, i64 %i.v) ; 3 uses
  %i.w = icmp eq i64 %spec.select, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.b) #17
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ResizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.x = tail call ptr @realloc(ptr noundef %i.b, i64 noundef %spec.select) #21
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ResizeEm.exit

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ResizeEm.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ null, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !70
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.t
  store ptr %i.z, ptr %i.q, align 8, !tbaa !99
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %spec.select
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseHex4INS_4json17MultiStringStreamEEEjRT_m(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !54   ; 4 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !55 ; 4 uses
  %i.d = icmp eq ptr %.promoted, %i.c
  br i1 %i.d, label %.thread44, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit

_ZNK5arrow4json17MultiStringStream4PeekEv.exit:   ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.promoted, i64 -8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !38    ; 4 uses
  %i.h = sext i8 %i.g to i32
  %i.i = add i8 %i.g, -48
  %or.cond = icmp ult i8 %i.i, 10
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  %i.j = add i8 %i.g, -65
  %or.cond6 = icmp ult i8 %i.j, 6
  br i1 %or.cond6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = add i8 %i.g, -97
  %or.cond9 = icmp ult i8 %i.k, 6
  br i1 %or.cond9, label %bb.d, label %.thread44

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit
  %.sink = phi i32 [ -48, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit ], [ -55, %bb.b ], [ -87, %bb.c ]
  %i.l = add nsw i32 %.sink, %i.h
  %i.m = getelementptr inbounds i8, ptr %.promoted, i64 -16 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  switch i64 %i.n, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i [
    i64 1, label %bb.e
    i64 0, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.b, align 8, !tbaa !55
  br label %bb.g

bb.f:                                             ; preds = %bb.t, %bb.o, %bb.j, %bb.d
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 0) #20
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.d
  %i.o = add i64 %i.n, -1
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !58
  store ptr %i.p, ptr %i.e, align 8, !tbaa !59
  br label %bb.g

.thread44:                                        ; preds = %bb.s, %bb.q, %bb.n, %bb.l, %bb.i, %bb.g, %bb.a, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 8, ptr %i.q, align 8, !tbaa !63
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %i.r, align 8, !tbaa !66
  br label %.loopexit

bb.g:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, %bb.e
  %i.s = phi ptr [ %.promoted, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.m, %bb.e ] ; 4 uses
  %i.t = load i64, ptr %1, align 8, !tbaa !46
  %i.u = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.u, ptr %1, align 8, !tbaa !46
  %i.v = icmp eq ptr %i.s, %i.c
  br i1 %i.v, label %.thread44, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit.1

_ZNK5arrow4json17MultiStringStream4PeekEv.exit.1: ; preds = %bb.g
end_hunk_0
begin_hunk_1_@_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseNumberILj76ENS_4json17MultiStringStreamENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_:bb.a
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit342

_ZNK5arrow4json17MultiStringStream4PeekEv.exit342: ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit342.lr.ph, %.critedge137
  %i.zu = phi ptr [ %i.zn, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit342.lr.ph ], [ %i.acp, %.critedge137 ]
  %.078694 = phi i32 [ %.0.i338, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit342.lr.ph ], [ %i.abp, %.critedge137 ]
  %.sroa.107.15693 = phi i32 [ %i.yx, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit342.lr.ph ], [ %.sroa.107.17, %.critedge137 ] ; 2 uses
  %i.zv = getelementptr inbounds i8, ptr %i.zu, i64 -8
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !94
  %i.zx = load i8, ptr %i.zw, align 1, !tbaa !38  ; 2 uses
  %i.zy = add i8 %i.zx, -48
  %or.cond1047.a = icmp ult i8 %i.zy, 10
  br i1 %or.cond1047.a, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit346, label %.critedge135, !prof !116

_ZNK5arrow4json17MultiStringStream4PeekEv.exit346: ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit342
  %i.zz = mul nsw i32 %.078694, 10
  %i.aaa = load ptr, ptr %i.yn, align 8, !tbaa !98
  %i.aab = load ptr, ptr %i.yp, align 8, !tbaa !99 ; 2 uses
  %i.aac = ptrtoint ptr %i.aaa to i64             ; 2 uses
  %i.aad = ptrtoint ptr %i.aab to i64             ; 2 uses
  %i.aae = sub i64 %i.aac, %i.aad
  %i.aaf = icmp slt i64 %i.aae, 1
  br i1 %i.aaf, label %bb.el, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit162.a, !prof !39

bb.el:                                            ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit346
  %i.aag = load ptr, ptr %i.zr, align 8, !tbaa !70 ; 4 uses
  %i.aah = icmp eq ptr %i.aag, null
  br i1 %i.aah, label %bb.em, label %bb.ep

bb.em:                                            ; preds = %bb.el
  %i.aai = load ptr, ptr %0, align 8, !tbaa !110
  %.not.i351 = icmp eq ptr %i.aai, null
  br i1 %.not.i351, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.aaj = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #18 ; 2 uses
  store ptr %i.aaj, ptr %0, align 8, !tbaa !110
  store ptr %i.aaj, ptr %i.zs, align 8, !tbaa !71
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.aak = load i64, ptr %i.zt, align 8, !tbaa !60
  br label %bb.eq

bb.ep:                                            ; preds = %bb.el
  %i.aal = ptrtoint ptr %i.aag to i64             ; 2 uses
  %i.aam = sub i64 %i.aac, %i.aal                 ; 2 uses
  %i.aan = add i64 %i.aam, 1
  %i.aao = lshr i64 %i.aan, 1
  %i.aap = add i64 %i.aao, %i.aam
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.pre-phi.i347 = phi i64 [ %i.aal, %bb.ep ], [ 0, %bb.eo ]
  %.0.i348 = phi i64 [ %i.aap, %bb.ep ], [ %i.aak, %bb.eo ]
  %i.aaq = sub i64 %i.aad, %.pre-phi.i347         ; 2 uses
  %i.aar = add i64 %i.aaq, 1
  %spec.select.i349 = tail call i64 @llvm.umax.i64(i64 %.0.i348, i64 %i.aar) ; 3 uses
  %i.aas = icmp eq i64 %spec.select.i349, 0
  br i1 %i.aas, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  tail call void @free(ptr noundef %i.aag) #17
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit352

bb.es:                                            ; preds = %bb.eq
  %i.aat = tail call ptr @realloc(ptr noundef %i.aag, i64 noundef %spec.select.i349) #21
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit352

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit352: ; preds = %bb.er, %bb.es
  %.0.i.i.i350 = phi ptr [ null, %bb.er ], [ %i.aat, %bb.es ] ; 3 uses
  store ptr %.0.i.i.i350, ptr %i.zr, align 8, !tbaa !70
  %i.aau = getelementptr inbounds nuw i8, ptr %.0.i.i.i350, i64 %i.aaq
  %i.aav = getelementptr inbounds nuw i8, ptr %.0.i.i.i350, i64 %spec.select.i349
  store ptr %i.aav, ptr %i.yn, align 8, !tbaa !98
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit162.a

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit162.a: ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit346, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit352
  %i.aaw = phi ptr [ %i.aab, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit346 ], [ %i.aau, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit352 ] ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1
  store ptr %i.aax, ptr %i.yp, align 8, !tbaa !99
  store i8 %i.zx, ptr %i.aaw, align 1, !tbaa !38
  %i.aay = add i32 %.sroa.107.15693, 1            ; 4 uses
  %i.aaz = load ptr, ptr %i.c, align 8, !tbaa !55 ; 5 uses
  %i.aba = load ptr, ptr %i.b, align 8, !tbaa !54 ; 5 uses
  %i.abb = icmp eq ptr %i.aaz, %i.aba
  br i1 %i.abb, label %_ZN5arrow4json17MultiStringStream4TakeEv.exit355, label %bb.et

bb.et:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit162.a
  %i.abc = getelementptr inbounds i8, ptr %i.aaz, i64 -16 ; 4 uses
  %i.abd = getelementptr inbounds i8, ptr %i.aaz, i64 -8 ; 2 uses
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !94 ; 2 uses
  %i.abf = load i8, ptr %i.abe, align 1, !tbaa !38
  %i.abg = load i64, ptr %i.abc, align 8, !tbaa !96 ; 2 uses
  switch i64 %i.abg, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i354 [
    i64 1, label %bb.eu
    i64 0, label %bb.ev
  ]

bb.eu:                                            ; preds = %bb.et
  store ptr %i.abc, ptr %i.c, align 8, !tbaa !55
  br label %bb.ew

bb.ev:                                            ; preds = %bb.et
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 0) #20
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i354: ; preds = %bb.et
  %i.abh = add i64 %i.abg, -1
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abe, i64 1
  store i64 %i.abh, ptr %i.abc, align 8, !tbaa !58
  store ptr %i.abi, ptr %i.abd, align 8, !tbaa !59
  br label %bb.ew

bb.ew:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i354, %bb.eu
  %i.abj = phi ptr [ %i.aaz, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i354 ], [ %i.abc, %bb.eu ]
  %i.abk = load i64, ptr %1, align 8, !tbaa !46
  %i.abl = add i64 %i.abk, 1
  store i64 %i.abl, ptr %1, align 8, !tbaa !46
  %i.abm = sext i8 %i.abf to i32
  %i.abn = add nsw i32 %i.abm, -48
  br label %_ZN5arrow4json17MultiStringStream4TakeEv.exit355

_ZN5arrow4json17MultiStringStream4TakeEv.exit355: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit162.a, %bb.ew
  %i.abo = phi ptr [ %i.abj, %bb.ew ], [ %i.aaz, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit162.a ] ; 5 uses
  %.0.i353 = phi i32 [ %i.abn, %bb.ew ], [ -48, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit162.a ]
  %i.abp = add nsw i32 %.0.i353, %i.zz            ; 2 uses
  %i.abq = icmp sgt i32 %i.abp, %i.zp
  br i1 %i.abq, label %.preheader, label %.critedge137, !prof !39

.preheader:                                       ; preds = %_ZN5arrow4json17MultiStringStream4TakeEv.exit355
  %i.abr = icmp eq ptr %i.abo, %i.aba
  br i1 %i.abr, label %.critedge137, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357.preheader

_ZNK5arrow4json17MultiStringStream4PeekEv.exit357.preheader: ; preds = %.preheader
  %i.abs = getelementptr inbounds i8, ptr %i.abo, i64 -8
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !94
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !38 ; 2 uses
  %i.abv = add i8 %i.abu, -48
  %or.cond10481176 = icmp ult i8 %i.abv, 10
  br i1 %or.cond10481176, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit361, label %.critedge137, !prof !131

_ZNK5arrow4json17MultiStringStream4PeekEv.exit357: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit161.a
  %i.abw = getelementptr inbounds i8, ptr %i.acl, i64 -8
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !94
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !38 ; 2 uses
  %i.abz = add i8 %i.aby, -48
  %or.cond1048.a = icmp ult i8 %i.abz, 10
  br i1 %or.cond1048.a, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit361, label %.critedge137, !prof !132, !llvm.loop !133

_ZNK5arrow4json17MultiStringStream4PeekEv.exit361: ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357.preheader, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357
  %i.aca = phi i8 [ %i.aby, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357 ], [ %i.abu, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357.preheader ]
  %.sroa.107.166891177 = phi i32 [ %i.acj, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357 ], [ %i.aay, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357.preheader ]
  %i.acb = load ptr, ptr %i.yn, align 8, !tbaa !98
  %i.acc = load ptr, ptr %i.yp, align 8, !tbaa !99 ; 2 uses
  %i.acd = ptrtoint ptr %i.acb to i64
  %i.ace = ptrtoint ptr %i.acc to i64
  %i.acf = sub i64 %i.acd, %i.ace
  %i.acg = icmp slt i64 %i.acf, 1
  br i1 %i.acg, label %bb.ex, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit161.a, !prof !39

bb.ex:                                            ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit361
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre753.a = load ptr, ptr %i.yp, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit161.a

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit161.a: ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit361, %bb.ex
  %i.ach = phi ptr [ %i.acc, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit361 ], [ %.pre753.a, %bb.ex ] ; 2 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 1
  store ptr %i.aci, ptr %i.yp, align 8, !tbaa !99
  store i8 %i.aca, ptr %i.ach, align 1, !tbaa !38
  %i.acj = add i32 %.sroa.107.166891177, 1        ; 3 uses
  %i.ack = tail call noundef signext i8 @_ZN5arrow4json17MultiStringStream4TakeEv(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 0 uses
  %i.acl = load ptr, ptr %i.c, align 8, !tbaa !55 ; 3 uses
  %i.acm = load ptr, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  %i.acn = icmp eq ptr %i.acl, %i.acm
  br i1 %i.acn, label %.critedge135, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357, !llvm.loop !133

.critedge137:                                     ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357.preheader, %.preheader, %_ZN5arrow4json17MultiStringStream4TakeEv.exit355
  %i.aco = phi ptr [ %i.aba, %_ZN5arrow4json17MultiStringStream4TakeEv.exit355 ], [ %i.aba, %.preheader ], [ %i.aba, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357.preheader ], [ %i.acm, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357 ]
  %i.acp = phi ptr [ %i.abo, %_ZN5arrow4json17MultiStringStream4TakeEv.exit355 ], [ %i.abo, %.preheader ], [ %i.abo, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357.preheader ], [ %i.acl, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357 ] ; 2 uses
  %.sroa.107.17 = phi i32 [ %i.aay, %_ZN5arrow4json17MultiStringStream4TakeEv.exit355 ], [ %i.aay, %.preheader ], [ %i.aay, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357.preheader ], [ %i.acj, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit357 ] ; 2 uses
  %i.acq = icmp eq ptr %i.acp, %i.aco
  br i1 %i.acq, label %.critedge135, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit342, !llvm.loop !134

bb.ey:                                            ; preds = %_ZN5arrow4json17MultiStringStream4TakeEv.exit340
  %i.acr = sub nsw i32 308, %.486925
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.acu = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.ez

bb.ez:                                            ; preds = %_ZN5arrow4json17MultiStringStream4TakeEv.exit376, %bb.ey
  %i.acv = phi ptr [ %i.yz, %bb.ey ], [ %i.aed, %_ZN5arrow4json17MultiStringStream4TakeEv.exit376 ]
  %i.acw = phi ptr [ %i.zn, %bb.ey ], [ %i.aer, %_ZN5arrow4json17MultiStringStream4TakeEv.exit376 ] ; 2 uses
  %.sroa.107.18 = phi i32 [ %i.yx, %bb.ey ], [ %i.aeb, %_ZN5arrow4json17MultiStringStream4TakeEv.exit376 ] ; 3 uses
  %.179 = phi i32 [ %.0.i338, %bb.ey ], [ %i.aes, %_ZN5arrow4json17MultiStringStream4TakeEv.exit376 ]
  %i.acx = icmp eq ptr %i.acw, %i.acv
  br i1 %i.acx, label %.critedge135, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit363

_ZNK5arrow4json17MultiStringStream4PeekEv.exit363: ; preds = %bb.ez
  %i.acy = getelementptr inbounds i8, ptr %i.acw, i64 -8
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !94
  %i.ada = load i8, ptr %i.acz, align 1, !tbaa !38 ; 2 uses
  %i.adb = add i8 %i.ada, -48
  %or.cond1049 = icmp ult i8 %i.adb, 10
  br i1 %or.cond1049, label %_ZNK5arrow4json17MultiStringStream4PeekEv.exit367, label %.critedge135, !prof !116

_ZNK5arrow4json17MultiStringStream4PeekEv.exit367: ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit363
  %i.adc = mul nsw i32 %.179, 10
  %i.add = load ptr, ptr %i.yn, align 8, !tbaa !98
  %i.ade = load ptr, ptr %i.yp, align 8, !tbaa !99 ; 2 uses
  %i.adf = ptrtoint ptr %i.add to i64             ; 2 uses
  %i.adg = ptrtoint ptr %i.ade to i64             ; 2 uses
  %i.adh = sub i64 %i.adf, %i.adg
  %i.adi = icmp slt i64 %i.adh, 1
  br i1 %i.adi, label %bb.fa, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit160, !prof !39

bb.fa:                                            ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit367
  %i.adj = load ptr, ptr %i.acs, align 8, !tbaa !70 ; 4 uses
  %i.adk = icmp eq ptr %i.adj, null
  br i1 %i.adk, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.adl = load ptr, ptr %0, align 8, !tbaa !110
  %.not.i372 = icmp eq ptr %i.adl, null
  br i1 %.not.i372, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.adm = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #18 ; 2 uses
  store ptr %i.adm, ptr %0, align 8, !tbaa !110
  store ptr %i.adm, ptr %i.act, align 8, !tbaa !71
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %i.adn = load i64, ptr %i.acu, align 8, !tbaa !60
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fa
  %i.ado = ptrtoint ptr %i.adj to i64             ; 2 uses
  %i.adp = sub i64 %i.adf, %i.ado                 ; 2 uses
  %i.adq = add i64 %i.adp, 1
  %i.adr = lshr i64 %i.adq, 1
  %i.ads = add i64 %i.adr, %i.adp
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.pre-phi.i368 = phi i64 [ %i.ado, %bb.fe ], [ 0, %bb.fd ]
  %.0.i369 = phi i64 [ %i.ads, %bb.fe ], [ %i.adn, %bb.fd ]
  %i.adt = sub i64 %i.adg, %.pre-phi.i368         ; 2 uses
  %i.adu = add i64 %i.adt, 1
  %spec.select.i370 = tail call i64 @llvm.umax.i64(i64 %.0.i369, i64 %i.adu) ; 3 uses
  %i.adv = icmp eq i64 %spec.select.i370, 0
  br i1 %i.adv, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  tail call void @free(ptr noundef %i.adj) #17
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit373

bb.fh:                                            ; preds = %bb.ff
  %i.adw = tail call ptr @realloc(ptr noundef %i.adj, i64 noundef %spec.select.i370) #21
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit373

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit373: ; preds = %bb.fg, %bb.fh
  %.0.i.i.i371 = phi ptr [ null, %bb.fg ], [ %i.adw, %bb.fh ] ; 3 uses
  store ptr %.0.i.i.i371, ptr %i.acs, align 8, !tbaa !70
  %i.adx = getelementptr inbounds nuw i8, ptr %.0.i.i.i371, i64 %i.adt
  %i.ady = getelementptr inbounds nuw i8, ptr %.0.i.i.i371, i64 %spec.select.i370
  store ptr %i.ady, ptr %i.yn, align 8, !tbaa !98
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit160

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit160: ; preds = %_ZNK5arrow4json17MultiStringStream4PeekEv.exit367, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit373
  %i.adz = phi ptr [ %i.ade, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit367 ], [ %i.adx, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit373 ] ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 1
  store ptr %i.aea, ptr %i.yp, align 8, !tbaa !99
  store i8 %i.ada, ptr %i.adz, align 1, !tbaa !38
  %i.aeb = add i32 %.sroa.107.18, 1
  %i.aec = load ptr, ptr %i.c, align 8, !tbaa !55 ; 5 uses
  %i.aed = load ptr, ptr %i.b, align 8, !tbaa !54 ; 2 uses
  %i.aee = icmp eq ptr %i.aec, %i.aed
  br i1 %i.aee, label %_ZN5arrow4json17MultiStringStream4TakeEv.exit376, label %bb.fi

bb.fi:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit160
  %i.aef = getelementptr inbounds i8, ptr %i.aec, i64 -16 ; 4 uses
  %i.aeg = getelementptr inbounds i8, ptr %i.aec, i64 -8 ; 2 uses
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !94 ; 2 uses
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !38
  %i.aej = load i64, ptr %i.aef, align 8, !tbaa !96 ; 2 uses
  switch i64 %i.aej, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i375 [
    i64 1, label %bb.fj
    i64 0, label %bb.fk
  ]

bb.fj:                                            ; preds = %bb.fi
  store ptr %i.aef, ptr %i.c, align 8, !tbaa !55
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i64 noundef 1, i64 noundef 0) #20
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i375: ; preds = %bb.fi
  %i.aek = add i64 %i.aej, -1
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aeh, i64 1
  store i64 %i.aek, ptr %i.aef, align 8, !tbaa !58
  store ptr %i.ael, ptr %i.aeg, align 8, !tbaa !59
  br label %bb.fl

bb.fl:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i375, %bb.fj
  %i.aem = phi ptr [ %i.aec, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i375 ], [ %i.aef, %bb.fj ]
  %i.aen = load i64, ptr %1, align 8, !tbaa !46
  %i.aeo = add i64 %i.aen, 1
  store i64 %i.aeo, ptr %1, align 8, !tbaa !46
  %i.aep = sext i8 %i.aei to i32
  %i.aeq = add nsw i32 %i.aep, -48
  br label %_ZN5arrow4json17MultiStringStream4TakeEv.exit376

_ZN5arrow4json17MultiStringStream4TakeEv.exit376: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit160, %bb.fl
  %i.aer = phi ptr [ %i.aem, %bb.fl ], [ %i.aec, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit160 ]
  %.0.i374 = phi i32 [ %i.aeq, %bb.fl ], [ -48, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit160 ]
  %i.aes = add nsw i32 %.0.i374, %i.adc           ; 2 uses
  %i.aet = icmp sgt i32 %i.aes, %i.acr
  br i1 %i.aet, label %bb.fm, label %bb.ez, !prof !39, !llvm.loop !135

bb.fm:                                            ; preds = %_ZN5arrow4json17MultiStringStream4TakeEv.exit376
  %i.aeu = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 13, ptr %i.aeu, align 8, !tbaa !63
  %i.aev = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.a, ptr %i.aev, align 8, !tbaa !66
  br label %bb.fq

.critedge133:                                     ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit158, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit159, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EEEEEbRT_NSB_2ChE.exit, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit333
  %i.aew = load i64, ptr %1, align 8, !tbaa !46
  %i.aex = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 15, ptr %i.aex, align 8, !tbaa !63
  %i.aey = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.aew, ptr %i.aey, align 8, !tbaa !66
  br label %bb.fq

.critedge135:                                     ; preds = %bb.ez, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit363, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit342, %.critedge137, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit161.a, %bb.cn, %.critedge125, %.critedge130.thread926, %.critedge130, %bb.ek, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit312
  %.sroa.107.19 = phi i32 [ %.sroa.107.15693, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit342 ], [ %.sroa.107.12924, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit312 ], [ %.sroa.107.7, %.critedge125 ], [ %i.yx, %bb.ek ], [ %.sroa.107.12.ph, %.critedge130 ], [ %.sroa.107.9, %bb.cn ], [ %i.acj, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb1EE4TakeEv.exit161.a ], [ %.sroa.107.11912, %.critedge130.thread926 ], [ %.sroa.107.17, %.critedge137 ], [ %.sroa.107.18, %_ZNK5arrow4json17MultiStringStream4PeekEv.exit363 ], [ %.sroa.107.18, %bb.ez ] ; 4 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.afa = load ptr, ptr %i.aez, align 8, !tbaa !98
  %i.afb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.afc = load ptr, ptr %i.afb, align 8, !tbaa !99 ; 2 uses
  %i.afd = ptrtoint ptr %i.afa to i64
  %i.afe = ptrtoint ptr %i.afc to i64
  %i.aff = sub i64 %i.afd, %i.afe
  %i.afg = icmp slt i64 %i.aff, 1
  br i1 %i.afg, label %bb.fn, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb0EE3PopEv.exit, !prof !39

bb.fn:                                            ; preds = %.critedge135
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.afb, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb0EE3PopEv.exit

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb0EE3PopEv.exit: ; preds = %.critedge135, %bb.fn
  %i.afh = phi ptr [ %i.afc, %.critedge135 ], [ %.pre.i, %bb.fn ] ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 1
  store ptr %i.afi, ptr %i.afb, align 8, !tbaa !99
  store i8 0, ptr %i.afh, align 1, !tbaa !38
  %i.afj = add i32 %.sroa.107.19, 1
  %i.afk = zext i32 %i.afj to i64
  %i.afl = load ptr, ptr %i.afb, align 8, !tbaa !99
  %i.afm = sub nsw i64 0, %i.afk
  %i.afn = getelementptr inbounds i8, ptr %i.afl, i64 %i.afm ; 3 uses
  store ptr %i.afn, ptr %i.afb, align 8, !tbaa !99
  %.not107698 = icmp eq i32 %.sroa.107.19, 0
  br i1 %.not107698, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb0EE3PopEv.exit, %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit
  %.069701 = phi i32 [ %i.afo, %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit ], [ %.sroa.107.19, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb0EE3PopEv.exit ]
  %.sroa.0382.0699 = phi ptr [ %i.afp, %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit ], [ %i.afn, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb0EE3PopEv.exit ] ; 2 uses
  %i.afo = add i32 %.069701, -1                   ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.sroa.0382.0699, i64 1
  %i.afq = load i8, ptr %.sroa.0382.0699, align 1, !tbaa !38
  %i.afr = load ptr, ptr %i.aez, align 8, !tbaa !98
  %i.afs = load ptr, ptr %i.afb, align 8, !tbaa !99 ; 2 uses
  %i.aft = ptrtoint ptr %i.afr to i64
  %i.afu = ptrtoint ptr %i.afs to i64
  %i.afv = sub i64 %i.aft, %i.afu
  %i.afw = icmp slt i64 %i.afv, 1
  br i1 %i.afw, label %bb.fo, label %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit, !prof !39

bb.fo:                                            ; preds = %.lr.ph
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre754.a = load ptr, ptr %i.afb, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit

_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit: ; preds = %.lr.ph, %bb.fo
  %i.afx = phi ptr [ %i.afs, %.lr.ph ], [ %.pre754.a, %bb.fo ] ; 2 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 1
  store ptr %i.afy, ptr %i.afb, align 8, !tbaa !99
  store i8 %i.afq, ptr %i.afx, align 1, !tbaa !38
  %.not107 = icmp eq i32 %i.afo, 0
  br i1 %.not107, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !136

._crit_edge.loopexit:                             ; preds = %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit
  %.pre755.a = load ptr, ptr %i.afb, align 8, !tbaa !99
  %i.afz = add i32 %.sroa.107.19, 1
  %i.aga = zext i32 %i.afz to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb0EE3PopEv.exit
  %i.agb = phi ptr [ %i.afn, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb0EE3PopEv.exit ], [ %.pre755.a, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.6.0.lcssa = phi i64 [ 1, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS_4json17MultiStringStreamEcLb1ELb0EE3PopEv.exit ], [ %i.aga, %._crit_edge.loopexit ]
  %i.agc = load ptr, ptr %i.aez, align 8, !tbaa !98
  %i.agd = ptrtoint ptr %i.agc to i64
  %i.age = ptrtoint ptr %i.agb to i64
  %i.agf = sub i64 %i.agd, %i.age
  %i.agg = icmp slt i64 %i.agf, 1
  br i1 %i.agg, label %bb.fp, label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit, !prof !39

bb.fp:                                            ; preds = %._crit_edge
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre756 = load ptr, ptr %i.afb, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit: ; preds = %._crit_edge, %bb.fp
  %i.agh = phi ptr [ %i.agb, %._crit_edge ], [ %.pre756, %bb.fp ] ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 1
  store ptr %i.agi, ptr %i.afb, align 8, !tbaa !99
  store i8 0, ptr %i.agh, align 1, !tbaa !38
  %i.agj = load ptr, ptr %i.afb, align 8, !tbaa !99
  %i.agk = sub nsw i64 0, %.sroa.6.0.lcssa
  %i.agl = getelementptr inbounds i8, ptr %i.agj, i64 %i.agk
  store ptr %i.agl, ptr %i.afb, align 8, !tbaa !99
  br label %bb.fq

bb.fq:                                            ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit, %.critedge133, %bb.fm, %.critedge127, %.critedge
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA50_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(50) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !137
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !137
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140, !noalias !137, !nonnull !18, !align !88
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(50) %2) #17, !noalias !137
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(50) %2, i64 noundef %i.c)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA50_KcEEvRSoOT_.exit.i unwind label %bb.b, !noalias !137 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA50_KcEEvRSoOT_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow4util13StringBuilderIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA50_KcEEvRSoOT_.exit.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !137
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA50_KcEEvRSoOT_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !137
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !150    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !38
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.d:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !150    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !38
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %common.resume
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

declare void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr { i32, i64 } @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE14IterativeParseILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEENS0_11ParseResultERT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 9 uses
  store i32 0, ptr %i.a, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !66
  %i.c = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !18, !align !88 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81   ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.c, align 8, !tbaa !78 ; 3 uses
  %i.f = icmp eq ptr %.promoted.i.i, %i.e
  br i1 %i.f, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i, !prof !153

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i.i: ; preds = %bb.a, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i
  %i.g = phi ptr [ %i.i, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i ], [ %.promoted.i.i, %bb.a ] ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !38
  switch i8 %i.h, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE25SkipWhitespaceAndCommentsILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvRT0_.exit [
    i8 32, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i
    i8 13, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i
    i8 10, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i.i
end_hunk_1
begin_hunk_2_@_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE14IterativeParseILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEENS0_11ParseResultERT0_RT1_:bb.a
  %i.cv = load i32, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %.not114 = icmp eq i32 %i.cv, 0
  br i1 %.not114, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit.thread95, !prof !100

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.thread: ; preds = %.noexc48, %.noexc51, %.noexc53, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit, %.sink.split.i, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7TransitILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEENS5_21IterativeParsingStateESC_NS5_5TokenESC_RT0_RT1_.exit.thread
  %.pr108171 = phi i1 [ false, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7TransitILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEENS5_21IterativeParsingStateESC_NS5_5TokenESC_RT0_RT1_.exit.thread ], [ false, %.sink.split.i ], [ false, %.noexc48 ], [ false, %.noexc51 ], [ false, %.noexc53 ], [ true, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit ], [ true, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit ]
  %.not40.old = icmp ne i32 %.036, 0
  %or.cond = and i1 %.not40.old, %.pr108171
  br i1 %or.cond, label %bb.p, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75

bb.p:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.thread
  %i.cw = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !18, !align !88 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !78
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !80
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 6 uses
  switch i32 %.036, label %bb.u [
    i32 2, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75.sink.split
    i32 11, label %bb.t
    i32 3, label %bb.q
    i32 12, label %bb.q
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 13, label %bb.t
    i32 7, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75.sink.split

bb.r:                                             ; preds = %bb.p
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75.sink.split

bb.s:                                             ; preds = %bb.p
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75.sink.split

bb.t:                                             ; preds = %bb.p, %bb.p, %bb.p
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75.sink.split

bb.u:                                             ; preds = %bb.p
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75.sink.split

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75.sink.split: ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %.noexc58, %.noexc55
  %.sink224 = phi i32 [ 4, %.noexc55 ], [ 3, %.noexc58 ], [ 7, %bb.u ], [ 3, %bb.t ], [ 6, %bb.s ], [ 5, %bb.r ], [ 4, %bb.q ], [ 1, %bb.p ]
  %.sink = phi i64 [ %i.bi, %.noexc55 ], [ %i.bt, %.noexc58 ], [ %i.dc, %bb.u ], [ %i.dc, %bb.t ], [ %i.dc, %bb.s ], [ %i.dc, %bb.r ], [ %i.dc, %bb.q ], [ %i.dc, %bb.p ]
  store i32 %.sink224, ptr %i.a, align 8, !tbaa !63
  store i64 %.sink, ptr %i.b, align 8, !tbaa !66
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75: ; preds = %.noexc57, %.noexc60, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7TransitILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEENS5_21IterativeParsingStateESC_NS5_5TokenESC_RT0_RT1_.exit, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75.sink.split, %bb.n, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.thread
  %.sroa.0.0.copyload23 = load i32, ptr %i.a, align 8, !tbaa !101
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit.thread95

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit.thread95: ; preds = %.loopexit, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75
  %.sroa.0.2 = phi i32 [ %.sroa.0.0.copyload23, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11HandleErrorINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEvNS5_21IterativeParsingStateERT_.exit75 ], [ %i.cv, %.loopexit ]
  %.sroa.428.2 = load i64, ptr %i.b, align 8, !tbaa !58
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !70
  store ptr %i.de, ptr %i.l, align 8, !tbaa !99
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.428.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseStringILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_b(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.arrow::rapidjson::GenericReader<arrow::rapidjson::UTF8<>, arrow::rapidjson::UTF8<>>::StackStream", align 8 ; 9 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !18, !align !88 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit, label %bb.b, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !78
  br label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit: ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.b, %bb.a ], [ %i.f, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %0, ptr %4, align 8, !tbaa !102
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 8 uses
  store i32 0, ptr %i.h, align 8, !tbaa !104
  %i.i = icmp eq ptr %i.g, %i.d
  br i1 %i.i, label %.thread32, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.lr.ph, !prof !153

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.lr.ph: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  br label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.lr.ph, %.critedge56.i
  %i.k = phi ptr [ %i.d, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.lr.ph ], [ %i.de, %.critedge56.i ]
  %i.l = phi ptr [ %i.g, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.lr.ph ], [ %i.dc, %.critedge56.i ] ; 10 uses
  %i.m = phi ptr [ %i.a, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.lr.ph ], [ %i.db, %.critedge56.i ] ; 8 uses
  %i.n = load i8, ptr %i.l, align 1, !tbaa !38    ; 3 uses
  switch i8 %i.n, label %bb.p [
    i8 92, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit16
    i8 34, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit24
  ], !prof !156

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit16: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !80
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  store ptr %i.t, ptr %i.m, align 8, !tbaa !78
  %i.u = icmp eq ptr %i.t, %i.k
  br i1 %i.u, label %.thread27, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit17.thread, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit17.thread: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit16
  %i.v = load i8, ptr %i.t, align 1, !tbaa !38    ; 2 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @_ZZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_E6escape, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38    ; 2 uses
  %.not.i26 = icmp eq i8 %i.y, 0
  br i1 %.not.i26, label %bb.d, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit18, !prof !39

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit18: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit17.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.z, ptr %i.m, align 8, !tbaa !78
  %i.aa = load ptr, ptr %4, align 8, !tbaa !107, !nonnull !18, !align !88 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !98
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !99 ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp slt i64 %i.ah, 1
  br i1 %i.ai, label %bb.c, label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit60.i, !prof !39

bb.c:                                             ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit18
  call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 noundef 1)
  %.pre103 = load ptr, ptr %i.ad, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit60.i

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit60.i: ; preds = %bb.c, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit18
  %i.aj = phi ptr [ %.pre103, %bb.c ], [ %i.ae, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit18 ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.ad, align 8, !tbaa !99
  store i8 %i.y, ptr %i.aj, align 1, !tbaa !38
  %i.al = load i32, ptr %i.h, align 8, !tbaa !104
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.h, align 8, !tbaa !104
  br label %.critedge56.i

bb.d:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit17.thread
  %i.an = icmp eq i8 %i.v, 117
  br i1 %i.an, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit19, label %.thread27, !prof !108

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit19: ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  store ptr %i.ao, ptr %i.m, align 8, !tbaa !78
  %i.ap = call noundef i32 @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseHex4INS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEjRT_m(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.s) ; 4 uses
  %i.aq = load i32, ptr %i.j, align 8, !tbaa !63
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.e, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread, !prof !100

bb.e:                                             ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit19
  %i.ar = and i32 %i.ap, -2048
  %i.as = icmp eq i32 %i.ar, 55296
  br i1 %i.as, label %bb.f, label %bb.n, !prof !39

bb.f:                                             ; preds = %bb.e
  %i.at = icmp samesign ult i32 %i.ap, 56320
  br i1 %i.at, label %bb.g, label %bb.m, !prof !100

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !18, !align !88 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !81 ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %.critedge.i, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit20, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit20: ; preds = %bb.g
  %i.az = load i8, ptr %i.av, align 1, !tbaa !38
  %i.ba = icmp eq i8 %i.az, 92
  br i1 %i.ba, label %bb.h, label %.critedge.i, !prof !108

bb.h:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 3 uses
  store ptr %i.bb, ptr %i.au, align 8, !tbaa !78
  %i.bc = icmp eq ptr %i.bb, %i.ax
  br i1 %i.bc, label %.critedge.i, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit22, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit22: ; preds = %bb.h
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !38
  %i.be = icmp eq i8 %i.bd, 117
  br i1 %i.be, label %bb.i, label %.critedge.i, !prof !108

.critedge.i:                                      ; preds = %bb.h, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit22, %bb.g, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit20
  store i32 9, ptr %i.j, align 8, !tbaa !63
  br label %.critedge.sink.split

bb.i:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit22
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store ptr %i.bf, ptr %i.au, align 8, !tbaa !78
  %i.bg = call noundef i32 @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseHex4INS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEEEjRT_m(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.s) ; 2 uses
  %i.bh = load i32, ptr %i.j, align 8, !tbaa !63
  %.not39 = icmp eq i32 %i.bh, 0
  br i1 %.not39, label %bb.j, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread, !prof !100

bb.j:                                             ; preds = %bb.i
  %i.bi = add i32 %i.bg, -57344
  %i.bj = icmp ult i32 %i.bi, -1024
  br i1 %i.bj, label %bb.k, label %bb.l, !prof !39

bb.k:                                             ; preds = %bb.j
  store i32 9, ptr %i.j, align 8, !tbaa !63
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.j
  %i.bk = shl nuw nsw i32 %i.ap, 10
  %i.bl = add nsw i32 %i.bk, -56613888
  %i.bm = add nuw nsw i32 %i.bl, %i.bg
  br label %bb.n

bb.m:                                             ; preds = %bb.f
  store i32 9, ptr %i.j, align 8, !tbaa !63
  br label %.critedge.sink.split

bb.n:                                             ; preds = %bb.l, %bb.e
  %.1.i = phi i32 [ %i.bm, %bb.l ], [ %i.ap, %bb.e ]
  call void @_ZN5arrow9rapidjson4UTF8IcE6EncodeINS0_13GenericReaderIS2_S2_NS0_12CrtAllocatorEE11StackStreamIcEEEEvRT_j(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %.1.i)
  br label %.critedge56.i

.thread27:                                        ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit16, %bb.d
  store i32 10, ptr %i.j, align 8, !tbaa !63
  br label %.critedge.sink.split

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit24: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.bn, ptr %i.m, align 8, !tbaa !78
  %i.bo = load ptr, ptr %4, align 8, !tbaa !107, !nonnull !18, !align !88 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !98
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !99 ; 2 uses
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = icmp slt i64 %i.bv, 1
  br i1 %i.bw, label %bb.o, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit, !prof !39

bb.o:                                             ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit24
  call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.bo, i64 noundef 1)
  %.pre = load ptr, ptr %i.br, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit

bb.p:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  %i.bx = icmp ult i8 %i.n, 32
  br i1 %i.bx, label %bb.q, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit25, !prof !85

bb.q:                                             ; preds = %bb.p
  %i.by = icmp eq i8 %i.n, 0
  br i1 %i.by, label %.thread32, label %bb.r

.thread32:                                        ; preds = %.critedge56.i, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit, %bb.q
  %i.bz = phi ptr [ %i.m, %bb.q ], [ %i.a, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit ], [ %i.db, %.critedge56.i ]
  %i.ca = phi ptr [ %i.l, %bb.q ], [ %i.d, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit ], [ %i.dc, %.critedge56.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !80
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 11, ptr %i.cg, align 8, !tbaa !63
  br label %.critedge.sink.split

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !80
  %i.cj = ptrtoint ptr %i.l to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  store i32 12, ptr %i.j, align 8, !tbaa !63
  br label %.critedge.sink.split

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit25: ; preds = %bb.p
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.cm, ptr %i.m, align 8, !tbaa !78
  %i.cn = load i8, ptr %i.l, align 1, !tbaa !38
  %i.co = load ptr, ptr %4, align 8, !tbaa !107, !nonnull !18, !align !88 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !98
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !99 ; 2 uses
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = icmp slt i64 %i.cv, 1
  br i1 %i.cw, label %bb.s, label %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit, !prof !39

bb.s:                                             ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit25
  call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.co, i64 noundef 1)
  %.pre104 = load ptr, ptr %i.cr, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit

_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit25, %bb.s
  %i.cx = phi ptr [ %i.cs, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit25 ], [ %.pre104, %bb.s ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1
  store ptr %i.cy, ptr %i.cr, align 8, !tbaa !99
  store i8 %i.cn, ptr %i.cx, align 1, !tbaa !38
  %i.cz = load i32, ptr %i.h, align 8, !tbaa !104
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.h, align 8, !tbaa !104
  br label %.critedge56.i

.critedge56.i:                                    ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit60.i, %bb.n, %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit
  %i.db = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !18, !align !88 ; 4 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !78 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !81 ; 2 uses
  %i.df = icmp eq ptr %i.dc, %i.de
  br i1 %i.df, label %.thread32, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit, !prof !154

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit24, %bb.o
  %i.dg = phi ptr [ %.pre, %bb.o ], [ %i.bs, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit24 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store ptr %i.dh, ptr %i.br, align 8, !tbaa !99
  store i8 0, ptr %i.dg, align 1, !tbaa !38
  %i.di = load i32, ptr %i.h, align 8, !tbaa !104
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.h, align 8, !tbaa !104
  %.pre105 = load i32, ptr %i.j, align 8, !tbaa !63
  %i.dk = icmp eq i32 %.pre105, 0
  br i1 %i.dk, label %bb.t, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread, !prof !108

bb.t:                                             ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit
  %i.dl = load i32, ptr %i.h, align 8, !tbaa !104
  %i.dm = zext i32 %i.dl to i64
  %i.dn = load ptr, ptr %4, align 8, !tbaa !107, !nonnull !18, !align !88
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !99
  %i.dq = sub nsw i64 0, %i.dm
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  store ptr %i.dr, ptr %i.do, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread

.critedge.sink.split:                             ; preds = %.critedge.i, %bb.k, %bb.m, %bb.r, %.thread27, %.thread32
  %.sink = phi i64 [ %i.cf, %.thread32 ], [ %i.s, %.thread27 ], [ %i.cl, %bb.r ], [ %i.s, %bb.m ], [ %i.s, %bb.k ], [ %i.s, %.critedge.i ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sink, ptr %5, align 8, !tbaa !66
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit.thread: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit19, %bb.i, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE19ParseStringToStreamILj76ES3_S3_NS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS5_11StackStreamIcEEEEvRT2_RT3_.exit, %.critedge.sink.split, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE10ParseValueILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !18, !align !88 ; 18 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 21 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.thread, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit: ; preds = %bb.a
  %i.f = load i8, ptr %i.b, align 1, !tbaa !38
  switch i8 %i.f, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.thread [
    i8 110, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i
    i8 116, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i16
    i8 102, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i21
    i8 34, label %bb.l
    i8 123, label %bb.m
    i8 91, label %bb.n
  ]

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !78
  %i.h = icmp eq ptr %i.g, %i.d
  br i1 %i.h, label %.critedge.i, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i
  %i.i = load i8, ptr %i.g, align 1, !tbaa !38
  %i.j = icmp eq i8 %i.i, 117
  br i1 %i.j, label %bb.b, label %.critedge.i, !prof !108

bb.b:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !78
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %.critedge.i, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit11.i, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit11.i: ; preds = %bb.b
  %i.m = load i8, ptr %i.k, align 1, !tbaa !38
  %i.n = icmp eq i8 %i.m, 108
  br i1 %i.n, label %bb.c, label %.critedge.i, !prof !108

bb.c:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit11.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 4 uses
  store ptr %i.o, ptr %i.a, align 8, !tbaa !78
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.critedge.i, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i: ; preds = %bb.c
  %i.q = load i8, ptr %i.o, align 1, !tbaa !38
  %i.r = icmp eq i8 %i.q, 108
  br i1 %i.r, label %bb.d, label %.critedge.i, !prof !108

bb.d:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.s, ptr %i.a, align 8, !tbaa !78
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseNullILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_.exit

.critedge.i:                                      ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i, %bb.c, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit11.i, %bb.b, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i
  %i.t = phi ptr [ %i.d, %bb.c ], [ %i.o, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i ], [ %i.d, %bb.b ], [ %i.k, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit11.i ], [ %i.d, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i ], [ %i.g, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.z, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !66
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseNullILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_.exit

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i16: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !78
  %i.ac = icmp eq ptr %i.ab, %i.d
  br i1 %i.ac, label %.critedge.i18, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i17, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i17: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i16
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !38
  %i.ae = icmp eq i8 %i.ad, 114
  br i1 %i.ae, label %bb.e, label %.critedge.i18, !prof !108

bb.e:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i17
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !78
  %i.ag = icmp eq ptr %i.af, %i.d
  br i1 %i.ag, label %.critedge.i18, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit11.i19, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit11.i19: ; preds = %bb.e
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !38
  %i.ai = icmp eq i8 %i.ah, 117
  br i1 %i.ai, label %bb.f, label %.critedge.i18, !prof !108

bb.f:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit11.i19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 4 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !78
  %i.ak = icmp eq ptr %i.aj, %i.d
  br i1 %i.ak, label %.critedge.i18, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i20, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i20: ; preds = %bb.f
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !38
  %i.am = icmp eq i8 %i.al, 101
  br i1 %i.am, label %bb.g, label %.critedge.i18, !prof !108

bb.g:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i20
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.an, ptr %i.a, align 8, !tbaa !78
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseNullILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_.exit

.critedge.i18:                                    ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i20, %bb.f, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit11.i19, %bb.e, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i17, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i16
  %i.ao = phi ptr [ %i.d, %bb.f ], [ %i.aj, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i20 ], [ %i.d, %bb.e ], [ %i.af, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit11.i19 ], [ %i.d, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i16 ], [ %i.ab, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i17 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !80
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.au, align 8, !tbaa !63
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.at, ptr %i.av, align 8, !tbaa !66
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseNullILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_.exit

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i21: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 4 uses
  store ptr %i.aw, ptr %i.a, align 8, !tbaa !78
  %i.ax = icmp eq ptr %i.aw, %i.d
  br i1 %i.ax, label %.critedge.i23, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i22, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i22: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i21
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !38
  %i.az = icmp eq i8 %i.ay, 97
  br i1 %i.az, label %bb.h, label %.critedge.i23, !prof !108

bb.h:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 4 uses
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !78
  %i.bb = icmp eq ptr %i.ba, %i.d
  br i1 %i.bb, label %.critedge.i23, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i24, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i24: ; preds = %bb.h
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !38
  %i.bd = icmp eq i8 %i.bc, 108
  br i1 %i.bd, label %bb.i, label %.critedge.i23, !prof !108

bb.i:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i24
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 4 uses
  store ptr %i.be, ptr %i.a, align 8, !tbaa !78
  %i.bf = icmp eq ptr %i.be, %i.d
  br i1 %i.bf, label %.critedge.i23, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit15.i, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit15.i: ; preds = %bb.i
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !38
  %i.bh = icmp eq i8 %i.bg, 115
  br i1 %i.bh, label %bb.j, label %.critedge.i23, !prof !108

bb.j:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit15.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  store ptr %i.bi, ptr %i.a, align 8, !tbaa !78
  %i.bj = icmp eq ptr %i.bi, %i.d
  br i1 %i.bj, label %.critedge.i23, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit17.i, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit17.i: ; preds = %bb.j
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !38
  %i.bl = icmp eq i8 %i.bk, 101
  br i1 %i.bl, label %bb.k, label %.critedge.i23, !prof !108

bb.k:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit17.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !78
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseNullILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_.exit

.critedge.i23:                                    ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit17.i, %bb.j, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit15.i, %bb.i, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i24, %bb.h, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i22, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i21
  %i.bn = phi ptr [ %i.d, %bb.j ], [ %i.bi, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit17.i ], [ %i.d, %bb.i ], [ %i.be, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit15.i ], [ %i.d, %bb.h ], [ %i.ba, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit13.i24 ], [ %i.d, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit.i21 ], [ %i.aw, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit.i22 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !80
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 3, ptr %i.bt, align 8, !tbaa !63
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !66
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseNullILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_.exit

bb.l:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseStringILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_b(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i1 noundef zeroext false)
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseNullILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_.exit

bb.m:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseObjectILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseNullILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_.exit

bb.n:                                             ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit
  tail call void @_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE10ParseArrayILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE9ParseNullILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_.exit
end_hunk_2
begin_hunk_3_@_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11ParseNumberILj76ENS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEENS0_17BaseReaderHandlerIS3_vEEEEvRT0_RT1_:bb.a
  br i1 %i.wc, label %.critedge135, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263.lr.ph, !prof !153

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263.lr.ph: ; preds = %bb.co
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263.lr.ph, %.critedge137
  %i.wg = phi ptr [ %i.vy, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263.lr.ph ], [ %i.yw, %.critedge137 ]
  %.078560 = phi i32 [ %i.vz, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263.lr.ph ], [ %i.xu, %.critedge137 ]
  %.sroa.107.15559 = phi i32 [ %i.vo, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263.lr.ph ], [ %.sroa.107.17, %.critedge137 ] ; 2 uses
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !38  ; 2 uses
  %i.wi = add i8 %i.wh, -48
  %or.cond804 = icmp ult i8 %i.wi, 10
  br i1 %or.cond804, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit265, label %.critedge135, !prof !116

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit265: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263
  %i.wj = mul nsw i32 %.078560, 10
  %i.wk = load ptr, ptr %i.ve, align 8, !tbaa !98
  %i.wl = load ptr, ptr %i.vg, align 8, !tbaa !99 ; 2 uses
  %i.wm = ptrtoint ptr %i.wk to i64               ; 2 uses
  %i.wn = ptrtoint ptr %i.wl to i64               ; 2 uses
  %i.wo = sub i64 %i.wm, %i.wn
  %i.wp = icmp slt i64 %i.wo, 1
  br i1 %i.wp, label %bb.cp, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit162.a, !prof !39

bb.cp:                                            ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit265
  %i.wq = load ptr, ptr %i.wd, align 8, !tbaa !70 ; 4 uses
  %i.wr = icmp eq ptr %i.wq, null
  br i1 %i.wr, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.ws = load ptr, ptr %0, align 8, !tbaa !110
  %.not.i270 = icmp eq ptr %i.ws, null
  br i1 %.not.i270, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.wt = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #18 ; 2 uses
  store ptr %i.wt, ptr %0, align 8, !tbaa !110
  store ptr %i.wt, ptr %i.we, align 8, !tbaa !71
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.wu = load i64, ptr %i.wf, align 8, !tbaa !60
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cp
  %i.wv = ptrtoint ptr %i.wq to i64               ; 2 uses
  %i.ww = sub i64 %i.wm, %i.wv                    ; 2 uses
  %i.wx = add i64 %i.ww, 1
  %i.wy = lshr i64 %i.wx, 1
  %i.wz = add i64 %i.wy, %i.ww
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pre-phi.i266 = phi i64 [ %i.wv, %bb.ct ], [ 0, %bb.cs ]
  %.0.i267 = phi i64 [ %i.wz, %bb.ct ], [ %i.wu, %bb.cs ]
  %i.xa = sub i64 %i.wn, %.pre-phi.i266           ; 2 uses
  %i.xb = add i64 %i.xa, 1
  %spec.select.i268 = tail call i64 @llvm.umax.i64(i64 %.0.i267, i64 %i.xb) ; 3 uses
  %i.xc = icmp eq i64 %spec.select.i268, 0
  br i1 %i.xc, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  tail call void @free(ptr noundef %i.wq) #17
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit271

bb.cw:                                            ; preds = %bb.cu
  %i.xd = tail call ptr @realloc(ptr noundef %i.wq, i64 noundef %spec.select.i268) #21
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit271

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit271: ; preds = %bb.cv, %bb.cw
  %.0.i.i.i269 = phi ptr [ null, %bb.cv ], [ %i.xd, %bb.cw ] ; 3 uses
  store ptr %.0.i.i.i269, ptr %i.wd, align 8, !tbaa !70
  %i.xe = getelementptr inbounds nuw i8, ptr %.0.i.i.i269, i64 %i.xa
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.i.i.i269, i64 %spec.select.i268
  store ptr %i.xf, ptr %i.ve, align 8, !tbaa !98
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit162.a

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit162.a: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit265, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit271
  %i.xg = phi ptr [ %i.wl, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit265 ], [ %i.xe, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit271 ] ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 1
  store ptr %i.xh, ptr %i.vg, align 8, !tbaa !99
  store i8 %i.wh, ptr %i.xg, align 1, !tbaa !38
  %i.xi = add i32 %.sroa.107.15559, 1             ; 4 uses
  %i.xj = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !18, !align !88 ; 4 uses
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !78 ; 4 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !81 ; 4 uses
  %i.xn = icmp eq ptr %i.xk, %i.xm
  br i1 %i.xn, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit272, label %bb.cx, !prof !39

bb.cx:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit162.a
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 1 ; 2 uses
  store ptr %i.xo, ptr %i.xj, align 8, !tbaa !78
  %i.xp = load i8, ptr %i.xk, align 1, !tbaa !38
  %i.xq = sext i8 %i.xp to i32
  %i.xr = add nsw i32 %i.xq, -48
  br label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit272

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit272: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit162.a, %bb.cx
  %i.xs = phi ptr [ %i.xo, %bb.cx ], [ %i.xk, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit162.a ] ; 5 uses
  %i.xt = phi i32 [ %i.xr, %bb.cx ], [ -48, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit162.a ]
  %i.xu = add nsw i32 %i.xt, %i.wj                ; 2 uses
  %i.xv = icmp sgt i32 %i.xu, %i.wb
  br i1 %i.xv, label %.preheader, label %.critedge137, !prof !39

.preheader:                                       ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit272
  %i.xw = icmp eq ptr %i.xs, %i.xm
  br i1 %i.xw, label %.critedge137, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273.preheader, !prof !153

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273.preheader: ; preds = %.preheader
  %i.xx = load i8, ptr %i.xs, align 1, !tbaa !38  ; 2 uses
  %i.xy = add i8 %i.xx, -48
  %or.cond803979 = icmp ult i8 %i.xy, 10
  br i1 %or.cond803979, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit275, label %.critedge137.loopexit, !prof !131

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276
  %i.xz = load i8, ptr %i.yr, align 1, !tbaa !38  ; 2 uses
  %i.ya = add i8 %i.xz, -48
  %or.cond803 = icmp ult i8 %i.ya, 10
  br i1 %or.cond803, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit275, label %.critedge137.loopexit, !prof !132, !llvm.loop !171

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit275: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273.preheader, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273
  %i.yb = phi i8 [ %i.xz, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273 ], [ %i.xx, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273.preheader ]
  %.sroa.107.16555980 = phi i32 [ %i.yk, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273 ], [ %i.xi, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273.preheader ]
  %i.yc = load ptr, ptr %i.ve, align 8, !tbaa !98
  %i.yd = load ptr, ptr %i.vg, align 8, !tbaa !99 ; 2 uses
  %i.ye = ptrtoint ptr %i.yc to i64
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = sub i64 %i.ye, %i.yf
  %i.yh = icmp slt i64 %i.yg, 1
  br i1 %i.yh, label %bb.cy, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit161.a, !prof !39

bb.cy:                                            ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit275
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre609 = load ptr, ptr %i.vg, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit161.a

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit161.a: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit275, %bb.cy
  %i.yi = phi ptr [ %i.yd, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit275 ], [ %.pre609, %bb.cy ] ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 1
  store ptr %i.yj, ptr %i.vg, align 8, !tbaa !99
  store i8 %i.yb, ptr %i.yi, align 1, !tbaa !38
  %i.yk = add i32 %.sroa.107.16555980, 1          ; 3 uses
  %i.yl = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !18, !align !88 ; 5 uses
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !78 ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !81 ; 2 uses
  %i.yp = icmp eq ptr %i.ym, %i.yo
  br i1 %i.yp, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276, label %bb.cz, !prof !39

bb.cz:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit161.a
  %i.yq = getelementptr inbounds nuw i8, ptr %i.ym, i64 1 ; 2 uses
  store ptr %i.yq, ptr %i.yl, align 8, !tbaa !78
  br label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit161.a, %bb.cz
  %i.yr = phi ptr [ %i.ym, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit161.a ], [ %i.yq, %bb.cz ] ; 4 uses
  %i.ys = icmp eq ptr %i.yr, %i.yo
  br i1 %i.ys, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276..critedge137.loopexit_crit_edge, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273, !prof !154, !llvm.loop !171

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276..critedge137.loopexit_crit_edge: ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276
  br label %.critedge137.loopexit, !llvm.loop !171

.critedge137.loopexit:                            ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276..critedge137.loopexit_crit_edge, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273.preheader
  %i.yt = phi ptr [ %i.yr, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276..critedge137.loopexit_crit_edge ], [ %i.xs, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273.preheader ], [ %i.yr, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273 ]
  %i.yu = phi ptr [ %i.yl, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276..critedge137.loopexit_crit_edge ], [ %i.xj, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273.preheader ], [ %i.yl, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273 ]
  %.sroa.107.17.ph = phi i32 [ %i.yk, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit276..critedge137.loopexit_crit_edge ], [ %i.xi, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273.preheader ], [ %i.yk, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit273 ]
  %.phi.trans.insert610 = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  %.pre611.a = load ptr, ptr %.phi.trans.insert610, align 8, !tbaa !81
  br label %.critedge137

.critedge137:                                     ; preds = %.critedge137.loopexit, %.preheader, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit272
  %i.yv = phi ptr [ %i.xm, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit272 ], [ %i.xm, %.preheader ], [ %.pre611.a, %.critedge137.loopexit ]
  %i.yw = phi ptr [ %i.xs, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit272 ], [ %i.xs, %.preheader ], [ %i.yt, %.critedge137.loopexit ] ; 2 uses
  %.sroa.107.17 = phi i32 [ %i.xi, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit272 ], [ %i.xi, %.preheader ], [ %.sroa.107.17.ph, %.critedge137.loopexit ] ; 2 uses
  %i.yx = icmp eq ptr %i.yw, %i.yv
  br i1 %i.yx, label %.critedge135, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263, !prof !154, !llvm.loop !172

bb.da:                                            ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit262
  %i.yy = sub nsw i32 308, %.486770
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.db

bb.db:                                            ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit286, %bb.da
  %i.zc = phi ptr [ %i.vs, %bb.da ], [ %i.aak, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit286 ]
  %i.zd = phi ptr [ %i.vy, %bb.da ], [ %i.aaq, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit286 ] ; 2 uses
  %.sroa.107.18 = phi i32 [ %i.vo, %bb.da ], [ %i.aag, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit286 ] ; 3 uses
  %.179 = phi i32 [ %i.vz, %bb.da ], [ %i.aas, %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit286 ]
  %i.ze = icmp eq ptr %i.zd, %i.zc
  br i1 %i.ze, label %.critedge135, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit277, !prof !39

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit277: ; preds = %bb.db
  %i.zf = load i8, ptr %i.zd, align 1, !tbaa !38  ; 2 uses
  %i.zg = add i8 %i.zf, -48
  %or.cond873 = icmp ult i8 %i.zg, 10
  br i1 %or.cond873, label %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit279, label %.critedge135, !prof !116

_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit279: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit277
  %i.zh = mul nsw i32 %.179, 10
  %i.zi = load ptr, ptr %i.ve, align 8, !tbaa !98
  %i.zj = load ptr, ptr %i.vg, align 8, !tbaa !99 ; 2 uses
  %i.zk = ptrtoint ptr %i.zi to i64               ; 2 uses
  %i.zl = ptrtoint ptr %i.zj to i64               ; 2 uses
  %i.zm = sub i64 %i.zk, %i.zl
  %i.zn = icmp slt i64 %i.zm, 1
  br i1 %i.zn, label %bb.dc, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit160, !prof !39

bb.dc:                                            ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit279
  %i.zo = load ptr, ptr %i.yz, align 8, !tbaa !70 ; 4 uses
  %i.zp = icmp eq ptr %i.zo, null
  br i1 %i.zp, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.zq = load ptr, ptr %0, align 8, !tbaa !110
  %.not.i284 = icmp eq ptr %i.zq, null
  br i1 %.not.i284, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.zr = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #18 ; 2 uses
  store ptr %i.zr, ptr %0, align 8, !tbaa !110
  store ptr %i.zr, ptr %i.za, align 8, !tbaa !71
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.zs = load i64, ptr %i.zb, align 8, !tbaa !60
  br label %bb.dh

bb.dg:                                            ; preds = %bb.dc
  %i.zt = ptrtoint ptr %i.zo to i64               ; 2 uses
  %i.zu = sub i64 %i.zk, %i.zt                    ; 2 uses
  %i.zv = add i64 %i.zu, 1
  %i.zw = lshr i64 %i.zv, 1
  %i.zx = add i64 %i.zw, %i.zu
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pre-phi.i280 = phi i64 [ %i.zt, %bb.dg ], [ 0, %bb.df ]
  %.0.i281 = phi i64 [ %i.zx, %bb.dg ], [ %i.zs, %bb.df ]
  %i.zy = sub i64 %i.zl, %.pre-phi.i280           ; 2 uses
  %i.zz = add i64 %i.zy, 1
  %spec.select.i282 = tail call i64 @llvm.umax.i64(i64 %.0.i281, i64 %i.zz) ; 3 uses
  %i.aaa = icmp eq i64 %spec.select.i282, 0
  br i1 %i.aaa, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  tail call void @free(ptr noundef %i.zo) #17
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit285

bb.dj:                                            ; preds = %bb.dh
  %i.aab = tail call ptr @realloc(ptr noundef %i.zo, i64 noundef %spec.select.i282) #21
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit285

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit285: ; preds = %bb.di, %bb.dj
  %.0.i.i.i283 = phi ptr [ null, %bb.di ], [ %i.aab, %bb.dj ] ; 3 uses
  store ptr %.0.i.i.i283, ptr %i.yz, align 8, !tbaa !70
  %i.aac = getelementptr inbounds nuw i8, ptr %.0.i.i.i283, i64 %i.zy
  %i.aad = getelementptr inbounds nuw i8, ptr %.0.i.i.i283, i64 %spec.select.i282
  store ptr %i.aad, ptr %i.ve, align 8, !tbaa !98
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit160

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit160: ; preds = %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit279, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit285
  %i.aae = phi ptr [ %i.zj, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit279 ], [ %i.aac, %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm.exit285 ] ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 1
  store ptr %i.aaf, ptr %i.vg, align 8, !tbaa !99
  store i8 %i.zf, ptr %i.aae, align 1, !tbaa !38
  %i.aag = add i32 %.sroa.107.18, 1
  %i.aah = load ptr, ptr %1, align 8, !tbaa !86, !nonnull !18, !align !88 ; 3 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !78 ; 4 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !81 ; 2 uses
  %i.aal = icmp eq ptr %i.aai, %i.aak
  br i1 %i.aal, label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit286, label %bb.dk, !prof !39

bb.dk:                                            ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit160
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 1 ; 2 uses
  store ptr %i.aam, ptr %i.aah, align 8, !tbaa !78
  %i.aan = load i8, ptr %i.aai, align 1, !tbaa !38
  %i.aao = sext i8 %i.aan to i32
  %i.aap = add nsw i32 %i.aao, -48
  br label %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit286

_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit286: ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit160, %bb.dk
  %i.aaq = phi ptr [ %i.aam, %bb.dk ], [ %i.aai, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit160 ]
  %i.aar = phi i32 [ %i.aap, %bb.dk ], [ -48, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit160 ]
  %i.aas = add nsw i32 %i.aar, %i.zh              ; 2 uses
  %i.aat = icmp sgt i32 %i.aas, %i.yy
  br i1 %i.aat, label %bb.dl, label %bb.db, !prof !39, !llvm.loop !173

bb.dl:                                            ; preds = %_ZN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4TakeEv.exit286
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 13, ptr %i.aau, align 8, !tbaa !63
  %i.aav = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.g, ptr %i.aav, align 8, !tbaa !66
  br label %bb.dp

.critedge133:                                     ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit158, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit159, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EEEEEbRT_NSC_2ChE.exit, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit259
  %i.aaw = phi ptr [ %i.ur, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit159 ], [ %i.va, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EEEEEbRT_NSC_2ChE.exit ], [ %i.va, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit259 ], [ %i.ty, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit158 ]
  %i.aax = phi ptr [ %i.us, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit159 ], [ %i.uz, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE7ConsumeINS5_12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EEEEEbRT_NSC_2ChE.exit ], [ %i.uz, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit259 ], [ %i.tz, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb1EE4TakeEv.exit158 ]
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !80
  %i.aba = ptrtoint ptr %i.aax to i64
  %i.abb = ptrtoint ptr %i.aaz to i64
  %i.abc = sub i64 %i.aba, %i.abb
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 15, ptr %i.abd, align 8, !tbaa !63
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.abc, ptr %i.abe, align 8, !tbaa !66
  br label %bb.dp

.critedge135:                                     ; preds = %bb.db, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit277, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263, %.critedge137, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit225._crit_edge, %.critedge125, %.critedge130, %bb.co, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit250
  %.sroa.107.19 = phi i32 [ %.sroa.107.15559, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit263 ], [ %.sroa.107.12769, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit250 ], [ %.sroa.107.12.ph, %.critedge130 ], [ %i.vo, %bb.co ], [ %.sroa.107.8.lcssa.ph, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit225._crit_edge ], [ %.sroa.107.7, %.critedge125 ], [ %.sroa.107.17, %.critedge137 ], [ %.sroa.107.18, %_ZNK5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEE4PeekEv.exit277 ], [ %.sroa.107.18, %bb.db ] ; 4 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.abg = load ptr, ptr %i.abf, align 8, !tbaa !98
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !99 ; 2 uses
  %i.abj = ptrtoint ptr %i.abg to i64
  %i.abk = ptrtoint ptr %i.abi to i64
  %i.abl = sub i64 %i.abj, %i.abk
  %i.abm = icmp slt i64 %i.abl, 1
  br i1 %i.abm, label %bb.dm, label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit, !prof !39

bb.dm:                                            ; preds = %.critedge135
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre.i = load ptr, ptr %i.abh, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit

_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit: ; preds = %.critedge135, %bb.dm
  %i.abn = phi ptr [ %i.abi, %.critedge135 ], [ %.pre.i, %bb.dm ] ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 1
  store ptr %i.abo, ptr %i.abh, align 8, !tbaa !99
  store i8 0, ptr %i.abn, align 1, !tbaa !38
  %i.abp = add i32 %.sroa.107.19, 1
  %i.abq = zext i32 %i.abp to i64
  %i.abr = load ptr, ptr %i.abh, align 8, !tbaa !99
  %i.abs = sub nsw i64 0, %i.abq
  %i.abt = getelementptr inbounds i8, ptr %i.abr, i64 %i.abs ; 3 uses
  store ptr %i.abt, ptr %i.abh, align 8, !tbaa !99
  %.not107564 = icmp eq i32 %.sroa.107.19, 0
  br i1 %.not107564, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit, %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit
  %.069567 = phi i32 [ %i.abu, %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit ], [ %.sroa.107.19, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit ]
  %.sroa.0292.0565 = phi ptr [ %i.abv, %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit ], [ %i.abt, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit ] ; 2 uses
  %i.abu = add i32 %.069567, -1                   ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %.sroa.0292.0565, i64 1
  %i.abw = load i8, ptr %.sroa.0292.0565, align 1, !tbaa !38
  %i.abx = load ptr, ptr %i.abf, align 8, !tbaa !98
  %i.aby = load ptr, ptr %i.abh, align 8, !tbaa !99 ; 2 uses
  %i.abz = ptrtoint ptr %i.abx to i64
  %i.aca = ptrtoint ptr %i.aby to i64
  %i.acb = sub i64 %i.abz, %i.aca
  %i.acc = icmp slt i64 %i.acb, 1
  br i1 %i.acc, label %bb.dn, label %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit, !prof !39

bb.dn:                                            ; preds = %.lr.ph
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre612.a = load ptr, ptr %i.abh, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit

_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit: ; preds = %.lr.ph, %bb.dn
  %i.acd = phi ptr [ %i.aby, %.lr.ph ], [ %.pre612.a, %bb.dn ] ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 1
  store ptr %i.ace, ptr %i.abh, align 8, !tbaa !99
  store i8 %i.abw, ptr %i.acd, align 1, !tbaa !38
  %.not107 = icmp eq i32 %i.abu, 0
  br i1 %.not107, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !174

._crit_edge.loopexit:                             ; preds = %_ZN5arrow9rapidjson10TranscoderINS0_4UTF8IcEES3_E9TranscodeINS0_19GenericStringStreamIS3_EENS0_13GenericReaderIS3_S3_NS0_12CrtAllocatorEE11StackStreamIcEEEEbRT_RT0_.exit
  %.pre613.a = load ptr, ptr %i.abh, align 8, !tbaa !99
  %i.acf = add i32 %.sroa.107.19, 1
  %i.acg = zext i32 %i.acf to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit
  %i.ach = phi ptr [ %i.abt, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit ], [ %.pre613.a, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.6.0.lcssa = phi i64 [ 1, %_ZN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE12NumberStreamINS0_18EncodedInputStreamIS3_NS0_12MemoryStreamEEEcLb1ELb0EE3PopEv.exit ], [ %i.acg, %._crit_edge.loopexit ]
  %i.aci = load ptr, ptr %i.abf, align 8, !tbaa !98
  %i.acj = ptrtoint ptr %i.aci to i64
  %i.ack = ptrtoint ptr %i.ach to i64
  %i.acl = sub i64 %i.acj, %i.ack
  %i.acm = icmp slt i64 %i.acl, 1
  br i1 %i.acm, label %bb.do, label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit, !prof !39

bb.do:                                            ; preds = %._crit_edge
  tail call void @_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
  %.pre614 = load ptr, ptr %i.abh, align 8, !tbaa !99
  br label %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit

_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit: ; preds = %._crit_edge, %bb.do
  %i.acn = phi ptr [ %i.ach, %._crit_edge ], [ %.pre614, %bb.do ] ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 1
  store ptr %i.aco, ptr %i.abh, align 8, !tbaa !99
  store i8 0, ptr %i.acn, align 1, !tbaa !38
  %i.acp = load ptr, ptr %i.abh, align 8, !tbaa !99
  %i.acq = sub nsw i64 0, %.sroa.6.0.lcssa
  %i.acr = getelementptr inbounds i8, ptr %i.acp, i64 %i.acq
  store ptr %i.acr, ptr %i.abh, align 8, !tbaa !99
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEE7ReserveIcEEvm.exit, %.critedge133, %bb.dl, %.critedge127, %.critedge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(31) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !175
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !175
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140, !noalias !175, !nonnull !18, !align !88
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(31) %2) #17, !noalias !175
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(31) %2, i64 noundef %i.c)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA31_KcEEvRSoOT_.exit.i unwind label %bb.b, !noalias !175 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA31_KcEEvRSoOT_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow4util13StringBuilderIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA31_KcEEvRSoOT_.exit.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !175
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA31_KcEEvRSoOT_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !175
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !150    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !38
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.d:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !150    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !38
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %common.resume
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow14BoundaryFinderELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !24
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !178
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !178
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
end_hunk_3
begin_hunk_4_@_ZNSt12__shared_ptrIN5arrow14BoundaryFinderELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

declare void @_ZN5arrow7ChunkerC1ESt10shared_ptrINS_14BoundaryFinderEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !15, i64 16}
!8 = !{!"_ZTSN5arrow4json12ParseOptionsE", !9, i64 0, !15, i64 16, !16, i64 17}
!9 = !{!"_ZTSSt10shared_ptrIN5arrow6SchemaEE", !10, i64 0}
!10 = !{!"_ZTSSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0, !13, i64 8}
!11 = !{!"p1 _ZTSN5arrow6SchemaE", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!14 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!15 = !{!"bool", !5, i64 0}
!16 = !{!"_ZTSN5arrow4json23UnexpectedFieldBehaviorE", !5, i64 0}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!20, !4, i64 8}
!20 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZSt11make_sharedIN5arrow4json12_GLOBAL__N_121ParsingBoundaryFinderEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!23 = distinct !{!23, !"_ZSt11make_sharedIN5arrow4json12_GLOBAL__N_121ParsingBoundaryFinderEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!24 = !{!20, !4, i64 12}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !6, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSN5arrow14BoundaryFinderE", !12, i64 0}
!29 = !{!13, !14, i64 0}
!30 = !{!31, !28, i64 0}
!31 = !{!"_ZTSSt12__shared_ptrIN5arrow14BoundaryFinderELN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0, !13, i64 8}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZSt11make_uniqueIN5arrow7ChunkerEJSt10shared_ptrINS0_14BoundaryFinderEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!34 = distinct !{!34, !"_ZSt11make_uniqueIN5arrow7ChunkerEJSt10shared_ptrINS0_14BoundaryFinderEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSN5arrow7ChunkerE", !12, i64 0}
!37 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow14BoundaryFinderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!38 = !{!5, !5, i64 0}
!39 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!40 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow14BoundaryFinderELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = !{!44, !45, i64 8}
!44 = !{!"_ZTSSt9type_info", !45, i64 8}
!45 = !{!"p1 omnipotent char", !12, i64 0}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTSN5arrow4json17MultiStringStreamE", !48, i64 0, !49, i64 8}
!48 = !{!"long", !5, i64 0}
!49 = !{!"_ZTSSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !12, i64 0}
!54 = !{!52, !53, i64 0}
!55 = !{!52, !53, i64 8}
!56 = !{!52, !53, i64 16}
!57 = !{i64 0, i64 8, !58, i64 8, i64 8, !59}
!58 = !{!48, !48, i64 0}
!59 = !{!45, !45, i64 0}
!60 = !{!61, !48, i64 40}
!61 = !{!"_ZTSN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEEE", !62, i64 0, !62, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !48, i64 40}
!62 = !{!"p1 _ZTSN5arrow9rapidjson12CrtAllocatorE", !12, i64 0}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTSN5arrow9rapidjson11ParseResultE", !65, i64 0, !48, i64 8}
!65 = !{!"_ZTSN5arrow9rapidjson14ParseErrorCodeE", !5, i64 0}
!66 = !{!64, !48, i64 8}
!67 = !{!68, !69, i64 64}
!68 = !{!"_ZTSN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEEE", !61, i64 0, !64, i64 48, !69, i64 64}
!69 = !{!"_ZTSN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE21IterativeParsingStateE", !5, i64 0}
!70 = !{!61, !45, i64 16}
!71 = !{!61, !62, i64 8}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSN5arrow6StatusE", !74, i64 0}
!74 = !{!"p1 _ZTSN5arrow6Status5StateE", !12, i64 0}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_ZN5arrow6Status2OKEv: argument 0"}
!77 = distinct !{!77, !"_ZN5arrow6Status2OKEv"}
!78 = !{!79, !45, i64 0}
!79 = !{!"_ZTSN5arrow9rapidjson12MemoryStreamE", !45, i64 0, !45, i64 8, !45, i64 16, !48, i64 24}
!80 = !{!79, !45, i64 8}
!81 = !{!79, !45, i64 16}
!82 = !{!79, !48, i64 24}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 _ZTSN5arrow9rapidjson12MemoryStreamE", !12, i64 0}
!85 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!86 = !{!87, !84, i64 0}
!87 = !{!"_ZTSN5arrow9rapidjson18EncodedInputStreamINS0_4UTF8IcEENS0_12MemoryStreamEEE", !84, i64 0}
!88 = !{i64 8}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN5arrow6Status2OKEv: argument 0"}
!93 = distinct !{!93, !"_ZN5arrow6Status2OKEv"}
!94 = !{!95, !45, i64 8}
!95 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !48, i64 0, !45, i64 8}
!96 = !{!95, !48, i64 0}
!97 = distinct !{!97, !90}
!98 = !{!61, !45, i64 32}
!99 = !{!61, !45, i64 24}
!100 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!101 = !{!65, !65, i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"p1 _ZTSN5arrow9rapidjson8internal5StackINS0_12CrtAllocatorEEE", !12, i64 0}
!104 = !{!105, !4, i64 8}
!105 = !{!"_ZTSN5arrow9rapidjson13GenericReaderINS0_4UTF8IcEES3_NS0_12CrtAllocatorEE11StackStreamIcEE", !103, i64 0, !4, i64 8}
!106 = !{!"branch_weights", i32 2144050251, i32 1717127, i32 1716270}
!107 = !{!105, !103, i64 0}
!108 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!109 = !{!"branch_weights", i32 1073205, i32 2146410443}
!110 = !{!61, !62, i64 0}
!111 = distinct !{!111, !90}
!112 = !{!"branch_weights", i32 127, i32 1}
!113 = !{!"branch_weights", i32 255873, i32 127}
!114 = distinct !{!114, !90}
!115 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!116 = !{!"branch_weights", i32 -100663296, i32 2097152}
!117 = distinct !{!117, !90}
!118 = distinct !{!118, !90}
!119 = distinct !{!119, !90}
!120 = distinct !{!120, !90}
!121 = !{!"branch_weights", i32 2097151, i32 1}
!122 = !{!"branch_weights", i32 -102760447, i32 2097151}
!123 = distinct !{!123, !90}
!124 = !{!"branch_weights", i32 2097152, i32 -100663296}
!125 = !{!"branch_weights", i32 1, i32 0}
!126 = !{!"branch_weights", i32 -2147483648, i32 0}
!127 = distinct !{!127, !90}
!128 = !{!"branch_weights", i32 2002, i32 2000}
!129 = !{!"branch_weights", i32 430355294, i32 1717128354}
!130 = distinct !{!130, !90}
!131 = !{!"branch_weights", i32 1, i32 4000}
!132 = !{!"branch_weights", i32 0, i32 1}
!133 = distinct !{!133, !90}
!134 = distinct !{!134, !90}
!135 = distinct !{!135, !90}
!136 = distinct !{!136, !90}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN5arrow4util13StringBuilderIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!139 = distinct !{!139, !"_ZN5arrow4util13StringBuilderIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!140 = !{!141, !149, i64 8}
!141 = !{!"_ZTSN5arrow4util6detail19StringStreamWrapperE", !142, i64 0, !149, i64 8}
!142 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !143, i64 0}
!143 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !144, i64 0}
!144 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !145, i64 0}
!145 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !146, i64 0}
!146 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !147, i64 0}
!147 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !148, i64 0}
!148 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!149 = !{!"p1 _ZTSSo", !12, i64 0}
!150 = !{!151, !45, i64 0}
!151 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !152, i64 0, !48, i64 8, !5, i64 16}
!152 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !45, i64 0}
!153 = !{!"branch_weights", i32 1, i32 127}
!154 = !{!"branch_weights", i32 127, i32 255873}
!155 = distinct !{!155, !90}
!156 = !{!"branch_weights", i32 2145336702, i32 1073741, i32 1073205}
!157 = !{!"branch_weights", i32 0, i32 -2147483648, i32 0}
!158 = distinct !{!158, !90}
!159 = distinct !{!159, !90}
!160 = !{!"branch_weights", !"expected", i32 1073741, i32 2146409907}
!161 = distinct !{!161, !90}
!162 = distinct !{!162, !90}
!163 = distinct !{!163, !90}
!164 = distinct !{!164, !90}
!165 = distinct !{!165, !90}
!166 = distinct !{!166, !90}
!167 = !{!"branch_weights", i32 1073741825, i32 1073741823}
!168 = !{!"branch_weights", i32 33554432, i32 2113929216}
!169 = distinct !{!169, !90}
!170 = !{!"branch_weights", i32 528883, i32 2146954765}
!171 = distinct !{!171, !90}
!172 = distinct !{!172, !90}
!173 = distinct !{!173, !90}
!174 = distinct !{!174, !90}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZN5arrow4util13StringBuilderIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!177 = distinct !{!177, !"_ZN5arrow4util13StringBuilderIJRA31_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!178 = distinct !{null, null}
end_hunk_4

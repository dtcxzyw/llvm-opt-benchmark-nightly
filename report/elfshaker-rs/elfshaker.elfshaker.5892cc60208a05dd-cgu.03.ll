Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.03?download=true
inline.NumInlined: 416
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCs7BtpbLEd5q3_9elfshaker4main:bb.a
  %.sink190.i.i.i = phi i64 [ 513, %.preheader115.i.i.i ], [ 769, %.lr.ph.i.i.i ]
  %i.adb = load i8, ptr %.sroa.0.3147.lcssa.sink.i.i.i, align 1, !alias.scope !803, !noalias !776, !noundef !9
  %i.adc = add i8 %i.adb, -48
  %i.add = icmp ult i8 %i.adc, 10
  %i.ade = select i1 %i.add, i64 %.sink190.i.i.i, i64 257
  br label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i

.lr.ph143.i.i.i:                                  ; preds = %.preheader118.i.i.i, %bb.ok
  %.sroa.0.2142.i.i.i = phi ptr [ %i.adl, %bb.ok ], [ %i.ack, %.preheader118.i.i.i ] ; 2 uses
  %.sroa.26.2141.i.i.i = phi i64 [ %i.adk, %bb.ok ], [ %i.acl, %.preheader118.i.i.i ]
  %.sroa.086.2140.i.i.i = phi i32 [ %i.adm, %bb.ok ], [ 0, %.preheader118.i.i.i ]
  %i.adf = load i8, ptr %.sroa.0.2142.i.i.i, align 1, !alias.scope !803, !noalias !776, !noundef !9
  %i.adg = zext i8 %i.adf to i32
  %i.adh = add nsw i32 %i.adg, -48                ; 2 uses
  %i.adi = icmp ult i32 %i.adh, 10
  br i1 %i.adi, label %bb.ok, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.ok:                                            ; preds = %.lr.ph143.i.i.i
  %i.adj = mul i32 %.sroa.086.2140.i.i.i, 10
  %i.adk = add nsw i64 %.sroa.26.2141.i.i.i, -1   ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i.i.i, i64 1
  %i.adm = sub i32 %i.adj, %i.adh                 ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.adk, 0
  br i1 %.not105.i.i.i, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i

bb.ol:                                            ; preds = %bb.of, %bb.oe
  %.sroa.26.0.i.i.i = phi i64 [ %i.acj, %bb.of ], [ %i.acf, %bb.oe ] ; 9 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.aci, %bb.of ], [ %i.acd, %bb.oe ] ; 8 uses
  %i.adn = icmp samesign ult i64 %.sroa.26.0.i.i.i, 8
  br i1 %i.adn, label %.preheader.i.i.i, label %.preheader115.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ol
  %.not107148.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not107148.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i

.preheader115.i.i.i:                              ; preds = %bb.ol, %bb.oo
  %.sroa.0.3147.i.i.i = phi ptr [ %i.ado, %bb.oo ], [ %.sroa.0.0.i.i.i, %bb.ol ] ; 3 uses
  %.sroa.26.3146.i.i.i = phi i64 [ %i.adp, %bb.oo ], [ %.sroa.26.0.i.i.i, %bb.ol ]
  %.sroa.086.3145.i.i.i = phi i32 [ %i.adz, %bb.oo ], [ 0, %bb.ol ]
  %i.ado = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i.i.i, i64 1
  %i.adp = add nsw i64 %.sroa.26.3146.i.i.i, -1   ; 2 uses
  %i.adq = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i.i.i, i32 10) ; 2 uses
  %i.adr = extractvalue { i32, i1 } %i.adq, 0
  %i.ads = extractvalue { i32, i1 } %i.adq, 1
  br i1 %i.ads, label %.loopexit114.sink.split.i.i.i, label %bb.om, !prof !254

bb.om:                                            ; preds = %.preheader115.i.i.i
  %i.adt = load i8, ptr %.sroa.0.3147.i.i.i, align 1, !alias.scope !803, !noalias !776, !noundef !9
  %i.adu = zext i8 %i.adt to i32
  %i.adv = add nsw i32 %i.adu, -48                ; 2 uses
  %i.adw = icmp ult i32 %i.adv, 10
  br i1 %i.adw, label %bb.on, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.on:                                            ; preds = %bb.om
  %i.adx = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.adr, i32 %i.adv) ; 2 uses
  %i.ady = extractvalue { i32, i1 } %i.adx, 1
  br i1 %i.ady, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.oo, !prof !254

bb.oo:                                            ; preds = %bb.on
  %i.adz = extractvalue { i32, i1 } %i.adx, 0     ; 2 uses
  %.not106.i.i.i = icmp eq i64 %i.adp, 0
  br i1 %.not106.i.i.i, label %.loopexit.i.i.i, label %.preheader115.i.i.i

.lr.ph152.i.i.i:                                  ; preds = %.preheader.i.i.i
  %i.aea = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !803, !noalias !776, !noundef !9
  %i.aeb = zext i8 %i.aea to i32
  %i.aec = add nsw i32 %i.aeb, -48                ; 3 uses
  %i.aed = icmp ult i32 %i.aec, 10
  br i1 %i.aed, label %bb.op, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.op:                                            ; preds = %.lr.ph152.i.i.i
  %.not107.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 1
  br i1 %.not107.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.1

.lr.ph152.i.i.i.1:                                ; preds = %bb.op
  %i.aee = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %i.aef = load i8, ptr %i.aee, align 1, !alias.scope !803, !noalias !776, !noundef !9
  %i.aeg = zext i8 %i.aef to i32
  %i.aeh = add nsw i32 %i.aeg, -48                ; 2 uses
  %i.aei = icmp ult i32 %i.aeh, 10
  br i1 %i.aei, label %bb.oq, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.oq:                                            ; preds = %.lr.ph152.i.i.i.1
  %i.aej = mul nuw nsw i32 %i.aec, 10
  %i.aek = add nuw nsw i32 %i.aeh, %i.aej         ; 2 uses
  %.not107.i.i.i.1 = icmp eq i64 %.sroa.26.0.i.i.i, 2
  br i1 %.not107.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.2

.lr.ph152.i.i.i.2:                                ; preds = %bb.oq
  %i.ael = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %i.aem = load i8, ptr %i.ael, align 1, !alias.scope !803, !noalias !776, !noundef !9
  %i.aen = zext i8 %i.aem to i32
  %i.aeo = add nsw i32 %i.aen, -48                ; 2 uses
  %i.aep = icmp ult i32 %i.aeo, 10
  br i1 %i.aep, label %bb.or, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.or:                                            ; preds = %.lr.ph152.i.i.i.2
  %i.aeq = mul nuw nsw i32 %i.aek, 10
  %i.aer = add nuw nsw i32 %i.aeo, %i.aeq         ; 2 uses
  %.not107.i.i.i.2 = icmp eq i64 %.sroa.26.0.i.i.i, 3
  br i1 %.not107.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.3

.lr.ph152.i.i.i.3:                                ; preds = %bb.or
  %i.aes = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 3
  %i.aet = load i8, ptr %i.aes, align 1, !alias.scope !803, !noalias !776, !noundef !9
  %i.aeu = zext i8 %i.aet to i32
  %i.aev = add nsw i32 %i.aeu, -48                ; 2 uses
  %i.aew = icmp ult i32 %i.aev, 10
  br i1 %i.aew, label %bb.os, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.os:                                            ; preds = %.lr.ph152.i.i.i.3
  %i.aex = mul nuw nsw i32 %i.aer, 10
  %i.aey = add nuw nsw i32 %i.aev, %i.aex         ; 2 uses
  %.not107.i.i.i.3 = icmp eq i64 %.sroa.26.0.i.i.i, 4
  br i1 %.not107.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.4

.lr.ph152.i.i.i.4:                                ; preds = %bb.os
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %i.afa = load i8, ptr %i.aez, align 1, !alias.scope !803, !noalias !776, !noundef !9
  %i.afb = zext i8 %i.afa to i32
  %i.afc = add nsw i32 %i.afb, -48                ; 2 uses
  %i.afd = icmp ult i32 %i.afc, 10
  br i1 %i.afd, label %bb.ot, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.ot:                                            ; preds = %.lr.ph152.i.i.i.4
  %i.afe = mul i32 %i.aey, 10
  %i.aff = add i32 %i.afc, %i.afe                 ; 2 uses
  %.not107.i.i.i.4 = icmp eq i64 %.sroa.26.0.i.i.i, 5
  br i1 %.not107.i.i.i.4, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.5

.lr.ph152.i.i.i.5:                                ; preds = %bb.ot
  %i.afg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 5
  %i.afh = load i8, ptr %i.afg, align 1, !alias.scope !803, !noalias !776, !noundef !9
  %i.afi = zext i8 %i.afh to i32
  %i.afj = add nsw i32 %i.afi, -48                ; 2 uses
  %i.afk = icmp ult i32 %i.afj, 10
  br i1 %i.afk, label %bb.ou, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.ou:                                            ; preds = %.lr.ph152.i.i.i.5
  %i.afl = mul i32 %i.aff, 10
  %i.afm = add i32 %i.afj, %i.afl                 ; 2 uses
  %.not107.i.i.i.5 = icmp eq i64 %.sroa.26.0.i.i.i, 6
  br i1 %.not107.i.i.i.5, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.6

.lr.ph152.i.i.i.6:                                ; preds = %bb.ou
  %i.afn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %i.afo = load i8, ptr %i.afn, align 1, !alias.scope !803, !noalias !776, !noundef !9
  %i.afp = zext i8 %i.afo to i32
  %i.afq = add nsw i32 %i.afp, -48                ; 2 uses
  %i.afr = icmp ult i32 %i.afq, 10
  br i1 %i.afr, label %bb.ov, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.ov:                                            ; preds = %.lr.ph152.i.i.i.6
  %i.afs = mul i32 %i.afm, 10
  %i.aft = add i32 %i.afq, %i.afs
  br label %.loopexit.i.i.i

bb.ow:                                            ; preds = %bb.ry, %bb.rb
  unreachable

_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %.loopexit114.sink.split.i.i.i, %.loopexit.i.i.i
  %.sroa.12.0.insert.insert.i.i.i = phi i64 [ %i.ade, %.loopexit114.sink.split.i.i.i ], [ %i.aco, %.loopexit.i.i.i ] ; 3 uses
  %.sroa.6198.0.extract.shift.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i, 32
  %.sroa.6198.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6198.0.extract.shift.i.i to i32 ; 5 uses
  %i.afu = trunc i64 %.sroa.12.0.insert.insert.i.i.i to i1
  br i1 %i.afu, label %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i, label %bb.ox

_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i: ; preds = %bb.oi, %bb.oh, %.lr.ph143.i.i.i, %bb.on, %bb.om, %.lr.ph152.i.i.i, %.lr.ph152.i.i.i.1, %.lr.ph152.i.i.i.2, %.lr.ph152.i.i.i.3, %.lr.ph152.i.i.i.4, %.lr.ph152.i.i.i.5, %.lr.ph152.i.i.i.6, %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i, %bb.od, %bb.od, %bb.oc
  %.sroa.12.0.insert.insert.i314.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i, %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i ], [ 1, %bb.oc ], [ 257, %.lr.ph143.i.i.i ], [ 257, %.lr.ph152.i.i.i ], [ 257, %bb.od ], [ 257, %bb.od ], [ 257, %bb.om ], [ 257, %.lr.ph152.i.i.i.6 ], [ 257, %.lr.ph152.i.i.i.5 ], [ 257, %.lr.ph152.i.i.i.4 ], [ 257, %.lr.ph152.i.i.i.3 ], [ 257, %.lr.ph152.i.i.i.2 ], [ 257, %.lr.ph152.i.i.i.1 ], [ 513, %bb.on ], [ 257, %bb.oh ], [ 769, %bb.oi ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !776
  %i.afv = call noundef dereferenceable_or_null(1) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 57) 1, i64 noundef range(i64 1, 9) 1) #26, !noalias !776 ; 3 uses
  %i.afw = icmp eq ptr %i.afv, null
  br i1 %i.afw, label %.invoke.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit243.i.i, !prof !254

.invoke.i.i:                                      ; preds = %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i, %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #28
          to label %.cont.i.i unwind label %.thread307.i.i, !noalias !776

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit243.i.i: ; preds = %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.thread.i.i
  %.sroa.4196.0.extract.shift.i.i = lshr i64 %.sroa.12.0.insert.insert.i314.i.i, 8
  %.sroa.4196.0.extract.trunc.i.i = trunc i64 %.sroa.4196.0.extract.shift.i.i to i8
  store i8 %.sroa.4196.0.extract.trunc.i.i, ptr %i.afv, align 1, !noalias !776
  br label %bb.uu

bb.ox:                                            ; preds = %_RNvMsp_NtCs3oUPovFnLWP_4core3numl27from_ascii_bytes_radix_impl.exit.i.i
  store i32 %.sroa.6198.0.extract.trunc.i.i, ptr %i.bf, align 4, !noalias !794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !794
  invoke void @_RNvCsfwHX9XeyMnn_4zstd23compression_level_range(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.be)
          to label %bb.oy unwind label %.thread307.i.i, !noalias !776

bb.oy:                                            ; preds = %bb.ox
  %i.afx = load i32, ptr %i.be, align 4, !alias.scope !806, !noalias !811, !noundef !9
  %.not.i.i.i = icmp sgt i32 %i.afx, %.sroa.6198.0.extract.trunc.i.i
  br i1 %.not.i.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.afy = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.afz = load i8, ptr %i.afy, align 4, !range !8, !alias.scope !813, !noalias !794, !noundef !9
  %i.aga = trunc nuw i8 %i.afz to i1              ; 2 uses
  %.sroa.3.0.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.aga, i64 0, i64 4
  %.sroa.3.0.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.3.0.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx
  %i.agb = load i32, ptr %.sroa.3.0.idx.i.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 4, !alias.scope !816, !noalias !794, !noundef !9 ; 2 uses
  br i1 %i.aga, label %.split.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.i.i

.split.i.i:                                       ; preds = %bb.oz
  %i.agc = icmp sgt i32 %i.agb, %.sroa.6198.0.extract.trunc.i.i
  br i1 %i.agc, label %bb.pa, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.i.i: ; preds = %bb.oz
  %.not355.i.i = icmp slt i32 %i.agb, %.sroa.6198.0.extract.trunc.i.i
  br i1 %.not355.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i, label %bb.pa

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.i.i, %.split.i.i, %bb.oy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !794
  store ptr %i.be, ptr %i.bc, align 8, !noalias !794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !794
  %i.agd = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store ptr %i.agd, ptr %i.bb, align 8, !noalias !794
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !794
  store ptr %i.bf, ptr %i.ba, align 8, !noalias !794
  %.sroa.4140.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.4140.0..sroa_idx.i.i, align 8, !noalias !794
  %i.age = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bc, ptr %i.age, align 8, !noalias !794
  %.sroa.4144.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRlNtB6_7Display3fmtCs7BtpbLEd5q3_9elfshaker, ptr %.sroa.4144.0..sroa_idx.i.i, align 8, !noalias !794
  %i.agf = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.bb, ptr %i.agf, align 8, !noalias !794
  %.sroa.4148.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRlNtB6_7Display3fmtCs7BtpbLEd5q3_9elfshaker, ptr %.sroa.4148.0..sroa_idx.i.i, align 8, !noalias !794
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noundef nonnull @32, ptr noundef nonnull %i.ba)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i22 unwind label %.thread307.i.i, !noalias !776

bb.pa:                                            ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.i.i, %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !794
  invoke void @_RINvMs0_NtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtCs1xwejQucwHj_5alloc6string6StringECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.wk, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 7)
          to label %bb.pd unwind label %.thread307.i.i, !noalias !776

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i22: ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECs7BtpbLEd5q3_9elfshaker.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !794
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !794
  %i.agg = invoke { ptr, ptr } @_RNvXsg_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB7_3BoxDNtNtCs3oUPovFnLWP_4core5error5ErrorEL_EINtNtBW_7convert4FromNtNtB9_6string6StringE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bd)
          to label %bb.pb unwind label %.thread307.i.i, !noalias !776 ; 2 uses

bb.pb:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs1xwejQucwHj_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7BtpbLEd5q3_9elfshaker.exit.i.i22
  %i.agh = extractvalue { ptr, ptr } %i.agg, 0
  %i.agi = extractvalue { ptr, ptr } %i.agg, 1
  br label %bb.pc

bb.pc:                                            ; preds = %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit242.i.i, %bb.pb
  %.sroa.17.0.i.i = phi ptr [ %i.agi, %bb.pb ], [ @55, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit242.i.i ]
  %.sroa.0.0.i73.i = phi ptr [ %i.agh, %bb.pb ], [ %i.ajk, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtNtCs3oUPovFnLWP_4core3num5error13ParseIntErrorE3newCs7BtpbLEd5q3_9elfshaker.exit242.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !794
  br label %bb.uu

bb.pd:                                            ; preds = %bb.pa
  %i.agj = invoke noundef align 8 ptr @_RINvMNtNtCskfBPnJUU6aB_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs3oUPovFnLWP_4core6option6OptionRNtNtCs1xwejQucwHj_5alloc6string6StringEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.j)
          to label %bb.pe unwind label %.thread307.i.i, !noalias !776 ; 3 uses

bb.pe:                                            ; preds = %bb.pd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !794
  %.not212.i.i = icmp eq ptr %i.agj, null
  br i1 %.not212.i.i, label %.invoke460.i.i, label %bb.pf, !prof !254

bb.pf:                                            ; preds = %bb.pe
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  %i.agl = load ptr, ptr %i.agk, align 8, !noalias !776, !nonnull !9, !noundef !9 ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 16
  %i.agn = load i64, ptr %i.agm, align 8, !noalias !776, !noundef !9 ; 2 uses
  switch i64 %i.agn, label %thread-pre-split.i288.i.i [
    i64 0, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i
    i64 1, label %bb.pg
  ]

bb.pg:                                            ; preds = %bb.pf
  %i.ago = load i8, ptr %i.agl, align 1, !alias.scope !817, !noalias !776, !noundef !9 ; 2 uses
  switch i8 %i.ago, label %bb.ph [
    i8 43, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i
    i8 45, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i
  ]

thread-pre-split.i288.i.i:                        ; preds = %bb.pf
  %.pr.i289.i.i = load i8, ptr %i.agl, align 1, !alias.scope !817, !noalias !776
  br label %bb.ph

bb.ph:                                            ; preds = %thread-pre-split.i288.i.i, %bb.pg
  %i.agp = phi i8 [ %.pr.i289.i.i, %thread-pre-split.i288.i.i ], [ %i.ago, %bb.pg ]
  %cond.i.i.i = icmp eq i8 %i.agp, 43             ; 2 uses
  %i.agq = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.agn, %i.agq  ; 10 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i284.i.i = getelementptr inbounds nuw i8, ptr %i.agl, i64 %.sroa.0.0.idx.i.i.i ; 9 uses
  %i.agr = icmp samesign ult i64 %.sroa.15.0.i.i.i, 9
  br i1 %i.agr, label %.preheader.i286.i.i, label %.preheader60.i.i.i.preheader

.preheader.i286.i.i:                              ; preds = %bb.ph
  %.not5668.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5668.i.i.i, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i

.preheader60.i.i.i:                               ; preds = %bb.pk
  %.not55.i.i.i = icmp eq i64 %i.agv, 0
  br i1 %.not55.i.i.i, label %.loopexit.i285.i.i, label %.preheader60.i.i.i.preheader

.loopexit.i285.i.i:                               ; preds = %.preheader60.i.i.i, %bb.pl, %bb.pm, %bb.pn, %bb.po, %bb.pp, %bb.pq, %bb.pr, %bb.ps, %.preheader.i286.i.i
  %.sroa.045.1.i.i.i = phi i32 [ %i.ajh, %bb.ps ], [ 0, %.preheader.i286.i.i ], [ %i.ahj, %bb.pl ], [ %i.ahr, %bb.pm ], [ %i.ahy, %bb.pn ], [ %i.aif, %bb.po ], [ %i.aim, %bb.pp ], [ %i.ait, %bb.pq ], [ %i.aja, %bb.pr ], [ %i.ahf, %.preheader60.i.i.i ]
  %i.ags = zext i32 %.sroa.045.1.i.i.i to i64
  %i.agt = shl nuw i64 %i.ags, 32
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

.preheader60.i.i.i.preheader:                     ; preds = %bb.ph, %.preheader60.i.i.i
  %.sroa.0.1.i.i.i187 = phi ptr [ %i.agu, %.preheader60.i.i.i ], [ %.sroa.0.0.i284.i.i, %bb.ph ] ; 2 uses
  %.sroa.15.1.i.i.i186 = phi i64 [ %i.agv, %.preheader60.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.ph ]
  %.sroa.045.0.i.i.i185 = phi i32 [ %i.ahf, %.preheader60.i.i.i ], [ 0, %bb.ph ]
  %i.agu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i187, i64 1
  %i.agv = add nsw i64 %.sroa.15.1.i.i.i186, -1   ; 2 uses
  %i.agw = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i.i185, i32 10) ; 2 uses
  %i.agx = extractvalue { i32, i1 } %i.agw, 0     ; 2 uses
  %i.agy = extractvalue { i32, i1 } %i.agw, 1
  %i.agz = load i8, ptr %.sroa.0.1.i.i.i187, align 1, !alias.scope !817, !noalias !776, !noundef !9 ; 2 uses
  br i1 %i.agy, label %bb.pj, label %bb.pi, !prof !254

bb.pi:                                            ; preds = %.preheader60.i.i.i.preheader
  %i.aha = zext i8 %i.agz to i32
  %i.ahb = add nsw i32 %i.aha, -48                ; 2 uses
  %i.ahc = icmp ult i32 %i.ahb, 10
  br i1 %i.ahc, label %bb.pk, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pj:                                            ; preds = %.preheader60.i.i.i.preheader
  %i.ahd = add i8 %i.agz, -48
  %i.ahe = icmp ult i8 %i.ahd, 10
  %spec.select.i.i.i = select i1 %i.ahe, i64 513, i64 257
  br label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.i.i

bb.pk:                                            ; preds = %bb.pi
  %i.ahf = add i32 %i.ahb, %i.agx                 ; 3 uses
  %i.ahg = icmp ult i32 %i.ahf, %i.agx
  br i1 %i.ahg, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i, label %.preheader60.i.i.i, !prof !254

.lr.ph.i287.i.i:                                  ; preds = %.preheader.i286.i.i
  %i.ahh = load i8, ptr %.sroa.0.0.i284.i.i, align 1, !alias.scope !817, !noalias !776, !noundef !9
  %i.ahi = zext i8 %i.ahh to i32
  %i.ahj = add nsw i32 %i.ahi, -48                ; 3 uses
  %i.ahk = icmp ult i32 %i.ahj, 10
  br i1 %i.ahk, label %bb.pl, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pl:                                            ; preds = %.lr.ph.i287.i.i
  %.not56.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 1
  br i1 %.not56.i.i.i, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.1

.lr.ph.i287.i.i.1:                                ; preds = %bb.pl
  %i.ahl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 1
  %i.ahm = load i8, ptr %i.ahl, align 1, !alias.scope !817, !noalias !776, !noundef !9
  %i.ahn = zext i8 %i.ahm to i32
  %i.aho = add nsw i32 %i.ahn, -48                ; 2 uses
  %i.ahp = icmp ult i32 %i.aho, 10
  br i1 %i.ahp, label %bb.pm, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pm:                                            ; preds = %.lr.ph.i287.i.i.1
  %i.ahq = mul nuw nsw i32 %i.ahj, 10
  %i.ahr = add nuw nsw i32 %i.aho, %i.ahq         ; 2 uses
  %.not56.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i, 2
  br i1 %.not56.i.i.i.1, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.2

.lr.ph.i287.i.i.2:                                ; preds = %bb.pm
  %i.ahs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 2
  %i.aht = load i8, ptr %i.ahs, align 1, !alias.scope !817, !noalias !776, !noundef !9
  %i.ahu = zext i8 %i.aht to i32
  %i.ahv = add nsw i32 %i.ahu, -48                ; 2 uses
  %i.ahw = icmp ult i32 %i.ahv, 10
  br i1 %i.ahw, label %bb.pn, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pn:                                            ; preds = %.lr.ph.i287.i.i.2
  %i.ahx = mul nuw nsw i32 %i.ahr, 10
  %i.ahy = add nuw nsw i32 %i.ahv, %i.ahx         ; 2 uses
  %.not56.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i, 3
  br i1 %.not56.i.i.i.2, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.3

.lr.ph.i287.i.i.3:                                ; preds = %bb.pn
  %i.ahz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 3
  %i.aia = load i8, ptr %i.ahz, align 1, !alias.scope !817, !noalias !776, !noundef !9
  %i.aib = zext i8 %i.aia to i32
  %i.aic = add nsw i32 %i.aib, -48                ; 2 uses
  %i.aid = icmp ult i32 %i.aic, 10
  br i1 %i.aid, label %bb.po, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.po:                                            ; preds = %.lr.ph.i287.i.i.3
  %i.aie = mul nuw nsw i32 %i.ahy, 10
  %i.aif = add nuw nsw i32 %i.aic, %i.aie         ; 2 uses
  %.not56.i.i.i.3 = icmp eq i64 %.sroa.15.0.i.i.i, 4
  br i1 %.not56.i.i.i.3, label %.loopexit.i285.i.i, label %.lr.ph.i287.i.i.4

.lr.ph.i287.i.i.4:                                ; preds = %bb.po
  %i.aig = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i284.i.i, i64 4
  %i.aih = load i8, ptr %i.aig, align 1, !alias.scope !817, !noalias !776, !noundef !9
  %i.aii = zext i8 %i.aih to i32
  %i.aij = add nsw i32 %i.aii, -48                ; 2 uses
  %i.aik = icmp ult i32 %i.aij, 10
  br i1 %i.aik, label %bb.pp, label %_RNvMsB_NtCs3oUPovFnLWP_4core3numm27from_ascii_bytes_radix_impl.exit.thread.i.i

bb.pp:                                            ; preds = %.lr.ph.i287.i.i.4
  %i.ail = mul i32 %i.aif, 10
  %i.aim = add i32 %i.aij, %i.ail                 ; 2 uses
end_hunk_0

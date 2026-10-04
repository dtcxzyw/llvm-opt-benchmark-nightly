Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.10?download=true
inline.NumInlined: 190
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCs3f36owOmepS_6quiche6stream8recv_bufNtB2_7RecvBuf5write:bb.a
    #dbg_value(i64 8, !1227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5960)
    #dbg_value(i64 56, !1227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5960)
    #dbg_value(i64 56, !1295, !DIExpression(), !5962)
  %i.cd = icmp eq i64 %.val.i, 0, !dbg !6673
  br i1 %i.cd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit, label %bb.w, !dbg !6673

bb.w:                                             ; preds = %bb.v
  %.val2.i = load ptr, ptr %i.bi, align 8, !dbg !6668, !alias.scope !6429, !nonnull !1030, !noundef !1030
    #dbg_value(i64 %.val.i, !1323, !DIExpression(), !5962)
  %i.ce = mul nuw i64 %.val.i, 56, !dbg !6674
    #dbg_value(ptr %.val2.i, !1204, !DIExpression(), !5963)
    #dbg_value(i64 8, !1205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5963)
    #dbg_value(i64 %i.ce, !1205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5963)
    #dbg_value(ptr poison, !1233, !DIExpression(), !5965)
    #dbg_value(ptr poison, !1240, !DIExpression(), !5967)
    #dbg_value(ptr %.val2.i, !1237, !DIExpression(), !5965)
    #dbg_value(ptr %.val2.i, !1243, !DIExpression(), !5967)
    #dbg_value(ptr %.val2.i, !1246, !DIExpression(), !5969)
    #dbg_value(ptr %.val2.i, !1252, !DIExpression(), !5971)
    #dbg_value(i64 8, !1238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5965)
    #dbg_value(i64 8, !1244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5967)
    #dbg_value(i64 8, !1250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5969)
    #dbg_value(i64 8, !1253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5971)
    #dbg_value(i64 %i.ce, !1238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5965)
    #dbg_value(i64 %i.ce, !1244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5967)
    #dbg_value(i64 %i.ce, !1250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5969)
    #dbg_value(i64 %i.ce, !1253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5971)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !dbg !6675, !noalias !6431
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit, !dbg !6676

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6677
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6433)
  %i.cf = sub nuw i64 %i.bt, %i.by, !dbg !6678
  invoke void @_RNvMNtCs3f36owOmepS_6quiche9range_bufNtB2_8RangeBuf9split_offB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %i.cf)
          to label %bb.aa unwind label %.thread88.loopexit.split-lp, !dbg !6679

bb.y:                                             ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63
  %.pre-phi112 = phi i64 [ %i.by, %bb.r ], [ %.pre111, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63 ], !dbg !6680 ; 2 uses
  %i.cg = phi i64 [ %i.bx, %bb.r ], [ %.pre103, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63 ], !dbg !6681
  %i.ch = phi i64 [ %i.bv, %bb.r ], [ %.pre102, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63 ], !dbg !6682
  %i.ci = phi i64 [ %i.bu, %bb.r ], [ %.pre101, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63 ], !dbg !6683
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6435)
  %i.cj = load i64, ptr %i.ay, align 8, !dbg !6684, !noundef !1030 ; 2 uses
  %i.ck = icmp ult i64 %.pre-phi112, %i.cj, !dbg !6685
  br i1 %i.ck, label %bb.ad, label %bb.ac, !dbg !6685

.thread88.loopexit:                               ; preds = %bb.af, %bb.ao, %bb.as, %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread88

.thread88.loopexit.split-lp:                      ; preds = %bb.x, %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread88

.thread88:                                        ; preds = %.thread88.loopexit.split-lp, %.thread88.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread88.loopexit ], [ %lpad.loopexit.split-lp, %.thread88.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6436), !dbg !6667
    #dbg_value(ptr %i.h, !6347, !DIExpression(), !5977)
  call void @llvm.experimental.noalias.scope.decl(metadata !6437), !dbg !6686
    #dbg_value(ptr %i.h, !6353, !DIExpression(), !5981)
  call void @llvm.experimental.noalias.scope.decl(metadata !6438), !dbg !6687
    #dbg_value(ptr %i.h, !6360, !DIExpression(), !5985)
  call void @llvm.experimental.noalias.scope.decl(metadata !6439), !dbg !6688
    #dbg_value(ptr %i.h, !6365, !DIExpression(), !5989)
    #dbg_value(ptr %i.h, !6367, !DIExpression(), !5991)
    #dbg_value(i64 1, !6376, !DIExpression(), !5993)
    #dbg_value(i8 1, !6378, !DIExpression(), !5993)
    #dbg_value(i64 1, !6380, !DIExpression(), !5995)
    #dbg_value(i8 1, !6382, !DIExpression(), !5995)
  %i.cl = load ptr, ptr %i.h, align 8, !dbg !6689, !alias.scope !6440, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.cl, !6377, !DIExpression(), !5997)
    #dbg_value(ptr %i.cl, !6381, !DIExpression(), !5995)
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !dbg !6690, !noalias !6440
  %i.cn = icmp eq i64 %i.cm, 1, !dbg !6691
  br i1 %i.cn, label %bb.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67, !dbg !6691

bb.z:                                             ; preds = %bb.aw
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67, !dbg !6667

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !6441), !dbg !6692
    #dbg_value(ptr %i.h, !6347, !DIExpression(), !6001)
  call void @llvm.experimental.noalias.scope.decl(metadata !6442), !dbg !6693
    #dbg_value(ptr %i.h, !6353, !DIExpression(), !6005)
  call void @llvm.experimental.noalias.scope.decl(metadata !6443), !dbg !6694
    #dbg_value(ptr %i.h, !6360, !DIExpression(), !6009)
  call void @llvm.experimental.noalias.scope.decl(metadata !6444), !dbg !6695
    #dbg_value(ptr %i.h, !6365, !DIExpression(), !6013)
    #dbg_value(ptr %i.h, !6367, !DIExpression(), !6015)
    #dbg_value(i64 1, !6376, !DIExpression(), !6017)
    #dbg_value(i8 1, !6378, !DIExpression(), !6017)
    #dbg_value(i64 1, !6380, !DIExpression(), !6019)
    #dbg_value(i8 1, !6382, !DIExpression(), !6019)
  %i.co = load ptr, ptr %i.h, align 8, !dbg !6696, !alias.scope !6445, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.co, !6377, !DIExpression(), !6021)
    #dbg_value(ptr %i.co, !6381, !DIExpression(), !6019)
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !dbg !6697, !noalias !6445
  %i.cq = icmp eq i64 %i.cp, 1, !dbg !6698
  br i1 %i.cq, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63, !dbg !6698

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(i8 2, !2135, !DIExpression(), !6023)
  fence acquire, !dbg !6699
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6700
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63, !dbg !6700

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63: ; preds = %bb.ab, %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !6692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6701
  %.pre101 = load i64, ptr %i.bl, align 8, !dbg !6683 ; 2 uses
  %.pre102 = load i64, ptr %i.bm, align 8, !dbg !6682 ; 2 uses
  %.pre103 = load i64, ptr %i.bn, align 8, !dbg !6681 ; 2 uses
  %.pre110 = sub i64 %.pre101, %.pre102, !dbg !6680
  %.pre111 = add i64 %.pre110, %.pre103, !dbg !6680
  br label %bb.y, !dbg !6702

bb.ac:                                            ; preds = %bb.y
    #dbg_value(ptr %i.h, !6391, !DIExpression(), !6447)
    #dbg_value(ptr %i.h, !6302, !DIExpression(), !6450)
  %i.cr = load i64, ptr %i.bo, align 8, !dbg !6703, !noundef !1030 ; 2 uses
  %.neg45 = sub i64 %i.ch, %i.cg, !dbg !6704
  %i.cs = sub i64 0, %i.cr, !dbg !6705
  %i.ct = icmp eq i64 %.neg45, %i.cs, !dbg !6705
  br i1 %i.ct, label %bb.ad, label %bb.av, !dbg !6706

bb.ad:                                            ; preds = %bb.y, %bb.ac
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6452)
  invoke void @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE5rangeyINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromyEEB1d_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp, i64 noundef %.pre-phi112)
          to label %bb.ae unwind label %.thread88.loopexit.split-lp, !dbg !6707

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !dbg !6708
  br label %bb.af, !dbg !6709

bb.af:                                            ; preds = %.backedge136, %bb.ae
    #dbg_value(ptr %i.e, !6455, !DIExpression(), !6471)
    #dbg_value(ptr %i.e, !6474, !DIExpression(), !6480)
  %i.cu = invoke { ptr, ptr } @_RINvMs3_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRyRB1G_EEB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.ag unwind label %.thread88.loopexit, !dbg !6710 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.cv = extractvalue { ptr, ptr } %i.cu, 0, !dbg !6711
  %i.cw = extractvalue { ptr, ptr } %i.cu, 1, !dbg !6711 ; 5 uses
  %.not46 = icmp eq ptr %i.cv, null, !dbg !6256
  %.pre108.pre = load i64, ptr %i.bl, align 8, !dbg !6712 ; 3 uses
  %.pre109.pre = load i64, ptr %i.bo, align 8, !dbg !6713 ; 2 uses
  br i1 %.not46, label %bb.ai, label %bb.ah, !dbg !6256

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
    #dbg_value(ptr %i.cw, !6184, !DIExpression(), !6485)
    #dbg_value(ptr %i.cw, !6298, !DIExpression(), !6487)
    #dbg_value(ptr %i.cw, !6298, !DIExpression(), !6489)
    #dbg_value(ptr %i.cw, !6293, !DIExpression(), !6491)
    #dbg_value(ptr %i.cw, !6298, !DIExpression(), !6494)
    #dbg_value(ptr %i.cw, !6302, !DIExpression(), !6496)
    #dbg_value(ptr %i.cw, !6298, !DIExpression(), !6498)
    #dbg_value(ptr %i.cw, !6293, !DIExpression(), !6500)
    #dbg_value(ptr %i.cw, !6298, !DIExpression(), !6503)
    #dbg_value(ptr %i.cw, !6302, !DIExpression(), !6505)
    #dbg_value(ptr %i.cw, !6293, !DIExpression(), !6507)
    #dbg_value(ptr %i.cw, !6298, !DIExpression(), !6510)
    #dbg_value(ptr %i.cw, !6302, !DIExpression(), !6512)
    #dbg_value(ptr %i.cw, !6298, !DIExpression(), !6514)
    #dbg_value(ptr %i.cw, !6298, !DIExpression(), !6516)
    #dbg_value(ptr %i.cw, !6298, !DIExpression(), !6518)
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6520)
  %i.cx = load i64, ptr %i.bm, align 8, !dbg !6714, !noundef !1030
  %i.cy = sub i64 %.pre108.pre, %i.cx, !dbg !6715
  %i.cz = load i64, ptr %i.bn, align 8, !dbg !6716, !noundef !1030
  %i.da = add i64 %i.cy, %i.cz, !dbg !6715        ; 5 uses
    #dbg_value(i64 %i.da, !6185, !DIExpression(), !6521)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 40, !dbg !6717 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !dbg !6717, !noundef !1030 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16, !dbg !6718 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !dbg !6718, !noundef !1030 ; 3 uses
  %i.df = sub i64 %i.dc, %i.de, !dbg !6719
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 24, !dbg !6720 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !6720, !noundef !1030 ; 3 uses
  %i.di = add i64 %i.df, %i.dh, !dbg !6719        ; 4 uses
    #dbg_value(ptr %i.h, !6293, !DIExpression(), !6523)
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6526)
    #dbg_value(ptr %i.h, !6302, !DIExpression(), !6528)
  %i.dj = add i64 %.pre109.pre, %.pre108.pre, !dbg !6721 ; 2 uses
  %i.dk = icmp ugt i64 %i.di, %i.dj, !dbg !6722
  br i1 %i.dk, label %bb.ai, label %bb.aj, !dbg !6722

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6723
  %.pre107 = load i64, ptr %i.ay, align 8, !dbg !6724
  br label %bb.av, !dbg !6725

bb.aj:                                            ; preds = %bb.ah
  %.not48 = icmp ult i64 %i.da, %i.di, !dbg !6726
  br i1 %.not48, label %bb.ar, label %bb.ak, !dbg !6726

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(ptr %i.h, !6293, !DIExpression(), !6530)
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6533)
    #dbg_value(ptr %i.h, !6302, !DIExpression(), !6535)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 32, !dbg !6727
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !6727, !noundef !1030
  %i.dn = add i64 %i.dm, %i.dc, !dbg !6728        ; 3 uses
  %.not50 = icmp ugt i64 %i.dj, %i.dn, !dbg !6729
  br i1 %.not50, label %bb.an, label %bb.al, !dbg !6729

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6723
  call void @llvm.experimental.noalias.scope.decl(metadata !6536), !dbg !6667
    #dbg_value(ptr %i.h, !6347, !DIExpression(), !6033)
  call void @llvm.experimental.noalias.scope.decl(metadata !6537), !dbg !6730
    #dbg_value(ptr %i.h, !6353, !DIExpression(), !6037)
  call void @llvm.experimental.noalias.scope.decl(metadata !6538), !dbg !6731
    #dbg_value(ptr %i.h, !6360, !DIExpression(), !6041)
  call void @llvm.experimental.noalias.scope.decl(metadata !6539), !dbg !6732
    #dbg_value(ptr %i.h, !6365, !DIExpression(), !6045)
    #dbg_value(ptr %i.h, !6367, !DIExpression(), !6047)
    #dbg_value(i64 1, !6376, !DIExpression(), !6049)
    #dbg_value(i8 1, !6378, !DIExpression(), !6049)
    #dbg_value(i64 1, !6380, !DIExpression(), !6051)
    #dbg_value(i8 1, !6382, !DIExpression(), !6051)
  %i.do = load ptr, ptr %i.h, align 8, !dbg !6733, !alias.scope !6540, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.do, !6377, !DIExpression(), !6053)
    #dbg_value(ptr %i.do, !6381, !DIExpression(), !6051)
  %i.dp = atomicrmw sub ptr %i.do, i64 1 release, align 8, !dbg !6734, !noalias !6540
  %i.dq = icmp eq i64 %i.dp, 1, !dbg !6735
  br i1 %i.dq, label %bb.am, label %.backedge, !dbg !6735

bb.am:                                            ; preds = %bb.al
    #dbg_value(i8 2, !2135, !DIExpression(), !6055)
  fence acquire, !dbg !6736
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6737
  br label %.backedge, !dbg !6737

bb.an:                                            ; preds = %bb.ak
  %i.dr = icmp ult i64 %i.da, %i.dn, !dbg !6738
  br i1 %i.dr, label %bb.ao, label %.thread91, !dbg !6738

.thread91:                                        ; preds = %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65
  %.pre-phi116 = phi i64 [ %.pre115, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], [ %i.di, %bb.an ], !dbg !6739 ; 2 uses
  %2 = phi i64 [ %.pre106, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], [ %i.dh, %bb.an ], !dbg !6740
  %3 = phi i64 [ %.pre105, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], [ %i.de, %bb.an ], !dbg !6741
  %4 = phi i64 [ %.pre104, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], [ %i.dc, %bb.an ], !dbg !6742
  %i.ds = icmp ult i64 %i.da, %.pre-phi116, !dbg !6743
  br i1 %i.ds, label %bb.ar, label %.backedge136, !dbg !6743

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6744
  %i.dt = sub nuw i64 %i.dn, %i.da, !dbg !6745
  invoke void @_RNvMNtCs3f36owOmepS_6quiche9range_bufNtB2_8RangeBuf9split_offB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %i.dt)
          to label %bb.ap unwind label %.thread88.loopexit, !dbg !6746

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !6541), !dbg !6747
    #dbg_value(ptr %i.h, !6347, !DIExpression(), !6059)
  call void @llvm.experimental.noalias.scope.decl(metadata !6542), !dbg !6748
    #dbg_value(ptr %i.h, !6353, !DIExpression(), !6063)
  call void @llvm.experimental.noalias.scope.decl(metadata !6543), !dbg !6749
    #dbg_value(ptr %i.h, !6360, !DIExpression(), !6067)
  call void @llvm.experimental.noalias.scope.decl(metadata !6544), !dbg !6750
    #dbg_value(ptr %i.h, !6365, !DIExpression(), !6071)
    #dbg_value(ptr %i.h, !6367, !DIExpression(), !6073)
    #dbg_value(i64 1, !6376, !DIExpression(), !6075)
    #dbg_value(i8 1, !6378, !DIExpression(), !6075)
    #dbg_value(i64 1, !6380, !DIExpression(), !6077)
    #dbg_value(i8 1, !6382, !DIExpression(), !6077)
  %i.du = load ptr, ptr %i.h, align 8, !dbg !6751, !alias.scope !6545, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.du, !6377, !DIExpression(), !6079)
    #dbg_value(ptr %i.du, !6381, !DIExpression(), !6077)
  %i.dv = atomicrmw sub ptr %i.du, i64 1 release, align 8, !dbg !6752, !noalias !6545
  %i.dw = icmp eq i64 %i.dv, 1, !dbg !6753
  br i1 %i.dw, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65, !dbg !6753

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(i8 2, !2135, !DIExpression(), !6081)
  fence acquire, !dbg !6754
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6755
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65, !dbg !6755

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65: ; preds = %bb.aq, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !6747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6756
  %.pre104 = load i64, ptr %i.db, align 8, !dbg !6742 ; 2 uses
  %.pre105 = load i64, ptr %i.dd, align 8, !dbg !6741 ; 2 uses
  %.pre106 = load i64, ptr %i.dg, align 8, !dbg !6740 ; 2 uses
  %.pre113 = sub i64 %.pre104, %.pre105, !dbg !6739
  %.pre115 = add i64 %.pre113, %.pre106, !dbg !6739
  br label %.thread91, !dbg !6757

bb.ar:                                            ; preds = %bb.aj, %.thread91
  %5 = phi i64 [ %4, %.thread91 ], [ %i.dc, %bb.aj ]
  %6 = phi i64 [ %3, %.thread91 ], [ %i.de, %bb.aj ]
  %7 = phi i64 [ %2, %.thread91 ], [ %i.dh, %bb.aj ]
  %.pre-phi116132 = phi i64 [ %.pre-phi116, %.thread91 ], [ %i.di, %bb.aj ]
    #dbg_value(ptr %i.h, !6293, !DIExpression(), !6547)
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6550)
    #dbg_value(ptr %i.h, !6302, !DIExpression(), !6552)
  %i.dx = load i64, ptr %i.bl, align 8, !dbg !6758, !noundef !1030
  %i.dy = load i64, ptr %i.bo, align 8, !dbg !6759, !noundef !1030
  %i.dz = add i64 %i.dy, %i.dx, !dbg !6760
  %i.ea = icmp ugt i64 %i.dz, %.pre-phi116132, !dbg !6761
  br i1 %i.ea, label %bb.as, label %.backedge136, !dbg !6761

.backedge136:                                     ; preds = %bb.ar, %.thread91, %bb.au
  br label %bb.af, !dbg !6710

bb.as:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.k, !6251, !DIExpression(), !6553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6762
  %i.eb = add i64 %i.da, %6, !dbg !6763
  %i.ec = sub i64 %5, %i.eb, !dbg !6763
  %i.ed = add i64 %i.ec, %7, !dbg !6763
  invoke void @_RNvMNtCs3f36owOmepS_6quiche9range_bufNtB2_8RangeBuf9split_offB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %i.ed)
          to label %bb.at unwind label %.thread88.loopexit, !dbg !6764

bb.at:                                            ; preds = %bb.as
  %i.ee = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE13push_back_mutB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.au unwind label %.thread88.loopexit, !dbg !6765 ; 0 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6766
  br label %.backedge136, !dbg !6767

.backedge:                                        ; preds = %bb.al, %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !6667
  br label %bb.p, !dbg !6658

bb.av:                                            ; preds = %bb.ac, %bb.ai
  %i.ef = phi i64 [ %i.cr, %bb.ac ], [ %.pre109.pre, %bb.ai ], !dbg !6713
  %i.eg = phi i64 [ %i.ci, %bb.ac ], [ %.pre108.pre, %bb.ai ], !dbg !6712
  %i.eh = phi i64 [ %i.cj, %bb.ac ], [ %.pre107, %bb.ai ], !dbg !6724
    #dbg_value(i64 %i.eh, !6554, !DIExpression(), !6558)
    #dbg_value(ptr %i.h, !6293, !DIExpression(), !6559)
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6560)
    #dbg_value(ptr %i.h, !6302, !DIExpression(), !6561)
  %i.ei = add i64 %i.ef, %i.eg, !dbg !6768        ; 2 uses
    #dbg_value(i64 %i.ei, !6555, !DIExpression(), !6558)
    #dbg_value(ptr undef, !6562, !DIExpression(DW_OP_deref), !6085)
    #dbg_value(ptr undef, !6563, !DIExpression(DW_OP_deref), !6085)
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.ei, i64 %i.eh), !dbg !6769 ; 2 uses
  store i64 %..i, ptr %i.ay, align 8, !dbg !6770
  %i.ej = load i8, ptr %i.bq, align 8, !dbg !6771, !range !2117, !noundef !1030
  %i.ek = trunc nuw i8 %i.ej to i1, !dbg !6771
  br i1 %i.ek, label %bb.ax, label %bb.aw, !dbg !6771

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6772
    #dbg_value(ptr %i.h, !6293, !DIExpression(), !6568)
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6571)
    #dbg_value(ptr %i.h, !6302, !DIExpression(), !6573)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !6773
  invoke void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE6insertB1c_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.ei, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.az unwind label %bb.z, !dbg !6774

bb.ax:                                            ; preds = %bb.av
  store i64 %..i, ptr %i.az, align 8, !dbg !6775
  call void @llvm.experimental.noalias.scope.decl(metadata !6574), !dbg !6667
    #dbg_value(ptr %i.h, !6347, !DIExpression(), !6089)
  call void @llvm.experimental.noalias.scope.decl(metadata !6575), !dbg !6776
    #dbg_value(ptr %i.h, !6353, !DIExpression(), !6093)
  call void @llvm.experimental.noalias.scope.decl(metadata !6576), !dbg !6777
    #dbg_value(ptr %i.h, !6360, !DIExpression(), !6097)
  call void @llvm.experimental.noalias.scope.decl(metadata !6577), !dbg !6778
    #dbg_value(ptr %i.h, !6365, !DIExpression(), !6101)
    #dbg_value(ptr %i.h, !6367, !DIExpression(), !6103)
    #dbg_value(i64 1, !6376, !DIExpression(), !6105)
    #dbg_value(i8 1, !6378, !DIExpression(), !6105)
    #dbg_value(i64 1, !6380, !DIExpression(), !6107)
    #dbg_value(i8 1, !6382, !DIExpression(), !6107)
  %i.el = load ptr, ptr %i.h, align 8, !dbg !6779, !alias.scope !6578, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.el, !6377, !DIExpression(), !6109)
    #dbg_value(ptr %i.el, !6381, !DIExpression(), !6107)
  %i.em = atomicrmw sub ptr %i.el, i64 1 release, align 8, !dbg !6780, !noalias !6578
  %i.en = icmp eq i64 %i.em, 1, !dbg !6781
  br i1 %i.en, label %bb.ay, label %.backedge, !dbg !6781

bb.ay:                                            ; preds = %bb.ax
    #dbg_value(i8 2, !2135, !DIExpression(), !6111)
  fence acquire, !dbg !6782
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6783
  br label %.backedge, !dbg !6783

bb.az:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6784
  call void @llvm.experimental.noalias.scope.decl(metadata !6579), !dbg !6785
    #dbg_value(ptr %i.b, !6581, !DIExpression(), !6120)
  %i.eo = load i8, ptr %i.br, align 8, !dbg !6786, !range !2219, !alias.scope !6579, !noundef !1030
  %i.ep = icmp eq i8 %i.eo, 2, !dbg !6786
  br i1 %i.ep, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, label %bb.ba, !dbg !6786

bb.ba:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !6594), !dbg !6786
    #dbg_value(ptr %i.b, !6347, !DIExpression(), !6124)
  call void @llvm.experimental.noalias.scope.decl(metadata !6595), !dbg !6787
    #dbg_value(ptr %i.b, !6353, !DIExpression(), !6128)
  call void @llvm.experimental.noalias.scope.decl(metadata !6596), !dbg !6788
    #dbg_value(ptr %i.b, !6360, !DIExpression(), !6132)
  call void @llvm.experimental.noalias.scope.decl(metadata !6597), !dbg !6789
    #dbg_value(ptr %i.b, !6365, !DIExpression(), !6136)
    #dbg_value(ptr %i.b, !6367, !DIExpression(), !6138)
    #dbg_value(i64 1, !6376, !DIExpression(), !6140)
    #dbg_value(i8 1, !6378, !DIExpression(), !6140)
    #dbg_value(i64 1, !6380, !DIExpression(), !6142)
    #dbg_value(i8 1, !6382, !DIExpression(), !6142)
  %i.eq = load ptr, ptr %i.b, align 8, !dbg !6790, !alias.scope !6598, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.eq, !6377, !DIExpression(), !6144)
    #dbg_value(ptr %i.eq, !6381, !DIExpression(), !6142)
  %i.er = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !dbg !6791, !noalias !6598
  %i.es = icmp eq i64 %i.er, 1, !dbg !6792
  br i1 %i.es, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, !dbg !6792

bb.bb:                                            ; preds = %bb.ba
    #dbg_value(i8 2, !2135, !DIExpression(), !6146)
  fence acquire, !dbg !6793
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.b) #30, !dbg !6794
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, !dbg !6794

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit: ; preds = %bb.bb, %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6785
  br label %.backedge, !dbg !6667

bb.bc:                                            ; preds = %.thread88
    #dbg_value(i8 2, !2135, !DIExpression(), !6148)
  fence acquire, !dbg !6795
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6796
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67, !dbg !6796

bb.bd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !6797
  unreachable, !dbg !6797

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !6619
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit, !dbg !6619

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit: ; preds = %bb.g, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit
  %.sroa.0.1 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit ], [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.g ], !dbg !6228
  %i.eu = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !6798
  %i.ev = insertvalue { i64, i64 } %i.eu, i64 undef, 1, !dbg !6798
  ret { i64, i64 } %i.ev, !dbg !6798

bb.be:                                            ; preds = %bb.m
  unreachable

.thread70:                                        ; preds = %bb.bg, %bb.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67, %bb.u, %bb.t
  %.pn6073 = phi { ptr, i32 } [ %i.ca, %bb.u ], [ %.pn58, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67 ], [ %i.ca, %bb.t ], [ %i.ew, %bb.bf ], [ %i.ew, %bb.bg ]
  resume { ptr, i32 } %.pn6073, !dbg !6797

bb.bf:                                            ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6599), !dbg !6619
    #dbg_value(ptr %1, !6347, !DIExpression(), !6152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6600), !dbg !6799
    #dbg_value(ptr %1, !6353, !DIExpression(), !6156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6601), !dbg !6800
    #dbg_value(ptr %1, !6360, !DIExpression(), !6160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6602), !dbg !6801
    #dbg_value(ptr %1, !6365, !DIExpression(), !6164)
    #dbg_value(ptr %1, !6367, !DIExpression(), !6166)
    #dbg_value(i64 1, !6376, !DIExpression(), !6168)
    #dbg_value(i8 1, !6378, !DIExpression(), !6168)
    #dbg_value(i64 1, !6380, !DIExpression(), !6170)
    #dbg_value(i8 1, !6382, !DIExpression(), !6170)
  %i.ex = load ptr, ptr %1, align 8, !dbg !6802, !alias.scope !6603, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.ex, !6377, !DIExpression(), !6172)
    #dbg_value(ptr %i.ex, !6381, !DIExpression(), !6170)
  %i.ey = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !dbg !6803, !noalias !6603
  %i.ez = icmp eq i64 %i.ey, 1, !dbg !6804
  br i1 %i.ez, label %bb.bg, label %.thread70, !dbg !6804

bb.bg:                                            ; preds = %bb.bf
    #dbg_value(i8 2, !2135, !DIExpression(), !6174)
  fence acquire, !dbg !6805
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %1) #30, !dbg !6806
  br label %.thread70, !dbg !6806
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs3f36owOmepS_6quiche6stream8recv_bufNtB2_7RecvBuf8shutdown(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(128) %1) unnamed_addr #0 !dbg !6812 {
bb.a:
    #dbg_value(ptr %1, !6827, !DIExpression(), !6830)
    #dbg_value(ptr %1, !6831, !DIExpression(), !6834)
    #dbg_value(ptr %1, !6831, !DIExpression(), !6836)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !6838 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !6838, !range !2117, !noundef !1030
  %i.c = trunc nuw i8 %i.b to i1, !dbg !6838
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !6838

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !dbg !6839
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !6840
  tail call void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE5clearB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !6841
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !6842
  %i.f = load i64, ptr %i.e, align 8, !dbg !6842, !noundef !1030 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !6843 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !6843, !noundef !1030
  %i.i = sub i64 %i.f, %i.h, !dbg !6844
    #dbg_value(i64 %i.i, !6828, !DIExpression(), !6837)
  store i64 %i.f, ptr %i.g, align 8, !dbg !6845
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6846
  store i64 %i.i, ptr %i.j, align 8, !dbg !6846
  br label %bb.c, !dbg !6847

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ -1, %bb.b ], [ 0, %bb.a ], !dbg !6830
  store i64 %storemerge, ptr %0, align 8, !dbg !6830
  ret void, !dbg !6847
end_hunk_0

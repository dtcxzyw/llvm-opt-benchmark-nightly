Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.10?download=true
inline.NumInlined: 190
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCs3f36owOmepS_6quiche6stream8recv_bufNtB2_7RecvBuf5write:bb.a
    #dbg_value(ptr %.val4.i, !1246, !DIExpression(), !5948)
    #dbg_value(ptr %.val4.i, !1252, !DIExpression(), !5950)
    #dbg_value(i64 8, !1238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5944)
    #dbg_value(i64 8, !1244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5946)
    #dbg_value(i64 8, !1250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5948)
    #dbg_value(i64 8, !1253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5950)
    #dbg_value(i64 %i.cc, !1238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5944)
    #dbg_value(i64 %i.cc, !1244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5946)
    #dbg_value(i64 %i.cc, !1250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5948)
    #dbg_value(i64 %i.cc, !1253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5950)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !dbg !6671, !noalias !6430
  br label %.thread70, !dbg !6672

bb.v:                                             ; preds = %bb.s
  %.val.i = load i64, ptr %i.k, align 8, !dbg !6668, !range !1179, !alias.scope !6428, !noundef !1030 ; 2 uses
    #dbg_value(ptr poison, !1381, !DIExpression(), !5954)
    #dbg_value(ptr poison, !1387, !DIExpression(), !5956)
    #dbg_value(ptr poison, !1193, !DIExpression(), !5958)
    #dbg_value(i64 8, !1203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5958)
    #dbg_value(i64 56, !1203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5958)
    #dbg_value(ptr poison, !1210, !DIExpression(), !5960)
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
  %i.dc = load i64, ptr %i.db, align 8, !dbg !6717, !noundef !1030 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16, !dbg !6718 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !dbg !6718, !noundef !1030
  %i.df = sub i64 %i.dc, %i.de, !dbg !6719        ; 3 uses
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
  br i1 %.not48, label %.thread91, label %bb.ak, !dbg !6726

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

.thread91:                                        ; preds = %bb.aj, %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65
  %i.ds = phi i64 [ %i.di, %bb.aj ], [ %i.di, %bb.an ], [ %.pre115, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], !dbg !6739 ; 2 uses
  %i.dt = phi i64 [ %i.df, %bb.aj ], [ %i.df, %bb.an ], [ %.pre113, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], !dbg !6739
  %i.du = phi i64 [ %i.dh, %bb.aj ], [ %i.dh, %bb.an ], [ %.pre106, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], !dbg !6740
  %i.dv = icmp ult i64 %i.da, %i.ds, !dbg !6741
  br i1 %i.dv, label %bb.ar, label %.backedge136, !dbg !6741

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6742
  %i.dw = sub nuw i64 %i.dn, %i.da, !dbg !6743
  invoke void @_RNvMNtCs3f36owOmepS_6quiche9range_bufNtB2_8RangeBuf9split_offB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %i.dw)
          to label %bb.ap unwind label %.thread88.loopexit, !dbg !6744

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !6541), !dbg !6745
    #dbg_value(ptr %i.h, !6347, !DIExpression(), !6059)
  call void @llvm.experimental.noalias.scope.decl(metadata !6542), !dbg !6746
    #dbg_value(ptr %i.h, !6353, !DIExpression(), !6063)
  call void @llvm.experimental.noalias.scope.decl(metadata !6543), !dbg !6747
    #dbg_value(ptr %i.h, !6360, !DIExpression(), !6067)
  call void @llvm.experimental.noalias.scope.decl(metadata !6544), !dbg !6748
    #dbg_value(ptr %i.h, !6365, !DIExpression(), !6071)
    #dbg_value(ptr %i.h, !6367, !DIExpression(), !6073)
    #dbg_value(i64 1, !6376, !DIExpression(), !6075)
    #dbg_value(i8 1, !6378, !DIExpression(), !6075)
    #dbg_value(i64 1, !6380, !DIExpression(), !6077)
    #dbg_value(i8 1, !6382, !DIExpression(), !6077)
  %i.dx = load ptr, ptr %i.h, align 8, !dbg !6749, !alias.scope !6545, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.dx, !6377, !DIExpression(), !6079)
    #dbg_value(ptr %i.dx, !6381, !DIExpression(), !6077)
  %i.dy = atomicrmw sub ptr %i.dx, i64 1 release, align 8, !dbg !6750, !noalias !6545
  %i.dz = icmp eq i64 %i.dy, 1, !dbg !6751
  br i1 %i.dz, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65, !dbg !6751

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(i8 2, !2135, !DIExpression(), !6081)
  fence acquire, !dbg !6752
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6753
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65, !dbg !6753

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65: ; preds = %bb.aq, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !6745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6754
  %.pre104 = load i64, ptr %i.db, align 8, !dbg !6755
  %.pre105 = load i64, ptr %i.dd, align 8, !dbg !6756
  %.pre106 = load i64, ptr %i.dg, align 8, !dbg !6740 ; 2 uses
  %.pre113 = sub i64 %.pre104, %.pre105, !dbg !6739 ; 2 uses
  %.pre115 = add i64 %.pre113, %.pre106, !dbg !6739
  br label %.thread91, !dbg !6757

bb.ar:                                            ; preds = %.thread91
    #dbg_value(ptr %i.h, !6293, !DIExpression(), !6547)
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6550)
    #dbg_value(ptr %i.h, !6302, !DIExpression(), !6552)
  %i.ea = load i64, ptr %i.bl, align 8, !dbg !6758, !noundef !1030
  %i.eb = load i64, ptr %i.bo, align 8, !dbg !6759, !noundef !1030
  %i.ec = add i64 %i.eb, %i.ea, !dbg !6760
  %i.ed = icmp ugt i64 %i.ec, %i.ds, !dbg !6761
  br i1 %i.ed, label %bb.as, label %.backedge136, !dbg !6761

.backedge136:                                     ; preds = %bb.ar, %.thread91, %bb.au
  br label %bb.af, !dbg !6710

bb.as:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.k, !6251, !DIExpression(), !6553)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6762
  %i.ee = sub i64 %i.dt, %i.da, !dbg !6763
  %i.ef = add i64 %i.ee, %i.du, !dbg !6763
  invoke void @_RNvMNtCs3f36owOmepS_6quiche9range_bufNtB2_8RangeBuf9split_offB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %i.ef)
          to label %bb.at unwind label %.thread88.loopexit, !dbg !6764

bb.at:                                            ; preds = %bb.as
  %i.eg = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE13push_back_mutB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.au unwind label %.thread88.loopexit, !dbg !6765 ; 0 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6766
  br label %.backedge136, !dbg !6767

.backedge:                                        ; preds = %bb.al, %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !6667
  br label %bb.p, !dbg !6658

bb.av:                                            ; preds = %bb.ac, %bb.ai
  %i.eh = phi i64 [ %i.cr, %bb.ac ], [ %.pre109.pre, %bb.ai ], !dbg !6713
  %i.ei = phi i64 [ %i.ci, %bb.ac ], [ %.pre108.pre, %bb.ai ], !dbg !6712
  %i.ej = phi i64 [ %i.cj, %bb.ac ], [ %.pre107, %bb.ai ], !dbg !6724
    #dbg_value(i64 %i.ej, !6554, !DIExpression(), !6558)
    #dbg_value(ptr %i.h, !6293, !DIExpression(), !6559)
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6560)
    #dbg_value(ptr %i.h, !6302, !DIExpression(), !6561)
  %i.ek = add i64 %i.eh, %i.ei, !dbg !6768        ; 2 uses
    #dbg_value(i64 %i.ek, !6555, !DIExpression(), !6558)
    #dbg_value(ptr undef, !6562, !DIExpression(DW_OP_deref), !6085)
    #dbg_value(ptr undef, !6563, !DIExpression(DW_OP_deref), !6085)
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.ek, i64 %i.ej), !dbg !6769 ; 2 uses
  store i64 %..i, ptr %i.ay, align 8, !dbg !6770
  %i.el = load i8, ptr %i.bq, align 8, !dbg !6771, !range !2117, !noundef !1030
  %i.em = trunc nuw i8 %i.el to i1, !dbg !6771
  br i1 %i.em, label %bb.ax, label %bb.aw, !dbg !6771

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6772
    #dbg_value(ptr %i.h, !6293, !DIExpression(), !6568)
    #dbg_value(ptr %i.h, !6298, !DIExpression(), !6571)
    #dbg_value(ptr %i.h, !6302, !DIExpression(), !6573)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !6773
  invoke void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE6insertB1c_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.ek, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
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
  %i.en = load ptr, ptr %i.h, align 8, !dbg !6779, !alias.scope !6578, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.en, !6377, !DIExpression(), !6109)
    #dbg_value(ptr %i.en, !6381, !DIExpression(), !6107)
  %i.eo = atomicrmw sub ptr %i.en, i64 1 release, align 8, !dbg !6780, !noalias !6578
  %i.ep = icmp eq i64 %i.eo, 1, !dbg !6781
  br i1 %i.ep, label %bb.ay, label %.backedge, !dbg !6781

bb.ay:                                            ; preds = %bb.ax
    #dbg_value(i8 2, !2135, !DIExpression(), !6111)
  fence acquire, !dbg !6782
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6783
  br label %.backedge, !dbg !6783

bb.az:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6784
  call void @llvm.experimental.noalias.scope.decl(metadata !6579), !dbg !6785
    #dbg_value(ptr %i.b, !6581, !DIExpression(), !6120)
  %i.eq = load i8, ptr %i.br, align 8, !dbg !6786, !range !2219, !alias.scope !6579, !noundef !1030
  %i.er = icmp eq i8 %i.eq, 2, !dbg !6786
  br i1 %i.er, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, label %bb.ba, !dbg !6786

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
  %i.es = load ptr, ptr %i.b, align 8, !dbg !6790, !alias.scope !6598, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.es, !6377, !DIExpression(), !6144)
    #dbg_value(ptr %i.es, !6381, !DIExpression(), !6142)
  %i.et = atomicrmw sub ptr %i.es, i64 1 release, align 8, !dbg !6791, !noalias !6598
  %i.eu = icmp eq i64 %i.et, 1, !dbg !6792
  br i1 %i.eu, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, !dbg !6792

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
  %i.ev = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !6797
  unreachable, !dbg !6797

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !6619
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit, !dbg !6619

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit: ; preds = %bb.g, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit
  %.sroa.0.1 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit ], [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.g ], !dbg !6228
  %i.ew = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !6798
  %i.ex = insertvalue { i64, i64 } %i.ew, i64 undef, 1, !dbg !6798
  ret { i64, i64 } %i.ex, !dbg !6798

bb.be:                                            ; preds = %bb.m
  unreachable

.thread70:                                        ; preds = %bb.bg, %bb.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67, %bb.u, %bb.t
  %.pn6073 = phi { ptr, i32 } [ %i.ca, %bb.u ], [ %.pn58, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67 ], [ %i.ca, %bb.t ], [ %i.ey, %bb.bf ], [ %i.ey, %bb.bg ]
  resume { ptr, i32 } %.pn6073, !dbg !6797

bb.bf:                                            ; preds = %bb.m
  %i.ey = landingpad { ptr, i32 }
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
  %i.ez = load ptr, ptr %1, align 8, !dbg !6802, !alias.scope !6603, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.ez, !6377, !DIExpression(), !6172)
    #dbg_value(ptr %i.ez, !6381, !DIExpression(), !6170)
  %i.fa = atomicrmw sub ptr %i.ez, i64 1 release, align 8, !dbg !6803, !noalias !6603
  %i.fb = icmp eq i64 %i.fa, 1, !dbg !6804
  br i1 %i.fb, label %bb.bg, label %.thread70, !dbg !6804

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
begin_hunk_1_@llvm.umax.i64
!6541 = !{!6057}
!6542 = !{!6061}
!6543 = !{!6065}
!6544 = !{!6069}
!6545 = !{!6069, !6065, !6061, !6057}
!6546 = !DILocation(line: 181, column: 45, scope: !5831)
!6547 = !DILocation(line: 110, column: 20, scope: !5864, inlinedAt: !6546)
!6548 = !DILexicalBlockFile(scope: !5864, file: !2025, discriminator: 22)
!6549 = !DILocation(line: 111, column: 14, scope: !6548, inlinedAt: !6546)
!6550 = !DILocation(line: 105, column: 16, scope: !5865, inlinedAt: !6549)
!6551 = !DILocation(line: 111, column: 27, scope: !6548, inlinedAt: !6546)
!6552 = !DILocation(line: 115, column: 16, scope: !5866, inlinedAt: !6551)
!6553 = !DILocation(line: 0, scope: !5857, inlinedAt: !6257)
!6554 = !DILocalVariable(name: "v1", arg: 1, scope: !6082, file: !1819, line: 1741, type: !862)
!6555 = !DILocalVariable(name: "v2", arg: 2, scope: !6082, file: !1819, line: 1741, type: !862)
!6556 = !{!6554, !6555}
!6557 = !DILocation(line: 188, column: 24, scope: !5850)
!6558 = !DILocation(line: 0, scope: !6082, inlinedAt: !6557)
!6559 = !DILocation(line: 110, column: 20, scope: !5864, inlinedAt: !6482)
!6560 = !DILocation(line: 105, column: 16, scope: !5865, inlinedAt: !6483)
!6561 = !DILocation(line: 115, column: 16, scope: !5866, inlinedAt: !6484)
!6562 = !DILocalVariable(name: "self", arg: 1, scope: !6083, file: !1819, line: 1094, type: !862)
!6563 = !DILocalVariable(name: "other", arg: 2, scope: !6083, file: !1819, line: 1094, type: !862)
!6564 = !{!6562, !6563}
!6565 = !DITemplateTypeParameter(name: "Self", type: !862)
!6566 = !{!6565}
!6567 = !DILocation(line: 191, column: 38, scope: !5850)
!6568 = !DILocation(line: 110, column: 20, scope: !5864, inlinedAt: !6567)
!6569 = !DILexicalBlockFile(scope: !5864, file: !2025, discriminator: 26)
!6570 = !DILocation(line: 111, column: 14, scope: !6569, inlinedAt: !6567)
!6571 = !DILocation(line: 105, column: 16, scope: !5865, inlinedAt: !6570)
!6572 = !DILocation(line: 111, column: 27, scope: !6569, inlinedAt: !6567)
!6573 = !DILocation(line: 115, column: 16, scope: !5866, inlinedAt: !6572)
!6574 = !{!6087}
!6575 = !{!6091}
!6576 = !{!6095}
!6577 = !{!6099}
!6578 = !{!6099, !6095, !6091, !6087}
!6579 = !{!6113}
!6580 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::option::Option<quiche::range_buf::RangeBuf<quiche::buffers::DefaultBufFactory>>", baseType: !6117, size: 64, align: 64, dwarfAddressSpace: 0)
!6581 = !DILocalVariable(arg: 1, scope: !6118, file: !1129, line: 848, type: !6580)
!6582 = !{!6116}
!6583 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !6116, file: !858, baseType: !6115, size: 448, align: 64, extraData: i8 2)
!6584 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !6116, file: !858, baseType: !6114, size: 448, align: 64)
!6585 = !{!6583, !6584}
!6586 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6114, file: !858, baseType: !81, size: 448, align: 64, flags: DIFlagPublic)
!6587 = !{!6586}
!6588 = !DIDerivedType(tag: DW_TAG_member, scope: !6117, file: !858, baseType: !930, size: 8, align: 8, offset: 384, flags: DIFlagArtificial)
!6589 = !{null, !6580}
!6590 = !DISubroutineType(types: !6589)
!6591 = !{!6581}
!6592 = !DITemplateTypeParameter(name: "T", type: !6117)
!6593 = !{!6592}
!6594 = !{!6122}
!6595 = !{!6126}
!6596 = !{!6130}
!6597 = !{!6134}
!6598 = !{!6134, !6130, !6126, !6122, !6113}
!6599 = !{!6150}
!6600 = !{!6154}
!6601 = !{!6158}
!6602 = !{!6162}
!6603 = !{!6162, !6158, !6154, !6150}
!6604 = !DILocation(line: 106, column: 10, scope: !5865, inlinedAt: !6300)
!6605 = !DILocation(line: 106, column: 21, scope: !5865, inlinedAt: !6300)
!6606 = !DILocation(line: 106, column: 42, scope: !5865, inlinedAt: !6300)
!6607 = !DILocation(line: 116, column: 9, scope: !5866, inlinedAt: !6304)
!6608 = !DILocation(line: 111, column: 9, scope: !5864, inlinedAt: !6296)
!6609 = !DILocation(line: 77, column: 9, scope: !5867, inlinedAt: !6314)
!6610 = !DILocation(line: 93, column: 12, scope: !5853)
!6611 = !DILocation(line: 97, column: 32, scope: !5852)
!6612 = !DILocation(line: 97, column: 16, scope: !5852)
!6613 = !DILocation(line: 97, column: 21, scope: !5852)
!6614 = !DILocation(line: 99, column: 16, scope: !5852)
!6615 = !DILocation(line: 101, column: 9, scope: !5868, inlinedAt: !6327)
!6616 = !DILocation(line: 110, column: 12, scope: !5853)
!6617 = !DILocation(line: 101, column: 9, scope: !5868, inlinedAt: !6336)
!6618 = !DILocation(line: 104, column: 16, scope: !5852)
!6619 = !DILocation(line: 199, column: 5, scope: !5853)
!6620 = !DILocation(line: 848, column: 1, scope: !5871, inlinedAt: !5872)
!6621 = !DILocation(line: 848, column: 1, scope: !5876, inlinedAt: !5877)
!6622 = !DILocation(line: 848, column: 1, scope: !5881, inlinedAt: !5882)
!6623 = !DILocation(line: 454, column: 20, scope: !5899, inlinedAt: !5900)
!6624 = !DILocation(line: 4056, column: 24, scope: !5896, inlinedAt: !5897)
!6625 = !DILocation(line: 2927, column: 12, scope: !5886, inlinedAt: !5887)
!6626 = !DILocation(line: 4500, column: 24, scope: !290, inlinedAt: !5902)
!6627 = !DILocation(line: 2970, column: 18, scope: !5886, inlinedAt: !5887)
!6628 = !DILocation(line: 120, column: 12, scope: !5853)
!6629 = !DILocation(line: 116, column: 21, scope: !5866, inlinedAt: !6395)
!6630 = !DILocation(line: 116, column: 32, scope: !5866, inlinedAt: !6395)
!6631 = !DILocation(line: 116, column: 20, scope: !5866, inlinedAt: !6395)
!6632 = !DILocation(line: 121, column: 9, scope: !5904, inlinedAt: !6393)
!6633 = !DILocation(line: 116, column: 38, scope: !5853)
!6634 = !DILocation(line: 121, column: 13, scope: !5853)
!6635 = !DILocation(line: 125, column: 13, scope: !5853)
!6636 = !DILocation(line: 116, column: 21, scope: !5866, inlinedAt: !6409)
!6637 = !DILocation(line: 116, column: 32, scope: !5866, inlinedAt: !6409)
!6638 = !DILocation(line: 116, column: 20, scope: !5866, inlinedAt: !6409)
!6639 = !DILocation(line: 121, column: 9, scope: !5904, inlinedAt: !6406)
!6640 = !DILocation(line: 125, column: 26, scope: !5853)
!6641 = !DILocation(line: 131, column: 12, scope: !5853)
!6642 = !DILocation(line: 106, column: 21, scope: !5865, inlinedAt: !6414)
!6643 = !DILocation(line: 106, column: 42, scope: !5865, inlinedAt: !6414)
!6644 = !DILocation(line: 116, column: 20, scope: !5866, inlinedAt: !6416)
!6645 = !DILocation(line: 121, column: 9, scope: !5904, inlinedAt: !6418)
!6646 = !DILocation(line: 137, column: 17, scope: !5853)
!6647 = !DILocation(line: 142, column: 13, scope: !5853)
!6648 = !DILocation(line: 0, scope: !304, inlinedAt: !5905)
!6649 = !DILocation(line: 130, column: 9, scope: !320, inlinedAt: !5924)
!6650 = !DILocation(line: 470, column: 25, scope: !302, inlinedAt: !5905)
!6651 = !DILocation(line: 470, column: 19, scope: !302, inlinedAt: !5905)
!6652 = !DILocation(line: 443, column: 25, scope: !5861, inlinedAt: !6290)
!6653 = !DILocation(line: 909, column: 9, scope: !5859, inlinedAt: !6272)
!6654 = !DILocation(line: 143, column: 28, scope: !5851)
!6655 = !DILocation(line: 2340, column: 22, scope: !5857, inlinedAt: !6253)
!6656 = !DILocation(line: 143, column: 31, scope: !5851)
!6657 = !DILocation(line: 145, column: 9, scope: !5851)
!6658 = !DILocation(line: 145, column: 41, scope: !5850)
!6659 = !DILocation(line: 145, column: 50, scope: !5850)
!6660 = !DILocation(line: 145, column: 25, scope: !5850)
!6661 = !DILocation(line: 382, column: 9, scope: !5855, inlinedAt: !6237)
!6662 = !DILocation(line: 106, column: 10, scope: !5865, inlinedAt: !6426)
!6663 = !DILocation(line: 106, column: 21, scope: !5865, inlinedAt: !6426)
!6664 = !DILocation(line: 106, column: 9, scope: !5865, inlinedAt: !6426)
!6665 = !DILocation(line: 106, column: 42, scope: !5865, inlinedAt: !6426)
!6666 = !DILocation(line: 151, column: 16, scope: !5850)
!6667 = !DILocation(line: 196, column: 9, scope: !5851)
!6668 = !DILocation(line: 848, column: 1, scope: !86, inlinedAt: !5926)
!6669 = !DILocation(line: 631, column: 39, scope: !51, inlinedAt: !5938)
!6670 = !DILocation(line: 1431, column: 17, scope: !72, inlinedAt: !5940)
!6671 = !DILocation(line: 175, column: 14, scope: !55, inlinedAt: !5949)
!6672 = !DILocation(line: 312, column: 9, scope: !54, inlinedAt: !5947)
!6673 = !DILocation(line: 631, column: 39, scope: !51, inlinedAt: !5959)
!6674 = !DILocation(line: 1431, column: 17, scope: !72, inlinedAt: !5961)
!6675 = !DILocation(line: 175, column: 14, scope: !55, inlinedAt: !5970)
!6676 = !DILocation(line: 312, column: 9, scope: !54, inlinedAt: !5968)
!6677 = !DILocation(line: 152, column: 23, scope: !5850)
!6678 = !DILocation(line: 152, column: 37, scope: !5850)
!6679 = !DILocation(line: 152, column: 27, scope: !5850)
!6680 = !DILocation(line: 106, column: 9, scope: !5865, inlinedAt: !6434)
!6681 = !DILocation(line: 106, column: 42, scope: !5865, inlinedAt: !6434)
!6682 = !DILocation(line: 106, column: 21, scope: !5865, inlinedAt: !6434)
!6683 = !DILocation(line: 106, column: 10, scope: !5865, inlinedAt: !6434)
!6684 = !DILocation(line: 392, column: 9, scope: !5856, inlinedAt: !6243)
!6685 = !DILocation(line: 161, column: 16, scope: !5850)
!6686 = !DILocation(line: 848, column: 1, scope: !5871, inlinedAt: !5976)
!6687 = !DILocation(line: 848, column: 1, scope: !5876, inlinedAt: !5980)
!6688 = !DILocation(line: 848, column: 1, scope: !5881, inlinedAt: !5984)
!6689 = !DILocation(line: 454, column: 20, scope: !5899, inlinedAt: !5996)
!6690 = !DILocation(line: 4056, column: 24, scope: !5896, inlinedAt: !5994)
!6691 = !DILocation(line: 2927, column: 12, scope: !5886, inlinedAt: !5988)
!6692 = !DILocation(line: 152, column: 17, scope: !5850)
!6693 = !DILocation(line: 848, column: 1, scope: !5871, inlinedAt: !6000)
!6694 = !DILocation(line: 848, column: 1, scope: !5876, inlinedAt: !6004)
!6695 = !DILocation(line: 848, column: 1, scope: !5881, inlinedAt: !6008)
!6696 = !DILocation(line: 454, column: 20, scope: !5899, inlinedAt: !6020)
!6697 = !DILocation(line: 4056, column: 24, scope: !5896, inlinedAt: !6018)
!6698 = !DILocation(line: 2927, column: 12, scope: !5886, inlinedAt: !6012)
!6699 = !DILocation(line: 4500, column: 24, scope: !290, inlinedAt: !6022)
!6700 = !DILocation(line: 2970, column: 18, scope: !5886, inlinedAt: !6012)
!6701 = !DILocation(line: 152, column: 76, scope: !5850)
!6702 = !DILocation(line: 151, column: 13, scope: !5850)
!6703 = !DILocation(line: 116, column: 9, scope: !5866, inlinedAt: !6449)
!6704 = !DILocation(line: 116, column: 20, scope: !5866, inlinedAt: !6449)
!6705 = !DILocation(line: 121, column: 9, scope: !5904, inlinedAt: !6446)
!6706 = !DILocation(line: 161, column: 46, scope: !5850)
!6707 = !DILocation(line: 162, column: 41, scope: !5850)
!6708 = !DILocation(line: 162, column: 31, scope: !5850)
!6709 = !DILocation(line: 162, column: 17, scope: !5849)
!6710 = !DILocation(line: 48, column: 14, scope: !6029, inlinedAt: !6479)
!6711 = !DILocation(line: 48, column: 9, scope: !6029, inlinedAt: !6479)
!6712 = !DILocation(line: 106, column: 10, scope: !5865, inlinedAt: !6483)
!6713 = !DILocation(line: 116, column: 9, scope: !5866, inlinedAt: !6484)
!6714 = !DILocation(line: 106, column: 21, scope: !5865, inlinedAt: !6519)
!6715 = !DILocation(line: 106, column: 9, scope: !5865, inlinedAt: !6519)
!6716 = !DILocation(line: 106, column: 42, scope: !5865, inlinedAt: !6519)
!6717 = !DILocation(line: 106, column: 10, scope: !5865, inlinedAt: !6486)
!6718 = !DILocation(line: 106, column: 21, scope: !5865, inlinedAt: !6486)
!6719 = !DILocation(line: 106, column: 9, scope: !5865, inlinedAt: !6486)
!6720 = !DILocation(line: 106, column: 42, scope: !5865, inlinedAt: !6486)
!6721 = !DILocation(line: 111, column: 9, scope: !5864, inlinedAt: !6522)
!6722 = !DILocation(line: 166, column: 24, scope: !5831)
!6723 = !DILocation(line: 185, column: 17, scope: !5850)
!6724 = !DILocation(line: 188, column: 33, scope: !5850)
!6725 = !DILocation(line: 161, column: 13, scope: !5850)
!6726 = !DILocation(line: 171, column: 24, scope: !5831)
!6727 = !DILocation(line: 116, column: 9, scope: !5866, inlinedAt: !6495)
!6728 = !DILocation(line: 111, column: 9, scope: !5864, inlinedAt: !6490)
!6729 = !DILocation(line: 171, column: 42, scope: !5831)
!6730 = !DILocation(line: 848, column: 1, scope: !5871, inlinedAt: !6032)
!6731 = !DILocation(line: 848, column: 1, scope: !5876, inlinedAt: !6036)
!6732 = !DILocation(line: 848, column: 1, scope: !5881, inlinedAt: !6040)
!6733 = !DILocation(line: 454, column: 20, scope: !5899, inlinedAt: !6052)
!6734 = !DILocation(line: 4056, column: 24, scope: !5896, inlinedAt: !6050)
!6735 = !DILocation(line: 2927, column: 12, scope: !5886, inlinedAt: !6044)
!6736 = !DILocation(line: 4500, column: 24, scope: !290, inlinedAt: !6054)
!6737 = !DILocation(line: 2970, column: 18, scope: !5886, inlinedAt: !6044)
!6738 = !DILocation(line: 176, column: 42, scope: !5831)
!6739 = !DILocation(line: 106, column: 9, scope: !5865, inlinedAt: !6513)
!6740 = !DILocation(line: 106, column: 42, scope: !5865, inlinedAt: !6513)
!6741 = !DILocation(line: 181, column: 24, scope: !5831)
!6742 = !DILocation(line: 177, column: 31, scope: !5831)
!6743 = !DILocation(line: 177, column: 45, scope: !5831)
!6744 = !DILocation(line: 177, column: 35, scope: !5831)
!6745 = !DILocation(line: 177, column: 25, scope: !5831)
!6746 = !DILocation(line: 848, column: 1, scope: !5871, inlinedAt: !6058)
!6747 = !DILocation(line: 848, column: 1, scope: !5876, inlinedAt: !6062)
!6748 = !DILocation(line: 848, column: 1, scope: !5881, inlinedAt: !6066)
!6749 = !DILocation(line: 454, column: 20, scope: !5899, inlinedAt: !6078)
!6750 = !DILocation(line: 4056, column: 24, scope: !5896, inlinedAt: !6076)
!6751 = !DILocation(line: 2927, column: 12, scope: !5886, inlinedAt: !6070)
!6752 = !DILocation(line: 4500, column: 24, scope: !290, inlinedAt: !6080)
!6753 = !DILocation(line: 2970, column: 18, scope: !5886, inlinedAt: !6070)
!6754 = !DILocation(line: 177, column: 73, scope: !5831)
!6755 = !DILocation(line: 106, column: 10, scope: !5865, inlinedAt: !6513)
!6756 = !DILocation(line: 106, column: 21, scope: !5865, inlinedAt: !6513)
!6757 = !DILocation(line: 176, column: 21, scope: !5831)
!6758 = !DILocation(line: 106, column: 10, scope: !5865, inlinedAt: !6549)
!6759 = !DILocation(line: 116, column: 9, scope: !5866, inlinedAt: !6551)
!6760 = !DILocation(line: 111, column: 9, scope: !5864, inlinedAt: !6546)
!6761 = !DILocation(line: 181, column: 41, scope: !5831)
!6762 = !DILocation(line: 183, column: 40, scope: !5831)
!6763 = !DILocation(line: 183, column: 54, scope: !5831)
!6764 = !DILocation(line: 183, column: 44, scope: !5831)
!6765 = !DILocation(line: 2340, column: 22, scope: !5857, inlinedAt: !6257)
!6766 = !DILocation(line: 183, column: 79, scope: !5831)
!6767 = !DILocation(line: 181, column: 21, scope: !5831)
!6768 = !DILocation(line: 111, column: 9, scope: !5864, inlinedAt: !6482)
!6769 = !DILocation(line: 1099, column: 5, scope: !6083, inlinedAt: !6084)
!6770 = !DILocation(line: 188, column: 13, scope: !5850)
!6771 = !DILocation(line: 190, column: 17, scope: !5850)
!6772 = !DILocation(line: 191, column: 17, scope: !5850)
!6773 = !DILocation(line: 191, column: 49, scope: !5850)
!6774 = !DILocation(line: 191, column: 27, scope: !5850)
!6775 = !DILocation(line: 194, column: 17, scope: !5850)
!6776 = !DILocation(line: 848, column: 1, scope: !5871, inlinedAt: !6088)
!6777 = !DILocation(line: 848, column: 1, scope: !5876, inlinedAt: !6092)
!6778 = !DILocation(line: 848, column: 1, scope: !5881, inlinedAt: !6096)
!6779 = !DILocation(line: 454, column: 20, scope: !5899, inlinedAt: !6108)
!6780 = !DILocation(line: 4056, column: 24, scope: !5896, inlinedAt: !6106)
!6781 = !DILocation(line: 2927, column: 12, scope: !5886, inlinedAt: !6100)
!6782 = !DILocation(line: 4500, column: 24, scope: !290, inlinedAt: !6110)
!6783 = !DILocation(line: 2970, column: 18, scope: !5886, inlinedAt: !6100)
!6784 = !DILocation(line: 191, column: 52, scope: !5850)
!6785 = !DILocation(line: 191, column: 53, scope: !5850)
!6786 = !DILocation(line: 848, column: 1, scope: !6118, inlinedAt: !6119)
!6787 = !DILocation(line: 848, column: 1, scope: !5871, inlinedAt: !6123)
!6788 = !DILocation(line: 848, column: 1, scope: !5876, inlinedAt: !6127)
!6789 = !DILocation(line: 848, column: 1, scope: !5881, inlinedAt: !6131)
!6790 = !DILocation(line: 454, column: 20, scope: !5899, inlinedAt: !6143)
!6791 = !DILocation(line: 4056, column: 24, scope: !5896, inlinedAt: !6141)
!6792 = !DILocation(line: 2927, column: 12, scope: !5886, inlinedAt: !6135)
!6793 = !DILocation(line: 4500, column: 24, scope: !290, inlinedAt: !6145)
!6794 = !DILocation(line: 2970, column: 18, scope: !5886, inlinedAt: !6135)
!6795 = !DILocation(line: 4500, column: 24, scope: !290, inlinedAt: !6147)
!6796 = !DILocation(line: 2970, column: 18, scope: !5886, inlinedAt: !5988)
!6797 = !DILocation(line: 92, column: 5, scope: !5853)
!6798 = !DILocation(line: 199, column: 6, scope: !5853)
!6799 = !DILocation(line: 848, column: 1, scope: !5871, inlinedAt: !6151)
!6800 = !DILocation(line: 848, column: 1, scope: !5876, inlinedAt: !6155)
!6801 = !DILocation(line: 848, column: 1, scope: !5881, inlinedAt: !6159)
!6802 = !DILocation(line: 454, column: 20, scope: !5899, inlinedAt: !6171)
!6803 = !DILocation(line: 4056, column: 24, scope: !5896, inlinedAt: !6169)
!6804 = !DILocation(line: 2927, column: 12, scope: !5886, inlinedAt: !6163)
!6805 = !DILocation(line: 4500, column: 24, scope: !290, inlinedAt: !6173)
!6806 = !DILocation(line: 2970, column: 18, scope: !5886, inlinedAt: !6163)
!6807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Err", scope: !6810, file: !858, size: 128, align: 64, flags: DIFlagPublic, elements: !6821, templateParams: !6822, identifier: "b904fbb25e6aa1164851000710eaaa9")
!6808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Ok", scope: !6810, file: !858, size: 128, align: 64, flags: DIFlagPublic, elements: !6824, templateParams: !6822, identifier: "369c25195fa118cac827390aaa5edd4c")
!6809 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !6810, file: !858, size: 128, align: 64, elements: !6819, templateParams: !1030, identifier: "7d7fe04bb1810a50238930c1b457369b", discriminator: !6825)
!6810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Result<u64, quiche::error::Error>", scope: !1063, file: !858, size: 128, align: 64, flags: DIFlagPublic, elements: !6816, templateParams: !1030, identifier: "21e6f3663556c39770d76611d3deda27")
!6811 = distinct !DILexicalBlock(scope: !6812, file: !1886, line: 374, column: 9)
!6812 = distinct !DISubprogram(name: "shutdown", linkageName: "_RNvMNtNtCs3f36owOmepS_6quiche6stream8recv_bufNtB2_7RecvBuf8shutdown", scope: !248, file: !1886, line: 365, type: !6815, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, templateParams: !1030, declaration: !6826, retainedNodes: !6829)
!6813 = distinct !DISubprogram(name: "max_off", linkageName: "_RNvMNtNtCs3f36owOmepS_6quiche6stream8recv_bufNtB2_7RecvBuf7max_off", scope: !248, file: !1886, line: 391, type: !2108, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, templateParams: !1030, declaration: !2109, retainedNodes: !6832)
!6814 = !{!6810, !2007}
!6815 = !DISubroutineType(types: !6814)
!6816 = !{!6809}
!6817 = !DIDerivedType(tag: DW_TAG_member, name: "Ok", scope: !6809, file: !858, baseType: !6808, size: 128, align: 64, extraData: i64 -1)
!6818 = !DIDerivedType(tag: DW_TAG_member, name: "Err", scope: !6809, file: !858, baseType: !6807, size: 128, align: 64)
!6819 = !{!6817, !6818}
!6820 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6807, file: !858, baseType: !276, size: 128, align: 64, flags: DIFlagPublic)
!6821 = !{!6820}
!6822 = !{!1505, !2062}
!6823 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6808, file: !858, baseType: !862, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!6824 = !{!6823}
!6825 = !DIDerivedType(tag: DW_TAG_member, scope: !6810, file: !858, baseType: !862, size: 64, align: 64, flags: DIFlagArtificial)
!6826 = !DISubprogram(name: "shutdown", linkageName: "_RNvMNtNtCs3f36owOmepS_6quiche6stream8recv_bufNtB2_7RecvBuf8shutdown", scope: !248, file: !1886, line: 365, type: !6815, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, templateParams: !1030)
!6827 = !DILocalVariable(name: "self", arg: 1, scope: !6812, file: !1886, line: 365, type: !2007)
!6828 = !DILocalVariable(name: "consumed", scope: !6811, file: !1886, line: 374, type: !862, align: 64)
!6829 = !{!6827, !6828}
!6830 = !DILocation(line: 0, scope: !6812)
!6831 = !DILocalVariable(name: "self", arg: 1, scope: !6813, file: !1886, line: 391, type: !2007)
!6832 = !{!6831}
!6833 = !DILocation(line: 374, column: 29, scope: !6812)
!6834 = !DILocation(line: 0, scope: !6813, inlinedAt: !6833)
!6835 = !DILocation(line: 375, column: 25, scope: !6811)
!6836 = !DILocation(line: 0, scope: !6813, inlinedAt: !6835)
!6837 = !DILocation(line: 0, scope: !6811)
!6838 = !DILocation(line: 366, column: 12, scope: !6812)
!6839 = !DILocation(line: 370, column: 9, scope: !6812)
!6840 = !DILocation(line: 372, column: 9, scope: !6812)
!6841 = !DILocation(line: 372, column: 19, scope: !6812)
!6842 = !DILocation(line: 392, column: 9, scope: !6813, inlinedAt: !6833)
!6843 = !DILocation(line: 374, column: 41, scope: !6812)
!6844 = !DILocation(line: 374, column: 24, scope: !6812)
!6845 = !DILocation(line: 375, column: 9, scope: !6811)
!6846 = !DILocation(line: 377, column: 9, scope: !6811)
!6847 = !DILocation(line: 378, column: 6, scope: !6812)
!6848 = distinct !DILexicalBlock(scope: !6849, file: !2220, line: 192, column: 17)
!6849 = distinct !DILexicalBlock(scope: !6853, file: !2220, line: 182, column: 17)
!6850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MaybeDangling<quiche::crypto::boringssl::AES_KEY>", scope: !1456, file: !858, size: 1952, align: 32, flags: DIFlagPublic, elements: !6945, templateParams: !6947, identifier: "1b7a41d080b8308f8d1eda553e4d3af1")
!6851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ManuallyDrop<quiche::crypto::boringssl::AES_KEY>", scope: !1453, file: !858, size: 1952, align: 32, flags: DIFlagPublic, elements: !6943, templateParams: !6949, identifier: "6ad0e676b041b0153b6a7d05f42e469f")
!6852 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "MaybeUninit<quiche::crypto::boringssl::AES_KEY>", scope: !1495, file: !858, size: 1952, align: 32, elements: !6941, templateParams: !6949, identifier: "2a387f11ce98d4cbd622596c29a5f676")
!6853 = distinct !DILexicalBlock(scope: !6854, file: !2220, line: 180, column: 17)
!6854 = distinct !DILexicalBlock(scope: !6855, file: !2220, line: 178, column: 17)
!6855 = distinct !DISubprogram(name: "new", linkageName: "_RNvMs0_NtNtCs3f36owOmepS_6quiche6crypto9boringsslNtB5_19HeaderProtectionKey3new", scope: !154, file: !2220, line: 175, type: !6930, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, templateParams: !1030, declaration: !6931, retainedNodes: !6938)
!6856 = distinct !DISubprogram(name: "key_len", linkageName: "_RNvMs_NtCs3f36owOmepS_6quiche6cryptoNtB4_9Algorithm7key_len", scope: !942, file: !2231, line: 85, type: !2233, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, templateParams: !1030, declaration: !2234, retainedNodes: !6952)
!6857 = distinct !DISubprogram(name: "assume_init<quiche::crypto::boringssl::AES_KEY>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3mem12maybe_uninitINtB5_11MaybeUninitNtNtNtCs3f36owOmepS_6quiche6crypto9boringssl7AES_KEYE11assume_initB19_", scope: !6852, file: !6958, line: 722, type: !6961, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, templateParams: !6949, declaration: !6962, retainedNodes: !6963)
!6858 = distinct !DISubprogram(name: "transmute_neo<core::mem::maybe_uninit::MaybeUninit<quiche::crypto::boringssl::AES_KEY>, quiche::crypto::boringssl::AES_KEY>", linkageName: "_RINvNtCskKLDkoKarTP_4core3mem13transmute_neoINtNtB2_12maybe_uninit11MaybeUninitNtNtNtCs3f36owOmepS_6quiche6crypto9boringssl7AES_KEYEB1f_EB1l_", scope: !860, file: !1078, line: 1265, type: !6968, scopeLine: 1265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, templateParams: !6972, retainedNodes: !6969)
!6859 = distinct !DISubprogram(name: "as_ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE6as_ptrCs3f36owOmepS_6quiche", scope: !31, file: !2235, line: 1965, type: !2238, scopeLine: 1965, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, templateParams: !1165, declaration: !2239, retainedNodes: !6977)
!6860 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullhECs3f36owOmepS_6quiche", scope: !29, file: !1187, line: 610, type: !2241, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, templateParams: !2242, declaration: !2243)
!6861 = distinct !DISubprogram(name: "ptr<u8, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE3ptrCs3f36owOmepS_6quiche", scope: !30, file: !1187, line: 295, type: !2246, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, templateParams: !1165, declaration: !2247)
!6862 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, u8>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrhECs3f36owOmepS_6quiche", scope: !29, file: !1187, line: 605, type: !2249, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, templateParams: !2242, declaration: !2250)
!6863 = distinct !DILocation(line: 198, column: 5, scope: !6855)
!6864 = distinct !DILocation(line: 0, scope: !37, inlinedAt: !6863)
!6865 = distinct !DILocation(line: 198, column: 5, scope: !6855)
!6866 = distinct !DILocation(line: 0, scope: !37, inlinedAt: !6865)
!6867 = distinct !{!6867, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche"}
!6868 = distinct !{!6868, !6867, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche: argument 0"}
!6869 = distinct !{!6869, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche"}
!6870 = distinct !{!6870, !6869, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche: argument 0"}
!6871 = distinct !DILocation(line: 848, column: 1, scope: !37, inlinedAt: !6863)
!6872 = distinct !DILocation(line: 0, scope: !38, inlinedAt: !6871)
!6873 = distinct !DILocation(line: 848, column: 1, scope: !38, inlinedAt: !6871)
!6874 = distinct !DILocation(line: 0, scope: !39, inlinedAt: !6873)
!6875 = distinct !DILocation(line: 425, column: 29, scope: !39, inlinedAt: !6873)
!6876 = distinct !DILocation(line: 0, scope: !43, inlinedAt: !6875)
!6877 = distinct !DILocation(line: 874, column: 52, scope: !42, inlinedAt: !6875)
!6878 = distinct !DILocation(line: 0, scope: !51, inlinedAt: !6877)
!6879 = distinct !DILocation(line: 848, column: 1, scope: !37, inlinedAt: !6863)
!6880 = distinct !DILocation(line: 0, scope: !38, inlinedAt: !6879)
!6881 = distinct !DILocation(line: 848, column: 1, scope: !38, inlinedAt: !6879)
!6882 = distinct !DILocation(line: 0, scope: !39, inlinedAt: !6881)
!6883 = distinct !DILocation(line: 425, column: 29, scope: !39, inlinedAt: !6881)
!6884 = distinct !DILocation(line: 0, scope: !43, inlinedAt: !6883)
!6885 = distinct !DILocation(line: 874, column: 52, scope: !42, inlinedAt: !6883)
!6886 = distinct !DILocation(line: 0, scope: !51, inlinedAt: !6885)
!6887 = distinct !DILocation(line: 0, scope: !42, inlinedAt: !6883)
!6888 = distinct !DILocation(line: 876, column: 28, scope: !42, inlinedAt: !6883)
!6889 = distinct !DILocation(line: 0, scope: !52, inlinedAt: !6888)
!6890 = distinct !DILocation(line: 554, column: 23, scope: !52, inlinedAt: !6888)
!6891 = distinct !DILocation(line: 0, scope: !53, inlinedAt: !6890)
!6892 = distinct !DILocation(line: 436, column: 9, scope: !53, inlinedAt: !6890)
!6893 = distinct !DILocation(line: 0, scope: !54, inlinedAt: !6892)
!6894 = distinct !DILocation(line: 321, column: 22, scope: !54, inlinedAt: !6892)
!6895 = distinct !DILocation(line: 0, scope: !55, inlinedAt: !6894)
!6896 = distinct !{!6896, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche"}
!6897 = distinct !{!6897, !6896, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche: argument 0"}
!6898 = distinct !{!6898, i1 false, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche"}
!6899 = distinct !{!6899, !6898, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs3f36owOmepS_6quiche: argument 0"}
!6900 = distinct !{!6900, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche"}
!6901 = distinct !{!6901, !6900, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche: argument 0"}
!6902 = distinct !DILocation(line: 848, column: 1, scope: !37, inlinedAt: !6865)
!6903 = distinct !DILocation(line: 0, scope: !38, inlinedAt: !6902)
!6904 = distinct !DILocation(line: 848, column: 1, scope: !38, inlinedAt: !6902)
!6905 = distinct !DILocation(line: 0, scope: !39, inlinedAt: !6904)
!6906 = distinct !DILocation(line: 425, column: 29, scope: !39, inlinedAt: !6904)
!6907 = distinct !DILocation(line: 0, scope: !43, inlinedAt: !6906)
!6908 = distinct !DILocation(line: 874, column: 52, scope: !42, inlinedAt: !6906)
!6909 = distinct !DILocation(line: 0, scope: !51, inlinedAt: !6908)
!6910 = distinct !DILocation(line: 848, column: 1, scope: !37, inlinedAt: !6865)
!6911 = distinct !DILocation(line: 0, scope: !38, inlinedAt: !6910)
!6912 = distinct !DILocation(line: 848, column: 1, scope: !38, inlinedAt: !6910)
!6913 = distinct !DILocation(line: 0, scope: !39, inlinedAt: !6912)
!6914 = distinct !DILocation(line: 425, column: 29, scope: !39, inlinedAt: !6912)
!6915 = distinct !DILocation(line: 0, scope: !43, inlinedAt: !6914)
!6916 = distinct !DILocation(line: 874, column: 52, scope: !42, inlinedAt: !6914)
!6917 = distinct !DILocation(line: 0, scope: !51, inlinedAt: !6916)
!6918 = distinct !DILocation(line: 0, scope: !42, inlinedAt: !6914)
!6919 = distinct !DILocation(line: 876, column: 28, scope: !42, inlinedAt: !6914)
!6920 = distinct !DILocation(line: 0, scope: !52, inlinedAt: !6919)
!6921 = distinct !DILocation(line: 554, column: 23, scope: !52, inlinedAt: !6919)
!6922 = distinct !DILocation(line: 0, scope: !53, inlinedAt: !6921)
!6923 = distinct !DILocation(line: 436, column: 9, scope: !53, inlinedAt: !6921)
!6924 = distinct !DILocation(line: 0, scope: !54, inlinedAt: !6923)
!6925 = distinct !DILocation(line: 321, column: 22, scope: !54, inlinedAt: !6923)
!6926 = distinct !DILocation(line: 0, scope: !55, inlinedAt: !6925)
!6927 = distinct !{!6927, i1 false, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche"}
!6928 = distinct !{!6928, !6927, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3f36owOmepS_6quiche: argument 0"}
!6929 = !{!324, !942, !31}
!6930 = !DISubroutineType(types: !6929)
!6931 = !DISubprogram(name: "new", linkageName: "_RNvMs0_NtNtCs3f36owOmepS_6quiche6crypto9boringsslNtB5_19HeaderProtectionKey3new", scope: !154, file: !2220, line: 175, type: !6930, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !1030)
!6932 = !DILocalVariable(name: "alg", arg: 1, scope: !6855, file: !2220, line: 175, type: !942)
!6933 = !DILocalVariable(name: "hp_key", arg: 2, scope: !6855, file: !2220, line: 175, type: !31)
!6934 = !DILocalVariable(name: "key_len_bits", scope: !6854, file: !2220, line: 178, type: !1270, align: 32)
!6935 = !DILocalVariable(name: "aes_key", scope: !6853, file: !2220, line: 180, type: !6852, align: 32)
!6936 = !DILocalVariable(name: "rc", scope: !6849, file: !2220, line: 182, type: !1653, align: 32)
!6937 = !DILocalVariable(name: "aes_key", scope: !6848, file: !2220, line: 192, type: !151, align: 32)
!6938 = !{!6932, !6933, !6934, !6935, !6936, !6937}
!6939 = !DIDerivedType(tag: DW_TAG_member, name: "uninit", scope: !6852, file: !858, baseType: !1021, align: 8)
!6940 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6852, file: !858, baseType: !6851, size: 1952, align: 32)
!6941 = !{!6939, !6940}
!6942 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6851, file: !858, baseType: !6850, size: 1952, align: 32, flags: DIFlagPrivate)
!6943 = !{!6942}
!6944 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6850, file: !858, baseType: !151, size: 1952, align: 32, flags: DIFlagPrivate)
!6945 = !{!6944}
!6946 = !DITemplateTypeParameter(name: "P", type: !151)
!6947 = !{!6946}
!6948 = !DITemplateTypeParameter(name: "T", type: !151)
!6949 = !{!6948}
!6950 = !DILocation(line: 0, scope: !6855)
!6951 = !DILocalVariable(name: "self", arg: 1, scope: !6856, file: !2231, line: 85, type: !942)
!6952 = !{!6951}
!6953 = !DILocation(line: 178, column: 40, scope: !6855)
!6954 = !DILocation(line: 0, scope: !6856, inlinedAt: !6953)
!6955 = !DILocation(line: 175, column: 32, scope: !6855)
!6956 = !DILocation(line: 180, column: 21, scope: !6853)
end_hunk_1

Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche.quiche.25c52dd429969cee-cgu.10?download=true
inline.NumInlined: 190
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCs3f36owOmepS_6quiche6stream8recv_bufNtB2_7RecvBuf5write:bb.a
    #dbg_value(i64 8, !1227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6358)
    #dbg_value(i64 56, !1227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6358)
    #dbg_value(i64 56, !1295, !DIExpression(), !6359)
  %i.cd = icmp eq i64 %.val.i, 0, !dbg !6671
  br i1 %i.cd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit, label %bb.w, !dbg !6671

bb.w:                                             ; preds = %bb.v
  %.val2.i = load ptr, ptr %i.bi, align 8, !dbg !6666, !alias.scope !6348, !nonnull !1030, !noundef !1030
    #dbg_value(i64 %.val.i, !1323, !DIExpression(), !6359)
  %i.ce = mul nuw i64 %.val.i, 56, !dbg !6672
    #dbg_value(ptr %.val2.i, !1204, !DIExpression(), !6360)
    #dbg_value(i64 8, !1205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6360)
    #dbg_value(i64 %i.ce, !1205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6360)
    #dbg_value(ptr poison, !1233, !DIExpression(), !6361)
    #dbg_value(ptr poison, !1240, !DIExpression(), !6362)
    #dbg_value(ptr %.val2.i, !1237, !DIExpression(), !6361)
    #dbg_value(ptr %.val2.i, !1243, !DIExpression(), !6362)
    #dbg_value(ptr %.val2.i, !1246, !DIExpression(), !6363)
    #dbg_value(ptr %.val2.i, !1252, !DIExpression(), !6364)
    #dbg_value(i64 8, !1238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6361)
    #dbg_value(i64 8, !1244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6362)
    #dbg_value(i64 8, !1250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6363)
    #dbg_value(i64 8, !1253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6364)
    #dbg_value(i64 %i.ce, !1238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6361)
    #dbg_value(i64 %i.ce, !1244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6362)
    #dbg_value(i64 %i.ce, !1250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6363)
    #dbg_value(i64 %i.ce, !1253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6364)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !dbg !6673, !noalias !6365
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit, !dbg !6674

bb.x:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6675
    #dbg_value(ptr %i.h, !6191, !DIExpression(), !6367)
  %i.cf = sub nuw i64 %i.bt, %i.by, !dbg !6676
  invoke void @_RNvMNtCs3f36owOmepS_6quiche9range_bufNtB2_8RangeBuf9split_offB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %i.cf)
          to label %bb.aa unwind label %.thread88.loopexit.split-lp, !dbg !6677

bb.y:                                             ; preds = %bb.r, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63
  %.pre-phi112 = phi i64 [ %i.by, %bb.r ], [ %.pre111, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63 ], !dbg !6678 ; 2 uses
  %i.cg = phi i64 [ %i.bx, %bb.r ], [ %.pre103, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63 ], !dbg !6679
  %i.ch = phi i64 [ %i.bv, %bb.r ], [ %.pre102, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63 ], !dbg !6680
  %i.ci = phi i64 [ %i.bu, %bb.r ], [ %.pre101, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63 ], !dbg !6681
    #dbg_value(ptr %i.h, !6191, !DIExpression(), !6369)
  %i.cj = load i64, ptr %i.ay, align 8, !dbg !6682, !noundef !1030 ; 2 uses
  %i.ck = icmp ult i64 %.pre-phi112, %i.cj, !dbg !6683
  br i1 %i.ck, label %bb.ad, label %bb.ac, !dbg !6683

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
  call void @llvm.experimental.noalias.scope.decl(metadata !6370), !dbg !6665
    #dbg_value(ptr %i.h, !6240, !DIExpression(), !6371)
  call void @llvm.experimental.noalias.scope.decl(metadata !6372), !dbg !6684
    #dbg_value(ptr %i.h, !6247, !DIExpression(), !6373)
  call void @llvm.experimental.noalias.scope.decl(metadata !6374), !dbg !6685
    #dbg_value(ptr %i.h, !6255, !DIExpression(), !6375)
  call void @llvm.experimental.noalias.scope.decl(metadata !6376), !dbg !6686
    #dbg_value(ptr %i.h, !6261, !DIExpression(), !6377)
    #dbg_value(ptr %i.h, !6264, !DIExpression(), !6378)
    #dbg_value(i64 1, !6274, !DIExpression(), !6379)
    #dbg_value(i8 1, !6276, !DIExpression(), !6379)
    #dbg_value(i64 1, !6279, !DIExpression(), !6380)
    #dbg_value(i8 1, !6281, !DIExpression(), !6380)
  %i.cl = load ptr, ptr %i.h, align 8, !dbg !6687, !alias.scope !6381, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.cl, !6275, !DIExpression(), !6382)
    #dbg_value(ptr %i.cl, !6280, !DIExpression(), !6380)
  %i.cm = atomicrmw sub ptr %i.cl, i64 1 release, align 8, !dbg !6688, !noalias !6381
  %i.cn = icmp eq i64 %i.cm, 1, !dbg !6689
  br i1 %i.cn, label %bb.bc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67, !dbg !6689

bb.z:                                             ; preds = %bb.aw
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67, !dbg !6665

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !6383), !dbg !6690
    #dbg_value(ptr %i.h, !6240, !DIExpression(), !6384)
  call void @llvm.experimental.noalias.scope.decl(metadata !6385), !dbg !6691
    #dbg_value(ptr %i.h, !6247, !DIExpression(), !6386)
  call void @llvm.experimental.noalias.scope.decl(metadata !6387), !dbg !6692
    #dbg_value(ptr %i.h, !6255, !DIExpression(), !6388)
  call void @llvm.experimental.noalias.scope.decl(metadata !6389), !dbg !6693
    #dbg_value(ptr %i.h, !6261, !DIExpression(), !6390)
    #dbg_value(ptr %i.h, !6264, !DIExpression(), !6391)
    #dbg_value(i64 1, !6274, !DIExpression(), !6392)
    #dbg_value(i8 1, !6276, !DIExpression(), !6392)
    #dbg_value(i64 1, !6279, !DIExpression(), !6393)
    #dbg_value(i8 1, !6281, !DIExpression(), !6393)
  %i.co = load ptr, ptr %i.h, align 8, !dbg !6694, !alias.scope !6394, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.co, !6275, !DIExpression(), !6395)
    #dbg_value(ptr %i.co, !6280, !DIExpression(), !6393)
  %i.cp = atomicrmw sub ptr %i.co, i64 1 release, align 8, !dbg !6695, !noalias !6394
  %i.cq = icmp eq i64 %i.cp, 1, !dbg !6696
  br i1 %i.cq, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63, !dbg !6696

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(i8 2, !2135, !DIExpression(), !6396)
  fence acquire, !dbg !6697
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6698
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63, !dbg !6698

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit63: ; preds = %bb.ab, %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !dbg !6690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6699
  %.pre101 = load i64, ptr %i.bl, align 8, !dbg !6681 ; 2 uses
  %.pre102 = load i64, ptr %i.bm, align 8, !dbg !6680 ; 2 uses
  %.pre103 = load i64, ptr %i.bn, align 8, !dbg !6679 ; 2 uses
  %.pre110 = sub i64 %.pre101, %.pre102, !dbg !6678
  %.pre111 = add i64 %.pre110, %.pre103, !dbg !6678
  br label %bb.y, !dbg !6700

bb.ac:                                            ; preds = %bb.y
    #dbg_value(ptr %i.h, !6293, !DIExpression(), !6398)
    #dbg_value(ptr %i.h, !6195, !DIExpression(), !6401)
  %i.cr = load i64, ptr %i.bo, align 8, !dbg !6701, !noundef !1030 ; 2 uses
  %.neg45 = sub i64 %i.ch, %i.cg, !dbg !6702
  %i.cs = sub i64 0, %i.cr, !dbg !6703
  %i.ct = icmp eq i64 %.neg45, %i.cs, !dbg !6703
  br i1 %i.ct, label %bb.ad, label %bb.av, !dbg !6704

bb.ad:                                            ; preds = %bb.y, %bb.ac
    #dbg_value(ptr %i.h, !6191, !DIExpression(), !6403)
  invoke void @_RINvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB6_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE5rangeyINtNtNtCskKLDkoKarTP_4core3ops5range9RangeFromyEEB1d_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bp, i64 noundef %.pre-phi112)
          to label %bb.ae unwind label %.thread88.loopexit.split-lp, !dbg !6705

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !dbg !6706
  br label %bb.af, !dbg !6707

bb.af:                                            ; preds = %.backedge136, %bb.ae
    #dbg_value(ptr %i.e, !6406, !DIExpression(), !6422)
    #dbg_value(ptr %i.e, !6425, !DIExpression(), !6431)
  %i.cu = invoke { ptr, ptr } @_RINvMs3_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_9LeafRangeNtNtNtB8_4node6marker5ImmutyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE20perform_next_checkedNCNvMs1_B6_BY_12next_checked0TRyRB1G_EEB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %bb.ag unwind label %.thread88.loopexit, !dbg !6708 ; 2 uses

bb.ag:                                            ; preds = %bb.af
  %i.cv = extractvalue { ptr, ptr } %i.cu, 0, !dbg !6709
  %i.cw = extractvalue { ptr, ptr } %i.cu, 1, !dbg !6709 ; 5 uses
  %.not46 = icmp eq ptr %i.cv, null, !dbg !6149
  %.pre108.pre = load i64, ptr %i.bl, align 8, !dbg !6710 ; 3 uses
  %.pre109.pre = load i64, ptr %i.bo, align 8, !dbg !6711 ; 2 uses
  br i1 %.not46, label %bb.ai, label %bb.ah, !dbg !6149

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cw) ]
    #dbg_value(ptr %i.cw, !6077, !DIExpression(), !6436)
    #dbg_value(ptr %i.cw, !6191, !DIExpression(), !6438)
    #dbg_value(ptr %i.cw, !6191, !DIExpression(), !6440)
    #dbg_value(ptr %i.cw, !6186, !DIExpression(), !6442)
    #dbg_value(ptr %i.cw, !6191, !DIExpression(), !6445)
    #dbg_value(ptr %i.cw, !6195, !DIExpression(), !6447)
    #dbg_value(ptr %i.cw, !6191, !DIExpression(), !6449)
    #dbg_value(ptr %i.cw, !6186, !DIExpression(), !6451)
    #dbg_value(ptr %i.cw, !6191, !DIExpression(), !6454)
    #dbg_value(ptr %i.cw, !6195, !DIExpression(), !6456)
    #dbg_value(ptr %i.cw, !6186, !DIExpression(), !6458)
    #dbg_value(ptr %i.cw, !6191, !DIExpression(), !6461)
    #dbg_value(ptr %i.cw, !6195, !DIExpression(), !6463)
    #dbg_value(ptr %i.cw, !6191, !DIExpression(), !6465)
    #dbg_value(ptr %i.cw, !6191, !DIExpression(), !6467)
    #dbg_value(ptr %i.cw, !6191, !DIExpression(), !6469)
    #dbg_value(ptr %i.h, !6191, !DIExpression(), !6471)
  %i.cx = load i64, ptr %i.bm, align 8, !dbg !6712, !noundef !1030
  %i.cy = sub i64 %.pre108.pre, %i.cx, !dbg !6713
  %i.cz = load i64, ptr %i.bn, align 8, !dbg !6714, !noundef !1030
  %i.da = add i64 %i.cy, %i.cz, !dbg !6713        ; 5 uses
    #dbg_value(i64 %i.da, !6078, !DIExpression(), !6472)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 40, !dbg !6715 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !dbg !6715, !noundef !1030 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16, !dbg !6716 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !dbg !6716, !noundef !1030 ; 3 uses
  %i.df = sub i64 %i.dc, %i.de, !dbg !6717
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 24, !dbg !6718 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !6718, !noundef !1030 ; 3 uses
  %i.di = add i64 %i.df, %i.dh, !dbg !6717        ; 4 uses
    #dbg_value(ptr %i.h, !6186, !DIExpression(), !6474)
    #dbg_value(ptr %i.h, !6191, !DIExpression(), !6477)
    #dbg_value(ptr %i.h, !6195, !DIExpression(), !6479)
  %i.dj = add i64 %.pre109.pre, %.pre108.pre, !dbg !6719 ; 2 uses
  %i.dk = icmp ugt i64 %i.di, %i.dj, !dbg !6720
  br i1 %i.dk, label %bb.ai, label %bb.aj, !dbg !6720

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6721
  %.pre107 = load i64, ptr %i.ay, align 8, !dbg !6722
  br label %bb.av, !dbg !6723

bb.aj:                                            ; preds = %bb.ah
  %.not48 = icmp ult i64 %i.da, %i.di, !dbg !6724
  br i1 %.not48, label %.thread91, label %bb.ak, !dbg !6724

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(ptr %i.h, !6186, !DIExpression(), !6481)
    #dbg_value(ptr %i.h, !6191, !DIExpression(), !6484)
    #dbg_value(ptr %i.h, !6195, !DIExpression(), !6486)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cw, i64 32, !dbg !6725
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !6725, !noundef !1030
  %i.dn = add i64 %i.dm, %i.dc, !dbg !6726        ; 3 uses
  %.not50 = icmp ugt i64 %i.dj, %i.dn, !dbg !6727
  br i1 %.not50, label %bb.an, label %bb.al, !dbg !6727

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6721
  call void @llvm.experimental.noalias.scope.decl(metadata !6487), !dbg !6665
    #dbg_value(ptr %i.h, !6240, !DIExpression(), !6488)
  call void @llvm.experimental.noalias.scope.decl(metadata !6489), !dbg !6728
    #dbg_value(ptr %i.h, !6247, !DIExpression(), !6490)
  call void @llvm.experimental.noalias.scope.decl(metadata !6491), !dbg !6729
    #dbg_value(ptr %i.h, !6255, !DIExpression(), !6492)
  call void @llvm.experimental.noalias.scope.decl(metadata !6493), !dbg !6730
    #dbg_value(ptr %i.h, !6261, !DIExpression(), !6494)
    #dbg_value(ptr %i.h, !6264, !DIExpression(), !6495)
    #dbg_value(i64 1, !6274, !DIExpression(), !6496)
    #dbg_value(i8 1, !6276, !DIExpression(), !6496)
    #dbg_value(i64 1, !6279, !DIExpression(), !6497)
    #dbg_value(i8 1, !6281, !DIExpression(), !6497)
  %i.do = load ptr, ptr %i.h, align 8, !dbg !6731, !alias.scope !6498, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.do, !6275, !DIExpression(), !6499)
    #dbg_value(ptr %i.do, !6280, !DIExpression(), !6497)
  %i.dp = atomicrmw sub ptr %i.do, i64 1 release, align 8, !dbg !6732, !noalias !6498
  %i.dq = icmp eq i64 %i.dp, 1, !dbg !6733
  br i1 %i.dq, label %bb.am, label %.backedge, !dbg !6733

bb.am:                                            ; preds = %bb.al
    #dbg_value(i8 2, !2135, !DIExpression(), !6500)
  fence acquire, !dbg !6734
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6735
  br label %.backedge, !dbg !6735

bb.an:                                            ; preds = %bb.ak
  %i.dr = icmp ult i64 %i.da, %i.dn, !dbg !6736
  br i1 %i.dr, label %bb.ao, label %.thread91, !dbg !6736

.thread91:                                        ; preds = %bb.aj, %bb.an, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65
  %.pre-phi116 = phi i64 [ %i.di, %bb.aj ], [ %i.di, %bb.an ], [ %.pre115, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], !dbg !6737 ; 2 uses
  %2 = phi i64 [ %i.dh, %bb.aj ], [ %i.dh, %bb.an ], [ %.pre106, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], !dbg !6738
  %3 = phi i64 [ %i.de, %bb.aj ], [ %i.de, %bb.an ], [ %.pre105, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], !dbg !6739
  %4 = phi i64 [ %i.dc, %bb.aj ], [ %i.dc, %bb.an ], [ %.pre104, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65 ], !dbg !6740
  %i.ds = icmp ult i64 %i.da, %.pre-phi116, !dbg !6741
  br i1 %i.ds, label %bb.ar, label %.backedge136, !dbg !6741

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6742
  %i.dt = sub nuw i64 %i.dn, %i.da, !dbg !6743
  invoke void @_RNvMNtCs3f36owOmepS_6quiche9range_bufNtB2_8RangeBuf9split_offB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %i.dt)
          to label %bb.ap unwind label %.thread88.loopexit, !dbg !6744

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !6501), !dbg !6745
    #dbg_value(ptr %i.h, !6240, !DIExpression(), !6502)
  call void @llvm.experimental.noalias.scope.decl(metadata !6503), !dbg !6746
    #dbg_value(ptr %i.h, !6247, !DIExpression(), !6504)
  call void @llvm.experimental.noalias.scope.decl(metadata !6505), !dbg !6747
    #dbg_value(ptr %i.h, !6255, !DIExpression(), !6506)
  call void @llvm.experimental.noalias.scope.decl(metadata !6507), !dbg !6748
    #dbg_value(ptr %i.h, !6261, !DIExpression(), !6508)
    #dbg_value(ptr %i.h, !6264, !DIExpression(), !6509)
    #dbg_value(i64 1, !6274, !DIExpression(), !6510)
    #dbg_value(i8 1, !6276, !DIExpression(), !6510)
    #dbg_value(i64 1, !6279, !DIExpression(), !6511)
    #dbg_value(i8 1, !6281, !DIExpression(), !6511)
  %i.du = load ptr, ptr %i.h, align 8, !dbg !6749, !alias.scope !6512, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.du, !6275, !DIExpression(), !6513)
    #dbg_value(ptr %i.du, !6280, !DIExpression(), !6511)
  %i.dv = atomicrmw sub ptr %i.du, i64 1 release, align 8, !dbg !6750, !noalias !6512
  %i.dw = icmp eq i64 %i.dv, 1, !dbg !6751
  br i1 %i.dw, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65, !dbg !6751

bb.aq:                                            ; preds = %bb.ap
    #dbg_value(i8 2, !2135, !DIExpression(), !6514)
  fence acquire, !dbg !6752
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6753
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65, !dbg !6753

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit65: ; preds = %bb.aq, %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !dbg !6745
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6754
  %.pre104 = load i64, ptr %i.db, align 8, !dbg !6740 ; 2 uses
  %.pre105 = load i64, ptr %i.dd, align 8, !dbg !6739 ; 2 uses
  %.pre106 = load i64, ptr %i.dg, align 8, !dbg !6738 ; 2 uses
  %.pre113 = sub i64 %.pre104, %.pre105, !dbg !6737
  %.pre115 = add i64 %.pre113, %.pre106, !dbg !6737
  br label %.thread91, !dbg !6755

bb.ar:                                            ; preds = %.thread91
    #dbg_value(ptr %i.h, !6186, !DIExpression(), !6516)
    #dbg_value(ptr %i.h, !6191, !DIExpression(), !6519)
    #dbg_value(ptr %i.h, !6195, !DIExpression(), !6521)
  %i.dx = load i64, ptr %i.bl, align 8, !dbg !6756, !noundef !1030
  %i.dy = load i64, ptr %i.bo, align 8, !dbg !6757, !noundef !1030
  %i.dz = add i64 %i.dy, %i.dx, !dbg !6758
  %i.ea = icmp ugt i64 %i.dz, %.pre-phi116, !dbg !6759
  br i1 %i.ea, label %bb.as, label %.backedge136, !dbg !6759

.backedge136:                                     ; preds = %bb.ar, %.thread91, %bb.au
  br label %bb.af, !dbg !6708

bb.as:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.k, !6144, !DIExpression(), !6522)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6760
  %i.eb = add i64 %i.da, %3, !dbg !6761
  %i.ec = sub i64 %4, %i.eb, !dbg !6761
  %i.ed = add i64 %i.ec, %2, !dbg !6761
  invoke void @_RNvMNtCs3f36owOmepS_6quiche9range_bufNtB2_8RangeBuf9split_offB4_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %i.ed)
          to label %bb.at unwind label %.thread88.loopexit, !dbg !6762

bb.at:                                            ; preds = %bb.as
  %i.ee = invoke noundef nonnull align 8 ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE13push_back_mutB19_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %bb.au unwind label %.thread88.loopexit, !dbg !6763 ; 0 uses

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6764
  br label %.backedge136, !dbg !6765

.backedge:                                        ; preds = %bb.al, %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6665
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !6665
  br label %bb.p, !dbg !6656

bb.av:                                            ; preds = %bb.ac, %bb.ai
  %i.ef = phi i64 [ %i.cr, %bb.ac ], [ %.pre109.pre, %bb.ai ], !dbg !6711
  %i.eg = phi i64 [ %i.ci, %bb.ac ], [ %.pre108.pre, %bb.ai ], !dbg !6710
  %i.eh = phi i64 [ %i.cj, %bb.ac ], [ %.pre107, %bb.ai ], !dbg !6722
    #dbg_value(i64 %i.eh, !6523, !DIExpression(), !6527)
    #dbg_value(ptr %i.h, !6186, !DIExpression(), !6528)
    #dbg_value(ptr %i.h, !6191, !DIExpression(), !6529)
    #dbg_value(ptr %i.h, !6195, !DIExpression(), !6530)
  %i.ei = add i64 %i.ef, %i.eg, !dbg !6766        ; 2 uses
    #dbg_value(i64 %i.ei, !6524, !DIExpression(), !6527)
    #dbg_value(ptr undef, !6531, !DIExpression(DW_OP_deref), !6536)
    #dbg_value(ptr undef, !6532, !DIExpression(DW_OP_deref), !6536)
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.ei, i64 %i.eh), !dbg !6767 ; 2 uses
  store i64 %..i, ptr %i.ay, align 8, !dbg !6768
  %i.ej = load i8, ptr %i.bq, align 8, !dbg !6769, !range !2117, !noundef !1030
  %i.ek = trunc nuw i8 %i.ej to i1, !dbg !6769
  br i1 %i.ek, label %bb.ax, label %bb.aw, !dbg !6769

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6770
    #dbg_value(ptr %i.h, !6186, !DIExpression(), !6538)
    #dbg_value(ptr %i.h, !6191, !DIExpression(), !6541)
    #dbg_value(ptr %i.h, !6195, !DIExpression(), !6543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false), !dbg !6771
  invoke void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE6insertB1c_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp, i64 noundef %i.ei, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.az unwind label %bb.z, !dbg !6772

bb.ax:                                            ; preds = %bb.av
  store i64 %..i, ptr %i.az, align 8, !dbg !6773
  call void @llvm.experimental.noalias.scope.decl(metadata !6544), !dbg !6665
    #dbg_value(ptr %i.h, !6240, !DIExpression(), !6545)
  call void @llvm.experimental.noalias.scope.decl(metadata !6546), !dbg !6774
    #dbg_value(ptr %i.h, !6247, !DIExpression(), !6547)
  call void @llvm.experimental.noalias.scope.decl(metadata !6548), !dbg !6775
    #dbg_value(ptr %i.h, !6255, !DIExpression(), !6549)
  call void @llvm.experimental.noalias.scope.decl(metadata !6550), !dbg !6776
    #dbg_value(ptr %i.h, !6261, !DIExpression(), !6551)
    #dbg_value(ptr %i.h, !6264, !DIExpression(), !6552)
    #dbg_value(i64 1, !6274, !DIExpression(), !6553)
    #dbg_value(i8 1, !6276, !DIExpression(), !6553)
    #dbg_value(i64 1, !6279, !DIExpression(), !6554)
    #dbg_value(i8 1, !6281, !DIExpression(), !6554)
  %i.el = load ptr, ptr %i.h, align 8, !dbg !6777, !alias.scope !6555, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.el, !6275, !DIExpression(), !6556)
    #dbg_value(ptr %i.el, !6280, !DIExpression(), !6554)
  %i.em = atomicrmw sub ptr %i.el, i64 1 release, align 8, !dbg !6778, !noalias !6555
  %i.en = icmp eq i64 %i.em, 1, !dbg !6779
  br i1 %i.en, label %bb.ay, label %.backedge, !dbg !6779

bb.ay:                                            ; preds = %bb.ax
    #dbg_value(i8 2, !2135, !DIExpression(), !6557)
  fence acquire, !dbg !6780
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6781
  br label %.backedge, !dbg !6781

bb.az:                                            ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6782
  call void @llvm.experimental.noalias.scope.decl(metadata !6558), !dbg !6783
    #dbg_value(ptr %i.b, !6560, !DIExpression(), !6573)
  %i.eo = load i8, ptr %i.br, align 8, !dbg !6784, !range !2219, !alias.scope !6558, !noundef !1030
  %i.ep = icmp eq i8 %i.eo, 2, !dbg !6784
  br i1 %i.ep, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, label %bb.ba, !dbg !6784

bb.ba:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !6574), !dbg !6784
    #dbg_value(ptr %i.b, !6240, !DIExpression(), !6575)
  call void @llvm.experimental.noalias.scope.decl(metadata !6576), !dbg !6785
    #dbg_value(ptr %i.b, !6247, !DIExpression(), !6577)
  call void @llvm.experimental.noalias.scope.decl(metadata !6578), !dbg !6786
    #dbg_value(ptr %i.b, !6255, !DIExpression(), !6579)
  call void @llvm.experimental.noalias.scope.decl(metadata !6580), !dbg !6787
    #dbg_value(ptr %i.b, !6261, !DIExpression(), !6581)
    #dbg_value(ptr %i.b, !6264, !DIExpression(), !6582)
    #dbg_value(i64 1, !6274, !DIExpression(), !6583)
    #dbg_value(i8 1, !6276, !DIExpression(), !6583)
    #dbg_value(i64 1, !6279, !DIExpression(), !6584)
    #dbg_value(i8 1, !6281, !DIExpression(), !6584)
  %i.eq = load ptr, ptr %i.b, align 8, !dbg !6788, !alias.scope !6585, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.eq, !6275, !DIExpression(), !6586)
    #dbg_value(ptr %i.eq, !6280, !DIExpression(), !6584)
  %i.er = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !dbg !6789, !noalias !6585
  %i.es = icmp eq i64 %i.er, 1, !dbg !6790
  br i1 %i.es, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, !dbg !6790

bb.bb:                                            ; preds = %bb.ba
    #dbg_value(i8 2, !2135, !DIExpression(), !6587)
  fence acquire, !dbg !6791
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.b) #30, !dbg !6792
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit, !dbg !6792

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB11_.exit: ; preds = %bb.bb, %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6783
  br label %.backedge, !dbg !6665

bb.bc:                                            ; preds = %.thread88
    #dbg_value(i8 2, !2135, !DIExpression(), !6588)
  fence acquire, !dbg !6793
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %i.h) #30, !dbg !6794
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67, !dbg !6794

bb.bd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !6795
  unreachable, !dbg !6795

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !6618
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit, !dbg !6618

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit: ; preds = %bb.g, %bb.f, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit
  %.sroa.0.1 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEEB1C_.exit ], [ %.sroa.0.0, %bb.f ], [ %.sroa.0.0, %bb.g ], !dbg !6121
  %i.eu = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0, !dbg !6796
  %i.ev = insertvalue { i64, i64 } %i.eu, i64 undef, 1, !dbg !6796
  ret { i64, i64 } %i.ev, !dbg !6796

bb.be:                                            ; preds = %bb.m
  unreachable

.thread70:                                        ; preds = %bb.bg, %bb.bf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67, %bb.u, %bb.t
  %.pn6073 = phi { ptr, i32 } [ %i.ca, %bb.u ], [ %.pn58, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufEBF_.exit67 ], [ %i.ca, %bb.t ], [ %i.ew, %bb.bf ], [ %i.ew, %bb.bg ]
  resume { ptr, i32 } %.pn6073, !dbg !6795

bb.bf:                                            ; preds = %bb.m
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6589), !dbg !6618
    #dbg_value(ptr %1, !6240, !DIExpression(), !6590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6591), !dbg !6797
    #dbg_value(ptr %1, !6247, !DIExpression(), !6592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6593), !dbg !6798
    #dbg_value(ptr %1, !6255, !DIExpression(), !6594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6595), !dbg !6799
    #dbg_value(ptr %1, !6261, !DIExpression(), !6596)
    #dbg_value(ptr %1, !6264, !DIExpression(), !6597)
    #dbg_value(i64 1, !6274, !DIExpression(), !6598)
    #dbg_value(i8 1, !6276, !DIExpression(), !6598)
    #dbg_value(i64 1, !6279, !DIExpression(), !6599)
    #dbg_value(i8 1, !6281, !DIExpression(), !6599)
  %i.ex = load ptr, ptr %1, align 8, !dbg !6800, !alias.scope !6600, !nonnull !1030, !noundef !1030
    #dbg_value(ptr %i.ex, !6275, !DIExpression(), !6601)
    #dbg_value(ptr %i.ex, !6280, !DIExpression(), !6599)
  %i.ey = atomicrmw sub ptr %i.ex, i64 1 release, align 8, !dbg !6801, !noalias !6600
  %i.ez = icmp eq i64 %i.ey, 1, !dbg !6802
  br i1 %i.ez, label %bb.bg, label %.thread70, !dbg !6802

bb.bg:                                            ; preds = %bb.bf
    #dbg_value(i8 2, !2135, !DIExpression(), !6602)
  fence acquire, !dbg !6803
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCs3f36owOmepS_6quiche(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(56) %1) #30, !dbg !6804
  br label %.thread70, !dbg !6804
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs3f36owOmepS_6quiche6stream8recv_bufNtB2_7RecvBuf8shutdown(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 dereferenceable(128) %1) unnamed_addr #0 !dbg !6810 {
bb.a:
    #dbg_value(ptr %1, !6825, !DIExpression(), !6828)
    #dbg_value(ptr %1, !6829, !DIExpression(), !6832)
    #dbg_value(ptr %1, !6829, !DIExpression(), !6834)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !6836 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !6836, !range !2117, !noundef !1030
  %i.c = trunc nuw i8 %i.b to i1, !dbg !6836
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !6836

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !dbg !6837
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !6838
  tail call void @_RNvMsh_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapyNtNtCs3f36owOmepS_6quiche9range_buf8RangeBufE5clearB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !dbg !6839
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !6840
  %i.f = load i64, ptr %i.e, align 8, !dbg !6840, !noundef !1030 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !6841 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !6841, !noundef !1030
  %i.i = sub i64 %i.f, %i.h, !dbg !6842
    #dbg_value(i64 %i.i, !6826, !DIExpression(), !6835)
  store i64 %i.f, ptr %i.g, align 8, !dbg !6843
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6844
  store i64 %i.i, ptr %i.j, align 8, !dbg !6844
  br label %bb.c, !dbg !6845

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ -1, %bb.b ], [ 0, %bb.a ], !dbg !6828
  store i64 %storemerge, ptr %0, align 8, !dbg !6828
  ret void, !dbg !6845
end_hunk_0

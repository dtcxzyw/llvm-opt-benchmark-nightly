inline.NumInlined: 708
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z26hb_vector_paint_render_pdfP17hb_vector_paint_t:bb.a
  %i.amc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.amd = load ptr, ptr %i.amc, align 8, !tbaa !12
  %i.ame = zext i32 %i.alf to i64
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amd, i64 %i.ame
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.amf, ptr noundef nonnull readonly align 1 dereferenceable(17) @.str.18, i64 range(i64 0, 103079215081) 17, i1 false), !alias.scope !306
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit700

_ZN15hb_vector_buf_t10append_strEPKc.exit700:     ; preds = %_ZN15hb_vector_buf_t10append_lenEPKcj.exit681, %bb.il, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i696, %bb.ir
  %.not983 = icmp eq i32 %i.w, 0
  br i1 %.not983, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit700
  %i.amg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %wide.trip.count = zext i32 %i.w to i64
  br label %bb.jg

._crit_edge:                                      ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit795, %_ZN15hb_vector_buf_t10append_strEPKc.exit700
  %i.ami = load i32, ptr %i.bo, align 4, !tbaa !8 ; 3 uses
  %i.amj = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ami, i32 7) ; 2 uses
  %i.amk = extractvalue { i32, i1 } %i.amj, 1
  %i.aml = extractvalue { i32, i1 } %i.amj, 0     ; 4 uses
  %i.amm = icmp slt i32 %i.aml, 0
  %or.cond.i.i701 = or i1 %i.amk, %i.amm
  br i1 %or.cond.i.i701, label %_ZN15hb_vector_buf_t10append_strEPKc.exit719, label %bb.is, !prof !75

bb.is:                                            ; preds = %._crit_edge
  %i.amn = load i32, ptr %1, align 8, !tbaa !13   ; 4 uses
  %i.amo = icmp slt i32 %i.amn, 0
  br i1 %i.amo, label %_ZN15hb_vector_buf_t10append_strEPKc.exit719, label %bb.it, !prof !22

bb.it:                                            ; preds = %bb.is
  %.not.i.i.i.i702 = icmp samesign ugt i32 %i.aml, %i.amn
  br i1 %.not.i.i.i.i702, label %.preheader.i.i.i.i705, label %bb.iy, !prof !22

.preheader.i.i.i.i705:                            ; preds = %bb.it, %.preheader.i.i.i.i705
  %.053.i.i.i.i706 = phi i32 [ %i.amr, %.preheader.i.i.i.i705 ], [ %i.amn, %bb.it ] ; 2 uses
  %i.amp = lshr i32 %.053.i.i.i.i706, 1
  %i.amq = add nuw i32 %.053.i.i.i.i706, 8
  %i.amr = add nuw i32 %i.amq, %i.amp             ; 6 uses
  %i.ams = icmp ugt i32 %i.aml, %i.amr
  br i1 %i.ams, label %.preheader.i.i.i.i705, label %.thread39.i.i.i.i707, !llvm.loop !66

.thread39.i.i.i.i707:                             ; preds = %.preheader.i.i.i.i705
  %.not8.i.i.i.i.i.i708 = icmp eq i32 %i.amn, 0
  %i.amt = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !12 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i708, label %bb.iu, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i709

bb.iu:                                            ; preds = %.thread39.i.i.i.i707
  %.not9.i.i.i.i.i.i716 = icmp eq ptr %i.amu, null
  br i1 %.not9.i.i.i.i.i.i716, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i709, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.amv = zext i32 %i.amr to i64
  %i.amw = call ptr @hb_malloc(i64 noundef %i.amv) #12 ; 4 uses
  %.not10.i.i.i.i.i.i717 = icmp eq ptr %i.amw, null
  br i1 %.not10.i.i.i.i.i.i717, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i713, label %bb.iw, !prof !22

bb.iw:                                            ; preds = %bb.iv
  %i.amx = load i32, ptr %i.bo, align 4, !tbaa !8 ; 2 uses
  %.not.i.i.i.i.i.i.i718 = icmp eq i32 %i.amx, 0
  br i1 %.not.i.i.i.i.i.i.i718, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i711, label %bb.ix, !prof !22

bb.ix:                                            ; preds = %bb.iw
  %i.amy = zext i32 %i.amx to i64
  %i.amz = load ptr, ptr %i.amt, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.amw, ptr readonly align 1 %i.amz, i64 range(i64 0, 103079215081) %i.amy, i1 false), !alias.scope !310
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i711

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i709: ; preds = %bb.iu, %.thread39.i.i.i.i707
  %i.ana = phi ptr [ null, %bb.iu ], [ %i.amu, %.thread39.i.i.i.i707 ]
  %i.anb = zext i32 %i.amr to i64
  %i.anc = call ptr @hb_realloc(ptr noundef %i.ana, i64 noundef %i.anb) #12 ; 2 uses
  %.not22.i.i.i.i710 = icmp eq ptr %i.anc, null
  br i1 %.not22.i.i.i.i710, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i713, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i711, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i713: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i709, %bb.iv
  %i.and = load i32, ptr %1, align 8, !tbaa !13   ; 2 uses
  %.not23.i.i.i.i714 = icmp ugt i32 %i.amr, %i.and
  br i1 %.not23.i.i.i.i714, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i715, label %bb.iy

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i711: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i709, %bb.ix, %bb.iw
  %.1.i.i52.i.i.i.i712 = phi ptr [ %i.anc, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i709 ], [ %i.amw, %bb.iw ], [ %i.amw, %bb.ix ]
  store ptr %.1.i.i52.i.i.i.i712, ptr %i.amt, align 8, !tbaa !12
  store i32 %i.amr, ptr %1, align 8, !tbaa !13
  br label %bb.iy

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i715:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i713
  %i.ane = xor i32 %i.and, -1
  store i32 %i.ane, ptr %1, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit719

bb.iy:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i711, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i713, %bb.it
  store i32 %i.aml, ptr %i.bo, align 4, !tbaa !8
  %i.anf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !12
  %i.anh = zext i32 %i.ami to i64
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ang, i64 %i.anh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.ani, ptr noundef nonnull readonly align 1 dereferenceable(7) @.str.21, i64 range(i64 0, 103079215081) 7, i1 false), !alias.scope !314
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit719

_ZN15hb_vector_buf_t10append_strEPKc.exit719:     ; preds = %._crit_edge, %bb.is, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i715, %bb.iy
  %i.anj = add i32 %i.w, 5                        ; 2 uses
  %i.ank = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %i.anj) ; 0 uses
  %i.anl = load i32, ptr %i.bo, align 4, !tbaa !8 ; 2 uses
  %i.anm = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.anl, i32 21) ; 2 uses
  %i.ann = extractvalue { i32, i1 } %i.anm, 1
  %i.ano = extractvalue { i32, i1 } %i.anm, 0     ; 4 uses
  %i.anp = icmp slt i32 %i.ano, 0
  %or.cond.i.i720 = or i1 %i.ann, %i.anp
  br i1 %or.cond.i.i720, label %_ZN15hb_vector_buf_t10append_strEPKc.exit738, label %bb.iz, !prof !75

bb.iz:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit719
  %i.anq = load i32, ptr %1, align 8, !tbaa !13   ; 4 uses
  %i.anr = icmp slt i32 %i.anq, 0
  br i1 %i.anr, label %_ZN15hb_vector_buf_t10append_strEPKc.exit738, label %bb.ja, !prof !22

bb.ja:                                            ; preds = %bb.iz
  %.not.i.i.i.i721 = icmp samesign ugt i32 %i.ano, %i.anq
  br i1 %.not.i.i.i.i721, label %.preheader.i.i.i.i724, label %bb.jf, !prof !22

.preheader.i.i.i.i724:                            ; preds = %bb.ja, %.preheader.i.i.i.i724
  %.053.i.i.i.i725 = phi i32 [ %i.anu, %.preheader.i.i.i.i724 ], [ %i.anq, %bb.ja ] ; 2 uses
  %i.ans = lshr i32 %.053.i.i.i.i725, 1
  %i.ant = add nuw i32 %.053.i.i.i.i725, 8
  %i.anu = add nuw i32 %i.ant, %i.ans             ; 6 uses
  %i.anv = icmp ugt i32 %i.ano, %i.anu
  br i1 %i.anv, label %.preheader.i.i.i.i724, label %.thread39.i.i.i.i726, !llvm.loop !66

.thread39.i.i.i.i726:                             ; preds = %.preheader.i.i.i.i724
  %.not8.i.i.i.i.i.i727 = icmp eq i32 %i.anq, 0
  %i.anw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !12 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i727, label %bb.jb, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i728

bb.jb:                                            ; preds = %.thread39.i.i.i.i726
  %.not9.i.i.i.i.i.i735 = icmp eq ptr %i.anx, null
  br i1 %.not9.i.i.i.i.i.i735, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i728, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.any = zext i32 %i.anu to i64
  %i.anz = call ptr @hb_malloc(i64 noundef %i.any) #12 ; 4 uses
  %.not10.i.i.i.i.i.i736 = icmp eq ptr %i.anz, null
  br i1 %.not10.i.i.i.i.i.i736, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i732, label %bb.jd, !prof !22

bb.jd:                                            ; preds = %bb.jc
  %i.aoa = load i32, ptr %i.bo, align 4, !tbaa !8 ; 2 uses
  %.not.i.i.i.i.i.i.i737 = icmp eq i32 %i.aoa, 0
  br i1 %.not.i.i.i.i.i.i.i737, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i730, label %bb.je, !prof !22

bb.je:                                            ; preds = %bb.jd
  %i.aob = zext i32 %i.aoa to i64
  %i.aoc = load ptr, ptr %i.anw, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.anz, ptr readonly align 1 %i.aoc, i64 range(i64 0, 103079215081) %i.aob, i1 false), !alias.scope !318
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i730

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i728: ; preds = %bb.jb, %.thread39.i.i.i.i726
  %i.aod = phi ptr [ null, %bb.jb ], [ %i.anx, %.thread39.i.i.i.i726 ]
  %i.aoe = zext i32 %i.anu to i64
  %i.aof = call ptr @hb_realloc(ptr noundef %i.aod, i64 noundef %i.aoe) #12 ; 2 uses
  %.not22.i.i.i.i729 = icmp eq ptr %i.aof, null
  br i1 %.not22.i.i.i.i729, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i732, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i730, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i732: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i728, %bb.jc
  %i.aog = load i32, ptr %1, align 8, !tbaa !13   ; 2 uses
  %.not23.i.i.i.i733 = icmp ugt i32 %i.anu, %i.aog
  br i1 %.not23.i.i.i.i733, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i734, label %bb.jf

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i730: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i728, %bb.je, %bb.jd
  %.1.i.i52.i.i.i.i731 = phi ptr [ %i.aof, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i728 ], [ %i.anz, %bb.jd ], [ %i.anz, %bb.je ]
  store ptr %.1.i.i52.i.i.i.i731, ptr %i.anw, align 8, !tbaa !12
  store i32 %i.anu, ptr %1, align 8, !tbaa !13
  br label %bb.jf

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i734:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i732
  %i.aoh = xor i32 %i.aog, -1
  store i32 %i.aoh, ptr %1, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit738

bb.jf:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i730, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i732, %bb.ja
  store i32 %i.ano, ptr %i.bo, align 4, !tbaa !8
  %i.aoi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aoj = load ptr, ptr %i.aoi, align 8, !tbaa !12
  %i.aok = zext i32 %i.anl to i64
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoj, i64 %i.aok
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.aol, ptr noundef nonnull readonly align 1 dereferenceable(21) @.str.22, i64 range(i64 0, 103079215081) 21, i1 false), !alias.scope !322
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit738

_ZN15hb_vector_buf_t10append_strEPKc.exit738:     ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit719, %bb.iz, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i734, %bb.jf
  br i1 %.not.i878.not, label %._crit_edge982, label %.lr.ph981

.lr.ph981:                                        ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit738
  %i.aom = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %wide.trip.count1033 = zext nneg i32 %i.x to i64
  br label %bb.lo

bb.jg:                                            ; preds = %.lr.ph, %_ZN15hb_vector_buf_t10append_strEPKc.exit795
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN15hb_vector_buf_t10append_strEPKc.exit795 ] ; 4 uses
  %i.aon = load i32, ptr %i.bo, align 4, !tbaa !8
  %3 = trunc nuw i64 %indvars.iv to i32
  %4 = add nuw i64 %indvars.iv, 4
  %5 = and i64 %4, 4294967295
  %6 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0.ph, i64 %5
  store i32 %i.aon, ptr %6, align 4, !tbaa !74
  %i.aoo = add i32 %3, 5
  %i.aop = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef %i.aoo) ; 0 uses
  %i.aoq = load i32, ptr %i.bo, align 4, !tbaa !8 ; 2 uses
  %i.aor = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.aoq, i32 7) ; 2 uses
  %i.aos = extractvalue { i32, i1 } %i.aor, 1
  %i.aot = extractvalue { i32, i1 } %i.aor, 0     ; 4 uses
  %i.aou = icmp slt i32 %i.aot, 0
  %or.cond.i.i739 = or i1 %i.aos, %i.aou
  br i1 %or.cond.i.i739, label %_ZN15hb_vector_buf_t10append_strEPKc.exit757, label %bb.jh, !prof !75

bb.jh:                                            ; preds = %bb.jg
  %i.aov = load i32, ptr %1, align 8, !tbaa !13   ; 4 uses
  %i.aow = icmp slt i32 %i.aov, 0
  br i1 %i.aow, label %_ZN15hb_vector_buf_t10append_strEPKc.exit757, label %bb.ji, !prof !22

bb.ji:                                            ; preds = %bb.jh
  %.not.i.i.i.i740 = icmp samesign ugt i32 %i.aot, %i.aov
  br i1 %.not.i.i.i.i740, label %.preheader.i.i.i.i743, label %bb.jn, !prof !22

.preheader.i.i.i.i743:                            ; preds = %bb.ji, %.preheader.i.i.i.i743
  %.053.i.i.i.i744 = phi i32 [ %i.aoz, %.preheader.i.i.i.i743 ], [ %i.aov, %bb.ji ] ; 2 uses
  %i.aox = lshr i32 %.053.i.i.i.i744, 1
  %i.aoy = add nuw i32 %.053.i.i.i.i744, 8
  %i.aoz = add nuw i32 %i.aoy, %i.aox             ; 6 uses
  %i.apa = icmp ugt i32 %i.aot, %i.aoz
  br i1 %i.apa, label %.preheader.i.i.i.i743, label %.thread39.i.i.i.i745, !llvm.loop !66

.thread39.i.i.i.i745:                             ; preds = %.preheader.i.i.i.i743
  %.not8.i.i.i.i.i.i746 = icmp eq i32 %i.aov, 0
  %i.apb = load ptr, ptr %i.amg, align 8, !tbaa !12 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i746, label %bb.jj, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i747

bb.jj:                                            ; preds = %.thread39.i.i.i.i745
  %.not9.i.i.i.i.i.i754 = icmp eq ptr %i.apb, null
  br i1 %.not9.i.i.i.i.i.i754, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i747, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.apc = zext i32 %i.aoz to i64
  %i.apd = call ptr @hb_malloc(i64 noundef %i.apc) #12 ; 4 uses
  %.not10.i.i.i.i.i.i755 = icmp eq ptr %i.apd, null
  br i1 %.not10.i.i.i.i.i.i755, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i751, label %bb.jl, !prof !22

bb.jl:                                            ; preds = %bb.jk
  %i.ape = load i32, ptr %i.bo, align 4, !tbaa !8 ; 2 uses
  %.not.i.i.i.i.i.i.i756 = icmp eq i32 %i.ape, 0
  br i1 %.not.i.i.i.i.i.i.i756, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i749, label %bb.jm, !prof !22

bb.jm:                                            ; preds = %bb.jl
  %i.apf = zext i32 %i.ape to i64
  %i.apg = load ptr, ptr %i.amg, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apd, ptr readonly align 1 %i.apg, i64 range(i64 0, 103079215081) %i.apf, i1 false), !alias.scope !326
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i749

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i747: ; preds = %bb.jj, %.thread39.i.i.i.i745
  %i.aph = phi ptr [ null, %bb.jj ], [ %i.apb, %.thread39.i.i.i.i745 ]
  %i.api = zext i32 %i.aoz to i64
  %i.apj = call ptr @hb_realloc(ptr noundef %i.aph, i64 noundef %i.api) #12 ; 2 uses
  %.not22.i.i.i.i748 = icmp eq ptr %i.apj, null
  br i1 %.not22.i.i.i.i748, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i751, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i749, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i751: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i747, %bb.jk
  %i.apk = load i32, ptr %1, align 8, !tbaa !13   ; 2 uses
  %.not23.i.i.i.i752 = icmp ugt i32 %i.aoz, %i.apk
  br i1 %.not23.i.i.i.i752, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i753, label %bb.jn

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i749: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i747, %bb.jm, %bb.jl
  %.1.i.i52.i.i.i.i750 = phi ptr [ %i.apj, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i747 ], [ %i.apd, %bb.jl ], [ %i.apd, %bb.jm ]
  store ptr %.1.i.i52.i.i.i.i750, ptr %i.amg, align 8, !tbaa !12
  store i32 %i.aoz, ptr %1, align 8, !tbaa !13
  br label %bb.jn

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i753:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i751
  %i.apl = xor i32 %i.apk, -1
  store i32 %i.apl, ptr %1, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit757

bb.jn:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i749, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i751, %bb.ji
  store i32 %i.aot, ptr %i.bo, align 4, !tbaa !8
  %i.apm = load ptr, ptr %i.amg, align 8, !tbaa !12
  %i.apn = zext i32 %i.aoq to i64
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apm, i64 %i.apn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.apo, ptr noundef nonnull readonly align 1 dereferenceable(7) @.str.19, i64 range(i64 0, 103079215081) 7, i1 false), !alias.scope !330
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit757

_ZN15hb_vector_buf_t10append_strEPKc.exit757:     ; preds = %bb.jg, %bb.jh, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i753, %bb.jn
  %i.app = load ptr, ptr %i.amh, align 8, !tbaa !334
  %i.apq = getelementptr inbounds nuw [24 x i8], ptr %i.app, i64 %indvars.iv ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 8
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !12
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apq, i64 4
  %i.apu = load i32, ptr %i.apt, align 4, !tbaa !8 ; 3 uses
  %i.apv = load i32, ptr %i.bo, align 4, !tbaa !8 ; 2 uses
  %i.apw = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.apv, i32 %i.apu) ; 2 uses
  %i.apx = extractvalue { i32, i1 } %i.apw, 1
  %i.apy = extractvalue { i32, i1 } %i.apw, 0     ; 4 uses
  %i.apz = icmp slt i32 %i.apy, 0
  %or.cond.i758 = or i1 %i.apx, %i.apz
  br i1 %or.cond.i758, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit776, label %bb.jo, !prof !75

bb.jo:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit757
  %i.aqa = load i32, ptr %1, align 8, !tbaa !13   ; 4 uses
  %i.aqb = icmp slt i32 %i.aqa, 0
  br i1 %i.aqb, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit776, label %bb.jp, !prof !22

bb.jp:                                            ; preds = %bb.jo
  %.not.i.i.i759 = icmp samesign ugt i32 %i.apy, %i.aqa
  br i1 %.not.i.i.i759, label %.preheader.i.i.i762, label %bb.ju, !prof !22

.preheader.i.i.i762:                              ; preds = %bb.jp, %.preheader.i.i.i762
  %.053.i.i.i763 = phi i32 [ %i.aqe, %.preheader.i.i.i762 ], [ %i.aqa, %bb.jp ] ; 2 uses
  %i.aqc = lshr i32 %.053.i.i.i763, 1
  %i.aqd = add nuw i32 %.053.i.i.i763, 8
  %i.aqe = add nuw i32 %i.aqd, %i.aqc             ; 6 uses
  %i.aqf = icmp ugt i32 %i.apy, %i.aqe
  br i1 %i.aqf, label %.preheader.i.i.i762, label %.thread39.i.i.i764, !llvm.loop !66

.thread39.i.i.i764:                               ; preds = %.preheader.i.i.i762
  %.not8.i.i.i.i.i765 = icmp eq i32 %i.aqa, 0
  %i.aqg = load ptr, ptr %i.amg, align 8, !tbaa !12 ; 2 uses
  br i1 %.not8.i.i.i.i.i765, label %bb.jq, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i766

bb.jq:                                            ; preds = %.thread39.i.i.i764
  %.not9.i.i.i.i.i773 = icmp eq ptr %i.aqg, null
  br i1 %.not9.i.i.i.i.i773, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i766, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.aqh = zext i32 %i.aqe to i64
  %i.aqi = call ptr @hb_malloc(i64 noundef %i.aqh) #12 ; 4 uses
  %.not10.i.i.i.i.i774 = icmp eq ptr %i.aqi, null
  br i1 %.not10.i.i.i.i.i774, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i770, label %bb.js, !prof !22

bb.js:                                            ; preds = %bb.jr
  %i.aqj = load i32, ptr %i.bo, align 4, !tbaa !8 ; 2 uses
  %.not.i.i.i.i.i.i775 = icmp eq i32 %i.aqj, 0
  br i1 %.not.i.i.i.i.i.i775, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i768, label %bb.jt, !prof !22

bb.jt:                                            ; preds = %bb.js
  %i.aqk = zext i32 %i.aqj to i64
  %i.aql = load ptr, ptr %i.amg, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aqi, ptr readonly align 1 %i.aql, i64 range(i64 0, 103079215081) %i.aqk, i1 false), !alias.scope !335
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i768

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i766: ; preds = %bb.jq, %.thread39.i.i.i764
  %i.aqm = phi ptr [ null, %bb.jq ], [ %i.aqg, %.thread39.i.i.i764 ]
  %i.aqn = zext i32 %i.aqe to i64
  %i.aqo = call ptr @hb_realloc(ptr noundef %i.aqm, i64 noundef %i.aqn) #12 ; 2 uses
  %.not22.i.i.i767 = icmp eq ptr %i.aqo, null
  br i1 %.not22.i.i.i767, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i770, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i768, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i770: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i766, %bb.jr
  %i.aqp = load i32, ptr %1, align 8, !tbaa !13   ; 2 uses
  %.not23.i.i.i771 = icmp ugt i32 %i.aqe, %i.aqp
  br i1 %.not23.i.i.i771, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i772, label %bb.ju

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i768: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i766, %bb.jt, %bb.js
  %.1.i.i52.i.i.i769 = phi ptr [ %i.aqo, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i766 ], [ %i.aqi, %bb.js ], [ %i.aqi, %bb.jt ]
  store ptr %.1.i.i52.i.i.i769, ptr %i.amg, align 8, !tbaa !12
  store i32 %i.aqe, ptr %1, align 8, !tbaa !13
  br label %bb.ju

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i772:     ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i770
  %i.aqq = xor i32 %i.aqp, -1
  store i32 %i.aqq, ptr %1, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit776

bb.ju:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i768, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i770, %bb.jp
  store i32 %i.apy, ptr %i.bo, align 4, !tbaa !8
  %.not.i.i760 = icmp eq i32 %i.apu, 0
  br i1 %.not.i.i760, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit776, label %bb.jv, !prof !22

bb.jv:                                            ; preds = %bb.ju
  %i.aqr = zext i32 %i.apu to i64
  %i.aqs = load ptr, ptr %i.amg, align 8, !tbaa !12
  %i.aqt = zext i32 %i.apv to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %i.aqt
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aqu, ptr readonly align 1 %i.aps, i64 range(i64 0, 103079215081) %i.aqr, i1 false), !alias.scope !339
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit776

_ZN15hb_vector_buf_t10append_lenEPKcj.exit776:    ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit757, %bb.jo, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i772, %bb.ju, %bb.jv
  %i.aqv = load i32, ptr %i.bo, align 4, !tbaa !8 ; 2 uses
  %i.aqw = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.aqv, i32 8) ; 2 uses
  %i.aqx = extractvalue { i32, i1 } %i.aqw, 1
  %i.aqy = extractvalue { i32, i1 } %i.aqw, 0     ; 4 uses
  %i.aqz = icmp slt i32 %i.aqy, 0
  %or.cond.i.i777 = or i1 %i.aqx, %i.aqz
  br i1 %or.cond.i.i777, label %_ZN15hb_vector_buf_t10append_strEPKc.exit795, label %bb.jw, !prof !75

bb.jw:                                            ; preds = %_ZN15hb_vector_buf_t10append_lenEPKcj.exit776
  %i.ara = load i32, ptr %1, align 8, !tbaa !13   ; 4 uses
  %i.arb = icmp slt i32 %i.ara, 0
  br i1 %i.arb, label %_ZN15hb_vector_buf_t10append_strEPKc.exit795, label %bb.jx, !prof !22

bb.jx:                                            ; preds = %bb.jw
  %.not.i.i.i.i778 = icmp samesign ugt i32 %i.aqy, %i.ara
  br i1 %.not.i.i.i.i778, label %.preheader.i.i.i.i781, label %bb.kc, !prof !22

.preheader.i.i.i.i781:                            ; preds = %bb.jx, %.preheader.i.i.i.i781
  %.053.i.i.i.i782 = phi i32 [ %i.are, %.preheader.i.i.i.i781 ], [ %i.ara, %bb.jx ] ; 2 uses
  %i.arc = lshr i32 %.053.i.i.i.i782, 1
  %i.ard = add nuw i32 %.053.i.i.i.i782, 8
  %i.are = add nuw i32 %i.ard, %i.arc             ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN18hb_pdf_resources_t19add_extgstate_alphaEf:_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  store <2 x i32> %i.ai, ptr %i.bc, align 8, !tbaa !74
  store ptr %i.ak, ptr %i.bd, align 8, !tbaa !12
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i32 %i.al, ptr %i.be, align 8, !tbaa !59
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.bf = add i32 %i.aj, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.bf, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.m, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

bb.m:                                             ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i
  call void @hb_free(ptr noundef %i.ak) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, %bb.m
  %i.bg = add i32 %i.ah, 5
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bi = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.bh, ptr noundef nonnull @.str.12) ; 0 uses
  %i.bj = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bh, i32 noundef %i.b) ; 0 uses
  %i.bk = call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %i.bh, i8 noundef signext 32) ; 0 uses
  %i.bl = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.bh, i32 noundef %i.bg) ; 0 uses
  %i.bm = call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.bh, ptr noundef nonnull @.str.29) ; 0 uses
  %i.bn = load i32, ptr %2, align 8, !tbaa !13
  %i.bo = add i32 %i.bn, -1
  %spec.select.i.i.i = icmp ult i32 %i.bo, -2
  br i1 %spec.select.i.i.i, label %bb.n, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.n:                                             ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit
  store i32 0, ptr %i.e, align 4, !tbaa !8
  %i.bp = load ptr, ptr %i.f, align 8, !tbaa !12
  call void @hb_free(ptr noundef %i.bp) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 16, ptr noundef nonnull @.str.30, i32 noundef %1) #12 ; 0 uses
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #13 ; 2 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8    ; 2 uses
  %i.g = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.f, i32 %i.d) ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  %i.i = extractvalue { i32, i1 } %i.g, 0         ; 4 uses
  %i.j = icmp slt i32 %i.i, 0
  %or.cond.i = or i1 %i.h, %i.j
  br i1 %or.cond.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.b, !prof !75

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp samesign ugt i32 %i.i, %i.k
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.h, !prof !22

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %.053.i.i.i = phi i32 [ %i.o, %.preheader.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.m = lshr i32 %.053.i.i.i, 1
  %i.n = add nuw i32 %.053.i.i.i, 8
  %i.o = add nuw i32 %i.n, %i.m                   ; 6 uses
  %i.p = icmp ugt i32 %i.i, %i.o
  br i1 %i.p, label %.preheader.i.i.i, label %.thread39.i.i.i, !llvm.loop !66

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %i.k, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12   ; 2 uses
  br i1 %.not8.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i

bb.d:                                             ; preds = %.thread39.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = zext i32 %i.o to i64
  %i.t = tail call ptr @hb_malloc(i64 noundef %i.s) #12 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.e, align 4, !tbaa !8    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.v = zext i32 %i.u to i64
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr readonly align 1 %i.w, i64 range(i64 0, 103079215081) %i.v, i1 false), !alias.scope !429
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.d, %.thread39.i.i.i
  %i.x = phi ptr [ null, %bb.d ], [ %i.r, %.thread39.i.i.i ]
  %i.y = zext i32 %i.o to i64
  %i.z = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.y) #12 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not22.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.e
  %i.aa = load i32, ptr %0, align 8, !tbaa !13    ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.o, %i.aa
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, label %bb.h

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.g, %bb.f
  %.1.i.i52.i.i.i = phi ptr [ %i.z, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.t, %bb.f ], [ %i.t, %bb.g ]
  store ptr %.1.i.i52.i.i.i, ptr %i.q, align 8, !tbaa !12
  store i32 %i.o, ptr %0, align 8, !tbaa !13
  br label %bb.h

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i
  %i.ab = xor i32 %i.aa, -1
  store i32 %i.ab, ptr %0, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

bb.h:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, %bb.c
  store i32 %i.i, ptr %i.e, align 4, !tbaa !8
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.ac = and i64 %i.c, 4294967295
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.af = zext i32 %i.f to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull readonly align 16 %i.a, i64 range(i64 0, 103079215081) %i.ac, i1 false), !alias.scope !433
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

_ZN15hb_vector_buf_t10append_lenEPKcj.exit:       ; preds = %bb.a, %bb.b, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, %bb.h, %bb.i
  %.0.i = phi i1 [ true, %bb.i ], [ false, %bb.a ], [ true, %bb.h ], [ false, %bb.b ], [ false, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 9 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %2, i32 12) ; 3 uses
  %.not50 = icmp eq i32 %2, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %spec.store.select, 7       ; 3 uses
  %i.c = icmp ult i32 %2, 8
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %spec.store.select, 8
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.03441.epil.init = phi float [ 5.000000e-01, %.lr.ph.preheader ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod65 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod65)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03441.epil = phi float [ %i.d, %.lr.ph.epil ], [ %.03441.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.d = fmul float %.03441.epil, 1.000000e-01    ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !437

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.034.lcssa = phi float [ 5.000000e-01, %bb.a ], [ %i.p, %._crit_edge.loopexit.unr-lcssa ], [ %i.d, %.lr.ph.epil ]
  %i.e = tail call float @llvm.fabs.f32(float %1)
  %i.f = fcmp olt float %i.e, %.034.lcssa
  %.032 = select i1 %i.f, float 0.000000e+00, float %1 ; 2 uses
  %i.g = tail call float @llvm.fabs.f32(float %.032)
  %i.h = fcmp ueq float %i.g, +inf
  br i1 %i.h, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03441 = phi float [ 5.000000e-01, %.lr.ph.preheader.new ], [ %i.p, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.i = fmul float %.03441, 1.000000e-01
  %i.j = fmul float %i.i, 1.000000e-01
  %i.k = fmul float %i.j, 1.000000e-01
  %i.l = fmul float %i.k, 1.000000e-01
  %i.m = fmul float %i.l, 1.000000e-01
  %i.n = fmul float %i.m, 1.000000e-01
  %i.o = fmul float %i.n, 1.000000e-01
  %i.p = fmul float %i.o, 1.000000e-01            ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !439

bb.b:                                             ; preds = %._crit_edge
  %i.q = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 noundef signext 48) ; 0 uses
  br label %bb.t

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 6, ptr noundef nonnull @.str.31, i32 noundef %spec.store.select) #12 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.s = fpext float %.032 to double
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull %i.a, double noundef %i.s) #12 ; 0 uses
  %i.u = tail call noundef ptr @_Z27hb_vector_decimal_point_getv() #12 ; 4 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !104
  %.not = icmp eq i8 %i.v, 46
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !104
  %.not37 = icmp eq i8 %i.x, 0
  br i1 %.not37, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.u) #13 ; 4 uses
  %.not38 = icmp eq ptr %i.y, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #13
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ae = add i64 %i.ac, 1
  %i.af = and i64 %i.ae, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ab, i64 %i.af, i1 false)
  store i8 46, ptr %i.y, align 1, !tbaa !104
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.ag = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.b, i32 noundef 46) #13 ; 4 uses
  %.not39 = icmp eq ptr %i.ag, null
  br i1 %.not39, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ah
  %.043 = getelementptr inbounds i8, ptr %i.ai, i64 -1 ; 3 uses
  %i.aj = icmp ugt ptr %.043, %i.ag
  br i1 %i.aj, label %.lr.ph46, label %.critedge

.lr.ph46:                                         ; preds = %bb.h, %bb.i
  %.044 = phi ptr [ %.0, %bb.i ], [ %.043, %bb.h ] ; 4 uses
  %i.ak = load i8, ptr %.044, align 1, !tbaa !104
  %i.al = icmp eq i8 %i.ak, 48
  br i1 %i.al, label %bb.i, label %.critedge

bb.i:                                             ; preds = %.lr.ph46
  store i8 0, ptr %.044, align 1, !tbaa !104
  %.0 = getelementptr inbounds i8, ptr %.044, i64 -1 ; 3 uses
  %i.am = icmp ugt ptr %.0, %i.ag
  br i1 %i.am, label %.lr.ph46, label %.critedge, !llvm.loop !440

.critedge:                                        ; preds = %.lr.ph46, %bb.i, %bb.h
  %.0.lcssa = phi ptr [ %.043, %bb.h ], [ %.0, %bb.i ], [ %.044, %.lr.ph46 ] ; 2 uses
  %i.an = icmp eq ptr %.0.lcssa, %i.ag
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge
  store i8 0, ptr %.0.lcssa, align 1, !tbaa !104
  br label %bb.k

bb.k:                                             ; preds = %.critedge, %bb.j, %bb.g
  %i.ao = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #13 ; 2 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8  ; 2 uses
  %i.as = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ar, i32 %i.ap) ; 2 uses
  %i.at = extractvalue { i32, i1 } %i.as, 1
  %i.au = extractvalue { i32, i1 } %i.as, 0       ; 4 uses
  %i.av = icmp slt i32 %i.au, 0
  %or.cond.i = or i1 %i.at, %i.av
  br i1 %or.cond.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.l, !prof !75

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %0, align 8, !tbaa !13    ; 4 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.m, !prof !22

bb.m:                                             ; preds = %bb.l
  %.not.i.i.i = icmp samesign ugt i32 %i.au, %i.aw
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.r, !prof !22

.preheader.i.i.i:                                 ; preds = %bb.m, %.preheader.i.i.i
  %.053.i.i.i = phi i32 [ %i.ba, %.preheader.i.i.i ], [ %i.aw, %bb.m ] ; 2 uses
  %i.ay = lshr i32 %.053.i.i.i, 1
  %i.az = add nuw i32 %.053.i.i.i, 8
  %i.ba = add nuw i32 %i.az, %i.ay                ; 6 uses
  %i.bb = icmp ugt i32 %i.au, %i.ba
  br i1 %i.bb, label %.preheader.i.i.i, label %.thread39.i.i.i, !llvm.loop !66

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %i.aw, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !12 ; 2 uses
  br i1 %.not8.i.i.i.i.i, label %bb.n, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i

bb.n:                                             ; preds = %.thread39.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = zext i32 %i.ba to i64
  %i.bf = call ptr @hb_malloc(i64 noundef %i.be) #12 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %bb.p, !prof !22

bb.p:                                             ; preds = %bb.o
  %i.bg = load i32, ptr %i.aq, align 4, !tbaa !8  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, label %bb.q, !prof !22

bb.q:                                             ; preds = %bb.p
  %i.bh = zext i32 %i.bg to i64
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr readonly align 1 %i.bi, i64 range(i64 0, 103079215081) %i.bh, i1 false), !alias.scope !441
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.n, %.thread39.i.i.i
  %i.bj = phi ptr [ null, %bb.n ], [ %i.bd, %.thread39.i.i.i ]
  %i.bk = zext i32 %i.ba to i64
  %i.bl = call ptr @hb_realloc(ptr noundef %i.bj, i64 noundef %i.bk) #12 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not22.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.o
  %i.bm = load i32, ptr %0, align 8, !tbaa !13    ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.ba, %i.bm
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, label %bb.r

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.q, %bb.p
  %.1.i.i52.i.i.i = phi ptr [ %i.bl, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.bf, %bb.p ], [ %i.bf, %bb.q ]
  store ptr %.1.i.i52.i.i.i, ptr %i.bc, align 8, !tbaa !12
  store i32 %i.ba, ptr %0, align 8, !tbaa !13
  br label %bb.r

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i
  %i.bn = xor i32 %i.bm, -1
  store i32 %i.bn, ptr %0, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

bb.r:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, %bb.m
  store i32 %i.au, ptr %i.aq, align 4, !tbaa !8
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  %i.bo = and i64 %i.ao, 4294967295
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !12
  %i.br = zext i32 %i.ar to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr nonnull readonly align 16 %i.b, i64 range(i64 0, 103079215081) %i.bo, i1 false), !alias.scope !445
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

_ZN15hb_vector_buf_t10append_lenEPKcj.exit:       ; preds = %bb.k, %bb.l, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.t

bb.t:                                             ; preds = %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @hb_vector_paint_clear(ptr noundef) local_unnamed_addr #3

declare ptr @hb_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIcLb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIcLb0EE11resize_fullEibb.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !13     ; 4 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIcLb0EE11resize_fullEibb.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread, !prof !22
end_hunk_1
begin_hunk_2_@_ZN18hb_pdf_resources_t21add_xobject_png_imageEPKcjjjjbPKhjS3_j:_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  br i1 %.not23.i.i.i.i215, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i216, label %bb.bk

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i212: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i210, %bb.bj, %bb.bi
  %.1.i.i52.i.i.i.i213 = phi ptr [ %i.ir, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i210 ], [ %i.il, %bb.bi ], [ %i.il, %bb.bj ]
  store ptr %.1.i.i52.i.i.i.i213, ptr %i.f, align 8, !tbaa !12
  store i32 %i.ih, ptr %12, align 8, !tbaa !13
  br label %bb.bk

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i216:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i214
  %i.it = xor i32 %i.is, -1                       ; 2 uses
  store i32 %i.it, ptr %12, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit220

bb.bk:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i212, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i214, %bb.bf
  store i32 %i.ic, ptr %i.e, align 4, !tbaa !8
  %i.iu = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.iv = zext i32 %i.hz to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.iw, ptr noundef nonnull readonly align 1 dereferenceable(10) %i.hw, i64 range(i64 0, 103079215081) %i.hx, i1 false), !alias.scope !814
  %.pr.pre = load i32, ptr %12, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit220

_ZN15hb_vector_buf_t10append_strEPKc.exit220:     ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit201, %bb.bk, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i216
  %i.ix = phi i32 [ %i.it, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i216 ], [ %.pr.pre679, %_ZN15hb_vector_buf_t10append_strEPKc.exit201 ], [ %.pr.pre, %bb.bk ] ; 5 uses
  %i.iy = load i32, ptr %i.e, align 4, !tbaa !8   ; 2 uses
  %.not.i.i221 = icmp slt i32 %i.iy, %i.ix
  br i1 %.not.i.i221, label %.critedge.i.i223, label %bb.bl

bb.bl:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit220
  %i.iz = add i32 %i.iy, 1                        ; 2 uses
  %i.ja = icmp slt i32 %i.ix, 0
  br i1 %i.ja, label %_ZN15hb_vector_buf_t8append_cEc.exit239, label %bb.bm, !prof !22

bb.bm:                                            ; preds = %bb.bl
  %.not.i.i.i222 = icmp ugt i32 %i.iz, %i.ix
  br i1 %.not.i.i.i222, label %.preheader.i.i.i225, label %.critedge.i.i223, !prof !22

.preheader.i.i.i225:                              ; preds = %bb.bm, %.preheader.i.i.i225
  %.053.i.i.i226 = phi i32 [ %i.jd, %.preheader.i.i.i225 ], [ %i.ix, %bb.bm ] ; 2 uses
  %i.jb = lshr i32 %.053.i.i.i226, 1
  %i.jc = add i32 %.053.i.i.i226, 8
  %i.jd = add i32 %i.jc, %i.jb                    ; 6 uses
  %i.je = icmp ugt i32 %i.iz, %i.jd
  br i1 %i.je, label %.preheader.i.i.i225, label %.thread39.i.i.i227, !llvm.loop !66

.thread39.i.i.i227:                               ; preds = %.preheader.i.i.i225
  %.not8.i.i.i.i.i228 = icmp eq i32 %i.ix, 0
  %i.jf = load ptr, ptr %i.f, align 8, !tbaa !12  ; 2 uses
  br i1 %.not8.i.i.i.i.i228, label %bb.bn, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i229

bb.bn:                                            ; preds = %.thread39.i.i.i227
  %.not9.i.i.i.i.i236 = icmp eq ptr %i.jf, null
  br i1 %.not9.i.i.i.i.i236, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i229, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jg = zext i32 %i.jd to i64
  %i.jh = call ptr @hb_malloc(i64 noundef %i.jg) #12 ; 4 uses
  %.not10.i.i.i.i.i237 = icmp eq ptr %i.jh, null
  br i1 %.not10.i.i.i.i.i237, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i233, label %bb.bp, !prof !22

bb.bp:                                            ; preds = %bb.bo
  %i.ji = load i32, ptr %i.e, align 4, !tbaa !8   ; 2 uses
  %.not.i.i.i.i.i.i238 = icmp eq i32 %i.ji, 0
  br i1 %.not.i.i.i.i.i.i238, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i231, label %bb.bq, !prof !22

bb.bq:                                            ; preds = %bb.bp
  %i.jj = zext i32 %i.ji to i64
  %i.jk = load ptr, ptr %i.f, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jh, ptr readonly align 1 %i.jk, i64 range(i64 0, 103079215081) %i.jj, i1 false), !alias.scope !818
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i231

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i229: ; preds = %bb.bn, %.thread39.i.i.i227
  %i.jl = phi ptr [ null, %bb.bn ], [ %i.jf, %.thread39.i.i.i227 ]
  %i.jm = zext i32 %i.jd to i64
  %i.jn = call ptr @hb_realloc(ptr noundef %i.jl, i64 noundef %i.jm) #12 ; 2 uses
  %.not22.i.i.i230 = icmp eq ptr %i.jn, null
  br i1 %.not22.i.i.i230, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i233, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i231, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i233: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i229, %bb.bo
  %i.jo = load i32, ptr %12, align 8, !tbaa !13   ; 2 uses
  %.not23.i.i.i234 = icmp ugt i32 %i.jd, %i.jo
  br i1 %.not23.i.i.i234, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i235, label %.critedge.i.i223

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i235: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i233
  %i.jp = xor i32 %i.jo, -1
  store i32 %i.jp, ptr %12, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t8append_cEc.exit239

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i231:     ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i229, %bb.bq, %bb.bp
  %.1.i.i52.i.i.i232 = phi ptr [ %i.jn, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i229 ], [ %i.jh, %bb.bp ], [ %i.jh, %bb.bq ]
  store ptr %.1.i.i52.i.i.i232, ptr %i.f, align 8, !tbaa !12
  store i32 %i.jd, ptr %12, align 8, !tbaa !13
  br label %.critedge.i.i223

.critedge.i.i223:                                 ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i231, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i233, %bb.bm, %_ZN15hb_vector_buf_t10append_strEPKc.exit220
  %i.jq = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.jr = load i32, ptr %i.e, align 4, !tbaa !8   ; 2 uses
  %i.js = add i32 %i.jr, 1
  store i32 %i.js, ptr %i.e, align 4, !tbaa !8
  %i.jt = zext i32 %i.jr to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.jt
  store i8 10, ptr %i.ju, align 1, !tbaa !104
  br label %_ZN15hb_vector_buf_t8append_cEc.exit239

_ZN15hb_vector_buf_t8append_cEc.exit239:          ; preds = %bb.bl, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i235, %.critedge.i.i223
  %i.jv = load i8, ptr @_hb_NullPool, align 16
  store i8 %i.jv, ptr @_hb_CrapPool, align 16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit161

_ZN15hb_vector_buf_t10append_strEPKc.exit161:     ; preds = %bb.ak, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i157, %bb.ae, %._crit_edge, %_ZN15hb_vector_buf_t8append_cEc.exit239
  %i.jw = icmp ne ptr %9, null
  %i.jx = icmp ne i32 %10, 0
  %i.jy = and i1 %i.jw, %i.jx
  %or.cond5 = and i1 %i.bj, %i.jy
  br i1 %or.cond5, label %bb.br, label %_ZN15hb_vector_buf_t10append_strEPKc.exit434

bb.br:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %13, i8 0, i64 16, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 2, ptr %i.jz, align 8, !tbaa !59
  %i.ka = icmp eq i32 %4, 0
  %i.kb = add i32 %3, 1                           ; 3 uses
  %i.kc = icmp ult i32 %i.kb, 2
  %or.cond3.i = or i1 %i.kc, %i.ka
  br i1 %or.cond3.i, label %_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kd = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.kb, i32 %4) ; 2 uses
  %i.ke = extractvalue { i32, i1 } %i.kd, 0       ; 2 uses
  %i.kf = extractvalue { i32, i1 } %i.kd, 1
  br i1 %i.kf, label %_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kg = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 %4) ; 2 uses
  %i.kh = extractvalue { i32, i1 } %i.kg, 0
  %i.ki = extractvalue { i32, i1 } %i.kg, 1
  br i1 %i.ki, label %_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kj = zext i32 %i.ke to i64                   ; 2 uses
  %i.kk = call ptr @hb_malloc(i64 noundef %i.kj) #12 ; 6 uses
  %.not.i = icmp eq ptr %i.kk, null
  br i1 %.not.i, label %_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.kl, i8 0, i64 104, i1 false)
  store ptr %1, ptr %11, align 8, !tbaa !822
  store i32 %2, ptr %i.kl, align 8, !tbaa !825
  %i.km = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.kk, ptr %i.km, align 8, !tbaa !826
  %i.kn = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i32 %i.ke, ptr %i.kn, align 8, !tbaa !827
  %i.ko = call i32 @inflateInit_(ptr noundef nonnull %11, ptr noundef nonnull @.str.62, i32 noundef 112) #12
  %.not86.i = icmp eq i32 %i.ko, 0
  br i1 %.not86.i, label %bb.bw, label %_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread606

bb.bw:                                            ; preds = %bb.bv
  %i.kp = call i32 @inflate(ptr noundef nonnull %11, i32 noundef 4) #12
  %i.kq = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !828
  %i.ks = call i32 @inflateEnd(ptr noundef nonnull %11) #12 ; 0 uses
  %.not87.i = icmp eq i32 %i.kp, 1
  %.not88.i = icmp eq i64 %i.kr, %i.kj
  %or.cond.i = select i1 %.not87.i, i1 %.not88.i, i1 false
  br i1 %or.cond.i, label %bb.bx, label %_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread606

bb.bx:                                            ; preds = %bb.bw
  %i.kt = call noundef zeroext i1 @_ZN11hb_vector_tIcLb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.kh)
  br i1 %i.kt, label %bb.by, label %_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread606

bb.by:                                            ; preds = %bb.bx
  %i.ku = zext i32 %3 to i64                      ; 3 uses
  %i.kv = call ptr @hb_malloc(i64 noundef %i.ku) #12 ; 3 uses
  %.not89.i = icmp eq ptr %i.kv, null
  br i1 %.not89.i, label %_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread606, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kw = call ptr @hb_calloc(i64 noundef %i.ku, i64 noundef 1) #12 ; 2 uses
  %.not90.i.not = icmp eq ptr %i.kw, null
  br i1 %.not90.i.not, label %_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread.critedge, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %bb.bz
  %i.kx = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %wide.trip.count138.i = zext i32 %4 to i64
  %exitcond.peel.not.i = icmp eq i32 %3, 1
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv135.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next136.i, %._crit_edge.us.i ] ; 2 uses
  %i.ky = phi ptr [ %i.kw, %.lr.ph.us.preheader.i ], [ %i.kz, %._crit_edge.us.i ] ; 5 uses
  %i.kz = phi ptr [ %i.kv, %.lr.ph.us.preheader.i ], [ %i.ky, %._crit_edge.us.i ] ; 5 uses
  %i.la = trunc nuw i64 %indvars.iv135.i to i32   ; 2 uses
  %i.lb = mul i32 %i.kb, %i.la
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kk, i64 %i.lc ; 2 uses
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !104 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 1 ; 2 uses
  %i.lg = mul i32 %3, %i.la                       ; 2 uses
  %i.lh = load i8, ptr %i.ky, align 1, !tbaa !104 ; 3 uses
  %i.li = load i8, ptr %i.lf, align 1, !tbaa !104 ; 4 uses
  switch i8 %i.le, label %bb.ce [
    i8 4, label %bb.cb
    i8 3, label %bb.cc
    i8 2, label %bb.cd
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.lj = add i8 %i.li, %i.lh
  br label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  %i.lk = lshr i8 %i.lh, 1
  %i.ll = add i8 %i.li, %i.lk
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ca
  %i.lm = add i8 %i.li, %i.lh
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %.sink.i = phi i8 [ %i.lm, %bb.cd ], [ %i.ll, %bb.cc ], [ %i.lj, %bb.cb ], [ %i.li, %bb.ca ] ; 3 uses
  store i8 %.sink.i, ptr %i.kz, align 1, !tbaa !104
  %i.ln = zext i8 %.sink.i to i32
  %i.lo = icmp ugt i32 %10, %i.ln
  br i1 %i.lo, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.lp = zext i8 %.sink.i to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %9, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !104
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ls = phi i8 [ %i.lr, %bb.cf ], [ -1, %bb.ce ]
  %i.lt = load ptr, ptr %i.kx, align 8, !tbaa !12
  %15 = zext i32 %i.lg to i64
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %15
  store i8 %i.ls, ptr %i.lu, align 1, !tbaa !104
  br i1 %exitcond.peel.not.i, label %._crit_edge.us.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.cg, %bb.cn
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.cn ], [ 1, %bb.cg ] ; 6 uses
  %i.lv = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !104 ; 4 uses
  %.in.us.i = getelementptr inbounds nuw i8, ptr %i.ky, i64 %indvars.iv.i
  %i.ly = load i8, ptr %.in.us.i, align 1, !tbaa !104 ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv.i
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !104 ; 5 uses
  switch i8 %i.le, label %bb.cl [
    i8 4, label %bb.ch
    i8 1, label %bb.ck
    i8 2, label %bb.cj
    i8 3, label %bb.ci
  ]

bb.ch:                                            ; preds = %.peel.next.i
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.lv
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !104 ; 2 uses
  %i.md = zext i8 %i.lx to i32                    ; 2 uses
  %i.me = zext i8 %i.ly to i32
  %i.mf = zext i8 %i.mc to i32                    ; 2 uses
  %i.mg = sub nsw i32 %i.md, %i.mf                ; 2 uses
  %i.mh = add nsw i32 %i.mg, %i.me                ; 2 uses
  %i.mi = sub nsw i32 %i.mh, %i.md
  %i.mj = call i32 @llvm.abs.i32(i32 %i.mi, i1 true) ; 2 uses
  %i.mk = call i32 @llvm.abs.i32(i32 %i.mg, i1 true) ; 2 uses
  %i.ml = sub nsw i32 %i.mh, %i.mf
  %i.mm = call i32 @llvm.abs.i32(i32 %i.ml, i1 true) ; 2 uses
  %.not92.us.i = icmp samesign ugt i32 %i.mj, %i.mk
  %.not93.us.i = icmp samesign ugt i32 %i.mj, %i.mm
  %or.cond96.us.i = select i1 %.not92.us.i, i1 true, i1 %.not93.us.i
  %.not94.us.i = icmp samesign ugt i32 %i.mk, %i.mm
  %i.mn = select i1 %.not94.us.i, i8 %i.mc, i8 %i.ly
  %i.mo = select i1 %or.cond96.us.i, i8 %i.mn, i8 %i.lx
  %i.mp = add i8 %i.mo, %i.ma
  br label %bb.cl

bb.ci:                                            ; preds = %.peel.next.i
  %i.mq = zext i8 %i.lx to i16
  %i.mr = zext i8 %i.ly to i16
  %i.ms = add nuw nsw i16 %i.mr, %i.mq
  %i.mt = lshr i16 %i.ms, 1
  %i.mu = trunc nuw i16 %i.mt to i8
  %i.mv = add i8 %i.ma, %i.mu
  br label %bb.cl

bb.cj:                                            ; preds = %.peel.next.i
  %i.mw = add i8 %i.ma, %i.ly
  br label %bb.cl

bb.ck:                                            ; preds = %.peel.next.i
  %i.mx = add i8 %i.ma, %i.lx
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.ch, %.peel.next.i
  %.sink149.i = phi i8 [ %i.mv, %bb.ci ], [ %i.mp, %bb.ch ], [ %i.mx, %bb.ck ], [ %i.mw, %bb.cj ], [ %i.ma, %.peel.next.i ] ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.kz, i64 %indvars.iv.i
  store i8 %.sink149.i, ptr %i.my, align 1, !tbaa !104
  %i.mz = zext i8 %.sink149.i to i32
  %i.na = icmp ugt i32 %10, %i.mz
  br i1 %i.na, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.nb = zext i8 %.sink149.i to i64
  %i.nc = getelementptr inbounds nuw i8, ptr %9, i64 %i.nb
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !104
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.ne = phi i8 [ %i.nd, %bb.cm ], [ -1, %bb.cl ]
  %i.nf = load ptr, ptr %i.kx, align 8, !tbaa !12
  %16 = trunc nuw i64 %indvars.iv.i to i32
  %17 = add i32 %i.lg, %16
  %18 = zext i32 %17 to i64
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %18
  store i8 %i.ne, ptr %i.ng, align 1, !tbaa !104
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ku
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %.peel.next.i, !llvm.loop !829

._crit_edge.us.i:                                 ; preds = %bb.cn, %bb.cg
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond139.not.i = icmp eq i64 %indvars.iv.next136.i, %wide.trip.count138.i
  br i1 %exitcond139.not.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i248, label %bb.ca, !llvm.loop !831

_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread606: ; preds = %bb.bv, %bb.bw, %bb.bx, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @hb_free(ptr noundef nonnull %i.kk) #12
  br label %_ZL26hb_pdf_build_indexed_smaskP15hb_vector_buf_tPKcjjjPKhj.exit.thread

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i248: ; preds = %._crit_edge.us.i
  call void @hb_free(ptr noundef nonnull %i.kz) #12
  call void @hb_free(ptr noundef nonnull %i.ky) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  call void @hb_free(ptr noundef nonnull %i.kk) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %14, i8 0, i64 16, i1 false)
  %i.nh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store i32 2, ptr %i.nh, align 8, !tbaa !59
  %i.ni = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 23 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 32 uses
  %i.nk = call ptr @hb_realloc(ptr noundef null, i64 noundef 38) #12 ; 3 uses
  %.not22.i.i.i.i249 = icmp eq ptr %i.nk, null
  br i1 %.not22.i.i.i.i249, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i252, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i250, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i252: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i248
  %.pre683 = load i32, ptr %14, align 8, !tbaa !13 ; 3 uses
  %.not23.i.i.i.i253 = icmp ult i32 %.pre683, 38
  br i1 %.not23.i.i.i.i253, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i254, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i252._crit_edge

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i252._crit_edge: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i252
  %.pre684 = load ptr, ptr %i.nj, align 8, !tbaa !12
  br label %bb.co

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i250: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i248
  store ptr %i.nk, ptr %i.nj, align 8, !tbaa !12
  store i32 38, ptr %14, align 8, !tbaa !13
  br label %bb.co

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i254:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i252
  %i.nl = xor i32 %.pre683, -1                    ; 2 uses
  store i32 %i.nl, ptr %14, align 8, !tbaa !13
  %.pre685 = load i32, ptr %i.ni, align 4, !tbaa !8
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit258

bb.co:                                            ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i252._crit_edge, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i250
  %i.nm = phi i32 [ %.pre683, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i252._crit_edge ], [ 38, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i250 ]
  %i.nn = phi ptr [ %.pre684, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i252._crit_edge ], [ %i.nk, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i250 ]
  store i32 34, ptr %i.ni, align 4, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.nn, ptr noundef nonnull readonly align 1 dereferenceable(34) @.str.42, i64 range(i64 0, 103079215081) 34, i1 false), !alias.scope !832
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit258

_ZN15hb_vector_buf_t10append_strEPKc.exit258:     ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i254, %bb.co
  %i.no = phi i32 [ %i.nl, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i254 ], [ %i.nm, %bb.co ] ; 3 uses
  %i.np = phi i32 [ %.pre685, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i254 ], [ 34, %bb.co ] ; 2 uses
  %i.nq = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.np, i32 7) ; 2 uses
  %i.nr = extractvalue { i32, i1 } %i.nq, 1
  %i.ns = extractvalue { i32, i1 } %i.nq, 0       ; 4 uses
  %i.nt = or i32 %i.no, %i.ns
  %i.nu = icmp slt i32 %i.nt, 0
  %or.cond949 = or i1 %i.nr, %i.nu
  br i1 %or.cond949, label %_ZN15hb_vector_buf_t10append_strEPKc.exit277, label %bb.cp, !prof !368

bb.cp:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit258
  %.not.i.i.i.i260 = icmp samesign ugt i32 %i.ns, %i.no
  br i1 %.not.i.i.i.i260, label %.preheader.i.i.i.i263, label %bb.cq, !prof !22

.preheader.i.i.i.i263:                            ; preds = %bb.cp, %.preheader.i.i.i.i263
  %.053.i.i.i.i264 = phi i32 [ %i.nx, %.preheader.i.i.i.i263 ], [ %i.no, %bb.cp ] ; 2 uses
  %i.nv = lshr i32 %.053.i.i.i.i264, 1
  %i.nw = add nuw i32 %.053.i.i.i.i264, 8
  %i.nx = add nuw i32 %i.nw, %i.nv                ; 5 uses
  %i.ny = icmp ugt i32 %i.ns, %i.nx
  br i1 %i.ny, label %.preheader.i.i.i.i263, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i267, !llvm.loop !66

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i267: ; preds = %.preheader.i.i.i.i263
  %i.nz = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.oa = zext i32 %i.nx to i64
  %i.ob = call ptr @hb_realloc(ptr noundef %i.nz, i64 noundef %i.oa) #12 ; 2 uses
  %.not22.i.i.i.i268 = icmp eq ptr %i.ob, null
  br i1 %.not22.i.i.i.i268, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i271, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i269, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i271: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i267
  %i.oc = load i32, ptr %14, align 8, !tbaa !13   ; 2 uses
  %.not23.i.i.i.i272 = icmp ugt i32 %i.nx, %i.oc
  br i1 %.not23.i.i.i.i272, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i273, label %bb.cq

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i269: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i267
  store ptr %i.ob, ptr %i.nj, align 8, !tbaa !12
  store i32 %i.nx, ptr %14, align 8, !tbaa !13
  br label %bb.cq

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i273:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i271
  %i.od = xor i32 %i.oc, -1
  store i32 %i.od, ptr %14, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit277

bb.cq:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i269, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i271, %bb.cp
  store i32 %i.ns, ptr %i.ni, align 4, !tbaa !8
  %i.oe = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.of = zext i32 %i.np to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.of
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.og, ptr noundef nonnull readonly align 1 dereferenceable(7) @.str.43, i64 range(i64 0, 103079215081) 7, i1 false), !alias.scope !836
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit277

_ZN15hb_vector_buf_t10append_strEPKc.exit277:     ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit258, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i273, %bb.cq
  %i.oh = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %14, i32 noundef %3) ; 0 uses
  %i.oi = load i32, ptr %i.ni, align 4, !tbaa !8  ; 2 uses
  %i.oj = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.oi, i32 9) ; 2 uses
  %i.ok = extractvalue { i32, i1 } %i.oj, 1
  %i.ol = extractvalue { i32, i1 } %i.oj, 0       ; 4 uses
  %i.om = icmp slt i32 %i.ol, 0
  %or.cond.i.i278 = or i1 %i.ok, %i.om
  br i1 %or.cond.i.i278, label %_ZN15hb_vector_buf_t10append_strEPKc.exit296, label %bb.cr, !prof !75

bb.cr:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit277
  %i.on = load i32, ptr %14, align 8, !tbaa !13   ; 4 uses
  %i.oo = icmp slt i32 %i.on, 0
  br i1 %i.oo, label %_ZN15hb_vector_buf_t10append_strEPKc.exit296, label %bb.cs, !prof !22

bb.cs:                                            ; preds = %bb.cr
  %.not.i.i.i.i279 = icmp samesign ugt i32 %i.ol, %i.on
  br i1 %.not.i.i.i.i279, label %.preheader.i.i.i.i282, label %bb.cx, !prof !22

.preheader.i.i.i.i282:                            ; preds = %bb.cs, %.preheader.i.i.i.i282
  %.053.i.i.i.i283 = phi i32 [ %i.or, %.preheader.i.i.i.i282 ], [ %i.on, %bb.cs ] ; 2 uses
  %i.op = lshr i32 %.053.i.i.i.i283, 1
  %i.oq = add nuw i32 %.053.i.i.i.i283, 8
  %i.or = add nuw i32 %i.oq, %i.op                ; 6 uses
  %i.os = icmp ugt i32 %i.ol, %i.or
  br i1 %i.os, label %.preheader.i.i.i.i282, label %.thread39.i.i.i.i284, !llvm.loop !66

.thread39.i.i.i.i284:                             ; preds = %.preheader.i.i.i.i282
  %.not8.i.i.i.i.i.i285 = icmp eq i32 %i.on, 0
  %i.ot = load ptr, ptr %i.nj, align 8, !tbaa !12 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i285, label %bb.ct, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i286

bb.ct:                                            ; preds = %.thread39.i.i.i.i284
  %.not9.i.i.i.i.i.i293 = icmp eq ptr %i.ot, null
  br i1 %.not9.i.i.i.i.i.i293, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i286, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ou = zext i32 %i.or to i64
  %i.ov = call ptr @hb_malloc(i64 noundef %i.ou) #12 ; 4 uses
  %.not10.i.i.i.i.i.i294 = icmp eq ptr %i.ov, null
  br i1 %.not10.i.i.i.i.i.i294, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i290, label %bb.cv, !prof !22

bb.cv:                                            ; preds = %bb.cu
  %i.ow = load i32, ptr %i.ni, align 4, !tbaa !8  ; 2 uses
  %.not.i.i.i.i.i.i.i295 = icmp eq i32 %i.ow, 0
  br i1 %.not.i.i.i.i.i.i.i295, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i288, label %bb.cw, !prof !22

bb.cw:                                            ; preds = %bb.cv
  %i.ox = zext i32 %i.ow to i64
  %i.oy = load ptr, ptr %i.nj, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ov, ptr readonly align 1 %i.oy, i64 range(i64 0, 103079215081) %i.ox, i1 false), !alias.scope !840
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i288

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i286: ; preds = %bb.ct, %.thread39.i.i.i.i284
  %i.oz = phi ptr [ null, %bb.ct ], [ %i.ot, %.thread39.i.i.i.i284 ]
  %i.pa = zext i32 %i.or to i64
  %i.pb = call ptr @hb_realloc(ptr noundef %i.oz, i64 noundef %i.pa) #12 ; 2 uses
  %.not22.i.i.i.i287 = icmp eq ptr %i.pb, null
  br i1 %.not22.i.i.i.i287, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i290, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i288, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i290: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i286, %bb.cu
  %i.pc = load i32, ptr %14, align 8, !tbaa !13   ; 2 uses
  %.not23.i.i.i.i291 = icmp ugt i32 %i.or, %i.pc
  br i1 %.not23.i.i.i.i291, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i292, label %bb.cx

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i288: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i286, %bb.cw, %bb.cv
  %.1.i.i52.i.i.i.i289 = phi ptr [ %i.pb, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i286 ], [ %i.ov, %bb.cv ], [ %i.ov, %bb.cw ]
  store ptr %.1.i.i52.i.i.i.i289, ptr %i.nj, align 8, !tbaa !12
  store i32 %i.or, ptr %14, align 8, !tbaa !13
  br label %bb.cx

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i292:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i290
  %i.pd = xor i32 %i.pc, -1
  store i32 %i.pd, ptr %14, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit296

bb.cx:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i288, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i290, %bb.cs
  store i32 %i.ol, ptr %i.ni, align 4, !tbaa !8
  %i.pe = load ptr, ptr %i.nj, align 8, !tbaa !12
  %i.pf = zext i32 %i.oi to i64
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.pf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.pg, ptr noundef nonnull readonly align 1 dereferenceable(9) @.str.44, i64 range(i64 0, 103079215081) 9, i1 false), !alias.scope !844
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit296

_ZN15hb_vector_buf_t10append_strEPKc.exit296:     ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit277, %bb.cr, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i292, %bb.cx
  %i.ph = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %14, i32 noundef %4) ; 0 uses
  %i.pi = load i32, ptr %i.ni, align 4, !tbaa !8  ; 4 uses
  %i.pj = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.pi, i32 45) ; 2 uses
  %i.pk = extractvalue { i32, i1 } %i.pj, 1
  %i.pl = extractvalue { i32, i1 } %i.pj, 0       ; 5 uses
end_hunk_2

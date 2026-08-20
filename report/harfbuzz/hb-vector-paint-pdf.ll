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
  %3 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.11.0.ph, i64 %indvars.iv
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.aon, ptr %4, align 4, !tbaa !74
  %5 = trunc i64 %indvars.iv to i32
  %i.aoo = add i32 %5, 5
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
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
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

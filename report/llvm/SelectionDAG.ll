Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SelectionDAG?download=true
inline.NumInlined: 15007
inline.NumDeleted: 4174
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj:bb.a
_ZNK4llvm3EVT16isScalableVectorEv.exit1142:       ; preds = %bb.cm
  %i.or = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %56) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #32
  br i1 %i.or, label %_ZN4llvm5APIntD2Ev.exit1143, label %_ZN4llvm5APIntD2Ev.exit1152

_ZN4llvm5APIntD2Ev.exit1143:                      ; preds = %.split1529, %_ZNK4llvm3EVT16isScalableVectorEv.exit1142
  store i64 1, ptr %55, align 8
  store i32 1, ptr %i.ok, align 8, !tbaa !101
  br label %bb.cp

_ZN4llvm5APIntD2Ev.exit1152:                      ; preds = %_ZNK4llvm3EVT16isScalableVectorEv.exit1142, %.split1529
  %i.os = getelementptr inbounds nuw i8, ptr %i.oj, i64 40
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !92
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 88
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !104 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 24 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.oy = load i32, ptr %i.ox, align 8, !tbaa !101
  %i.oz = icmp ult i32 %i.oy, 65
  %i.pa = load ptr, ptr %i.ow, align 8
  %spec.select.i.i.i.i.i1144 = select i1 %i.oz, ptr %i.ow, ptr %i.pa
  %.0.i.i.i.i.i1145 = load i64, ptr %spec.select.i.i.i.i.i1144, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #32
  store i16 %.sroa.0.0.copyload.i.i1135, ptr %57, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr %.sroa.21.0.copyload.i.i1137, ptr %i.pb, align 8
  %i.pc = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %57)
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #32
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %59, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.pc) #32
  %i.pd = trunc i64 %.0.i.i.i.i.i1145 to i32
  call void @_ZNK4llvm5APInt3shlEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %58, ptr noundef nonnull align 8 dereferenceable(12) %59, i32 noundef %i.pd)
  %i.pe = load i64, ptr %58, align 8
  store i64 %i.pe, ptr %55, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !101
  store i32 %i.pg, ptr %i.ok, align 8, !tbaa !101
  store i32 0, ptr %i.pf, align 8, !tbaa !101
  %i.ph = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.pi = load i32, ptr %i.ph, align 8, !tbaa !101
  %i.pj = icmp ugt i32 %i.pi, 64
  br i1 %i.pj, label %bb.cn, label %_ZN4llvm5APIntD2Ev.exit1153

bb.cn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1152
  %i.pk = load ptr, ptr %59, align 8, !tbaa !86   ; 2 uses
  %i.pl = icmp eq ptr %i.pk, null
  br i1 %i.pl, label %_ZN4llvm5APIntD2Ev.exit1153, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdaPv(ptr noundef nonnull %i.pk) #35
  br label %_ZN4llvm5APIntD2Ev.exit1153

_ZN4llvm5APIntD2Ev.exit1153:                      ; preds = %_ZN4llvm5APIntD2Ev.exit1152, %bb.cn, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #32
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1153, %_ZN4llvm5APIntD2Ev.exit1143
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #32
  %i.pm = add nuw nsw i32 %5, 1
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %60, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %.sroa.01488.0.copyload, i32 %.sroa.61490.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %55, i32 noundef %i.pm)
  %i.pn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %60) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %60) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #32
  %i.po = load i32, ptr %i.ok, align 8, !tbaa !101
  %i.pp = icmp ugt i32 %i.po, 64
  br i1 %i.pp, label %bb.cq, label %_ZN4llvm5APIntD2Ev.exit1154

bb.cq:                                            ; preds = %bb.cp
  %i.pq = load ptr, ptr %55, align 8, !tbaa !86   ; 2 uses
  %i.pr = icmp eq ptr %i.pq, null
  br i1 %i.pr, label %_ZN4llvm5APIntD2Ev.exit1154, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZdaPv(ptr noundef nonnull %i.pq) #35
  br label %_ZN4llvm5APIntD2Ev.exit1154

_ZN4llvm5APIntD2Ev.exit1154:                      ; preds = %bb.cp, %bb.cq, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #32
  br label %.critedge1075

bb.cs:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #32
  %i.ps = load i32, ptr %i.b, align 8, !tbaa !115
  %i.pt = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !95
  %i.pv = zext i32 %i.ps to i64
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.pu, i64 %i.pv ; 2 uses
  %.sroa.0.0.copyload.i.i1155 = load i16, ptr %i.pw, align 8, !tbaa !97 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i1156 = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %.sroa.21.0.copyload.i.i1157 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i1156, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i.i1155, ptr %61, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %61, i64 8
  store ptr %.sroa.21.0.copyload.i.i1157, ptr %i.px, align 8
  %.not.i1160 = icmp eq i16 %.sroa.0.0.copyload.i.i1155, 0
  br i1 %.not.i1160, label %_ZNK4llvm3EVT16isScalableVectorEv.exit1162, label %.split1530

.split1530:                                       ; preds = %bb.cs
  %i.py = add i16 %.sroa.0.0.copyload.i.i1155, -163
  %spec.select.i.i1161 = icmp ult i16 %i.py, 53
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #32
  br i1 %spec.select.i.i1161, label %.critedge1075, label %bb.ct

_ZNK4llvm3EVT16isScalableVectorEv.exit1162:       ; preds = %bb.cs
  %i.pz = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %61) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #32
  br i1 %i.pz, label %.critedge1075, label %bb.ct

bb.ct:                                            ; preds = %.split1530, %_ZNK4llvm3EVT16isScalableVectorEv.exit1162
  %i.qa = call noundef zeroext i1 @_ZNK4llvm5APIntneEm(ptr noundef nonnull align 8 dereferenceable(12) %4, i64 noundef 1)
  br i1 %i.qa, label %.critedge1075, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #32
  %i.qb = load ptr, ptr %9, align 8, !tbaa !92
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 40
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull align 8 dereferenceable(16) %i.qd, i64 16, i1 false), !tbaa.struct !661
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #32
  %.sroa.0562.0.copyload = load ptr, ptr %62, align 8, !tbaa !109
  %.sroa.2563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %62, i64 8
  %.sroa.2563.0.copyload = load i32, ptr %.sroa.2563.0..sroa_idx, align 8, !tbaa !114
  %i.qe = add nuw nsw i32 %5, 1
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %63, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0562.0.copyload, i32 %.sroa.2563.0.copyload, i32 noundef %i.qe)
  %i.qf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %63) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %63) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #32
  %i.qg = call { i64, i8 } @_ZNK4llvm7SDValue18getValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %62) ; 2 uses
  %.fca.1.extract559 = extractvalue { i64, i8 } %i.qg, 1
  %i.qh = trunc nuw i8 %.fca.1.extract559 to i1
  br i1 %i.qh, label %bb.cv, label %_ZNK4llvm8TypeSizecvmEv.exit1163

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.18) #34
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit1163:                 ; preds = %bb.cu
  %.fca.0.extract558 = extractvalue { i64, i8 } %i.qg, 0
  %i.qi = and i64 %.pn.i.i.i, 4294967295
  %.not1068 = icmp eq i64 %.fca.0.extract558, %i.qi
  br i1 %.not1068, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit1163
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #32
  call void @_ZNK4llvm9KnownBits5truncEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %64, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %i.y)
  %i.qj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %64) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %64) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #32
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %_ZNK4llvm8TypeSizecvmEv.exit1163
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #32
  br label %.critedge1075

bb.cy:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #32
  %i.qk = load i32, ptr %i.b, align 8, !tbaa !115
  %i.ql = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !95
  %i.qn = zext i32 %i.qk to i64
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %i.qn ; 2 uses
  %.sroa.0.0.copyload.i.i1164 = load i16, ptr %i.qo, align 8, !tbaa !97 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i1165 = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %.sroa.21.0.copyload.i.i1166 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i1165, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i.i1164, ptr %65, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %65, i64 8
  store ptr %.sroa.21.0.copyload.i.i1166, ptr %i.qp, align 8
  %.not.i1169 = icmp eq i16 %.sroa.0.0.copyload.i.i1164, 0
  br i1 %.not.i1169, label %_ZNK4llvm3EVT16isScalableVectorEv.exit1171, label %.split1531

.split1531:                                       ; preds = %bb.cy
  %i.qq = add i16 %.sroa.0.0.copyload.i.i1164, -163
  %spec.select.i.i1170 = icmp ult i16 %i.qq, 53
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #32
  br i1 %spec.select.i.i1170, label %.critedge1075, label %bb.cz

_ZNK4llvm3EVT16isScalableVectorEv.exit1171:       ; preds = %bb.cy
  %i.qr = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %65) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #32
  br i1 %i.qr, label %.critedge1075, label %bb.cz

bb.cz:                                            ; preds = %.split1531, %_ZNK4llvm3EVT16isScalableVectorEv.exit1171
  %i.qs = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !89 ; 2 uses
  %.sroa.01480.0.copyload = load ptr, ptr %i.qt, align 8, !tbaa !109 ; 4 uses
  %.sroa.71481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %.sroa.71481.0.copyload = load i32, ptr %.sroa.71481.0..sroa_idx, align 8, !tbaa !114 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #32
  %i.qu = getelementptr inbounds nuw i8, ptr %.sroa.01480.0.copyload, i64 48
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !95
  %i.qw = zext i32 %.sroa.71481.0.copyload to i64
  %i.qx = getelementptr inbounds nuw [16 x i8], ptr %i.qv, i64 %i.qw ; 2 uses
  %.sroa.0.0.copyload.i.i1172 = load i16, ptr %i.qx, align 8, !tbaa !97
  %.sroa.21.0..sroa_idx.i.i1173 = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %.sroa.21.0.copyload.i.i1174 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i1173, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i.i1172, ptr %66, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %66, i64 8
  store ptr %.sroa.21.0.copyload.i.i1174, ptr %i.qy, align 8
  %i.qz = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %66)
  %i.ra = trunc i64 %i.qz to i32                  ; 7 uses
  %i.rb = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %66)
  br i1 %i.rb, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.rc = call noundef zeroext i1 @_ZNK4llvm3EVT15isFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %66)
  br i1 %i.rc, label %bb.db, label %bb.dv

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.rd = icmp eq i32 %i.y, %i.ra
  br i1 %i.rd, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #32
  %i.re = add nuw nsw i32 %5, 1
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %67, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr nonnull %.sroa.01480.0.copyload, i32 %.sroa.71481.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.re)
  %i.rf = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %67) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %67) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #32
  br label %bb.dv

bb.dd:                                            ; preds = %bb.db
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !365
  %i.ri = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.rh) #32
  %i.rj = load i8, ptr %i.ri, align 8, !tbaa !660, !range !59, !noundef !60
  %i.rk = trunc nuw i8 %i.rj to i1                ; 2 uses
  %i.rl = urem i32 %i.y, %i.ra
  %i.rm = udiv i32 %i.y, %i.ra                    ; 5 uses
  %i.rn = icmp eq i32 %i.rl, 0
  br i1 %i.rn, label %bb.de, label %bb.dp

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #32
  %i.ro = mul i32 %i.rm, %i.ba                    ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 3 uses
  store i32 %i.ro, ptr %i.rp, align 8, !tbaa !101
  %i.rq = icmp ult i32 %i.ro, 65
  br i1 %i.rq, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i64 0, ptr %68, align 8, !tbaa !86
  br label %_ZN4llvm5APIntC2Ejmbb.exit1177

bb.dg:                                            ; preds = %bb.de
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %68, i64 noundef 0, i1 noundef zeroext false) #32
  br label %_ZN4llvm5APIntC2Ejmbb.exit1177

_ZN4llvm5APIntC2Ejmbb.exit1177:                   ; preds = %bb.df, %bb.dg
  %.not10651609 = icmp eq i32 %i.ba, 0
  br i1 %.not10651609, label %.preheader, label %.lr.ph1611

.lr.ph1611:                                       ; preds = %_ZN4llvm5APIntC2Ejmbb.exit1177
  %i.rr = load i32, ptr %i.az, align 8, !tbaa !101
  %i.rs = icmp ult i32 %i.rr, 65                  ; 2 uses
  %i.rt = load i32, ptr %i.rp, align 8
  %.fr1639 = freeze i32 %i.rt
  %i.ru = icmp ult i32 %.fr1639, 65
  br i1 %i.ru, label %.lr.ph1611.split.us, label %.lr.ph1611.split

.lr.ph1611.split.us:                              ; preds = %.lr.ph1611
  %i.rv = load ptr, ptr %4, align 8
  %.promoted = load i64, ptr %68, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN4llvm5APInt6setBitEj.exit.us, %.lr.ph1611.split.us
  %i.rw = phi i64 [ %.promoted, %.lr.ph1611.split.us ], [ %i.sk, %_ZN4llvm5APInt6setBitEj.exit.us ] ; 2 uses
  %.010121610.us = phi i32 [ 0, %.lr.ph1611.split.us ], [ %i.sl, %_ZN4llvm5APInt6setBitEj.exit.us ] ; 4 uses
  %i.rx = and i32 %.010121610.us, 63
  %i.ry = zext nneg i32 %i.rx to i64
  %i.rz = shl nuw i64 1, %i.ry
  %i.sa = lshr i32 %.010121610.us, 6
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %i.sb
  %.in.i.i1178.us = select i1 %i.rs, ptr %4, ptr %i.sc
  %i.sd = load i64, ptr %.in.i.i1178.us, align 8, !tbaa !86
  %i.se = and i64 %i.rz, %i.sd
  %.not1601.us = icmp eq i64 %i.se, 0
  br i1 %.not1601.us, label %_ZN4llvm5APInt6setBitEj.exit.us, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sf = mul i32 %.010121610.us, %i.rm
  %i.sg = and i32 %i.sf, 63
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = shl nuw i64 1, %i.sh
  %i.sj = or i64 %i.si, %i.rw                     ; 2 uses
  store i64 %i.sj, ptr %68, align 8, !tbaa !86
  br label %_ZN4llvm5APInt6setBitEj.exit.us

_ZN4llvm5APInt6setBitEj.exit.us:                  ; preds = %bb.di, %bb.dh
  %i.sk = phi i64 [ %i.sj, %bb.di ], [ %i.rw, %bb.dh ]
  %i.sl = add nuw i32 %.010121610.us, 1           ; 2 uses
  %.not1065.us = icmp eq i32 %i.sl, %i.ba
  br i1 %.not1065.us, label %.preheader, label %bb.dh, !llvm.loop !1164

.preheader:                                       ; preds = %_ZN4llvm5APInt6setBitEj.exit, %_ZN4llvm5APInt6setBitEj.exit.us, %_ZN4llvm5APIntC2Ejmbb.exit1177
  %.not10661612 = icmp ugt i32 %i.ra, %i.y
  br i1 %.not10661612, label %._crit_edge, label %.lr.ph1614

.lr.ph1614:                                       ; preds = %.preheader
  %i.sm = add nuw nsw i32 %5, 1
  %i.sn = getelementptr inbounds nuw i8, ptr %70, i64 8
  br label %bb.dm

.lr.ph1611.split:                                 ; preds = %.lr.ph1611, %_ZN4llvm5APInt6setBitEj.exit
  %.010121610 = phi i32 [ %i.th, %_ZN4llvm5APInt6setBitEj.exit ], [ 0, %.lr.ph1611 ] ; 4 uses
  %i.so = and i32 %.010121610, 63
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = shl nuw i64 1, %i.sp
  %i.sr = load ptr, ptr %4, align 8
  %i.ss = lshr i32 %.010121610, 6
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %i.st
  %.in.i.i1178 = select i1 %i.rs, ptr %4, ptr %i.su
  %i.sv = load i64, ptr %.in.i.i1178, align 8, !tbaa !86
  %i.sw = and i64 %i.sq, %i.sv
  %.not1601 = icmp eq i64 %i.sw, 0
  br i1 %.not1601, label %_ZN4llvm5APInt6setBitEj.exit, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph1611.split
  %i.sx = mul i32 %.010121610, %i.rm              ; 2 uses
  %i.sy = and i32 %i.sx, 63
  %i.sz = zext nneg i32 %i.sy to i64
  %i.ta = shl nuw i64 1, %i.sz
  %i.tb = load ptr, ptr %68, align 8, !tbaa !86
  %i.tc = lshr i32 %i.sx, 6
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.tb, i64 %i.td ; 2 uses
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !111
  %i.tg = or i64 %i.tf, %i.ta
  store i64 %i.tg, ptr %i.te, align 8, !tbaa !111
  br label %_ZN4llvm5APInt6setBitEj.exit

_ZN4llvm5APInt6setBitEj.exit:                     ; preds = %bb.dj, %.lr.ph1611.split
  %i.th = add nuw i32 %.010121610, 1              ; 2 uses
  %.not1065 = icmp eq i32 %i.th, %i.ba
  br i1 %.not1065, label %.preheader, label %.lr.ph1611.split, !llvm.loop !1164

._crit_edge:                                      ; preds = %_ZN4llvm5APIntD2Ev.exit1180, %.preheader
  %i.ti = load i32, ptr %i.rp, align 8, !tbaa !101
  %i.tj = icmp ugt i32 %i.ti, 64
  br i1 %i.tj, label %bb.dk, label %_ZN4llvm5APIntD2Ev.exit1179

bb.dk:                                            ; preds = %._crit_edge
  %i.tk = load ptr, ptr %68, align 8, !tbaa !86   ; 2 uses
  %i.tl = icmp eq ptr %i.tk, null
  br i1 %i.tl, label %_ZN4llvm5APIntD2Ev.exit1179, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZdaPv(ptr noundef nonnull %i.tk) #35
  br label %_ZN4llvm5APIntD2Ev.exit1179

_ZN4llvm5APIntD2Ev.exit1179:                      ; preds = %._crit_edge, %bb.dk, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #32
  br label %bb.dp

bb.dm:                                            ; preds = %.lr.ph1614, %_ZN4llvm5APIntD2Ev.exit1180
  %.010131613 = phi i32 [ 0, %.lr.ph1614 ], [ %i.tv, %_ZN4llvm5APIntD2Ev.exit1180 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #32
  call void @_ZNK4llvm5APInt3shlEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %70, ptr noundef nonnull align 8 dereferenceable(12) %68, i32 noundef %.010131613)
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %69, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.01480.0.copyload, i32 %.sroa.71481.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %70, i32 noundef %i.sm)
  %i.tm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %69) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %69) #32
  %i.tn = load i32, ptr %i.sn, align 8, !tbaa !101
  %i.to = icmp ugt i32 %i.tn, 64
  br i1 %i.to, label %bb.dn, label %_ZN4llvm5APIntD2Ev.exit1180

bb.dn:                                            ; preds = %bb.dm
  %i.tp = load ptr, ptr %70, align 8, !tbaa !86   ; 2 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %_ZN4llvm5APIntD2Ev.exit1180, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZdaPv(ptr noundef nonnull %i.tp) #35
  br label %_ZN4llvm5APIntD2Ev.exit1180

_ZN4llvm5APIntD2Ev.exit1180:                      ; preds = %bb.dm, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #32
  %i.tr = xor i32 %.010131613, -1
  %i.ts = add i32 %i.rm, %i.tr
  %i.tt = select i1 %i.rk, i32 %i.ts, i32 %.010131613
  %i.tu = mul i32 %i.tt, %i.ra
  call void @_ZN4llvm9KnownBits10insertBitsERKS0_j(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %i.tu)
  %i.tv = add nuw i32 %.010131613, 1              ; 2 uses
  %.not1066 = icmp eq i32 %i.tv, %i.rm
  br i1 %.not1066, label %._crit_edge, label %bb.dm, !llvm.loop !1165

bb.dp:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit1179, %bb.dd
  %i.tw = urem i32 %i.ra, %i.y
  %i.tx = udiv i32 %i.ra, %i.y                    ; 2 uses
  %i.ty = icmp eq i32 %i.tw, 0
  br i1 %i.ty, label %bb.dq, label %bb.dv

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #32
  %i.tz = udiv i32 %i.ba, %i.tx
  call void @_ZN4llvm8APIntOps12ScaleBitMaskERKNS_5APIntEjb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %71, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.tz, i1 noundef zeroext false) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #32
  %i.ua = add nuw nsw i32 %5, 1
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %72, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.01480.0.copyload, i32 %.sroa.71481.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %71, i32 noundef %i.ua)
  %i.ub = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %72) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %72) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #32
  call void @_ZN4llvm9KnownBits14setAllConflictEv(ptr noundef nonnull align 8 dereferenceable(32) %10)
  %.not10671615 = icmp eq i32 %i.ba, 0
  br i1 %.not10671615, label %._crit_edge1619, label %.lr.ph1618

.lr.ph1618:                                       ; preds = %bb.dq, %.lr.ph1618.backedge
  %.010141616 = phi i32 [ %.010141616.be, %.lr.ph1618.backedge ], [ 0, %bb.dq ] ; 6 uses
  %i.uc = and i32 %.010141616, 63
  %i.ud = zext nneg i32 %i.uc to i64
  %i.ue = shl nuw i64 1, %i.ud
  %i.uf = load i32, ptr %i.az, align 8, !tbaa !101
  %i.ug = icmp ult i32 %i.uf, 65
  %i.uh = load ptr, ptr %4, align 8
  %i.ui = lshr i32 %.010141616, 6
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.uj
  %.in.i.i1181 = select i1 %i.ug, ptr %4, ptr %i.uk
  %i.ul = load i64, ptr %.in.i.i1181, align 8, !tbaa !86
  %i.um = and i64 %i.ul, %i.ue
  %.not1602 = icmp eq i64 %i.um, 0
  br i1 %.not1602, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph1618
  %i.un = xor i32 %.010141616, -1
  %i.uo = add i32 %i.ba, %i.un
  %i.up = select i1 %i.rk, i32 %i.uo, i32 %.010141616
  %i.uq = urem i32 %i.up, %i.tx
  %i.ur = mul i32 %i.uq, %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #32
  call void @_ZNK4llvm9KnownBits11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %74, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %i.y, i32 noundef %i.ur)
  call void @_ZNK4llvm9KnownBits13intersectWithERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %73, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %74)
  %i.us = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %73) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %73) #32
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %74) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #32
  %i.ut = call noundef zeroext i1 @_ZNK4llvm9KnownBits9isUnknownEv(ptr noundef nonnull align 8 dereferenceable(32) %10)
  %i.uu = add i32 %.010141616, 1                  ; 2 uses
  %.not1067 = icmp eq i32 %i.uu, %i.ba
  %or.cond1638 = or i1 %.not1067, %i.ut
  br i1 %or.cond1638, label %._crit_edge1619, label %.lr.ph1618.backedge

bb.ds:                                            ; preds = %.lr.ph1618
  %.old1637 = add i32 %.010141616, 1              ; 2 uses
  %.not1067.old = icmp eq i32 %.old1637, %i.ba
  br i1 %.not1067.old, label %._crit_edge1619, label %.lr.ph1618.backedge

.lr.ph1618.backedge:                              ; preds = %bb.ds, %bb.dr
  %.010141616.be = phi i32 [ %i.uu, %bb.dr ], [ %.old1637, %bb.ds ]
  br label %.lr.ph1618, !llvm.loop !1166

._crit_edge1619:                                  ; preds = %bb.dr, %bb.ds, %bb.dq
  %i.uv = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.uw = load i32, ptr %i.uv, align 8, !tbaa !101
  %i.ux = icmp ugt i32 %i.uw, 64
  br i1 %i.ux, label %bb.dt, label %_ZN4llvm5APIntD2Ev.exit1182

bb.dt:                                            ; preds = %._crit_edge1619
  %i.uy = load ptr, ptr %71, align 8, !tbaa !86   ; 2 uses
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %_ZN4llvm5APIntD2Ev.exit1182, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @_ZdaPv(ptr noundef nonnull %i.uy) #35
  br label %_ZN4llvm5APIntD2Ev.exit1182

_ZN4llvm5APIntD2Ev.exit1182:                      ; preds = %._crit_edge1619, %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #32
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dp, %_ZN4llvm5APIntD2Ev.exit1182, %bb.da, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #32
  br label %.critedge1075

bb.dw:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #32
  %i.va = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !89 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 40
  %.sroa.0515.0.copyload = load ptr, ptr %i.vc, align 8, !tbaa !109
  %.sroa.2516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vb, i64 48
  %.sroa.2516.0.copyload = load i32, ptr %.sroa.2516.0..sroa_idx, align 8, !tbaa !114
  %i.vd = add nuw nsw i32 %5, 1                   ; 2 uses
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %75, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0515.0.copyload, i32 %.sroa.2516.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.vd)
  %i.ve = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %75) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %75) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #32
  %i.vf = load ptr, ptr %9, align 8, !tbaa !92
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 40
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !89 ; 2 uses
  %.sroa.0512.0.copyload = load ptr, ptr %i.vh, align 8, !tbaa !109
  %.sroa.2513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %.sroa.2513.0.copyload = load i32, ptr %.sroa.2513.0..sroa_idx, align 8, !tbaa !114
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %76, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0512.0.copyload, i32 %.sroa.2513.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.vd)
  %i.vi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %76) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %76) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #32
  %i.vj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaNERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12) #32 ; 0 uses
  br label %.critedge1075

bb.dx:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #32
  %i.vk = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !89 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 40
  %.sroa.0509.0.copyload = load ptr, ptr %i.vm, align 8, !tbaa !109
  %.sroa.2510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vl, i64 48
  %.sroa.2510.0.copyload = load i32, ptr %.sroa.2510.0..sroa_idx, align 8, !tbaa !114
  %i.vn = add nuw nsw i32 %5, 1                   ; 2 uses
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %77, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0509.0.copyload, i32 %.sroa.2510.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.vn)
  %i.vo = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %77) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %77) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #32
  %i.vp = load ptr, ptr %9, align 8, !tbaa !92
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 40
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !89 ; 2 uses
  %.sroa.0506.0.copyload = load ptr, ptr %i.vr, align 8, !tbaa !109
  %.sroa.2507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %.sroa.2507.0.copyload = load i32, ptr %.sroa.2507.0..sroa_idx, align 8, !tbaa !114
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %78, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0506.0.copyload, i32 %.sroa.2507.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.vn)
  %i.vs = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %78) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %78) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #32
  %i.vt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsoRERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12) #32 ; 0 uses
  br label %.critedge1075

bb.dy:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #32
  %i.vu = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !89 ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 40
  %.sroa.0503.0.copyload = load ptr, ptr %i.vw, align 8, !tbaa !109
  %.sroa.2504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vv, i64 48
  %.sroa.2504.0.copyload = load i32, ptr %.sroa.2504.0..sroa_idx, align 8, !tbaa !114
  %i.vx = add nuw nsw i32 %5, 1                   ; 2 uses
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %79, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0503.0.copyload, i32 %.sroa.2504.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.vx)
  %i.vy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %79) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %79) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #32
  %i.vz = load ptr, ptr %9, align 8, !tbaa !92
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 40
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !89 ; 2 uses
  %.sroa.0500.0.copyload = load ptr, ptr %i.wb, align 8, !tbaa !109
  %.sroa.2501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %.sroa.2501.0.copyload = load i32, ptr %.sroa.2501.0..sroa_idx, align 8, !tbaa !114
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %80, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0500.0.copyload, i32 %.sroa.2501.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.vx)
  %i.wc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %80) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %80) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #32
  %i.wd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitseOERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %12) #32 ; 0 uses
  br label %.critedge1075

bb.dz:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #32
  %i.we = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !89 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 40
  %.sroa.0497.0.copyload = load ptr, ptr %i.wg, align 8, !tbaa !109
  %.sroa.2498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wf, i64 48
  %.sroa.2498.0.copyload = load i32, ptr %.sroa.2498.0..sroa_idx, align 8, !tbaa !114
  %i.wh = add nuw nsw i32 %5, 1                   ; 3 uses
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %81, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0497.0.copyload, i32 %.sroa.2498.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.wh)
  %i.wi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %81) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %81) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #32
  %i.wj = load ptr, ptr %9, align 8, !tbaa !92
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 40
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !89 ; 2 uses
  %.sroa.0494.0.copyload = load ptr, ptr %i.wl, align 8, !tbaa !109
  %.sroa.2495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %.sroa.2495.0.copyload = load i32, ptr %.sroa.2495.0..sroa_idx, align 8, !tbaa !114
  call void @_ZNK4llvm12SelectionDAG16computeKnownBitsENS_7SDValueERKNS_5APIntEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::KnownBits") align 8 %82, ptr noundef nonnull align 8 dereferenceable(920) %1, ptr %.sroa.0494.0.copyload, i32 %.sroa.2495.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.wh)
  %i.wm = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm9KnownBitsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %82) ; 0 uses
  call void @_ZN4llvm9KnownBitsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %82) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #32
  %i.wn = load ptr, ptr %9, align 8, !tbaa !92
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 40
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !89 ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 40
  %i.wr = load ptr, ptr %i.wp, align 8, !tbaa !92 ; 2 uses
  %i.ws = load ptr, ptr %i.wq, align 8, !tbaa !92
  %i.wt = icmp eq ptr %i.wr, %i.ws
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
end_hunk_0
begin_hunk_1_@_ZNK4llvm12SelectionDAG12isSplatValueENS_7SDValueERKNS_5APIntERS2_j:bb.a

bb.bu:                                            ; preds = %bb.bt
  %i.js = load ptr, ptr %23, align 8, !tbaa !86   ; 2 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %_ZN4llvm5APIntD2Ev.exit205, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdaPv(ptr noundef nonnull %i.js) #35
  br label %_ZN4llvm5APIntD2Ev.exit205

_ZN4llvm5APIntD2Ev.exit205:                       ; preds = %bb.bt, %bb.bu, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.ju = add nuw nsw i32 %5, 1
  %i.jv = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG12isSplatValueENS_7SDValueERKNS_5APIntERS2_j(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nonnull %.sroa.0247.0.copyload, i32 %.sroa.6249.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %22, ptr noundef nonnull align 8 dereferenceable(12) %21, i32 noundef %i.ju) ; 2 uses
  br i1 %i.jv, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit205
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  call void @_ZNK4llvm5APInt11extractBitsEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %24, ptr noundef nonnull align 8 dereferenceable(12) %21, i32 noundef %i.dp, i32 noundef %i.jo) #32
  %i.jw = load i32, ptr %i.ds, align 8, !tbaa !101
  %i.jx = icmp ult i32 %i.jw, 65
  br i1 %i.jx, label %_ZN4llvm5APIntD2Ev.exit207, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jy = load ptr, ptr %4, align 8, !tbaa !86    ; 2 uses
  %i.jz = icmp eq ptr %i.jy, null
  br i1 %i.jz, label %_ZN4llvm5APIntD2Ev.exit207, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @_ZdaPv(ptr noundef nonnull %i.jy) #35
  br label %_ZN4llvm5APIntD2Ev.exit207

_ZN4llvm5APIntD2Ev.exit207:                       ; preds = %bb.by, %bb.bx, %bb.bw
  %i.ka = load i64, ptr %24, align 8
  store i64 %i.ka, ptr %4, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !101
  store i32 %i.kc, ptr %i.ds, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit205, %_ZN4llvm5APIntD2Ev.exit207
  %i.kd = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !101
  %i.kf = icmp ugt i32 %i.ke, 64
  br i1 %i.kf, label %bb.ca, label %_ZN4llvm5APIntD2Ev.exit208

bb.ca:                                            ; preds = %bb.bz
  %i.kg = load ptr, ptr %22, align 8, !tbaa !86   ; 2 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %_ZN4llvm5APIntD2Ev.exit208, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZdaPv(ptr noundef nonnull %i.kg) #35
  br label %_ZN4llvm5APIntD2Ev.exit208

_ZN4llvm5APIntD2Ev.exit208:                       ; preds = %bb.bz, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %i.ki = load i32, ptr %i.jn, align 8, !tbaa !101
  %i.kj = icmp ugt i32 %i.ki, 64
  br i1 %i.kj, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit208
  %i.kk = load ptr, ptr %21, align 8, !tbaa !86   ; 2 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZdaPv(ptr noundef nonnull %i.kk) #35
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %_ZN4llvm5APIntD2Ev.exit208
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  br i1 %i.jv, label %.critedge150, label %bb.dq

bb.cf:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit173, %_ZN4llvm5APIntD2Ev.exit173, %_ZN4llvm5APIntD2Ev.exit173
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !89 ; 2 uses
  %.sroa.0244.0.copyload = load ptr, ptr %i.kn, align 8, !tbaa !109 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !114 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0244.0.copyload, i64 48
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !95
  %i.kq = zext i32 %.sroa.6.0.copyload to i64
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.kp, i64 %i.kq ; 2 uses
  %.sroa.0.0.copyload.i.i210 = load i16, ptr %i.kr, align 8, !tbaa !97 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i211 = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %.sroa.21.0.copyload.i.i212 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i211, align 8, !tbaa !99 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i210, ptr %25, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr %.sroa.21.0.copyload.i.i212, ptr %i.ks, align 8
  %.not.i215 = icmp eq i16 %.sroa.0.0.copyload.i.i210, 0
  br i1 %.not.i215, label %_ZNK4llvm3EVT16isScalableVectorEv.exit217, label %.split317

.split317:                                        ; preds = %bb.cf
  %i.kt = add i16 %.sroa.0.0.copyload.i.i210, -163
  %spec.select.i.i216 = icmp ult i16 %i.kt, 53
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br i1 %spec.select.i.i216, label %.critedge150, label %bb.cg

_ZNK4llvm3EVT16isScalableVectorEv.exit217:        ; preds = %bb.cf
  %i.ku = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %25) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  br i1 %i.ku, label %.critedge150, label %bb.cg

bb.cg:                                            ; preds = %.split317, %_ZNK4llvm3EVT16isScalableVectorEv.exit217
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  store i16 %.sroa.0.0.copyload.i.i210, ptr %26, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr %.sroa.21.0.copyload.i.i212, ptr %i.kv, align 8
  %i.kw = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  %i.kx = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store i32 1, ptr %i.kx, align 8, !tbaa !101
  store i64 0, ptr %27, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %28, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.kw) #32
  %i.ky = add nuw nsw i32 %5, 1
  %i.kz = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG12isSplatValueENS_7SDValueERKNS_5APIntERS2_j(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nonnull %.sroa.0244.0.copyload, i32 %.sroa.6.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %28, ptr noundef nonnull align 8 dereferenceable(12) %27, i32 noundef %i.ky) ; 2 uses
  br i1 %i.kz, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  call void @_ZNK4llvm5APInt5truncEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %29, ptr noundef nonnull align 8 dereferenceable(12) %27, i32 noundef %i.dp) #32
  %i.la = load i32, ptr %i.ds, align 8, !tbaa !101
  %i.lb = icmp ult i32 %i.la, 65
  br i1 %i.lb, label %_ZN4llvm5APIntD2Ev.exit224, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lc = load ptr, ptr %4, align 8, !tbaa !86    ; 2 uses
  %i.ld = icmp eq ptr %i.lc, null
  br i1 %i.ld, label %_ZN4llvm5APIntD2Ev.exit224, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @_ZdaPv(ptr noundef nonnull %i.lc) #35
  br label %_ZN4llvm5APIntD2Ev.exit224

_ZN4llvm5APIntD2Ev.exit224:                       ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.le = load i64, ptr %29, align 8
  store i64 %i.le, ptr %4, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !101
  store i32 %i.lg, ptr %i.ds, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cg, %_ZN4llvm5APIntD2Ev.exit224
  %i.lh = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !101
  %i.lj = icmp ugt i32 %i.li, 64
  br i1 %i.lj, label %bb.cl, label %_ZN4llvm5APIntD2Ev.exit225

bb.cl:                                            ; preds = %bb.ck
  %i.lk = load ptr, ptr %28, align 8, !tbaa !86   ; 2 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %_ZN4llvm5APIntD2Ev.exit225, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZdaPv(ptr noundef nonnull %i.lk) #35
  br label %_ZN4llvm5APIntD2Ev.exit225

_ZN4llvm5APIntD2Ev.exit225:                       ; preds = %bb.ck, %bb.cl, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  %i.lm = load i32, ptr %i.kx, align 8, !tbaa !101
  %i.ln = icmp ugt i32 %i.lm, 64
  br i1 %i.ln, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit225
  %i.lo = load ptr, ptr %27, align 8, !tbaa !86   ; 2 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @_ZdaPv(ptr noundef nonnull %i.lo) #35
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %_ZN4llvm5APIntD2Ev.exit225
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  br i1 %i.kz, label %.critedge150, label %bb.dq

bb.cq:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit173
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !89 ; 2 uses
  %.sroa.0.0.copyload243 = load ptr, ptr %i.lr, align 8, !tbaa !109 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !114 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload243, i64 48
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !95
  %i.lu = zext i32 %.sroa.5.0.copyload to i64
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lt, i64 %i.lu ; 2 uses
  %.sroa.0.0.copyload.i.i227 = load i16, ptr %i.lv, align 8, !tbaa !97
  %.sroa.21.0..sroa_idx.i.i228 = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %.sroa.21.0.copyload.i.i229 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i228, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i.i227, ptr %30, align 8
  %i.lw = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr %.sroa.21.0.copyload.i.i229, ptr %i.lw, align 8
  %i.lx = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
  %i.ly = trunc i64 %i.lx to i32                  ; 3 uses
  %i.lz = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  %i.ma = trunc i64 %i.lz to i32                  ; 3 uses
  %i.mb = load i16, ptr %30, align 8, !tbaa !108  ; 2 uses
  %.not.i232 = icmp eq i16 %i.mb, 0
  br i1 %.not.i232, label %_ZNK4llvm3EVT8isVectorEv.exit, label %.split323

.split323:                                        ; preds = %bb.cq
  %i.mc = add i16 %i.mb, -19
  %spec.select.i.i233 = icmp ult i16 %i.mc, 197
  br i1 %spec.select.i.i233, label %bb.cr, label %.thread325

_ZNK4llvm3EVT8isVectorEv.exit:                    ; preds = %bb.cq
  %i.md = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %30) #33
  br i1 %i.md, label %bb.cr, label %.thread325

bb.cr:                                            ; preds = %.split323, %_ZNK4llvm3EVT8isVectorEv.exit
  %i.me = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %30)
  br i1 %i.me, label %bb.cs, label %.thread325

bb.cs:                                            ; preds = %bb.cr
  %i.mf = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
  br i1 %i.mf, label %bb.ct, label %.thread325

bb.ct:                                            ; preds = %bb.cs
  %i.mg = urem i32 %i.ma, %i.ly
  %i.mh = udiv i32 %i.ma, %i.ly                   ; 2 uses
  %i.mi = icmp eq i32 %i.mg, 0
  br i1 %i.mi, label %bb.cu, label %.thread325

bb.cu:                                            ; preds = %bb.ct
  %i.mj = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %30) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  call void @_ZN4llvm8APIntOps12ScaleBitMaskERKNS_5APIntEjb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %31, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.mj, i1 noundef zeroext false) #32
  %.not336 = icmp ugt i32 %i.ly, %i.ma
  br i1 %.not336, label %.critedge154, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cu
  %i.mk = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.mn = add i32 %5, 1
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit238, %.lr.ph
  %.0129337 = phi i32 [ 0, %.lr.ph ], [ %i.nm, %_ZN4llvm5APIntD2Ev.exit238 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  store i32 1, ptr %i.mk, align 8, !tbaa !101
  store i64 0, ptr %32, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  call void @_ZN4llvm5APInt12getOneBitSetEjj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %33, i32 noundef %i.mh, i32 noundef %.0129337)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  call void @_ZN4llvm5APInt8getSplatEjRKS0_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %34, i32 noundef %i.mj, ptr noundef nonnull align 8 dereferenceable(12) %33) #32
  %i.mo = load i32, ptr %i.ml, align 8, !tbaa !101
  %i.mp = icmp ult i32 %i.mo, 65
  br i1 %i.mp, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.mq = load i64, ptr %31, align 8, !tbaa !86
  %i.mr = load i64, ptr %34, align 8, !tbaa !86
  %i.ms = and i64 %i.mr, %i.mq
  store i64 %i.ms, ptr %34, align 8, !tbaa !86
  br label %_ZN4llvm5APIntaNERKS0_.exit

bb.cx:                                            ; preds = %bb.cv
  call void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 8 dereferenceable(12) %31) #32
  br label %_ZN4llvm5APIntaNERKS0_.exit

_ZN4llvm5APIntaNERKS0_.exit:                      ; preds = %bb.cw, %bb.cx
  %i.mt = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG12isSplatValueENS_7SDValueERKNS_5APIntERS2_j(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0.0.copyload243, i32 %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %34, ptr noundef nonnull align 8 dereferenceable(12) %32, i32 noundef %i.mn)
  br i1 %i.mt, label %bb.cy, label %.critedge152

bb.cy:                                            ; preds = %_ZN4llvm5APIntaNERKS0_.exit
  %i.mu = load i32, ptr %i.mk, align 8, !tbaa !101 ; 2 uses
  %i.mv = icmp ult i32 %i.mu, 65
  br i1 %i.mv, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.mw = load i64, ptr %32, align 8, !tbaa !86
  %i.mx = icmp eq i64 %i.mw, 0
  br label %_ZNK4llvm5APInt6isZeroEv.exit235

bb.da:                                            ; preds = %bb.cy
  %i.my = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %32) #33
  %i.mz = icmp eq i32 %i.my, %i.mu
  br label %_ZNK4llvm5APInt6isZeroEv.exit235

_ZNK4llvm5APInt6isZeroEv.exit235:                 ; preds = %bb.cz, %bb.da
  %.0.i234 = phi i1 [ %i.mx, %bb.cz ], [ %i.mz, %bb.da ] ; 2 uses
  %i.na = load i32, ptr %i.ml, align 8, !tbaa !101
  %i.nb = icmp ugt i32 %i.na, 64
  br i1 %i.nb, label %bb.db, label %_ZN4llvm5APIntD2Ev.exit236

bb.db:                                            ; preds = %_ZNK4llvm5APInt6isZeroEv.exit235
  %i.nc = load ptr, ptr %34, align 8, !tbaa !86   ; 2 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %_ZN4llvm5APIntD2Ev.exit236, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @_ZdaPv(ptr noundef nonnull %i.nc) #35
  br label %_ZN4llvm5APIntD2Ev.exit236

_ZN4llvm5APIntD2Ev.exit236:                       ; preds = %_ZNK4llvm5APInt6isZeroEv.exit235, %bb.db, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.ne = load i32, ptr %i.mm, align 8, !tbaa !101
  %i.nf = icmp ugt i32 %i.ne, 64
  br i1 %i.nf, label %bb.dd, label %_ZN4llvm5APIntD2Ev.exit237

bb.dd:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit236
  %i.ng = load ptr, ptr %33, align 8, !tbaa !86   ; 2 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %_ZN4llvm5APIntD2Ev.exit237, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZdaPv(ptr noundef nonnull %i.ng) #35
  br label %_ZN4llvm5APIntD2Ev.exit237

_ZN4llvm5APIntD2Ev.exit237:                       ; preds = %_ZN4llvm5APIntD2Ev.exit236, %bb.dd, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.ni = load i32, ptr %i.mk, align 8, !tbaa !101
  %i.nj = icmp ugt i32 %i.ni, 64
  br i1 %i.nj, label %bb.df, label %_ZN4llvm5APIntD2Ev.exit238

bb.df:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit237
  %i.nk = load ptr, ptr %32, align 8, !tbaa !86   ; 2 uses
  %i.nl = icmp eq ptr %i.nk, null
  br i1 %i.nl, label %_ZN4llvm5APIntD2Ev.exit238, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZdaPv(ptr noundef nonnull %i.nk) #35
  br label %_ZN4llvm5APIntD2Ev.exit238

_ZN4llvm5APIntD2Ev.exit238:                       ; preds = %_ZN4llvm5APIntD2Ev.exit237, %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  %i.nm = add nuw i32 %.0129337, 1                ; 2 uses
  %.not = icmp ne i32 %i.nm, %i.mh
  %or.cond409.not = select i1 %.0.i234, i1 %.not, i1 false
  br i1 %or.cond409.not, label %bb.cv, label %.critedge154, !llvm.loop !1195

.critedge152:                                     ; preds = %_ZN4llvm5APIntaNERKS0_.exit
  %i.nn = load i32, ptr %i.ml, align 8, !tbaa !101
  %i.no = icmp ugt i32 %i.nn, 64
  br i1 %i.no, label %bb.dh, label %_ZN4llvm5APIntD2Ev.exit239

bb.dh:                                            ; preds = %.critedge152
  %i.np = load ptr, ptr %34, align 8, !tbaa !86   ; 2 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %_ZN4llvm5APIntD2Ev.exit239, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @_ZdaPv(ptr noundef nonnull %i.np) #35
  br label %_ZN4llvm5APIntD2Ev.exit239

_ZN4llvm5APIntD2Ev.exit239:                       ; preds = %.critedge152, %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  %i.nr = load i32, ptr %i.mm, align 8, !tbaa !101
  %i.ns = icmp ugt i32 %i.nr, 64
  br i1 %i.ns, label %bb.dj, label %_ZN4llvm5APIntD2Ev.exit240

bb.dj:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit239
  %i.nt = load ptr, ptr %33, align 8, !tbaa !86   ; 2 uses
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %_ZN4llvm5APIntD2Ev.exit240, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @_ZdaPv(ptr noundef nonnull %i.nt) #35
  br label %_ZN4llvm5APIntD2Ev.exit240

_ZN4llvm5APIntD2Ev.exit240:                       ; preds = %_ZN4llvm5APIntD2Ev.exit239, %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.nv = load i32, ptr %i.mk, align 8, !tbaa !101
  %i.nw = icmp ugt i32 %i.nv, 64
  br i1 %i.nw, label %bb.dl, label %_ZN4llvm5APIntD2Ev.exit241

bb.dl:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit240
  %i.nx = load ptr, ptr %32, align 8, !tbaa !86   ; 2 uses
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %_ZN4llvm5APIntD2Ev.exit241, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @_ZdaPv(ptr noundef nonnull %i.nx) #35
  br label %_ZN4llvm5APIntD2Ev.exit241

_ZN4llvm5APIntD2Ev.exit241:                       ; preds = %_ZN4llvm5APIntD2Ev.exit240, %bb.dl, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  br label %.critedge154

.critedge154:                                     ; preds = %_ZN4llvm5APIntD2Ev.exit238, %bb.cu, %_ZN4llvm5APIntD2Ev.exit241
  %.not335 = phi i1 [ false, %_ZN4llvm5APIntD2Ev.exit241 ], [ true, %bb.cu ], [ %.0.i234, %_ZN4llvm5APIntD2Ev.exit238 ]
  %i.nz = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !101
  %i.ob = icmp ugt i32 %i.oa, 64
  br i1 %i.ob, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %.critedge154
  %i.oc = load ptr, ptr %31, align 8, !tbaa !86   ; 2 uses
  %i.od = icmp eq ptr %i.oc, null
  br i1 %i.od, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_ZdaPv(ptr noundef nonnull %i.oc) #35
  br label %bb.dp

.thread325:                                       ; preds = %_ZNK4llvm3EVT8isVectorEv.exit, %bb.cs, %bb.cr, %bb.ct, %.split323
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.dq

bb.dp:                                            ; preds = %bb.do, %bb.dn, %.critedge154
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %.critedge150

bb.dq:                                            ; preds = %.thread325, %bb.ce, %bb.cp, %_ZN4llvm5APIntD2Ev.exit173
  br label %.critedge150

.critedge150:                                     ; preds = %bb.au, %bb.av, %.preheader, %.split317, %_ZNK4llvm3EVT16isScalableVectorEv.exit217, %.split311, %_ZNK4llvm3EVT16isScalableVectorEv.exit199, %bb.dp, %.split287, %.split, %_ZN4llvm5APIntD2Ev.exit191, %bb.dq, %bb.cp, %bb.ce, %_ZNK4llvm3EVT16isScalableVectorEv.exit, %_ZNK4llvm5APIntntEv.exit, %bb.ah, %bb.af, %_ZN4llvm5APIntD2Ev.exit170, %_ZN4llvm5APIntD2Ev.exit
  %.17 = phi i1 [ %i.dd, %bb.af ], [ false, %_ZNK4llvm5APIntntEv.exit ], [ %i.dm, %bb.ah ], [ false, %.split311 ], [ false, %_ZNK4llvm3EVT16isScalableVectorEv.exit ], [ true, %_ZN4llvm5APIntD2Ev.exit ], [ %i.cr, %_ZN4llvm5APIntD2Ev.exit170 ], [ false, %bb.dq ], [ false, %.split287 ], [ %.6305, %_ZN4llvm5APIntD2Ev.exit191 ], [ true, %bb.ce ], [ true, %bb.cp ], [ %.not335, %bb.dp ], [ false, %.split ], [ false, %_ZNK4llvm3EVT16isScalableVectorEv.exit217 ], [ false, %.split317 ], [ false, %_ZNK4llvm3EVT16isScalableVectorEv.exit199 ], [ true, %.preheader ], [ false, %bb.au ], [ true, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  ret i1 %.17
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZZNK4llvm12SelectionDAG12isSplatValueENS_7SDValueERKNS_5APIntERS2_jENK3$_0clES1_S4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3) unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 8 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !721
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 1, ptr %i.b, align 8, !tbaa !101
  store i64 0, ptr %4, align 8, !tbaa !86
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !101
  %i.e = icmp ult i32 %i.d, 65
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8, !tbaa !86
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.f)
  %i.h = trunc nuw nsw i64 %i.g to i32
  br label %_ZNK4llvm5APInt8popcountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #33
  br label %_ZNK4llvm5APInt8popcountEv.exit

_ZNK4llvm5APInt8popcountEv.exit:                  ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ]
  %i.j = icmp eq i32 %.0.i, 1
  br i1 %i.j, label %.critedge12, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm5APInt8popcountEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1205, !nonnull !60, !align !722
  %i.m = load i32, ptr %i.l, align 4, !tbaa !114
  %i.n = add i32 %i.m, 1
  %i.o = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG12isSplatValueENS_7SDValueERKNS_5APIntERS2_j(ptr noundef nonnull align 8 dereferenceable(920) %i.a, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef %i.n)
  br i1 %i.o, label %bb.e, label %.critedge12

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.q = load i32, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  store i32 %i.q, ptr %i.p, align 8, !tbaa !101
  %i.r = icmp ult i32 %i.q, 65
  br i1 %i.r, label %_ZN4llvmanENS_5APIntERKS0_.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.e
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %3) #32
  %.pr = load i32, ptr %i.p, align 8, !tbaa !101, !noalias !1206
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.s = icmp ult i32 %.pr, 65
  br i1 %i.s, label %_ZN4llvmanENS_5APIntERKS0_.exit.thread, label %_ZN4llvmanENS_5APIntERKS0_.exit

_ZN4llvmanENS_5APIntERKS0_.exit.thread:           ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %bb.e
  %.sink = phi ptr [ %3, %bb.e ], [ %6, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %.pre = load i64, ptr %.sink, align 8, !tbaa !86
  %i.t = load i64, ptr %4, align 8, !tbaa !86, !noalias !1206
  %i.u = and i64 %.pre, %i.t                      ; 2 uses
  store i64 %i.u, ptr %6, align 8, !tbaa !86, !noalias !1206
  store i32 0, ptr %i.p, align 8, !tbaa !101, !noalias !1206
  br label %.critedge

_ZN4llvmanENS_5APIntERKS0_.exit:                  ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt17andAssignSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(12) %4) #32, !noalias !1206
  %.pre.i = load i32, ptr %i.p, align 8, !tbaa !101, !noalias !1206 ; 3 uses
  %.pre1.i = load i64, ptr %6, align 8, !noalias !1206 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.pre.i, ptr %i.v, align 8, !tbaa !101, !alias.scope !1206
  store i64 %.pre1.i, ptr %5, align 8, !alias.scope !1206
  store i32 0, ptr %i.p, align 8, !tbaa !101, !noalias !1206
  %i.w = icmp ult i32 %.pre.i, 65
  %i.x = inttoptr i64 %.pre1.i to ptr
  br i1 %i.w, label %.critedge, label %bb.f

.critedge:                                        ; preds = %_ZN4llvmanENS_5APIntERKS0_.exit, %_ZN4llvmanENS_5APIntERKS0_.exit.thread
  %i.y = phi i64 [ %i.u, %_ZN4llvmanENS_5APIntERKS0_.exit.thread ], [ %.pre1.i, %_ZN4llvmanENS_5APIntERKS0_.exit ]
  %i.z = icmp eq i64 %i.y, 0
  br label %_ZN4llvm5APIntD2Ev.exit14

bb.f:                                             ; preds = %_ZN4llvmanENS_5APIntERKS0_.exit
  %i.aa = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %5) #33
  %i.ab = icmp eq i32 %i.aa, %.pre.i              ; 4 uses
  %i.ac = icmp eq i64 %.pre1.i, 0
  br i1 %i.ac, label %_ZN4llvm5APIntD2Ev.exit14, label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.x) #35
  %.pre17 = load i32, ptr %i.p, align 8, !tbaa !101
  %i.ad = icmp ugt i32 %.pre17, 64
  br i1 %i.ad, label %bb.g, label %_ZN4llvm5APIntD2Ev.exit14

bb.g:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ae = load ptr, ptr %6, align 8, !tbaa !86    ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN4llvm5APIntD2Ev.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ae) #35
  br label %_ZN4llvm5APIntD2Ev.exit14

_ZN4llvm5APIntD2Ev.exit14:                        ; preds = %bb.f, %.critedge, %_ZN4llvm5APIntD2Ev.exit, %bb.g, %bb.h
  %.ph2225 = phi i1 [ %i.ab, %bb.h ], [ %i.ab, %_ZN4llvm5APIntD2Ev.exit ], [ %i.ab, %bb.g ], [ %i.ab, %bb.f ], [ %i.z, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %.critedge12

.critedge12:                                      ; preds = %_ZNK4llvm5APInt8popcountEv.exit, %bb.d, %_ZN4llvm5APIntD2Ev.exit14
  %i.ag = phi i1 [ %.ph2225, %_ZN4llvm5APIntD2Ev.exit14 ], [ true, %_ZNK4llvm5APInt8popcountEv.exit ], [ false, %bb.d ]
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !101
  %i.ai = icmp ugt i32 %i.ah, 64
  br i1 %i.ai, label %bb.i, label %_ZN4llvm5APIntD2Ev.exit15

bb.i:                                             ; preds = %.critedge12
  %i.aj = load ptr, ptr %4, align 8, !tbaa !86    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueERKNS_5APIntEj:bb.a
bb.ak:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit660, %_ZNK4llvm8TypeSizecvmEv.exit661, %_ZN4llvm5APIntD2Ev.exit
  %.01203 = phi i32 [ %i.ew, %_ZNK4llvm8TypeSizecvmEv.exit660 ], [ %i.ff, %_ZNK4llvm8TypeSizecvmEv.exit661 ], [ %i.er, %_ZN4llvm5APIntD2Ev.exit ]
  %.sroa.speculated1048 = call i32 @llvm.umin.i32(i32 %.01203, i32 %.011871436)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.al

bb.al:                                            ; preds = %bb.ac, %bb.ak
  %.11188 = phi i32 [ %.sroa.speculated1048, %bb.ak ], [ %.011871436, %bb.ac ] ; 3 uses
  %indvars.iv.next1445 = add nuw nsw i64 %indvars.iv1444, 1 ; 2 uses
  %i.fg = icmp samesign ult i64 %indvars.iv.next1445, %i.dw
  %i.fh = icmp ugt i32 %.11188, 1
  %i.fi = select i1 %i.fg, i1 %i.fh, i1 false
  br i1 %i.fi, label %bb.ac, label %_ZNK4llvm5APInt14getNumSignBitsEv.exit.thread, !llvm.loop !1247

bb.am:                                            ; preds = %bb.n
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !89 ; 4 uses
  %.sroa.0318.0.copyload = load ptr, ptr %i.fk, align 8, !tbaa !109
  %.sroa.4319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.sroa.4319.0.copyload = load i32, ptr %.sroa.4319.0..sroa_idx, align 8, !tbaa !114
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 80
  %.sroa.0315.0.copyload = load ptr, ptr %i.fl, align 8, !tbaa !109
  %.sroa.4316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 88
  %.sroa.4316.0.copyload = load i32, ptr %.sroa.4316.0..sroa_idx, align 8, !tbaa !114
  %i.fm = add nuw nsw i32 %4, 1                   ; 2 uses
  %i.fn = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0315.0.copyload, i32 %.sroa.4316.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.fm) ; 2 uses
  %i.fo = icmp eq i32 %i.fn, 1
  br i1 %i.fo, label %_ZNK4llvm5APInt14getNumSignBitsEv.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0318.0.copyload, i32 %.sroa.4319.0.copyload, i32 noundef %i.fm)
  %.sroa.speculated1045 = call i32 @llvm.umin.i32(i32 %i.fp, i32 %i.fn)
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit.thread

bb.ao:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i32 1, ptr %i.fq, align 8, !tbaa !101
  store i64 0, ptr %12, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.fr = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store i32 1, ptr %i.fr, align 8, !tbaa !101
  store i64 0, ptr %13, align 8, !tbaa !86
  %i.fs = call { ptr, i64 } @_ZNK4llvm19ShuffleVectorSDNode7getMaskEv(ptr noundef nonnull align 8 dereferenceable(96) %i.aa) ; 2 uses
  %i.ft = extractvalue { ptr, i64 } %i.fs, 0
  %i.fu = extractvalue { ptr, i64 } %i.fs, 1
  %i.fv = call noundef zeroext i1 @_ZN4llvm22getShuffleDemandedEltsEiNS_8ArrayRefIiEERKNS_5APIntERS2_S5_b(i32 noundef %i.z, ptr %i.ft, i64 %i.fu, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef nonnull align 8 dereferenceable(12) %13, i1 noundef zeroext false) #32
  br i1 %i.fv, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.fw = load i32, ptr %i.fq, align 8, !tbaa !101 ; 2 uses
  %i.fx = icmp ult i32 %i.fw, 65
  br i1 %i.fx, label %.split1221, label %_ZNK4llvm5APIntntEv.exit664

.split1221:                                       ; preds = %bb.ap
  %i.fy = load i64, ptr %12, align 8, !tbaa !86
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.ar, label %bb.aq

_ZNK4llvm5APIntntEv.exit664:                      ; preds = %bb.ap
  %i.ga = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %12) #33
  %i.gb = icmp eq i32 %i.ga, %i.fw
  br i1 %i.gb, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.split1221, %_ZNK4llvm5APIntntEv.exit664
  %i.gc = load ptr, ptr %6, align 8, !tbaa !92
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !89 ; 2 uses
  %.sroa.0303.0.copyload = load ptr, ptr %i.ge, align 8, !tbaa !109
  %.sroa.2304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %.sroa.2304.0.copyload = load i32, ptr %.sroa.2304.0..sroa_idx, align 8, !tbaa !114
  %i.gf = add nuw nsw i32 %4, 1
  %i.gg = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0303.0.copyload, i32 %.sroa.2304.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %i.gf)
  br label %bb.ar

bb.ar:                                            ; preds = %.split1221, %bb.aq, %_ZNK4llvm5APIntntEv.exit664
  %.2 = phi i32 [ -1, %_ZNK4llvm5APIntntEv.exit664 ], [ %i.gg, %bb.aq ], [ -1, %.split1221 ] ; 3 uses
  %i.gh = load i32, ptr %i.fr, align 8, !tbaa !101 ; 2 uses
  %i.gi = icmp ult i32 %i.gh, 65
  br i1 %i.gi, label %.split1222, label %_ZNK4llvm5APIntntEv.exit666

.split1222:                                       ; preds = %bb.ar
  %i.gj = load i64, ptr %13, align 8, !tbaa !86
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.at, label %bb.as

_ZNK4llvm5APIntntEv.exit666:                      ; preds = %bb.ar
  %i.gl = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %13) #33
  %i.gm = icmp eq i32 %i.gl, %i.gh
  br i1 %i.gm, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.split1222, %_ZNK4llvm5APIntntEv.exit666
  %i.gn = load ptr, ptr %6, align 8, !tbaa !92
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !89 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %.sroa.0300.0.copyload = load ptr, ptr %i.gq, align 8, !tbaa !109
  %.sroa.2301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %.sroa.2301.0.copyload = load i32, ptr %.sroa.2301.0..sroa_idx, align 8, !tbaa !114
  %i.gr = add nuw nsw i32 %4, 1
  %i.gs = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0300.0.copyload, i32 %.sroa.2301.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %13, i32 noundef %i.gr)
  %.sroa.speculated1042 = call i32 @llvm.umin.i32(i32 %i.gs, i32 %.2)
  br label %bb.at

bb.at:                                            ; preds = %.split1222, %bb.as, %_ZNK4llvm5APIntntEv.exit666
  %.31189 = phi i32 [ %.2, %_ZNK4llvm5APIntntEv.exit666 ], [ %.sroa.speculated1042, %bb.as ], [ %.2, %.split1222 ] ; 2 uses
  %i.gt = icmp eq i32 %.31189, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ao
  %cond26 = phi i1 [ %i.gt, %bb.at ], [ false, %bb.ao ]
  %.3 = phi i32 [ %.31189, %bb.at ], [ 1, %bb.ao ]
  %i.gu = load i32, ptr %i.fr, align 8, !tbaa !101
  %i.gv = icmp ugt i32 %i.gu, 64
  br i1 %i.gv, label %bb.av, label %_ZN4llvm5APIntD2Ev.exit668

bb.av:                                            ; preds = %bb.au
  %i.gw = load ptr, ptr %13, align 8, !tbaa !86   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %_ZN4llvm5APIntD2Ev.exit668, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZdaPv(ptr noundef nonnull %i.gw) #35
  br label %_ZN4llvm5APIntD2Ev.exit668

_ZN4llvm5APIntD2Ev.exit668:                       ; preds = %bb.au, %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.gy = load i32, ptr %i.fq, align 8, !tbaa !101
  %i.gz = icmp ugt i32 %i.gy, 64
  br i1 %i.gz, label %bb.ax, label %_ZN4llvm5APIntD2Ev.exit669

bb.ax:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit668
  %i.ha = load ptr, ptr %12, align 8, !tbaa !86   ; 2 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %_ZN4llvm5APIntD2Ev.exit669, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZdaPv(ptr noundef nonnull %i.ha) #35
  br label %_ZN4llvm5APIntD2Ev.exit669

_ZN4llvm5APIntD2Ev.exit669:                       ; preds = %_ZN4llvm5APIntD2Ev.exit668, %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br i1 %cond26, label %.thread1243, label %_ZNK4llvm5APInt14getNumSignBitsEv.exit.thread

bb.az:                                            ; preds = %bb.n
  %i.hc = load i16, ptr %7, align 8, !tbaa !108   ; 2 uses
  %.not.i670 = icmp eq i16 %i.hc, 0
  br i1 %.not.i670, label %_ZNK4llvm3EVT16isScalableVectorEv.exit, label %.split1223

.split1223:                                       ; preds = %bb.az
  %i.hd = add i16 %i.hc, -163
  %spec.select.i.i = icmp ult i16 %i.hd, 53
  br i1 %spec.select.i.i, label %.thread1243, label %bb.ba

_ZNK4llvm3EVT16isScalableVectorEv.exit:           ; preds = %bb.az
  %i.he = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #33
  br i1 %i.he, label %.thread1243, label %bb.ba

bb.ba:                                            ; preds = %.split1223, %_ZNK4llvm3EVT16isScalableVectorEv.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !89 ; 2 uses
  %.sroa.0956.0.copyload = load ptr, ptr %i.hg, align 8, !tbaa !109 ; 3 uses
  %.sroa.6957.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %.sroa.6957.0.copyload = load i32, ptr %.sroa.6957.0..sroa_idx, align 8, !tbaa !114 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0956.0.copyload, i64 48
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !95
  %i.hj = zext i32 %.sroa.6957.0.copyload to i64
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.hi, i64 %i.hj ; 2 uses
  %.sroa.0.0.copyload.i.i671 = load i16, ptr %i.hk, align 8, !tbaa !97
  %.sroa.21.0..sroa_idx.i.i672 = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.sroa.21.0.copyload.i.i673 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i672, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i.i671, ptr %14, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.sroa.21.0.copyload.i.i673, ptr %i.hl, align 8
  %i.hm = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
  %i.hn = trunc i64 %i.hm to i32                  ; 4 uses
  %i.ho = call noundef zeroext i1 @_ZNK4llvm3EVT9isIntegerEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
  br i1 %i.ho, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hp = call noundef zeroext i1 @_ZNK4llvm3EVT15isFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
  br i1 %i.hp, label %bb.bc, label %.thread1226

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hq = icmp eq i32 %i.x, %i.hn
  br i1 %i.hq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hr = add nuw nsw i32 %4, 1
  %i.hs = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nonnull %.sroa.0956.0.copyload, i32 %.sroa.6957.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.hr)
  br label %bb.bl

bb.be:                                            ; preds = %bb.bc
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !365
  %i.hv = call noundef nonnull align 8 dereferenceable(912) ptr @_ZNK4llvm15MachineFunction13getDataLayoutEv(ptr noundef nonnull align 8 dereferenceable(1065) %i.hu) #32
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !660, !range !59, !noundef !60
  %i.hx = trunc nuw i8 %i.hw to i1
  %i.hy = urem i32 %i.hn, %i.x
  %i.hz = udiv i32 %i.hn, %i.x                    ; 3 uses
  %.not1398 = icmp eq i32 %i.hy, 0
  br i1 %.not1398, label %bb.bf, label %.thread1226

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.ia = udiv i32 %i.z, %i.hz
  call void @_ZN4llvm8APIntOps12ScaleBitMaskERKNS_5APIntEjb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %15, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.ia, i1 noundef zeroext false) #32
  %i.ib = add nuw nsw i32 %4, 1
  %i.ic = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nonnull %.sroa.0956.0.copyload, i32 %.sroa.6957.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %15, i32 noundef %i.ib) ; 3 uses
  %i.id = icmp eq i32 %i.ic, %i.hn
  %.not6161429 = icmp eq i32 %i.z, 0
  %or.cond = select i1 %i.id, i1 true, i1 %.not6161429
  br i1 %or.cond, label %.loopexit, label %.lr.ph1432

.lr.ph1432:                                       ; preds = %bb.bf
  %i.ie = load i32, ptr %i.y, align 8, !tbaa !101
  %i.if = icmp ult i32 %i.ie, 65
  %i.ig = load ptr, ptr %3, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph1432, %bb.bi
  %.05601431 = phi i32 [ 0, %.lr.ph1432 ], [ %i.iv, %bb.bi ] ; 4 uses
  %.112041430 = phi i32 [ %i.x, %.lr.ph1432 ], [ %.31206, %bb.bi ] ; 2 uses
  %i.ih = and i32 %.05601431, 63
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = shl nuw i64 1, %i.ii
  %i.ik = lshr i32 %.05601431, 6
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.il
  %.in.i.i676 = select i1 %i.if, ptr %3, ptr %i.im
  %i.in = load i64, ptr %.in.i.i676, align 8, !tbaa !86
  %i.io = and i64 %i.ij, %i.in
  %.not1399 = icmp eq i64 %i.io, 0
  br i1 %.not1399, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ip = urem i32 %.05601431, %i.hz              ; 2 uses
  %i.iq = xor i32 %i.ip, -1
  %i.ir = add i32 %i.hz, %i.iq
  %i.is = select i1 %i.hx, i32 %i.ip, i32 %i.ir
  %i.it = mul i32 %i.is, %i.x                     ; 2 uses
  %.not617 = icmp ugt i32 %i.ic, %i.it
  br i1 %.not617, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.bh
  %i.iu = sub nuw i32 %i.ic, %i.it
  %.sroa.speculated953 = call i32 @llvm.umin.i32(i32 %i.iu, i32 %.112041430)
  br label %bb.bi

bb.bi:                                            ; preds = %.thread, %bb.bg
  %.31206 = phi i32 [ %.sroa.speculated953, %.thread ], [ %.112041430, %bb.bg ] ; 2 uses
  %i.iv = add nuw i32 %.05601431, 1               ; 2 uses
  %.not616 = icmp eq i32 %i.iv, %i.z
  br i1 %.not616, label %.loopexit, label %bb.bg, !llvm.loop !1248

.loopexit:                                        ; preds = %bb.bh, %bb.bi, %bb.bf
  %.8 = phi i32 [ %i.x, %bb.bf ], [ %.31206, %bb.bi ], [ 1, %bb.bh ]
  %i.iw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !101
  %i.iy = icmp ugt i32 %i.ix, 64
  br i1 %i.iy, label %bb.bj, label %_ZN4llvm5APIntD2Ev.exit678

bb.bj:                                            ; preds = %.loopexit
  %i.iz = load ptr, ptr %15, align 8, !tbaa !86   ; 2 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %_ZN4llvm5APIntD2Ev.exit678, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.iz) #35
  br label %_ZN4llvm5APIntD2Ev.exit678

_ZN4llvm5APIntD2Ev.exit678:                       ; preds = %.loopexit, %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  br label %bb.bl

.thread1226:                                      ; preds = %bb.bb, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %.thread1243

bb.bl:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit678, %bb.bd
  %.10 = phi i32 [ %i.hs, %bb.bd ], [ %.8, %_ZN4llvm5APIntD2Ev.exit678 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit.thread

bb.bm:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.jb = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !89
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 40
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !92 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 88
  %.sroa.0.0.copyload.i679 = load i16, ptr %i.jf, align 8, !tbaa !97
  %.sroa.21.0..sroa_idx.i680 = getelementptr inbounds nuw i8, ptr %i.je, i64 96
  %.sroa.21.0.copyload.i681 = load ptr, ptr %.sroa.21.0..sroa_idx.i680, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i679, ptr %16, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %.sroa.21.0.copyload.i681, ptr %i.jg, align 8
  %i.jh = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
  %i.ji = trunc i64 %i.jh to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  %i.jj = add i32 %i.x, 1
  %i.jk = sub i32 %i.jj, %i.ji
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit.thread

bb.bn:                                            ; preds = %bb.n
  %i.jl = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !89
  %i.jn = call noundef i64 @_ZNK4llvm7SDValue24getScalarValueSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(12) %i.jm)
  %i.jo = trunc i64 %i.jn to i32
  %i.jp = sub i32 %i.x, %i.jo
  %i.jq = load ptr, ptr %6, align 8, !tbaa !92
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !89 ; 2 uses
  %.sroa.0274.0.copyload = load ptr, ptr %i.js, align 8, !tbaa !109
  %.sroa.2275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %.sroa.2275.0.copyload = load i32, ptr %.sroa.2275.0..sroa_idx, align 8, !tbaa !114
  %i.jt = add nuw nsw i32 %4, 1
  %i.ju = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0274.0.copyload, i32 %.sroa.2275.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.jt)
  %i.jv = add i32 %i.jp, %i.ju
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit.thread

bb.bo:                                            ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !89
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !92 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 88
  %.sroa.0.0.copyload.i684 = load i16, ptr %i.ka, align 8, !tbaa !97
  %.sroa.21.0..sroa_idx.i685 = getelementptr inbounds nuw i8, ptr %i.jz, i64 96
  %.sroa.21.0.copyload.i686 = load ptr, ptr %.sroa.21.0..sroa_idx.i685, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i684, ptr %17, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %.sroa.21.0.copyload.i686, ptr %i.kb, align 8
  %i.kc = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %17)
  %i.kd = trunc i64 %i.kc to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.ke = add i32 %i.x, 1
  %i.kf = sub i32 %i.ke, %i.kd
  %i.kg = load ptr, ptr %6, align 8, !tbaa !92
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !89 ; 2 uses
  %.sroa.0271.0.copyload = load ptr, ptr %i.ki, align 8, !tbaa !109
  %.sroa.2272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.2272.0.copyload = load i32, ptr %.sroa.2272.0..sroa_idx, align 8, !tbaa !114
  %i.kj = add nuw nsw i32 %4, 1
  %i.kk = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0271.0.copyload, i32 %.sroa.2272.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.kj)
  %.sroa.speculated1039 = call i32 @llvm.umax.i32(i32 %i.kf, i32 %i.kk)
  br label %_ZNK4llvm5APInt14getNumSignBitsEv.exit.thread

bb.bp:                                            ; preds = %bb.n
  %i.kl = load i16, ptr %7, align 8, !tbaa !108   ; 2 uses
  %.not.i690 = icmp eq i16 %i.kl, 0
  br i1 %.not.i690, label %_ZNK4llvm3EVT16isScalableVectorEv.exit692, label %.split1229

.split1229:                                       ; preds = %bb.bp
  %i.km = add i16 %i.kl, -163
  %spec.select.i.i691 = icmp ult i16 %i.km, 53
  br i1 %spec.select.i.i691, label %.thread1243, label %bb.bq

_ZNK4llvm3EVT16isScalableVectorEv.exit692:        ; preds = %bb.bp
  %i.kn = call noundef zeroext i1 @_ZNK4llvm3EVT24isExtendedScalableVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #33
  br i1 %i.kn, label %.thread1243, label %bb.bq

bb.bq:                                            ; preds = %.split1229, %_ZNK4llvm3EVT16isScalableVectorEv.exit692
  %i.ko = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !89 ; 2 uses
  %.sroa.0947.0.copyload = load ptr, ptr %i.kp, align 8, !tbaa !109 ; 2 uses
  %.sroa.5948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %.sroa.5948.0.copyload = load i32, ptr %.sroa.5948.0..sroa_idx, align 8, !tbaa !114 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.0947.0.copyload, i64 48
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !95
  %i.ks = zext i32 %.sroa.5948.0.copyload to i64
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr %i.kr, i64 %i.ks ; 2 uses
  %.sroa.0.0.copyload.i.i693 = load i16, ptr %i.kt, align 8, !tbaa !97
  %.sroa.21.0..sroa_idx.i.i694 = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %.sroa.21.0.copyload.i.i695 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i694, align 8, !tbaa !99
  store i16 %.sroa.0.0.copyload.i.i693, ptr %18, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %.sroa.21.0.copyload.i.i695, ptr %i.ku, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  %i.kv = call noundef i32 @_ZNK4llvm3EVT20getVectorNumElementsEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
  call void @_ZNK4llvm5APInt4zextEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %19, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %i.kv) #32
  %i.kw = call noundef i64 @_ZNK4llvm3EVT19getScalarSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %18)
  %i.kx = trunc i64 %i.kw to i32
  %i.ky = sub i32 %i.x, %i.kx
  %i.kz = add nuw nsw i32 %4, 1
  %i.la = call noundef i32 @_ZNK4llvm12SelectionDAG18ComputeNumSignBitsENS_7SDValueERKNS_5APIntEj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %.sroa.0947.0.copyload, i32 %.sroa.5948.0.copyload, ptr noundef nonnull align 8 dereferenceable(12) %19, i32 noundef %i.kz)
  %i.lb = add i32 %i.ky, %i.la
  %i.lc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !101
  %i.le = icmp ugt i32 %i.ld, 64
  br i1 %i.le, label %bb.br, label %_ZN4llvm5APIntD2Ev.exit698

bb.br:                                            ; preds = %bb.bq
  %i.lf = load ptr, ptr %19, align 8, !tbaa !86   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %_ZN4llvm5APIntD2Ev.exit698, label %bb.bs

end_hunk_2

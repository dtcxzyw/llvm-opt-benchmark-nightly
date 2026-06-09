inline.NumInlined: 2510
inline.NumDeleted: 942
begin_hunk_0_@_ZN6google8protobuf8compiler6csharp16MessageGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.ne
  store i8 0, ptr %i.nh, align 1, !tbaa !66
  %.pre.i278 = load ptr, ptr %40, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281

.thread.i280:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i279
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i268, i64 24
  store ptr %i.mx, ptr %i.mt, align 8, !tbaa !64
  %i.nj = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.nk = load <2 x i64>, ptr %i.nj, align 8, !tbaa !66
  store <2 x i64> %i.nk, ptr %i.ni, align 8, !tbaa !66
  br label %bb.dh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i274: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i273
  %i.nl = load i64, ptr %i.mv, align 8, !tbaa !66
  store ptr %i.mx, ptr %i.mt, align 8, !tbaa !64
  %i.nm = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i268, i64 24
  %i.no = load <2 x i64>, ptr %i.nm, align 8, !tbaa !66
  store <2 x i64> %i.no, ptr %i.nn, align 8, !tbaa !66
  %.not.i275 = icmp eq ptr %i.mu, null
  br i1 %.not.i275, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i274
  store ptr %i.mu, ptr %40, align 8, !tbaa !64
  store i64 %i.nl, ptr %i.my, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281

bb.dh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i274, %.thread.i280
  store ptr %i.my, ptr %40, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281: ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i277, %bb.dg, %bb.dh
  %i.np = phi ptr [ %.pre.i278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i277 ], [ %i.mu, %bb.dg ], [ %i.my, %bb.dh ], [ %i.mx, %bb.dc ]
  %i.nq = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 0, ptr %i.nq, align 8, !tbaa !67
  store i8 0, ptr %i.np, align 1, !tbaa !66
  %i.nr = load ptr, ptr %40, align 8, !tbaa !64   ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !66
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  %i.nw = load ptr, ptr %42, align 8, !tbaa !64   ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.ny = icmp eq ptr %i.nw, %i.nx
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  %i.nz = load i64, ptr %i.nx, align 8, !tbaa !66
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.oa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %bb.dn

bb.di:                                            ; preds = %bb.cu
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

bb.dj:                                            ; preds = %_ZNK6google8protobuf10Descriptor5indexEv.exit264
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dk:                                            ; preds = %bb.cy
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

bb.dl:                                            ; preds = %bb.cz
  %i.oe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.of = load ptr, ptr %40, align 8, !tbaa !64   ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.oh = icmp eq ptr %i.of, %i.og
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %bb.dl
  %i.oi = load i64, ptr %i.og, align 8, !tbaa !66
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %bb.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288, %bb.dk
  %.pn144 = phi { ptr, i32 } [ %i.od, %bb.dk ], [ %i.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288 ], [ %i.oe, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  br label %bb.dm

bb.dm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %bb.dj
  %.pn144.pn = phi { ptr, i32 } [ %.pn144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290 ], [ %i.oc, %bb.dj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  %i.ok = load ptr, ptr %42, align 8, !tbaa !64   ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.om = icmp eq ptr %i.ok, %i.ol
  br i1 %i.om, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %bb.dm
  %i.on = load i64, ptr %i.ol, align 8, !tbaa !66
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.oo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291, %bb.di
  %.pn144.pn.pn.pn = phi { ptr, i32 } [ %i.ob, %bb.di ], [ %.pn144.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291 ], [ %.pn144.pn, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %.body

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  invoke void @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase28WriteGeneratedCodeAttributesEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1)
          to label %bb.do unwind label %bb.am

bb.do:                                            ; preds = %bb.dn
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 93, ptr nonnull @.str.24)
          to label %bb.dp unwind label %bb.am

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase28WriteGeneratedCodeAttributesEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1)
          to label %bb.dq unwind label %bb.am

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 81, ptr nonnull @.str.25)
          to label %bb.dr unwind label %bb.am

bb.dr:                                            ; preds = %bb.dq
  invoke void @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase28WriteGeneratedCodeAttributesEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1)
          to label %bb.ds unwind label %bb.am

bb.ds:                                            ; preds = %bb.dr
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 79, ptr nonnull @.str.26)
          to label %bb.dt unwind label %bb.am

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN6google8protobuf8compiler6csharp16MessageGenerator19GenerateCloningCodeEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef nonnull %1)
          to label %.preheader632 unwind label %bb.am

.preheader632:                                    ; preds = %bb.dt
  %i.op = load ptr, ptr %i.f, align 8, !tbaa !21  ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load i32, ptr %i.oq, align 8, !tbaa !42
  %i.os = icmp sgt i32 %i.or, 0
  br i1 %i.os, label %.lr.ph704, label %.preheader631

.lr.ph704:                                        ; preds = %.preheader632
  %i.ot = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ou = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 5 uses
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ox = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 7 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i312 = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.du

.preheader631:                                    ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit, %.preheader632
  %i.pb = phi ptr [ %i.op, %.preheader632 ], [ %i.st, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit ] ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 132
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !165
  %i.pe = icmp sgt i32 %i.pd, 0
  br i1 %i.pe, label %.lr.ph709, label %._crit_edge710

.lr.ph709:                                        ; preds = %.preheader631
  %i.pf = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.sroa.2.0..sroa_idx.i.i.i332 = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 8 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 5 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.2.0..sroa_idx.i.i.i354 = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 8 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 5 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 11 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 6 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.2.0..sroa_idx.i.i.i378 = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i394 = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.pp = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 5 uses
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.ps = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 7 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %53, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i416 = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.pv = zext i64 xor (i64 ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), i64 7017557537933586031) to i128
  %i.pw = mul nuw i128 %i.pv, 13393509341765846924 ; 2 uses
  %i.px = lshr i128 %i.pw, 64
  %i.py = xor i128 %i.px, %i.pw
  %i.pz = trunc i128 %i.py to i64
  %i.qa = add i64 %i.pz, 102                      ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.qc = lshr i64 %i.qa, 7
  %i.qd = trunc i64 %i.qa to i8
  %i.qe = and i8 %i.qd, 127
  %i.qf = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  %i.qg = insertelement <16 x i8> poison, i8 %i.qe, i64 0
  %i.qh = shufflevector <16 x i8> %i.qg, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.qi = mul i64 xor (i64 ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), i64 7306085894772319342), -2543921745674291987
  %i.qj = call i64 @llvm.bswap.i64(i64 %i.qi)
  %i.qk = add nuw nsw i64 %i.qj, 92               ; 3 uses
  %i.ql = lshr i64 %i.qk, 7
  %i.qm = trunc i64 %i.qk to i8
  %i.qn = and i8 %i.qm, 127
  %i.qo = insertelement <16 x i8> poison, i8 %i.qn, i64 0
  %i.qp = shufflevector <16 x i8> %i.qo, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 6 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.qs = ptrtoint ptr %12 to i64                 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.qv = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i432 = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.el

bb.du:                                            ; preds = %.lr.ph704, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph704 ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit ] ; 2 uses
  %i.qx = phi ptr [ %i.op, %.lr.ph704 ], [ %i.st, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit ]
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 64
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !50
  %i.ra = getelementptr inbounds nuw [88 x i8], ptr %i.qz, i64 %indvars.iv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #28
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !59 ; 2 uses
  %.0.copyload.i.i.i = load i16, ptr %i.rc, align 1
  %i.rd = zext i16 %.0.copyload.i.i.i to i64      ; 2 uses
  %i.re = xor i64 %i.rd, -1
  %i.rf = getelementptr inbounds i8, ptr %i.rc, i64 %i.re
  store i64 %i.rd, ptr %46, align 8
  store ptr %i.rf, ptr %i.ot, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #28
  invoke void @_ZN6google8protobuf8compiler6csharp20GetFieldConstantNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr noundef nonnull %i.ra)
          to label %bb.dv unwind label %bb.eg

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #28
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !7
  %i.ri = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.rh, ptr noundef nonnull %i.ou)
          to label %bb.dw unwind label %bb.eh

bb.dw:                                            ; preds = %bb.dv
  %i.rj = ptrtoint ptr %i.ri to i64
  %i.rk = sub i64 %i.rj, %i.ov                    ; 5 uses
  store i64 %i.rk, ptr %49, align 8, !tbaa !88
  store ptr %i.ou, ptr %i.ow, align 8, !tbaa !90
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  store ptr %i.ox, ptr %48, align 8, !tbaa !60, !alias.scope !166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !166
  store i64 %i.rk, ptr %i.c, align 8, !tbaa !62, !noalias !166
  %i.rl = icmp ugt i64 %i.rk, 15
  br i1 %i.rl, label %.noexc.i.i298, label %._crit_edge.i.i.i297

.noexc.i.i298:                                    ; preds = %bb.dw
  %i.rm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc301 unwind label %bb.eh ; 2 uses

.noexc301:                                        ; preds = %.noexc.i.i298
  store ptr %i.rm, ptr %48, align 8, !tbaa !64, !alias.scope !166
  %i.rn = load i64, ptr %i.c, align 8, !tbaa !62, !noalias !166
  store i64 %i.rn, ptr %i.ox, align 8, !tbaa !66, !alias.scope !166
  br label %._crit_edge.i.i.i297

._crit_edge.i.i.i297:                             ; preds = %.noexc301, %bb.dw
  %i.ro = phi ptr [ %i.rm, %.noexc301 ], [ %i.ox, %bb.dw ] ; 2 uses
  switch i64 %i.rk, label %bb.dy [
    i64 1, label %bb.dx
    i64 0, label %bb.dz
  ]

bb.dx:                                            ; preds = %._crit_edge.i.i.i297
  %i.rp = load i8, ptr %i.ou, align 8, !tbaa !66
  store i8 %i.rp, ptr %i.ro, align 1, !tbaa !66
  br label %bb.dz

bb.dy:                                            ; preds = %._crit_edge.i.i.i297
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ro, ptr nonnull align 8 %i.ou, i64 %i.rk, i1 false)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %._crit_edge.i.i.i297
  %i.rq = load i64, ptr %i.c, align 8, !tbaa !62, !noalias !166 ; 2 uses
  store i64 %i.rq, ptr %i.oy, align 8, !tbaa !67, !alias.scope !166
  %i.rr = load ptr, ptr %48, align 8, !tbaa !64, !alias.scope !166
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rq
  store i8 0, ptr %i.rs, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !166
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA11_cSt17basic_string_viewIcSt11char_traitsIcEEA20_cNSt7__cxx1112basic_stringIcS7_SaIcEEEA6_cSD_EEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 116, ptr nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(11) @.str.28, ptr noundef nonnull align 8 dereferenceable(16) %46, ptr noundef nonnull align 1 dereferenceable(20) @.str.29, ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 1 dereferenceable(6) @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %bb.ea unwind label %bb.ei

bb.ea:                                            ; preds = %bb.dz
  %i.rt = load ptr, ptr %48, align 8, !tbaa !64   ; 2 uses
  %i.ru = icmp eq ptr %i.rt, %i.ox
  br i1 %i.ru, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %bb.ea
  %i.rv = load i64, ptr %i.ox, align 8, !tbaa !66
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #28
  %i.rx = load ptr, ptr %47, align 8, !tbaa !64   ; 2 uses
  %i.ry = icmp eq ptr %i.rx, %i.oz
  br i1 %i.ry, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305
  %i.rz = load i64, ptr %i.oz, align 8, !tbaa !66
  %i.sa = add i64 %i.rz, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #28
  %i.sb = invoke noundef i32 @_ZN6google8protobuf8compiler6csharp16MessageGenerator16GetPresenceIndexEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef nonnull %i.ra)
          to label %.noexc309 unwind label %bb.ej

.noexc309:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308
  %i.sc = invoke noundef ptr @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase7optionsEv(ptr noundef nonnull align 8 dereferenceable(53) %0)
          to label %.noexc310 unwind label %bb.ej

.noexc310:                                        ; preds = %.noexc309
  %i.sd = invoke noundef ptr @_ZN6google8protobuf8compiler6csharp20CreateFieldGeneratorEPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull %i.ra, i32 noundef %i.sb, ptr noundef %i.sc)
          to label %_ZN6google8protobuf8compiler6csharp16MessageGenerator28CreateFieldGeneratorInternalEPKNS0_15FieldDescriptorE.exit unwind label %bb.ej ; 6 uses

_ZN6google8protobuf8compiler6csharp16MessageGenerator28CreateFieldGeneratorInternalEPKNS0_15FieldDescriptorE.exit: ; preds = %.noexc310
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !19
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 48
  %i.sg = load ptr, ptr %i.sf, align 8
  invoke void %i.sg(ptr noundef nonnull align 8 dereferenceable(64) %i.sd, ptr noundef nonnull %1)
          to label %bb.eb unwind label %bb.ek

bb.eb:                                            ; preds = %_ZN6google8protobuf8compiler6csharp16MessageGenerator28CreateFieldGeneratorInternalEPKNS0_15FieldDescriptorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i312, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 1, ptr nonnull @.str.31)
          to label %bb.ed unwind label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.sh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit325

bb.ed:                                            ; preds = %bb.eb
  %i.si = load i64, ptr %17, align 8, !tbaa !71   ; 2 uses
  %i.sj = icmp eq i64 %i.si, 0
  br i1 %i.sj, label %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.sk = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i312, align 8, !tbaa !66
  %i.sl = load i64, ptr %i.pa, align 8, !tbaa !74
  %i.sm = and i64 %i.sl, 65536
  %i.sn = icmp ne i64 %i.sm, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.si, ptr noundef %i.sk, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.sn)
          to label %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.so = landingpad { ptr, i32 }
          catch ptr null
  %i.sp = extractvalue { ptr, i32 } %i.so, 0
  call void @__clang_call_terminate(ptr %i.sp) #29
  unreachable

_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.ee, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.sq = load ptr, ptr %i.sd, align 8, !tbaa !19
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ss = load ptr, ptr %i.sr, align 8
  call void %i.ss(ptr noundef nonnull align 8 dereferenceable(64) %i.sd) #28, !inline_history !169
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.st = load ptr, ptr %i.f, align 8, !tbaa !21  ; 3 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !42
  %i.sw = sext i32 %i.sv to i64
  %i.sx = icmp slt i64 %indvars.iv.next, %i.sw
  br i1 %i.sx, label %bb.du, label %.preheader631, !llvm.loop !170
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler6csharp16MessageGenerator8GenerateEPNS0_2io7PrinterE:bb.a
  %i.yo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yp = load ptr, ptr %50, align 8, !tbaa !64   ; 2 uses
  %i.yq = icmp eq ptr %i.yp, %i.pg
  br i1 %i.yq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.fu
  %i.yr = load i64, ptr %i.pg, align 8, !tbaa !66
  %i.ys = add i64 %i.yr, 1
  call void @_ZdlPvm(ptr noundef %i.yp, i64 noundef %i.ys) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398, %bb.ft
  %.pn156 = phi { ptr, i32 } [ %i.yn, %bb.ft ], [ %i.yo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398 ], [ %i.yo, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #28
  br label %.body

bb.fv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i345
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

bb.fw:                                            ; preds = %_ZN6google8protobuf8compiler6csharp22UnderscoresToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb.exit351
  %i.yu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yv = load ptr, ptr %51, align 8, !tbaa !64   ; 2 uses
  %i.yw = icmp eq ptr %i.yv, %i.pj
  br i1 %i.yw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401: ; preds = %bb.fw
  %i.yx = load i64, ptr %i.pj, align 8, !tbaa !66
  %i.yy = add i64 %i.yx, 1
  call void @_ZdlPvm(ptr noundef %i.yv, i64 noundef %i.yy) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401, %bb.fv
  %.pn158 = phi { ptr, i32 } [ %i.yt, %bb.fv ], [ %i.yu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401 ], [ %i.yu, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #28
  br label %.body

bb.fx:                                            ; preds = %.noexc.i.i.i
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

bb.fy:                                            ; preds = %bb.fe
  %i.za = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zb = load ptr, ptr %52, align 8, !tbaa !64   ; 2 uses
  %i.zc = icmp eq ptr %i.zb, %i.pl
  br i1 %i.zc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404: ; preds = %bb.fy
  %i.zd = load i64, ptr %i.pl, align 8, !tbaa !66
  %i.ze = add i64 %i.zd, 1
  call void @_ZdlPvm(ptr noundef %i.zb, i64 noundef %i.ze) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %bb.fy, %bb.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404
  %.pn160.pn = phi { ptr, i32 } [ %i.za, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i404 ], [ %i.yz, %bb.fx ], [ %i.za, %bb.fy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #28
  br label %.body

bb.fz:                                            ; preds = %.lr.ph706, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425
  %indvars.iv740.a = phi i64 [ 0, %.lr.ph706 ], [ %indvars.iv.next741.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit425 ] ; 2 uses
  %i.zf = load ptr, ptr %i.yl, align 8, !tbaa !190
  %i.zg = getelementptr inbounds nuw [88 x i8], ptr %i.zf, i64 %indvars.iv740.a ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #28
  invoke void @_ZN6google8protobuf8compiler6csharp16GetOneofCaseNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %53, ptr noundef %i.zg)
          to label %bb.ga unwind label %bb.gy

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #28
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !7
  %i.zj = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %i.zi, ptr noundef nonnull %i.pp)
          to label %bb.gb unwind label %bb.gz

bb.gb:                                            ; preds = %bb.ga
  %i.zk = ptrtoint ptr %i.zj to i64
  %i.zl = sub i64 %i.zk, %i.pq                    ; 5 uses
  store i64 %i.zl, ptr %55, align 8, !tbaa !88
  store ptr %i.pp, ptr %i.pr, align 8, !tbaa !90
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  store ptr %i.ps, ptr %54, align 8, !tbaa !60, !alias.scope !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !191
  store i64 %i.zl, ptr %i.a, align 8, !tbaa !62, !noalias !191
  %i.zm = icmp ugt i64 %i.zl, 15
  br i1 %i.zm, label %.noexc.i.i411, label %._crit_edge.i.i.i410

.noexc.i.i411:                                    ; preds = %bb.gb
  %i.zn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc414 unwind label %bb.gz ; 2 uses

.noexc414:                                        ; preds = %.noexc.i.i411
  store ptr %i.zn, ptr %54, align 8, !tbaa !64, !alias.scope !191
  %i.zo = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !191
  store i64 %i.zo, ptr %i.ps, align 8, !tbaa !66, !alias.scope !191
  br label %._crit_edge.i.i.i410

._crit_edge.i.i.i410:                             ; preds = %.noexc414, %bb.gb
  %i.zp = phi ptr [ %i.zn, %.noexc414 ], [ %i.ps, %bb.gb ] ; 2 uses
  switch i64 %i.zl, label %bb.gd [
    i64 1, label %bb.gc
    i64 0, label %bb.ge
  ]

bb.gc:                                            ; preds = %._crit_edge.i.i.i410
  %i.zq = load i8, ptr %i.pp, align 8, !tbaa !66
  store i8 %i.zq, ptr %i.zp, align 1, !tbaa !66
  br label %bb.ge

bb.gd:                                            ; preds = %._crit_edge.i.i.i410
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zp, ptr nonnull align 8 %i.pp, i64 %i.zl, i1 false)
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc, %._crit_edge.i.i.i410
  %i.zr = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !191 ; 2 uses
  store i64 %i.zr, ptr %i.pt, align 8, !tbaa !67, !alias.scope !191
  %i.zs = load ptr, ptr %54, align 8, !tbaa !64, !alias.scope !191
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zr
  store i8 0, ptr %i.zt, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !191
  %i.zu = load ptr, ptr %53, align 8, !tbaa !64
  %i.zv = load i64, ptr %i.pu, align 8, !tbaa !67
  %i.zw = load ptr, ptr %54, align 8, !tbaa !64
  %i.zx = load i64, ptr %i.pt, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i416, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 2)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i unwind label %.loopexit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i: ; preds = %bb.ge
  %i.zy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i416, align 8, !tbaa !66, !noalias !194 ; 3 uses
  call void @llvm.prefetch.p0(ptr %i.zy, i32 0, i32 1, i32 1), !noalias !194
  %i.zz = load i64, ptr %i.qb, align 8, !tbaa !74, !noalias !197
  %i.aaa = and i64 %i.zz, 65535                   ; 2 uses
  %i.aab = load i64, ptr %12, align 8, !tbaa !71, !noalias !197 ; 4 uses
  %i.aac = xor i64 %i.aaa, %i.qc
  %.sroa.0.0.copyload.i.i.i.i484 = load ptr, ptr %i.qf, align 8, !tbaa !66, !noalias !194 ; 3 uses
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gg, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i
  %.pn.i487 = phi i64 [ %i.aac, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i ], [ %i.abh, %bb.gg ]
  %.sroa.15.0.i488 = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i ], [ %i.abg, %bb.gg ] ; 2 uses
  %.sroa.7.0.i489 = and i64 %.pn.i487, %i.aab     ; 5 uses
  %i.aad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i484, i64 %.sroa.7.0.i489
  call void @llvm.prefetch.p0(ptr %i.aad, i32 0, i32 3, i32 1), !noalias !194
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zy, i64 %.sroa.7.0.i489
  %i.aaf = load <16 x i8>, ptr %i.aae, align 1, !tbaa !66, !noalias !194 ; 2 uses
  %i.aag = icmp eq <16 x i8> %i.qh, %i.aaf
  %i.aah = bitcast <16 x i1> %i.aag to i16        ; 2 uses
  %.not59.i490 = icmp eq i16 %i.aah, 0
  br i1 %.not59.i490, label %.critedge18.i498, label %.lr.ph.i491

.lr.ph.i491:                                      ; preds = %bb.gf, %.critedge.i496
  %.sroa.034.060.i492 = phi i16 [ %i.aay, %.critedge.i496 ], [ %i.aah, %bb.gf ] ; 3 uses
  %i.aai = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060.i492, i1 true)
  %i.aaj = zext nneg i16 %i.aai to i64
  %i.aak = add i64 %.sroa.7.0.i489, %i.aaj
  %i.aal = and i64 %i.aak, %i.aab
  %i.aam = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i484, i64 %i.aal ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i493 = load i64, ptr %i.aam, align 8, !tbaa !62, !noalias !194
  %i.aan = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i493, 15
  br i1 %i.aan, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i506, label %.critedge.i496, !prof !200

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i506: ; preds = %.lr.ph.i491
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i494 = getelementptr inbounds nuw i8, ptr %i.aam, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i495 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i494, align 8, !tbaa !201, !noalias !194 ; 2 uses
  %i.aao = load i64, ptr %.sroa.22.0.copyload.i.i.i.i.i.i495, align 1
  %i.aap = xor i64 %i.aao, 7017557537933586031
  %i.aaq = getelementptr i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i495, i64 7
  %i.aar = load i64, ptr %i.aaq, align 1
  %i.aas = xor i64 %i.aar, 7308604896966964065
  %i.aat = or i64 %i.aap, %i.aas
  %i.aau = icmp ne i64 %i.aat, 0
  %i.aav = zext i1 %i.aau to i32
  %i.aaw = icmp eq i32 %i.aav, 0
  br i1 %i.aaw, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i, label %.critedge.i496

.critedge.i496:                                   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i506, %.lr.ph.i491
  %i.aax = add i16 %.sroa.034.060.i492, -1
  %i.aay = and i16 %i.aax, %.sroa.034.060.i492    ; 2 uses
  %.not.i497 = icmp eq i16 %i.aay, 0
  br i1 %.not.i497, label %.critedge18.i498, label %.lr.ph.i491

.critedge18.i498:                                 ; preds = %.critedge.i496, %bb.gf
  %i.aaz = icmp eq <16 x i8> %i.aaf, splat (i8 -128)
  %i.aba = bitcast <16 x i1> %i.aaz to i16        ; 2 uses
  %.not52.i499 = icmp eq i16 %i.aba, 0
  br i1 %.not52.i499, label %bb.gg, label %.thread.i500, !prof !91

.thread.i500:                                     ; preds = %.critedge18.i498
  %i.abb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aba, i1 true)
  %i.abc = zext nneg i16 %i.abb to i64
  %i.abd = add i64 %.sroa.7.0.i489, %i.abc
  %i.abe = and i64 %i.abd, %i.aab
  %i.abf = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.qa, i64 %i.abe, i64 %.sroa.15.0.i488)
          to label %bb.gh unwind label %bb.gt

bb.gg:                                            ; preds = %.critedge18.i498
  %i.abg = add i64 %.sroa.15.0.i488, 16           ; 2 uses
  %i.abh = add i64 %i.abg, %.sroa.7.0.i489
  br label %bb.gf

.loopexit:                                        ; preds = %bb.ge, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body472

.loopexit.split-lp:                               ; preds = %bb.gn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body472

bb.gh:                                            ; preds = %.thread.i500
  %.sroa.0.0.copyload.i.i.i.i23.i501 = load ptr, ptr %i.qf, align 8, !tbaa !66, !noalias !194
  %i.abi = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i501, i64 %i.abf ; 4 uses
  store i64 15, ptr %i.abi, align 8, !tbaa !62
  %.sroa.7618.0..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  store ptr @.str.38, ptr %.sroa.7618.0..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !201
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  store i64 %i.zv, ptr %i.abj, align 8, !tbaa !62
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.abi, i64 24
  store ptr %i.zu, ptr %.sroa.12.16..sroa_idx, align 8, !tbaa !201
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i416, align 8, !tbaa !66, !noalias !202
  %.pre755 = load i64, ptr %i.qb, align 8, !tbaa !74, !noalias !205
  %.pre756 = load i64, ptr %12, align 8, !tbaa !71, !noalias !205
  %.sroa.0.0.copyload.i.i.i.i.pre = load ptr, ptr %i.qf, align 8, !tbaa !66, !noalias !202
  %.pre760 = and i64 %.pre755, 65535
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i506, %bb.gh
  %.pre-phi = phi i64 [ %.pre760, %bb.gh ], [ %i.aaa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i506 ]
  %.sroa.0.0.copyload.i.i.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.pre, %bb.gh ], [ %.sroa.0.0.copyload.i.i.i.i484, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i506 ] ; 2 uses
  %i.abk = phi i64 [ %.pre756, %bb.gh ], [ %i.aab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i506 ] ; 3 uses
  %i.abl = phi ptr [ %.pre, %bb.gh ], [ %i.zy, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i506 ] ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.abl, i32 0, i32 1, i32 1), !noalias !202
  %i.abm = xor i64 %.pre-phi, %i.ql
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gj, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i
  %.pn.i474 = phi i64 [ %i.abm, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i ], [ %i.acs, %bb.gj ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i ], [ %i.acr, %bb.gj ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i474, %i.abk        ; 5 uses
  %i.abn = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.abn, i32 0, i32 3, i32 1), !noalias !202
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 %.sroa.7.0.i
  %i.abp = load <16 x i8>, ptr %i.abo, align 1, !tbaa !66, !noalias !202 ; 2 uses
  %i.abq = icmp eq <16 x i8> %i.qp, %i.abp
  %i.abr = bitcast <16 x i1> %i.abq to i16        ; 2 uses
  %.not59.i = icmp eq i16 %i.abr, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i475

.lr.ph.i475:                                      ; preds = %bb.gi, %.critedge.i
  %.sroa.034.060.i = phi i16 [ %i.acj, %.critedge.i ], [ %i.abr, %bb.gi ] ; 3 uses
  %i.abs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060.i, i1 true)
  %i.abt = zext nneg i16 %i.abs to i64
  %i.abu = add i64 %.sroa.7.0.i, %i.abt
  %i.abv = and i64 %i.abu, %i.abk
  %i.abw = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.abv ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.abw, align 8, !tbaa !62, !noalias !202
  %i.abx = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 5
  br i1 %i.abx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, label %.critedge.i, !prof !200

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i475
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201, !noalias !202 ; 2 uses
  %i.aby = load i32, ptr %.sroa.22.0.copyload.i.i.i.i.i.i, align 1
  %i.abz = xor i32 %i.aby, 1701080681
  %i.aca = getelementptr i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i, i64 4
  %i.acb = load i8, ptr %i.aca, align 1
  %i.acc = zext i8 %i.acb to i32
  %i.acd = xor i32 %i.acc, 120
  %i.ace = or i32 %i.abz, %i.acd
  %i.acf = icmp ne i32 %i.ace, 0
  %i.acg = zext i1 %i.acf to i32
  %i.ach = icmp eq i32 %i.acg, 0
  br i1 %i.ach, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i475
  %i.aci = add i16 %.sroa.034.060.i, -1
  %i.acj = and i16 %i.aci, %.sroa.034.060.i       ; 2 uses
  %.not.i476 = icmp eq i16 %i.acj, 0
  br i1 %.not.i476, label %.critedge18.i, label %.lr.ph.i475

.critedge18.i:                                    ; preds = %.critedge.i, %bb.gi
  %i.ack = icmp eq <16 x i8> %i.abp, splat (i8 -128)
  %i.acl = bitcast <16 x i1> %i.ack to i16        ; 2 uses
  %.not52.i = icmp eq i16 %i.acl, 0
  br i1 %.not52.i, label %bb.gj, label %.thread.i477, !prof !91

.thread.i477:                                     ; preds = %.critedge18.i
  %i.acm = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.acl, i1 true)
  %i.acn = zext nneg i16 %i.acm to i64
  %i.aco = add i64 %.sroa.7.0.i, %i.acn
  %i.acp = and i64 %i.aco, %i.abk
  %i.acq = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.qk, i64 %i.acp, i64 %.sroa.15.0.i)
          to label %bb.gk unwind label %bb.gt

bb.gj:                                            ; preds = %.critedge18.i
  %i.acr = add i64 %.sroa.15.0.i, 16              ; 2 uses
  %i.acs = add i64 %i.acr, %.sroa.7.0.i
  br label %bb.gi

bb.gk:                                            ; preds = %.thread.i477
  %.sroa.0.0.copyload.i.i.i.i23.i = load ptr, ptr %i.qf, align 8, !tbaa !66, !noalias !202
  %i.act = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i, i64 %i.acq ; 4 uses
  store i64 5, ptr %i.act, align 8, !tbaa !62
  %.sroa.17.32..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.1.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  store ptr @.str.30, ptr %.sroa.17.32..sroa.7.8..sroa.2.0.copyload.i.i.i.i.i.i.1.i.sroa_idx, align 8, !tbaa !201
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  store i64 %i.zx, ptr %i.acu, align 8, !tbaa !62
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.act, i64 24
  store ptr %i.zw, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !201
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.acv = load ptr, ptr %i.qq, align 8, !tbaa !211, !noalias !208 ; 7 uses
  %i.acw = load ptr, ptr %i.qr, align 8, !tbaa !212, !noalias !208
  %.not.i.i.i = icmp eq ptr %i.acv, %i.acw
  br i1 %.not.i.i.i, label %bb.gm, label %bb.gl

bb.gl:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  store i64 0, ptr %i.acy, align 8, !noalias !208
  store i64 %i.qs, ptr %i.acv, align 8, !tbaa !213, !noalias !208
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.acx, align 8, !tbaa !215, !noalias !208
  %i.acz = load ptr, ptr %i.qq, align 8, !tbaa !211, !noalias !208
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 32
  store ptr %i.ada, ptr %i.qq, align 8, !tbaa !211, !noalias !208
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i

bb.gm:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.1.i
  %i.adb = load ptr, ptr %i.qt, align 8, !tbaa !216 ; 5 uses
  %i.adc = ptrtoint ptr %i.acv to i64
  %i.add = ptrtoint ptr %i.adb to i64             ; 2 uses
  %i.ade = sub i64 %i.adc, %i.add                 ; 3 uses
  %i.adf = icmp eq i64 %i.ade, 9223372036854775776
  br i1 %i.adf, label %bb.gn, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #25
          to label %.noexc513 unwind label %.loopexit.split-lp

.noexc513:                                        ; preds = %bb.gn
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.gm
  %i.adg = ashr exact i64 %i.ade, 5               ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.adg, i64 1)
  %i.adh = add nsw i64 %.sroa.speculated.i.i, %i.adg ; 2 uses
  %i.adi = icmp ult i64 %i.adh, %i.adg
  %i.adj = call i64 @llvm.umin.i64(i64 %i.adh, i64 288230376151711743)
  %i.adk = select i1 %i.adi, i64 288230376151711743, i64 %i.adj ; 3 uses
  %.not.i.i = icmp ne i64 %i.adk, 0
  call void @llvm.assume(i1 %.not.i.i)
  %i.adl = shl nuw nsw i64 %i.adk, 5
  %i.adm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adl) #26
          to label %.noexc514 unwind label %.loopexit ; 5 uses

.noexc514:                                        ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 %i.ade ; 3 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  store i64 0, ptr %i.adp, align 8
  store i64 %i.qs, ptr %i.adn, align 8, !tbaa !213
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.ado, align 8, !tbaa !215
  %.not10.i.i.i.i = icmp eq ptr %i.adb, %i.acv
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc514, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.adx, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.adm, %.noexc514 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.adw, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.adb, %.noexc514 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.adq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.adr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !217, !noalias !220
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !222, !alias.scope !220, !noalias !217
  store ptr %i.ads, ptr %i.adq, align 8, !tbaa !222, !alias.scope !217, !noalias !220
  %i.adt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !225, !alias.scope !220, !noalias !217 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.adu, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.adv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !226, !alias.scope !227
  store ptr %i.adu, ptr %i.adv, align 8, !tbaa !225, !alias.scope !217, !noalias !220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adt, i8 0, i64 16, i1 false), !alias.scope !220, !noalias !217
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.adw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i512 = icmp eq ptr %i.adw, %i.acv
  br i1 %.not.i.i.i.i512, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i, label %.lr.ph.i.i.i.i, !llvm.loop !228

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc514
  %.0.lcssa.i.i.i.i = phi ptr [ %i.adm, %.noexc514 ], [ %i.adx, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ady = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i26.i = icmp eq ptr %i.adb, null
  br i1 %.not.i26.i, label %.noexc471, label %bb.go

bb.go:                                            ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i
  %i.adz = load ptr, ptr %i.qr, align 8, !tbaa !212
  %i.aea = ptrtoint ptr %i.adz to i64
  %i.aeb = sub i64 %i.aea, %i.add
  call void @_ZdlPvm(ptr noundef nonnull %i.adb, i64 noundef %i.aeb) #27
  br label %.noexc471

.noexc471:                                        ; preds = %bb.go, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i
  store ptr %i.adm, ptr %i.qt, align 8, !tbaa !216
  store ptr %i.ady, ptr %i.qq, align 8, !tbaa !211
  %i.aec = getelementptr inbounds nuw [32 x i8], ptr %i.adm, i64 %i.adk
  store ptr %i.aec, ptr %i.qr, align 8, !tbaa !212
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i: ; preds = %.noexc471, %bb.gl
  store ptr %1, ptr %i.qu, align 8, !tbaa !229, !alias.scope !231
  store i8 1, ptr %2, align 8, !tbaa !234, !alias.scope !231
  store i32 65792, ptr %.sroa.4.0..sroa_idx.i, align 1
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx.i, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 29, ptr nonnull @.str.37, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %3)
          to label %bb.gp unwind label %bb.gs

bb.gp:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i
  %i.aed = load ptr, ptr %i.qq, align 8, !tbaa !211 ; 2 uses
  %i.aee = getelementptr inbounds i8, ptr %i.aed, i64 -32 ; 3 uses
  store ptr %i.aee, ptr %i.qq, align 8, !tbaa !211
  %i.aef = getelementptr inbounds i8, ptr %i.aed, i64 -16
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !225 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aeg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.gu, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aeh = invoke noundef zeroext i1 %i.aeg(ptr noundef nonnull align 8 dereferenceable(32) %i.aee, ptr noundef nonnull align 8 dereferenceable(32) %i.aee, i32 noundef 3)
          to label %bb.gu unwind label %bb.gr     ; 0 uses

bb.gr:                                            ; preds = %bb.gq
  %i.aei = landingpad { ptr, i32 }
          catch ptr null
  %i.aej = extractvalue { ptr, i32 } %i.aei, 0
  call void @__clang_call_terminate(ptr %i.aej) #29
  unreachable

bb.gs:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i
  %i.aek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.body472

bb.gt:                                            ; preds = %.thread.i500, %.thread.i477
  %i.ael = landingpad { ptr, i32 }
          cleanup
  br label %.body472

bb.gu:                                            ; preds = %bb.gq, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.aem = load i64, ptr %12, align 8, !tbaa !71  ; 2 uses
  %i.aen = icmp eq i64 %i.aem, 0
  br i1 %i.aen, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.aeo = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i416, align 8, !tbaa !66
  %i.aep = load i64, ptr %i.qb, align 8, !tbaa !74
  %i.aeq = and i64 %i.aep, 65536
  %i.aer = icmp ne i64 %i.aeq, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.aem, ptr noundef %i.aeo, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.aer)
          to label %bb.gx unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aes = landingpad { ptr, i32 }
          catch ptr null
  %i.aet = extractvalue { ptr, i32 } %i.aes, 0
  call void @__clang_call_terminate(ptr %i.aet) #29
  unreachable

.body472:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.gs, %bb.gt
  %.pn.i = phi { ptr, i32 } [ %i.ael, %bb.gt ], [ %i.aek, %bb.gs ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.aeu = load ptr, ptr %54, align 8, !tbaa !64  ; 2 uses
  %i.aev = icmp eq ptr %i.aeu, %i.ps
  br i1 %i.aev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i426

bb.gx:                                            ; preds = %bb.gv, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.aew = load ptr, ptr %54, align 8, !tbaa !64  ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.ps
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420: ; preds = %bb.gx
  %i.aey = load i64, ptr %i.ps, align 8, !tbaa !66
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.aez) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit422: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #28
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_:bb.a
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !211, !noalias !251 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !212, !noalias !251
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.h, align 8, !noalias !251
  store i64 %i.e, ptr %i.b, align 8, !tbaa !257, !noalias !251
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.g, align 8, !tbaa !222, !noalias !251
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation, ptr %i.f, align 8, !tbaa !225, !noalias !251
  %i.i = load ptr, ptr %i.a, align 16, !tbaa !211, !noalias !251
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.j, ptr %i.a, align 16, !tbaa !211, !noalias !251
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_NSt7__cxx1112basic_stringIcSB_SaIcEEENSK_18container_internal10StringHashENSQ_8StringEqESaISt4pairIKSC_SP_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %4), !noalias !251
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !251
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.l, align 8, !tbaa !229, !alias.scope !258
  store i8 1, ptr %5, align 8, !tbaa !261, !alias.scope !258
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i32 65792, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 5
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %2, ptr %3, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !211 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -32 ; 3 uses
  store ptr %i.n, ptr %i.a, align 16, !tbaa !211
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !225  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSC_SaIcEEENS0_18container_internal10StringHashENSI_8StringEqESaISt4pairIKSD_SH_EEEEEEDaPKT_EUlvE_ED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSC_SaIcEEENS0_18container_internal10StringHashENSI_8StringEqESaISt4pairIKSD_SH_EEEEEEDaPKT_EUlvE_ED2Ev.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #29
  unreachable

_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSC_SaIcEEENS0_18container_internal10StringHashENSI_8StringEqESaISt4pairIKSD_SH_EEEEEEDaPKT_EUlvE_ED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.g:                                             ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSC_SaIcEEENS0_18container_internal10StringHashENSI_8StringEqESaISt4pairIKSD_SH_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf2io7Printer5PrintIJA2_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [3 x %"class.std::basic_string_view"], align 16 ; 11 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 12 uses
  %7 = alloca %"struct.std::pair.47", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #28
  store i64 %i.a, ptr %5, align 16, !tbaa !88
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.b, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !67
  store i64 %i.f, ptr %i.c, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.h, align 16, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr @.str.103, ptr %i.i, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader unwind label %bb.b

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader: ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.47") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.d

bb.b:                                             ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.noexc:                                           ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !263, !range !69, !alias.scope !266, !noundef !70
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

bb.c:                                             ; preds = %.noexc
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !266 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0.copyload.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !279
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !279
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit: ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 %1, ptr %2)
          to label %bb.e unwind label %bb.b

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.h

bb.e:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit
  %i.p = load i64, ptr %6, align 8, !tbaa !71     ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !74
  %i.u = and i64 %i.t, 65536
  %i.v = icmp ne i64 %i.u, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.p, ptr noundef %i.r, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.v)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #29
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.h:                                             ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.d ], [ %i.j, %bb.b ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn
}

declare void @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase28WriteGeneratedCodeAttributesEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZN6google8protobuf8compiler6csharp22GetReflectionClassNameB5cxx11EPKNS0_14FileDescriptorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler6csharp16MessageGenerator19GenerateCloningCodeEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Cleanup", align 8 ; 6 uses
  %3 = alloca %"struct.google::protobuf::io::Printer::PrintOptions", align 8 ; 5 uses
  %4 = alloca %class.anon.40, align 8             ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::Cleanup.136", align 8 ; 6 uses
  %10 = alloca %"struct.google::protobuf::io::Printer::PrintOptions", align 8 ; 5 uses
  %11 = alloca %"struct.std::pair.114", align 8   ; 5 uses
  %12 = alloca %"struct.std::pair.114", align 8   ; 5 uses
  %13 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %14 = alloca %"struct.std::pair.114", align 8   ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %15 = alloca %"class.absl::lts_20250512::flat_hash_map.30", align 8 ; 23 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  invoke void @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase28WriteGeneratedCodeAttributesEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21, !noalias !280
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59, !noalias !280 ; 2 uses
  %.0.copyload.i.i.i.i = load i16, ptr %i.f, align 1, !noalias !280 ; 3 uses
  %i.g = zext i16 %.0.copyload.i.i.i.i to i64     ; 3 uses
  %i.h = xor i64 %i.g, -1
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 11 uses
  store ptr %i.j, ptr %16, align 8, !tbaa !60, !alias.scope !280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !280
  store i64 %i.g, ptr %i.b, align 8, !tbaa !62, !noalias !280
  %i.k = icmp ugt i16 %.0.copyload.i.i.i.i, 15
  br i1 %i.k, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.l, ptr %16, align 8, !tbaa !64, !alias.scope !280
  %i.m = load i64, ptr %i.b, align 8, !tbaa !62, !noalias !280
  store i64 %i.m, ptr %i.j, align 8, !tbaa !66, !alias.scope !280
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.j, %bb.b ] ; 2 uses
  switch i16 %.0.copyload.i.i.i.i, label %bb.d [
    i16 1, label %bb.c
    i16 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.o = load i8, ptr %i.i, align 1, !tbaa !66
  store i8 %i.o, ptr %i.n, align 1, !tbaa !66
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %i.i, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i.i
  %i.p = load i64, ptr %i.b, align 8, !tbaa !62, !noalias !280 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !67, !alias.scope !280
  %i.r = load ptr, ptr %16, align 8, !tbaa !64, !alias.scope !280
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA11_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.114") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 1 dereferenceable(11) @.str.2)
          to label %.noexc76 unwind label %bb.q

.noexc76:                                         ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.u = load i8, ptr %i.t, align 8, !tbaa !80, !range !69, !alias.scope !283, !noundef !70
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.noexc76
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !283 ; 5 uses
  store i64 10, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store ptr @.str.2, ptr %i.w, align 8, !tbaa !90
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 24
  store i64 0, ptr %i.z, align 8, !tbaa !67
  store i8 0, ptr %i.y, align 8, !tbaa !66
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.noexc76
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !64 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 32 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  %i.ae = load ptr, ptr %16, align 8, !tbaa !64   ; 6 uses
  %i.af = icmp eq ptr %i.ae, %i.j                 ; 2 uses
  br i1 %i.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.af, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.af, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !67  ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %.not21.i = icmp eq ptr %16, %i.aa
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.i, !prof !91

bb.i:                                             ; preds = %bb.h
  switch i64 %i.ag, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ai = load i8, ptr %i.ae, align 1, !tbaa !66
  store i8 %i.ai, ptr %i.ab, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !67  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !67
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !66
  %.pre.i = load ptr, ptr %16, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !64
  %i.ao = load <2 x i64>, ptr %i.q, align 8, !tbaa !66
  store <2 x i64> %i.ao, ptr %i.an, align 8, !tbaa !66
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ap = load i64, ptr %i.ac, align 8, !tbaa !66
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24
  %i.ar = load <2 x i64>, ptr %i.q, align 8, !tbaa !66
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ab, ptr %16, align 8, !tbaa !64
  store i64 %i.ap, ptr %i.j, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.j, ptr %16, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %i.as = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.ab, %bb.l ], [ %i.j, %bb.m ], [ %i.ae, %bb.h ]
  store i64 0, ptr %i.q, align 8, !tbaa !67
  store i8 0, ptr %i.as, align 1, !tbaa !66
  %i.at = load ptr, ptr %16, align 8, !tbaa !64   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.j
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.av = load i64, ptr %i.j, align 8, !tbaa !66
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 51, ptr nonnull @.str.49)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !97
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !136
  %i.bb = add i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !136
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !56
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph, label %.preheader295

.lr.ph:                                           ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %17, i64 8
  br label %bb.r

.preheader295:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %bb.n
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !21  ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !42
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph322, label %.preheader
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8compiler6csharp16MessageGenerator19GenerateCloningCodeEPNS0_2io7PrinterE:bb.a
          cleanup                                 ; 2 uses
  %i.iq = load ptr, ptr %19, align 8, !tbaa !64   ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.cy
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.az
  %i.is = load i64, ptr %i.cy, align 8, !tbaa !66
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.ay
  %.pn60 = phi { ptr, i32 } [ %i.io, %bb.ay ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %i.ip, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %.body

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i113
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.bb:                                            ; preds = %_ZN6google8protobuf8compiler6csharp22UnderscoresToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb.exit119
  %i.iv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iw = load ptr, ptr %20, align 8, !tbaa !64   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.db
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.bb
  %i.iy = load i64, ptr %i.db, align 8, !tbaa !66
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.ba
  %.pn62 = phi { ptr, i32 } [ %i.iu, %bb.ba ], [ %i.iv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.iv, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %.body

bb.bc:                                            ; preds = %.lr.ph324, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit173
  %indvars.iv352 = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next353, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit173 ] ; 2 uses
  %i.ja = load ptr, ptr %i.im, align 8, !tbaa !190
  %i.jb = getelementptr inbounds nuw [88 x i8], ptr %i.ja, i64 %indvars.iv352 ; 8 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jd = load i8, ptr %i.jc, align 2, !tbaa !55
  %i.je = icmp eq i8 %i.jd, 11
  br i1 %i.je, label %.noexc143, label %_ZN6google8protobuf8compiler6csharp19SupportsPresenceApiEPKNS0_15FieldDescriptorE.exit.i.i

_ZN6google8protobuf8compiler6csharp19SupportsPresenceApiEPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.bc
  %i.jf = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %i.jb)
          to label %.noexc196 unwind label %.loopexit.split-lp

.noexc196:                                        ; preds = %_ZN6google8protobuf8compiler6csharp19SupportsPresenceApiEPKNS0_15FieldDescriptorE.exit.i.i
  br i1 %i.jf, label %bb.bd, label %.noexc143

bb.bd:                                            ; preds = %.noexc196
  %i.jg = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler6csharp10IsNullableEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.jb)
          to label %.noexc197 unwind label %.loopexit.split-lp

.noexc197:                                        ; preds = %bb.bd
  br i1 %i.jg, label %.noexc143, label %bb.be

bb.be:                                            ; preds = %.noexc197
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  %i.ji = load i8, ptr %i.jh, align 1
  %i.jj = and i8 %i.ji, 8
  %.not6.i.i = icmp eq i8 %i.jj, 0
  br i1 %.not6.i.i, label %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit.i, label %.noexc143

_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.be
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jb, i64 3
  %i.jl = load i8, ptr %i.jk, align 1
  %i.jm = and i8 %i.jl, 8
  %.not.i.i.i193 = icmp eq i8 %i.jm, 0
  br i1 %.not.i.i.i193, label %.preheader.i, label %.noexc143

.preheader.i:                                     ; preds = %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit.i
  %i.jn = load ptr, ptr %i.de, align 8, !tbaa !51
  %i.jo = load ptr, ptr %i.dd, align 8, !tbaa !52 ; 2 uses
  %.not2133.not.i = icmp eq ptr %i.jn, %i.jo
  br i1 %.not2133.not.i, label %.noexc143, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.jp = phi ptr [ %i.kf, %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i ], [ %i.jo, %.preheader.i ]
  %.01634.i = phi i32 [ %.218.ph.i, %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i ], [ 0, %.preheader.i ] ; 6 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.i
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !44 ; 6 uses
  %.not.i194 = icmp eq ptr %i.jr, %i.jb
  br i1 %.not.i194, label %.noexc143, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.jt = load i8, ptr %i.js, align 2, !tbaa !55
  %i.ju = icmp eq i8 %i.jt, 11
  br i1 %i.ju, label %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i, label %_ZN6google8protobuf8compiler6csharp19SupportsPresenceApiEPKNS0_15FieldDescriptorE.exit.i23.i

_ZN6google8protobuf8compiler6csharp19SupportsPresenceApiEPKNS0_15FieldDescriptorE.exit.i23.i: ; preds = %bb.bf
  %i.jv = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %i.jr)
          to label %.noexc198 unwind label %.loopexit

.noexc198:                                        ; preds = %_ZN6google8protobuf8compiler6csharp19SupportsPresenceApiEPKNS0_15FieldDescriptorE.exit.i23.i
  br i1 %i.jv, label %bb.bg, label %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i

bb.bg:                                            ; preds = %.noexc198
  %i.jw = invoke noundef zeroext i1 @_ZN6google8protobuf8compiler6csharp10IsNullableEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.jr)
          to label %.noexc199 unwind label %.loopexit

.noexc199:                                        ; preds = %bb.bg
  br i1 %i.jw, label %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i, label %bb.bh

bb.bh:                                            ; preds = %.noexc199
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
  %i.jy = load i8, ptr %i.jx, align 1
  %i.jz = and i8 %i.jy, 8
  %.not6.i24.i = icmp eq i8 %i.jz, 0
  br i1 %.not6.i24.i, label %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.i, label %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i

_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.i: ; preds = %bb.bh
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 3
  %i.kb = load i8, ptr %i.ka, align 1
  %.fr32.i = freeze i8 %i.kb
  %i.kc = and i8 %.fr32.i, 8
  %.not.i.i25.i = icmp eq i8 %i.kc, 0
  %i.kd = zext i1 %.not.i.i25.i to i32
  %spec.select.i = add nsw i32 %.01634.i, %i.kd
  br label %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i

_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i: ; preds = %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.i, %bb.bh, %.noexc199, %.noexc198, %bb.bf
  %.218.ph.i = phi i32 [ %.01634.i, %bb.bf ], [ %spec.select.i, %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.i ], [ %.01634.i, %bb.bh ], [ %.01634.i, %.noexc199 ], [ %.01634.i, %.noexc198 ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ke = load ptr, ptr %i.de, align 8, !tbaa !51
  %i.kf = load ptr, ptr %i.dd, align 8, !tbaa !52 ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = ashr exact i64 %i.ki, 3
  %.not21.i195 = icmp ugt i64 %i.kj, %indvars.iv.next.i
  br i1 %.not21.i195, label %.lr.ph.i, label %.noexc143, !llvm.loop !303

.noexc143:                                        ; preds = %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i, %.lr.ph.i, %.preheader.i, %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit.i, %bb.be, %.noexc197, %.noexc196, %bb.bc
  %.4.i = phi i32 [ -1, %bb.bc ], [ -1, %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit.i ], [ -1, %bb.be ], [ -1, %.noexc197 ], [ -1, %.noexc196 ], [ -1, %.preheader.i ], [ -1, %_ZN6google8protobuf8compiler6csharp19RequiresPresenceBitEPKNS0_15FieldDescriptorE.exit26.thread.i ], [ %.01634.i, %.lr.ph.i ]
  %i.kk = invoke noundef ptr @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase7optionsEv(ptr noundef nonnull align 8 dereferenceable(53) %0)
          to label %.noexc144 unwind label %.loopexit.split-lp

.noexc144:                                        ; preds = %.noexc143
  %i.kl = invoke noundef ptr @_ZN6google8protobuf8compiler6csharp20CreateFieldGeneratorEPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef %i.jb, i32 noundef %.4.i, ptr noundef %i.kk)
          to label %_ZN6google8protobuf8compiler6csharp16MessageGenerator28CreateFieldGeneratorInternalEPKNS0_15FieldDescriptorE.exit146 unwind label %.loopexit.split-lp ; 7 uses

_ZN6google8protobuf8compiler6csharp16MessageGenerator28CreateFieldGeneratorInternalEPKNS0_15FieldDescriptorE.exit146: ; preds = %.noexc144
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  invoke void @_ZN6google8protobuf8compiler6csharp16GetOneofCaseNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef %i.jb)
          to label %.noexc204 unwind label %bb.co

.noexc204:                                        ; preds = %_ZN6google8protobuf8compiler6csharp16MessageGenerator28CreateFieldGeneratorInternalEPKNS0_15FieldDescriptorE.exit146
  %i.km = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !66, !noalias !304 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.km, i32 0, i32 1, i32 1), !noalias !304
  %i.kn = load i64, ptr %i.dl, align 8, !tbaa !74, !noalias !307
  %i.ko = and i64 %i.kn, 65535
  %i.kp = load i64, ptr %15, align 8, !tbaa !71, !noalias !307 ; 3 uses
  %i.kq = xor i64 %i.ko, %i.dm
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.dp, align 8, !tbaa !66, !noalias !304 ; 2 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bj, %.noexc204
  %.pn.i = phi i64 [ %i.kq, %.noexc204 ], [ %i.lv, %bb.bj ]
  %.sroa.15.0.i = phi i64 [ 0, %.noexc204 ], [ %i.lu, %bb.bj ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.kp            ; 5 uses
  %i.kr = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.kr, i32 0, i32 3, i32 1), !noalias !304
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 %.sroa.7.0.i
  %i.kt = load <16 x i8>, ptr %i.ks, align 1, !tbaa !66, !noalias !304 ; 2 uses
  %i.ku = icmp eq <16 x i8> %i.dr, %i.kt
  %i.kv = bitcast <16 x i1> %i.ku to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.kv, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %bb.bi, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.lm, %.critedge.i ], [ %i.kv, %bb.bi ] ; 3 uses
  %i.kw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.kx = zext nneg i16 %i.kw to i64
  %i.ky = add i64 %.sroa.7.0.i, %i.kx
  %i.kz = and i64 %i.ky, %i.kp
  %i.la = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.kz ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.la, align 8, !tbaa !62, !noalias !304
  %i.lb = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 15
  br i1 %i.lb, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, label %.critedge.i, !prof !200

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i200
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201, !noalias !304 ; 2 uses
  %i.lc = load i64, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1
  %i.ld = xor i64 %i.lc, 7017557537933586031
  %i.le = getelementptr i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 7
  %i.lf = load i64, ptr %i.le, align 1
  %i.lg = xor i64 %i.lf, 7308604896966964065
  %i.lh = or i64 %i.ld, %i.lg
  %i.li = icmp ne i64 %i.lh, 0
  %i.lj = zext i1 %i.li to i32
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %.noexc151.thread.loopexit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i200
  %i.ll = add i16 %.sroa.033.059.i, -1
  %i.lm = and i16 %i.ll, %.sroa.033.059.i         ; 2 uses
  %.not.i201 = icmp eq i16 %i.lm, 0
  br i1 %.not.i201, label %.critedge18.i, label %.lr.ph.i200

.critedge18.i:                                    ; preds = %.critedge.i, %bb.bi
  %i.ln = icmp eq <16 x i8> %i.kt, splat (i8 -128)
  %i.lo = bitcast <16 x i1> %i.ln to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.lo, 0
  br i1 %.not51.i, label %bb.bj, label %.thread.i202, !prof !91

.thread.i202:                                     ; preds = %.critedge18.i
  %i.lp = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.lo, i1 true)
  %i.lq = zext nneg i16 %i.lp to i64
  %i.lr = add i64 %.sroa.7.0.i, %i.lq
  %i.ls = and i64 %i.lr, %i.kp
  %i.lt = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.dk, i64 %i.ls, i64 %.sroa.15.0.i)
          to label %bb.bk unwind label %bb.cp

bb.bj:                                            ; preds = %.critedge18.i
  %i.lu = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.lv = add i64 %i.lu, %.sroa.7.0.i
  br label %bb.bi

bb.bk:                                            ; preds = %.thread.i202
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.dp, align 8, !tbaa !66, !noalias !304
  %i.lw = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.lt ; 6 uses
  store i64 15, ptr %i.lw, align 8, !tbaa !88
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store ptr @.str.38, ptr %i.lx, align 8, !tbaa !90
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 32 ; 3 uses
  store ptr %i.lz, ptr %i.ly, align 8, !tbaa !60
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  store i64 0, ptr %i.ma, align 8, !tbaa !67
  store i8 0, ptr %i.lz, align 8, !tbaa !66
  br label %bb.bl

.noexc151.thread.loopexit:                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %.pre352 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc151.thread.loopexit, %bb.bk
  %i.mb = phi ptr [ %i.lz, %bb.bk ], [ %.pre352, %.noexc151.thread.loopexit ] ; 6 uses
  %.sink76.i284 = phi ptr [ %i.lw, %bb.bk ], [ %i.la, %.noexc151.thread.loopexit ] ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.sink76.i284, i64 16 ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.sink76.i284, i64 32 ; 2 uses
  %i.me = icmp eq ptr %i.mb, %i.md
  %i.mf = load ptr, ptr %21, align 8, !tbaa !64   ; 6 uses
  %i.mg = icmp eq ptr %i.mf, %i.ds                ; 2 uses
  br i1 %i.me, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i158: ; preds = %bb.bl
  br i1 %i.mg, label %bb.bm, label %.thread.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i152: ; preds = %bb.bl
  br i1 %i.mg, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i153

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i158
  %i.mh = load i64, ptr %i.dt, align 8, !tbaa !67 ; 3 uses
  %i.mi = icmp ult i64 %i.mh, 16
  call void @llvm.assume(i1 %i.mi)
  %.not21.i155 = icmp eq ptr %21, %i.mc
  br i1 %.not21.i155, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160, label %bb.bn, !prof !91

bb.bn:                                            ; preds = %bb.bm
  switch i64 %i.mh, label %bb.bp [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i156
    i64 1, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.mj = load i8, ptr %i.mf, align 1, !tbaa !66
  store i8 %i.mj, ptr %i.mb, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i156

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mb, ptr align 1 %i.mf, i64 %i.mh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i156: ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.mk = load i64, ptr %i.dt, align 8, !tbaa !67 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sink76.i284, i64 24
  store i64 %i.mk, ptr %i.ml, align 8, !tbaa !67
  %i.mm = load ptr, ptr %i.mc, align 8, !tbaa !64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mk
  store i8 0, ptr %i.mn, align 1, !tbaa !66
  %.pre.i157 = load ptr, ptr %21, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160

.thread.i159:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i158
  %i.mo = getelementptr inbounds nuw i8, ptr %.sink76.i284, i64 24
  store ptr %i.mf, ptr %i.mc, align 8, !tbaa !64
  %i.mp = load <2 x i64>, ptr %i.dt, align 8, !tbaa !66
  store <2 x i64> %i.mp, ptr %i.mo, align 8, !tbaa !66
  br label %bb.br

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i153: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i152
  %i.mq = load i64, ptr %i.md, align 8, !tbaa !66
  store ptr %i.mf, ptr %i.mc, align 8, !tbaa !64
  %i.mr = getelementptr inbounds nuw i8, ptr %.sink76.i284, i64 24
  %i.ms = load <2 x i64>, ptr %i.dt, align 8, !tbaa !66
  store <2 x i64> %i.ms, ptr %i.mr, align 8, !tbaa !66
  %.not.i154 = icmp eq ptr %i.mb, null
  br i1 %.not.i154, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i153
  store ptr %i.mb, ptr %21, align 8, !tbaa !64
  store i64 %i.mq, ptr %i.ds, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i153, %.thread.i159
  store ptr %i.ds, ptr %21, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160: ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i156, %bb.bq, %bb.br
  %i.mt = phi ptr [ %.pre.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i156 ], [ %i.mb, %bb.bq ], [ %i.ds, %bb.br ], [ %i.mf, %bb.bm ]
  store i64 0, ptr %i.dt, align 8, !tbaa !67
  store i8 0, ptr %i.mt, align 1, !tbaa !66
  %i.mu = load ptr, ptr %21, align 8, !tbaa !64   ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.ds
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160
  %i.mw = load i64, ptr %i.ds, align 8, !tbaa !66
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.my = load ptr, ptr %i.du, align 8, !tbaa !211, !noalias !310 ; 7 uses
  %i.mz = load ptr, ptr %i.dv, align 8, !tbaa !212, !noalias !310
  %.not.i.i.i = icmp eq ptr %i.my, %i.mz
  br i1 %.not.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  store i64 0, ptr %i.nb, align 8, !noalias !310
  store i64 %i.dw, ptr %i.my, align 8, !tbaa !257, !noalias !310
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.na, align 8, !tbaa !215, !noalias !310
  %i.nc = load ptr, ptr %i.du, align 8, !tbaa !211, !noalias !310
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32
  store ptr %i.nd, ptr %i.du, align 8, !tbaa !211, !noalias !310
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit.i

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %i.ne = load ptr, ptr %i.dx, align 8, !tbaa !216 ; 5 uses
  %i.nf = ptrtoint ptr %i.my to i64
  %i.ng = ptrtoint ptr %i.ne to i64               ; 2 uses
  %i.nh = sub i64 %i.nf, %i.ng                    ; 3 uses
  %i.ni = icmp eq i64 %i.nh, 9223372036854775776
  br i1 %i.ni, label %bb.bu, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #25
          to label %.noexc207 unwind label %.loopexit.split-lp286

.noexc207:                                        ; preds = %bb.bu
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bt
  %i.nj = ashr exact i64 %i.nh, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.nj, i64 1)
  %i.nk = add nsw i64 %.sroa.speculated.i.i, %i.nj ; 2 uses
  %i.nl = icmp ult i64 %i.nk, %i.nj
  %i.nm = call i64 @llvm.umin.i64(i64 %i.nk, i64 288230376151711743)
  %i.nn = select i1 %i.nl, i64 288230376151711743, i64 %i.nm ; 3 uses
  %.not.i.i206 = icmp ne i64 %i.nn, 0
  call void @llvm.assume(i1 %.not.i.i206)
  %i.no = shl nuw nsw i64 %i.nn, 5
  %i.np = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.no) #26
          to label %.noexc208 unwind label %.loopexit285 ; 5 uses

.noexc208:                                        ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 %i.nh ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  store i64 0, ptr %i.ns, align 8
  store i64 %i.dw, ptr %i.nq, align 8, !tbaa !257
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.nr, align 8, !tbaa !215
  %.not10.i.i.i.i = icmp eq ptr %i.ne, %i.my
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc208, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.oa, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.np, %.noexc208 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.nz, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ne, %.noexc208 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.nt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.nu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !313, !noalias !316
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !222, !alias.scope !316, !noalias !313
  store ptr %i.nv, ptr %i.nt, align 8, !tbaa !222, !alias.scope !313, !noalias !316
  %i.nw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !225, !alias.scope !316, !noalias !313 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ny = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !226, !alias.scope !318
  store ptr %i.nx, ptr %i.ny, align 8, !tbaa !225, !alias.scope !313, !noalias !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nw, i8 0, i64 16, i1 false), !alias.scope !316, !noalias !313
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.nz, %i.my
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i, label %.lr.ph.i.i.i.i, !llvm.loop !228

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc208
  %.0.lcssa.i.i.i.i = phi ptr [ %i.np, %.noexc208 ], [ %i.oa, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ob = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i26.i = icmp eq ptr %i.ne, null
  br i1 %.not.i26.i, label %.noexc164, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i
  %i.oc = load ptr, ptr %i.dv, align 8, !tbaa !212
  %i.od = ptrtoint ptr %i.oc to i64
  %i.oe = sub i64 %i.od, %i.ng
  call void @_ZdlPvm(ptr noundef nonnull %i.ne, i64 noundef %i.oe) #27
  br label %.noexc164

.noexc164:                                        ; preds = %bb.bv, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i
  store ptr %i.np, ptr %i.dx, align 8, !tbaa !216
  store ptr %i.ob, ptr %i.du, align 8, !tbaa !211
  %i.of = getelementptr inbounds nuw [32 x i8], ptr %i.np, i64 %i.nn
  store ptr %i.of, ptr %i.dv, align 8, !tbaa !212
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit.i

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit.i: ; preds = %.noexc164, %bb.bs
  store ptr %1, ptr %i.dy, align 8, !tbaa !229, !alias.scope !319
  store i8 1, ptr %9, align 8, !tbaa !261, !alias.scope !319
  store i32 65792, ptr %.sroa.4.0..sroa_idx.i, align 1
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx.i, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 49, ptr nonnull @.str.52, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %10)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit.i
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8compiler6csharp16MessageGenerator35GenerateMessageSerializationMethodsEPNS0_2io7PrinterE:bb.a
_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit59: ; preds = %.lr.ph
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = load ptr, ptr %i.es, align 8, !tbaa !19
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(64) %i.es) #28, !inline_history !169
  br label %common.resume

bb.ax:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i60 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i60, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 68, ptr nonnull @.str.75)
          to label %bb.az unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

bb.az:                                            ; preds = %bb.ax
  %i.fj = load i64, ptr %5, align 8, !tbaa !71    ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit61, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fl = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i60, align 8, !tbaa !66
  %i.fm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !74
  %i.fo = and i64 %i.fn, 65536
  %i.fp = icmp ne i64 %i.fo, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.fj, ptr noundef %i.fl, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.fp)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit61 unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #29
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit61: ; preds = %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit61, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i62 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i62, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 74, ptr nonnull @.str.76)
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume

bb.be:                                            ; preds = %bb.bc
  %i.ft = load i64, ptr %4, align 8, !tbaa !71    ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit63, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i62, align 8, !tbaa !66
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !74
  %i.fy = and i64 %i.fx, 65536
  %i.fz = icmp ne i64 %i.fy, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ft, ptr noundef %i.fv, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.fz)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit63 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #29
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit63: ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i64 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i64, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 13, ptr nonnull @.str.77)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit63
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.bi:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit63
  %i.gd = load i64, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit65, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gf = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i64, align 8, !tbaa !66
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !74
  %i.gi = and i64 %i.gh, 65536
  %i.gj = icmp ne i64 %i.gi, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.gd, ptr noundef %i.gf, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.gj)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit65 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #29
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit65: ; preds = %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i66 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i66, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 3, ptr nonnull @.str.54)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit65
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume

bb.bm:                                            ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit65
  %i.gn = load i64, ptr %2, align 8, !tbaa !71    ; 2 uses
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit67, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gp = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i66, align 8, !tbaa !66
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !74
  %i.gs = and i64 %i.gr, 65536
  %i.gt = icmp ne i64 %i.gs, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.gn, ptr noundef %i.gp, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.gt)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit67 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gu = landingpad { ptr, i32 }
          catch ptr null
  %i.gv = extractvalue { ptr, i32 } %i.gu, 0
  call void @__clang_call_terminate(ptr %i.gv) #29
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit67: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler6csharp16MessageGenerator22GenerateMergingMethodsEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::Cleanup", align 8 ; 6 uses
  %3 = alloca %"struct.google::protobuf::io::Printer::PrintOptions", align 8 ; 5 uses
  %4 = alloca %class.anon.40, align 8             ; 4 uses
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %8 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %10 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %11 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %12 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %13 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %14 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %15 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %16 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %17 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %18 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %19 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %20 = alloca %"class.absl::lts_20250512::Cleanup.136", align 8 ; 6 uses
  %21 = alloca %"struct.google::protobuf::io::Printer::PrintOptions", align 8 ; 5 uses
  %22 = alloca %"struct.std::pair.114", align 8   ; 5 uses
  %23 = alloca %"struct.std::pair.114", align 8   ; 5 uses
  %24 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %25 = alloca %"struct.std::pair.114", align 8   ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %26 = alloca %"class.absl::lts_20250512::flat_hash_map.30", align 8 ; 22 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21, !noalias !362
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !59, !noalias !362 ; 2 uses
  %.0.copyload.i.i.i.i = load i16, ptr %i.e, align 1, !noalias !362 ; 3 uses
  %i.f = zext i16 %.0.copyload.i.i.i.i to i64     ; 3 uses
  %i.g = xor i64 %i.f, -1
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 11 uses
  store ptr %i.i, ptr %27, align 8, !tbaa !60, !alias.scope !362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !362
  store i64 %i.f, ptr %i.a, align 8, !tbaa !62, !noalias !362
  %i.j = icmp ugt i16 %.0.copyload.i.i.i.i, 15
  br i1 %i.j, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.a
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i.i
  store ptr %i.k, ptr %27, align 8, !tbaa !64, !alias.scope !362
  %i.l = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !362
  store i64 %i.l, ptr %i.i, align 8, !tbaa !66, !alias.scope !362
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.i, %bb.a ] ; 2 uses
  switch i16 %.0.copyload.i.i.i.i, label %bb.c [
    i16 1, label %bb.b
    i16 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.h, align 1, !tbaa !66
  store i8 %i.n, ptr %i.m, align 1, !tbaa !66
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.h, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !362 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  store i64 %i.o, ptr %i.p, align 8, !tbaa !67, !alias.scope !362
  %i.q = load ptr, ptr %27, align 8, !tbaa !64, !alias.scope !362
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !362
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA11_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.114") align 8 %25, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 1 dereferenceable(11) @.str.2)
          to label %.noexc87 unwind label %bb.t

.noexc87:                                         ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !80, !range !69, !alias.scope !365, !noundef !70
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc87
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !365 ; 5 uses
  store i64 10, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !88
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store ptr @.str.2, ptr %i.v, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32 ; 2 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 24
  store i64 0, ptr %i.y, align 8, !tbaa !67
  store i8 0, ptr %i.x, align 8, !tbaa !66
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc87
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 32 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  %i.ad = load ptr, ptr %27, align 8, !tbaa !64   ; 6 uses
  %i.ae = icmp eq ptr %i.ad, %i.i                 ; 2 uses
  br i1 %i.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.ae, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.ae, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = load i64, ptr %i.p, align 8, !tbaa !67  ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %.not21.i = icmp eq ptr %27, %i.z
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.h, !prof !91

bb.h:                                             ; preds = %bb.g
  switch i64 %i.af, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !66
  store i8 %i.ah, ptr %i.aa, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.ad, i64 %i.af, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ai = load i64, ptr %i.p, align 8, !tbaa !67  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !67
  %i.ak = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !66
  %.pre.i = load ptr, ptr %27, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !64
  %i.an = load <2 x i64>, ptr %i.p, align 8, !tbaa !66
  store <2 x i64> %i.an, ptr %i.am, align 8, !tbaa !66
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ao = load i64, ptr %i.ab, align 8, !tbaa !66
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24
  %i.aq = load <2 x i64>, ptr %i.p, align 8, !tbaa !66
  store <2 x i64> %i.aq, ptr %i.ap, align 8, !tbaa !66
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.aa, ptr %27, align 8, !tbaa !64
  store i64 %i.ao, ptr %i.i, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.i, ptr %27, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.ar = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.aa, %bb.k ], [ %i.i, %bb.l ], [ %i.ad, %bb.g ]
  store i64 0, ptr %i.p, align 8, !tbaa !67
  store i8 0, ptr %i.ar, align 1, !tbaa !66
  %i.as = load ptr, ptr %27, align 8, !tbaa !64   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.i
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.au = load i64, ptr %i.i, align 8, !tbaa !66
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  invoke void @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase28WriteGeneratedCodeAttributesEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
          to label %bb.m unwind label %bb.u

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 44, ptr nonnull @.str.82)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 6 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 12 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !136
  %i.ba = add i64 %i.az, %i.ax
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %24, i64 33, ptr nonnull @.str.83)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %.body

bb.p:                                             ; preds = %bb.n
  %i.bc = load i64, ptr %24, align 8, !tbaa !71   ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, label %bb.q

end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8compiler6csharp16MessageGenerator22GenerateMergingMethodsEPNS0_2io7PrinterE:bb.a

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i133
  %i.gl = load i64, ptr %i.by, align 8, !tbaa !67 ; 3 uses
  %i.gm = icmp ult i64 %i.gl, 16
  call void @llvm.assume(i1 %i.gm)
  %.not21.i130 = icmp eq ptr %29, %i.gf
  br i1 %.not21.i130, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135, label %bb.aj, !prof !91

bb.aj:                                            ; preds = %bb.ai
  switch i64 %i.gl, label %bb.al [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131
    i64 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.gn = load i8, ptr %i.gj, align 1, !tbaa !66
  store i8 %i.gn, ptr %i.gg, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gg, ptr align 1 %i.gj, i64 %i.gl, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.go = load i64, ptr %i.by, align 8, !tbaa !67 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i123, i64 24
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !67
  %i.gq = load ptr, ptr %i.gf, align 8, !tbaa !64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.go
  store i8 0, ptr %i.gr, align 1, !tbaa !66
  %.pre.i132 = load ptr, ptr %29, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135

.thread.i134:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i133
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i123, i64 24
  store ptr %i.gj, ptr %i.gf, align 8, !tbaa !64
  %i.gt = load <2 x i64>, ptr %i.by, align 8, !tbaa !66
  store <2 x i64> %i.gt, ptr %i.gs, align 8, !tbaa !66
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i127
  %i.gu = load i64, ptr %i.gh, align 8, !tbaa !66
  store ptr %i.gj, ptr %i.gf, align 8, !tbaa !64
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i123, i64 24
  %i.gw = load <2 x i64>, ptr %i.by, align 8, !tbaa !66
  store <2 x i64> %i.gw, ptr %i.gv, align 8, !tbaa !66
  %.not.i129 = icmp eq ptr %i.gg, null
  br i1 %.not.i129, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128
  store ptr %i.gg, ptr %29, align 8, !tbaa !64
  store i64 %i.gu, ptr %i.bx, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i128, %.thread.i134
  store ptr %i.bx, ptr %29, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131, %bb.am, %bb.an
  %i.gx = phi ptr [ %.pre.i132, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i131 ], [ %i.gg, %bb.am ], [ %i.bx, %bb.an ], [ %i.gj, %bb.ai ]
  store i64 0, ptr %i.by, align 8, !tbaa !67
  store i8 0, ptr %i.gx, align 1, !tbaa !66
  %i.gy = load ptr, ptr %29, align 8, !tbaa !64   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.bx
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135
  %i.ha = load i64, ptr %i.bx, align 8, !tbaa !66
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 37, ptr nonnull @.str.51)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.hc = load i64, ptr %i.aw, align 8, !tbaa !97
  %i.hd = load i64, ptr %i.ay, align 8, !tbaa !136
  %i.he = add i64 %i.hd, %i.hc
  store i64 %i.he, ptr %i.ay, align 8, !tbaa !136
  %i.hf = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !187
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph377, label %._crit_edge

.lr.ph377:                                        ; preds = %bb.ao
  %i.hi = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  br label %bb.au

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit175, %bb.ao
  invoke void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1)
          to label %bb.cj unwind label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.x
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.ar:                                            ; preds = %_ZN6google8protobuf8compiler6csharp22UnderscoresToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb.exit
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = load ptr, ptr %28, align 8, !tbaa !64   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.bu
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.ar
  %i.ho = load i64, ptr %i.bu, align 8, !tbaa !66
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139, %bb.aq
  %.pn73 = phi { ptr, i32 } [ %i.hk, %bb.aq ], [ %i.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139 ], [ %i.hl, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  br label %.body

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i115
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.at:                                            ; preds = %_ZN6google8protobuf8compiler6csharp22UnderscoresToCamelCaseB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEb.exit121
  %i.hr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hs = load ptr, ptr %29, align 8, !tbaa !64   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.bx
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.at
  %i.hu = load i64, ptr %i.bx, align 8, !tbaa !66
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.as
  %.pn75 = phi { ptr, i32 } [ %i.hq, %bb.as ], [ %i.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.hr, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  br label %.body

bb.au:                                            ; preds = %.lr.ph377, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit175
  %indvars.iv400 = phi i64 [ 0, %.lr.ph377 ], [ %indvars.iv.next401, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit175 ] ; 2 uses
  %i.hw = load ptr, ptr %i.hi, align 8, !tbaa !190
  %i.hx = getelementptr inbounds nuw [88 x i8], ptr %i.hw, i64 %indvars.iv400 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  invoke void @_ZN6google8protobuf8compiler6csharp16GetOneofCaseNameB5cxx11EPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef %i.hx)
          to label %.noexc241 unwind label %bb.cg

.noexc241:                                        ; preds = %bb.au
  %i.hy = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !66, !noalias !381 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.hy, i32 0, i32 1, i32 1), !noalias !381
  %i.hz = load i64, ptr %i.cf, align 8, !tbaa !74, !noalias !384
  %i.ia = and i64 %i.hz, 65535
  %i.ib = load i64, ptr %26, align 8, !tbaa !71, !noalias !384 ; 3 uses
  %i.ic = xor i64 %i.ia, %i.cg
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.cj, align 8, !tbaa !66, !noalias !381 ; 2 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %.noexc241
  %.pn.i = phi i64 [ %i.ic, %.noexc241 ], [ %i.jh, %bb.aw ]
  %.sroa.15.0.i = phi i64 [ 0, %.noexc241 ], [ %i.jg, %bb.aw ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i, %i.ib            ; 5 uses
  %i.id = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.id, i32 0, i32 3, i32 1), !noalias !381
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sroa.7.0.i
  %i.if = load <16 x i8>, ptr %i.ie, align 1, !tbaa !66, !noalias !381 ; 2 uses
  %i.ig = icmp eq <16 x i8> %i.cl, %i.if
  %i.ih = bitcast <16 x i1> %i.ig to i16          ; 2 uses
  %.not58.i = icmp eq i16 %i.ih, 0
  br i1 %.not58.i, label %.critedge18.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.av, %.critedge.i
  %.sroa.033.059.i = phi i16 [ %i.iy, %.critedge.i ], [ %i.ih, %bb.av ] ; 3 uses
  %i.ii = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059.i, i1 true)
  %i.ij = zext nneg i16 %i.ii to i64
  %i.ik = add i64 %.sroa.7.0.i, %i.ij
  %i.il = and i64 %i.ik, %i.ib
  %i.im = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.il ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.im, align 8, !tbaa !62, !noalias !381
  %i.in = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 15
  br i1 %i.in, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, label %.critedge.i, !prof !200

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201, !noalias !381 ; 2 uses
  %i.io = load i64, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1
  %i.ip = xor i64 %i.io, 7017557537933586031
  %i.iq = getelementptr i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 7
  %i.ir = load i64, ptr %i.iq, align 1
  %i.is = xor i64 %i.ir, 7308604896966964065
  %i.it = or i64 %i.ip, %i.is
  %i.iu = icmp ne i64 %i.it, 0
  %i.iv = zext i1 %i.iu to i32
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %.noexc149.thread.loopexit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i
  %i.ix = add i16 %.sroa.033.059.i, -1
  %i.iy = and i16 %i.ix, %.sroa.033.059.i         ; 2 uses
  %.not.i238 = icmp eq i16 %i.iy, 0
  br i1 %.not.i238, label %.critedge18.i, label %.lr.ph.i

.critedge18.i:                                    ; preds = %.critedge.i, %bb.av
  %i.iz = icmp eq <16 x i8> %i.if, splat (i8 -128)
  %i.ja = bitcast <16 x i1> %i.iz to i16          ; 2 uses
  %.not51.i = icmp eq i16 %i.ja, 0
  br i1 %.not51.i, label %bb.aw, label %.thread.i239, !prof !91

.thread.i239:                                     ; preds = %.critedge18.i
  %i.jb = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ja, i1 true)
  %i.jc = zext nneg i16 %i.jb to i64
  %i.jd = add i64 %.sroa.7.0.i, %i.jc
  %i.je = and i64 %i.jd, %i.ib
  %i.jf = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ce, i64 %i.je, i64 %.sroa.15.0.i)
          to label %bb.ax unwind label %bb.ch

bb.aw:                                            ; preds = %.critedge18.i
  %i.jg = add i64 %.sroa.15.0.i, 16               ; 2 uses
  %i.jh = add i64 %i.jg, %.sroa.7.0.i
  br label %bb.av

bb.ax:                                            ; preds = %.thread.i239
  %.sroa.0.0.copyload.i.i.i.i22.i = load ptr, ptr %i.cj, align 8, !tbaa !66, !noalias !381
  %i.ji = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22.i, i64 %i.jf ; 6 uses
  store i64 15, ptr %i.ji, align 8, !tbaa !88
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  store ptr @.str.38, ptr %i.jj, align 8, !tbaa !90
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 3 uses
  store ptr %i.jl, ptr %i.jk, align 8, !tbaa !60
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 24
  store i64 0, ptr %i.jm, align 8, !tbaa !67
  store i8 0, ptr %i.jl, align 8, !tbaa !66
  br label %bb.ay

.noexc149.thread.loopexit:                        ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %.pre400 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %bb.ay

bb.ay:                                            ; preds = %.noexc149.thread.loopexit, %bb.ax
  %i.jn = phi ptr [ %i.jl, %bb.ax ], [ %.pre400, %.noexc149.thread.loopexit ] ; 6 uses
  %.sink76.i347 = phi ptr [ %i.ji, %bb.ax ], [ %i.im, %.noexc149.thread.loopexit ] ; 5 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.sink76.i347, i64 16 ; 4 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sink76.i347, i64 32 ; 2 uses
  %i.jq = icmp eq ptr %i.jn, %i.jp
  %i.jr = load ptr, ptr %30, align 8, !tbaa !64   ; 6 uses
  %i.js = icmp eq ptr %i.jr, %i.cm                ; 2 uses
  br i1 %i.jq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i156: ; preds = %bb.ay
  br i1 %i.js, label %bb.az, label %.thread.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i150: ; preds = %bb.ay
  br i1 %i.js, label %bb.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i151

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i156
  %i.jt = load i64, ptr %i.cn, align 8, !tbaa !67 ; 3 uses
  %i.ju = icmp ult i64 %i.jt, 16
  call void @llvm.assume(i1 %i.ju)
  %.not21.i153 = icmp eq ptr %30, %i.jo
  br i1 %.not21.i153, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit158, label %bb.ba, !prof !91

bb.ba:                                            ; preds = %bb.az
  switch i64 %i.jt, label %bb.bc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i154
    i64 1, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.jv = load i8, ptr %i.jr, align 1, !tbaa !66
  store i8 %i.jv, ptr %i.jn, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i154

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %i.jr, i64 %i.jt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i154: ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.jw = load i64, ptr %i.cn, align 8, !tbaa !67 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sink76.i347, i64 24
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !67
  %i.jy = load ptr, ptr %i.jo, align 8, !tbaa !64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.jw
  store i8 0, ptr %i.jz, align 1, !tbaa !66
  %.pre.i155 = load ptr, ptr %30, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit158

.thread.i157:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i156
  %i.ka = getelementptr inbounds nuw i8, ptr %.sink76.i347, i64 24
  store ptr %i.jr, ptr %i.jo, align 8, !tbaa !64
  %i.kb = load <2 x i64>, ptr %i.cn, align 8, !tbaa !66
  store <2 x i64> %i.kb, ptr %i.ka, align 8, !tbaa !66
  br label %bb.be

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i151: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i150
  %i.kc = load i64, ptr %i.jp, align 8, !tbaa !66
  store ptr %i.jr, ptr %i.jo, align 8, !tbaa !64
  %i.kd = getelementptr inbounds nuw i8, ptr %.sink76.i347, i64 24
  %i.ke = load <2 x i64>, ptr %i.cn, align 8, !tbaa !66
  store <2 x i64> %i.ke, ptr %i.kd, align 8, !tbaa !66
  %.not.i152 = icmp eq ptr %i.jn, null
  br i1 %.not.i152, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i151
  store ptr %i.jn, ptr %30, align 8, !tbaa !64
  store i64 %i.kc, ptr %i.cm, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit158

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i151, %.thread.i157
  store ptr %i.cm, ptr %30, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit158: ; preds = %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i154, %bb.bd, %bb.be
  %i.kf = phi ptr [ %.pre.i155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i154 ], [ %i.jn, %bb.bd ], [ %i.cm, %bb.be ], [ %i.jr, %bb.az ]
  store i64 0, ptr %i.cn, align 8, !tbaa !67
  store i8 0, ptr %i.kf, align 1, !tbaa !66
  %i.kg = load ptr, ptr %30, align 8, !tbaa !64   ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.cm
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit158
  %i.ki = load i64, ptr %i.cm, align 8, !tbaa !66
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.kk = load ptr, ptr %i.co, align 8, !tbaa !211, !noalias !387 ; 7 uses
  %i.kl = load ptr, ptr %i.cp, align 8, !tbaa !212, !noalias !387
  %.not.i.i.i = icmp eq ptr %i.kk, %i.kl
  br i1 %.not.i.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 0, ptr %i.kn, align 8, !noalias !387
  store i64 %i.cq, ptr %i.kk, align 8, !tbaa !257, !noalias !387
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.km, align 8, !tbaa !215, !noalias !387
  %i.ko = load ptr, ptr %i.co, align 8, !tbaa !211, !noalias !387
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  store ptr %i.kp, ptr %i.co, align 8, !tbaa !211, !noalias !387
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit.i

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.kq = load ptr, ptr %i.cr, align 8, !tbaa !216 ; 5 uses
  %i.kr = ptrtoint ptr %i.kk to i64
  %i.ks = ptrtoint ptr %i.kq to i64               ; 2 uses
  %i.kt = sub i64 %i.kr, %i.ks                    ; 3 uses
  %i.ku = icmp eq i64 %i.kt, 9223372036854775776
  br i1 %i.ku, label %bb.bh, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #25
          to label %.noexc244 unwind label %.loopexit.split-lp349

.noexc244:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.bg
  %i.kv = ashr exact i64 %i.kt, 5                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.kv, i64 1)
  %i.kw = add nsw i64 %.sroa.speculated.i.i, %i.kv ; 2 uses
  %i.kx = icmp ult i64 %i.kw, %i.kv
  %i.ky = call i64 @llvm.umin.i64(i64 %i.kw, i64 288230376151711743)
  %i.kz = select i1 %i.kx, i64 288230376151711743, i64 %i.ky ; 3 uses
  %.not.i.i243 = icmp ne i64 %i.kz, 0
  call void @llvm.assume(i1 %.not.i.i243)
  %i.la = shl nuw nsw i64 %i.kz, 5
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #26
          to label %.noexc245 unwind label %.loopexit348 ; 5 uses

.noexc245:                                        ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.kt ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store i64 0, ptr %i.le, align 8
  store i64 %i.cq, ptr %i.lc, align 8, !tbaa !257
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.ld, align 8, !tbaa !215
  %.not10.i.i.i.i = icmp eq ptr %i.kq, %i.kk
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc245, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.lm, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.lb, %.noexc245 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ll, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.kq, %.noexc245 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %i.lf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.lg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !390, !noalias !393
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !222, !alias.scope !393, !noalias !390
  store ptr %i.lh, ptr %i.lf, align 8, !tbaa !222, !alias.scope !390, !noalias !393
  %i.li = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !225, !alias.scope !393, !noalias !390 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.lj, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !226, !alias.scope !395
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !225, !alias.scope !390, !noalias !393
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.li, i8 0, i64 16, i1 false), !alias.scope !393, !noalias !390
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ll = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ll, %i.kk
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i, label %.lr.ph.i.i.i.i, !llvm.loop !228

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc245
  %.0.lcssa.i.i.i.i = phi ptr [ %i.lb, %.noexc245 ], [ %i.lm, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i26.i = icmp eq ptr %i.kq, null
  br i1 %.not.i26.i, label %.noexc162, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i
  %i.lo = load ptr, ptr %i.cp, align 8, !tbaa !212
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = sub i64 %i.lp, %i.ks
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.lq) #27
  br label %.noexc162

.noexc162:                                        ; preds = %bb.bi, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i
  store ptr %i.lb, ptr %i.cr, align 8, !tbaa !216
  store ptr %i.ln, ptr %i.co, align 8, !tbaa !211
  %i.lr = getelementptr inbounds nuw [32 x i8], ptr %i.lb, i64 %i.kz
  store ptr %i.lr, ptr %i.cp, align 8, !tbaa !212
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit.i

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit.i: ; preds = %.noexc162, %bb.bf
  store ptr %1, ptr %i.cs, align 8, !tbaa !229, !alias.scope !396
  store i8 1, ptr %20, align 8, !tbaa !261, !alias.scope !396
  store i32 65792, ptr %.sroa.4.0..sroa_idx.i, align 1
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx.i, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 49, ptr nonnull @.str.52, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %21)
          to label %bb.bj unwind label %bb.bm

bb.bj:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_.exit.i
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE:bb.a
  %.0.copyload.i4.i = load i32, ptr %i.f, align 1
  %i.g = zext i32 %.0.copyload.i4.i to i64
  %i.h = or disjoint i64 %i.d, %i.g
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %1, align 1, !tbaa !66
  %i.j = zext i8 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 16
  %i.l = getelementptr i8, ptr %1, i64 %2
  %i.m = getelementptr i8, ptr %i.l, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !66
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = lshr i64 %2, 1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !66
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = or disjoint i64 %i.p, %i.u
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0.i = phi i64 [ %i.h, %bb.c ], [ %i.v, %bb.e ]
  %i.w = xor i64 %.0.i, %0
  %i.x = mul i64 %i.w, -2543921745674291987
  %i.y = tail call noundef i64 @llvm.bswap.i64(i64 %i.x)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.g:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %2, 17
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.0.copyload.i.i4.i = load i64, ptr %i.ab, align 1
  %i.ac = xor i64 %.0.copyload.i.i.i, %0
  %i.ad = xor i64 %.0.copyload.i.i4.i, -2543921745674291987
  %i.ae = zext i64 %i.ac to i128
  %i.af = zext i64 %i.ad to i128
  %i.ag = mul nuw i128 %i.af, %i.ae               ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i64 %2, 33
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i20 = load i64, ptr %1, align 1
  %i.al = xor i64 %.0.copyload.i.i20, 1376283091369227076
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.0.copyload.i.i21 = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.0.copyload.i.i21, %0
  %i.ao = zext i64 %i.al to i128
  %i.ap = zext i64 %i.an to i128
  %i.aq = mul nuw i128 %i.ap, %i.ao               ; 2 uses
  %i.ar = getelementptr i8, ptr %1, i64 %2        ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i22 = load i64, ptr %i.as, align 1
  %i.at = xor i64 %.0.copyload.i.i22, 589684135938649225
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i.i23 = load i64, ptr %i.au, align 1
  %i.av = xor i64 %.0.copyload.i.i23, %0
  %i.aw = zext i64 %i.at to i128
  %i.ax = zext i64 %i.av to i128
  %i.ay = mul nuw i128 %i.ax, %i.aw               ; 2 uses
  %i.az = xor i128 %i.ay, %i.aq
  %i.ba = lshr i128 %i.az, 64
  %i.bb = xor i128 %i.aq, %i.ba
  %i.bc = xor i128 %i.bb, %i.ay
  %i.bd = trunc i128 %i.bc to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp ugt i64 %2, 1024
  br i1 %.not, label %bb.m, label %bb.l, !prof !91

bb.l:                                             ; preds = %bb.k
  %i.be = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  %i.bf = xor i64 %i.be, %0
  %i.bg = zext i64 %i.bf to i128
  %i.bh = mul nuw i128 %i.bg, 15902822328035259629 ; 2 uses
  %i.bi = lshr i128 %i.bh, 64
  %i.bj = xor i128 %i.bi, %i.bh
  %i.bk = trunc i128 %i.bj to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #20

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.47") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !62 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !201
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74, !noalias !505
  %i.h = and i64 %i.g, 65535
  %i.i = load i64, ptr %1, align 8, !tbaa !71, !noalias !505 ; 3 uses
  %i.j = lshr i64 %i.e, 7
  %i.k = xor i64 %i.h, %i.j
  %i.l = trunc i64 %i.e to i8
  %i.m = and i8 %i.l, 127
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !66 ; 2 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.k, %bb.a ], [ %i.ar, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.i                 ; 5 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !66 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.q, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not59 = icmp eq i16 %i.w, 0
  br i1 %.not59, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.034.060 = phi i16 [ %i.af, %.critedge ], [ %i.w, %bb.b ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.7.0, %i.y
  %i.aa = and i64 %i.z, %i.i                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.aa ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !62
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !201
  %i.ac = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ac, label %bb.c, label %.critedge, !prof !200

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.r, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i)
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ae = add i16 %.sroa.034.060, -1
  %i.af = and i16 %i.ae, %.sroa.034.060           ; 2 uses
  %.not = icmp eq i16 %i.af, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ag = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not52 = icmp eq i16 %i.ah, 0
  br i1 %.not52, label %bb.d, label %.thread, !prof !91

.thread:                                          ; preds = %.critedge18
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !70, !noundef !70
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.aq = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.at, align 8, !tbaa !263
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #22

declare void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296), i64, ptr, ptr, i64, ptr noundef byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !234, !range !69, !noundef !70
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !508
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !211
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !225  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit: ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_SC_NSK_18container_internal10StringHashENSM_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !216    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #25
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = load i64, ptr %2, align 8, !tbaa !213
  store i64 %i.u, ptr %i.q, align 8, !tbaa !213
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.s, align 8, !tbaa !222
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.r, align 8, !tbaa !225
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !510, !noalias !513
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222, !alias.scope !513, !noalias !510
  store ptr %i.x, ptr %i.v, align 8, !tbaa !222, !alias.scope !510, !noalias !513
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !225, !alias.scope !513, !noalias !510 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !226, !alias.scope !515
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !225, !alias.scope !510, !noalias !513
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !513, !noalias !510
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !228

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !516, !noalias !519
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !222, !alias.scope !519, !noalias !516
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !222, !alias.scope !516, !noalias !519
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !225, !alias.scope !519, !noalias !516 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !226, !alias.scope !521
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !225, !alias.scope !516, !noalias !519
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !519, !noalias !516
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !228

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ], [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !212
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #27
  br label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !216
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !211
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.85") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !62, !noalias !528
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !201, !noalias !528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.a = load ptr, ptr %1, align 8, !tbaa !497, !noalias !532
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !532
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !532
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.b, align 8, !noalias !532
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !532 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !532
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i

_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !62, !noalias !532
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !201, !noalias !532
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %0, align 8, !tbaa !62, !alias.scope !528
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !201, !alias.scope !528
  store i8 0, ptr %i.h, align 8, !tbaa !533, !alias.scope !532
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !60, !alias.scope !532
  store i8 0, ptr %i.j, align 8, !alias.scope !532
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.k, align 8, !tbaa !67, !alias.scope !532
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.l, align 8, !tbaa !535, !alias.scope !532
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit: ; preds = %bb.a, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i
  %.sink.i.i = phi i8 [ 1, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink.i.i, ptr %i.m, align 8, !tbaa !543, !alias.scope !532
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_EUlSA_E_, ptr %0, align 8, !tbaa !545
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !213
  store i64 %i.a, ptr %0, align 8, !tbaa !213
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !71
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !66 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !62 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66, !nonnull !70, !noundef !70
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !62 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !201
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !74, !noalias !547
  %i.r = and i64 %i.q, 65535
  %i.s = load i64, ptr %0, align 8, !tbaa !71, !noalias !547 ; 4 uses
  %i.t = lshr i64 %i.o, 7
  %i.u = xor i64 %i.r, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.o to i8
  %i.w = and i8 %i.v, 127
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !66   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !66 ; 4 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ab, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.ak, %bb.f ], [ %i.u, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.aj, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.s      ; 4 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i.us
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !66 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.aa, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ah = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not43.i.us = icmp eq i16 %i.ai, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit, !prof !91

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.aj = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !550

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.as, %bb.g ], [ %i.ag, %.split.us ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i.us, %i.am
  %i.ao = and i64 %i.an, %i.s                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ao ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us = load i64, ptr %i.ap, align 8, !tbaa !62
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us, 0
  br i1 %i.aq, label %.thread32.i, label %bb.g, !prof !200

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.ar = add i16 %.sroa.017.046.i.us.us, -1
  %i.as = and i16 %i.ar, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.as, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bl, %bb.i ], [ %i.u, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.s            ; 4 uses
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !66 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.aa, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.ax, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bh, %bb.h ], [ %i.ax, %.split ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i, %i.az
  %i.bb = and i64 %i.ba, %i.s                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bb ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10 = load i64, ptr %i.bc, align 8, !tbaa !62
  %i.bd = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, label %bb.h, !prof !200

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i11, align 8, !tbaa !201
  %bcmp.i.i.i.i.i.i.i.i14 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i12, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i14, 0
  br i1 %i.be, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
  %i.bg = add i16 %.sroa.017.046.i, -1
  %i.bh = and i16 %i.bg, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bi = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %.not43.i = icmp eq i16 %i.bj, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit, !prof !91

bb.i:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.6.0.i
  br label %.split, !llvm.loop !550

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bf, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi18, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_largeIS7_EENSF_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA11_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(11) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %2) #28 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(11) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74, !noalias !551
  %i.i = and i64 %i.h, 65535
  %i.j = load i64, ptr %1, align 8, !tbaa !71, !noalias !551 ; 3 uses
  %i.k = lshr i64 %i.f, 7
  %i.l = xor i64 %i.i, %i.k
  %i.m = trunc i64 %i.f to i8
  %i.n = and i8 %i.m, 127
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !66 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.l, %bb.a ], [ %i.at, %bb.e ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.as, %bb.e ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.j                 ; 5 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !66 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.r, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.w, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.033.059 = phi i16 [ %i.w, %.lr.ph ], [ %i.ah, %.critedge ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.7.0, %i.aa
  %i.ac = and i64 %i.ab, %i.j                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ac ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !201
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.x
  br i1 %i.ae, label %bb.d, label %.critedge, !prof !200

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %2, i64 %i.x)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ag = add i16 %.sroa.033.059, -1
  %i.ah = and i16 %i.ag, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %.critedge18, label %bb.c

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ai = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.aj, 0
  br i1 %.not51, label %bb.e, label %.thread, !prof !91

.thread:                                          ; preds = %.critedge18
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !70, !noundef !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
  br label %bb.f

bb.e:                                             ; preds = %.critedge18
  %i.as = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.at = add i64 %i.as, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ac
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.av, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE19transfer_n_slots_fnEPvSK_SK_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit
  %.014 = phi i64 [ %i.o, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit ], [ %3, %bb.a ]
  %.0913 = phi ptr [ %i.q, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit ], [ %1, %bb.a ] ; 5 uses
  %.01012 = phi ptr [ %i.p, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit ], [ %2, %bb.a ] ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.0913, ptr noundef nonnull align 8 dereferenceable(48) %.01012, i64 16, i1 false), !tbaa.struct !279
  %i.a = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0913, i64 32 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !60
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01012, i64 32 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.01012, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 2 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph
  store ptr %i.d, ptr %i.a, align 8, !tbaa !64
  %i.k = load i64, ptr %i.e, align 8, !tbaa !66
  store i64 %i.k, ptr %i.c, align 8, !tbaa !66
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01012, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !67
  store ptr %i.e, ptr %i.b, align 8, !tbaa !64
  store i64 0, ptr %i.l, align 8, !tbaa !67
  store i8 0, ptr %i.e, align 8, !tbaa !66
  %i.o = add i64 %.014, -1                        ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !554

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSP_PFvSP_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !71     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !74
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.063 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.063
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.063 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not61 = icmp eq i16 %i.r, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.v, %bb.c
  %i.s = add nuw i64 %.063, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !555

.lr.ph:                                           ; preds = %bb.c, %bb.v
  %.sroa.055.062 = phi i16 [ %i.dw, %bb.v ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.055.062, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.063, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.w ; 7 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !62 ; 14 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201 ; 12 uses
  %i.y = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 9
  br i1 %i.y, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.z = icmp samesign ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 3
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i = load i32, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1
  %i.aa = zext i32 %.0.copyload.i.i.i to i64
  %i.ab = shl nuw i64 %i.aa, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4
  %.0.copyload.i4.i.i = load i32, ptr %i.ad, align 1
  %i.ae = zext i32 %.0.copyload.i4.i.i to i64
  %i.af = or disjoint i64 %i.ab, %i.ae
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1, !tbaa !66
  %i.ah = zext i8 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 16
  %i.aj = getelementptr i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 -1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !66
  %i.am = zext i8 %i.al to i64
  %i.an = or disjoint i64 %i.ai, %i.am
  %i.ao = lshr i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !66
  %i.ar = zext i8 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 8
  %i.at = or disjoint i64 %i.an, %i.as
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i.i = phi i64 [ %i.af, %bb.e ], [ %i.at, %bb.g ]
  %i.au = xor i64 %.0.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.av = mul i64 %i.au, -2543921745674291987
  %i.aw = tail call noundef i64 @llvm.bswap.i64(i64 %i.av)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.i:                                             ; preds = %.lr.ph
  %i.ax = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 17
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.0.copyload.i.i4.i.i = load i64, ptr %i.az, align 1
  %i.ba = xor i64 %.0.copyload.i.i.i.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bb = xor i64 %.0.copyload.i.i4.i.i, -2543921745674291987
  %i.bc = zext i64 %i.ba to i128
  %i.bd = zext i64 %i.bb to i128
  %i.be = mul nuw i128 %i.bd, %i.bc               ; 2 uses
  %i.bf = lshr i128 %i.be, 64
  %i.bg = xor i128 %i.bf, %i.be
  %i.bh = trunc i128 %i.bg to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.k:                                             ; preds = %bb.i
  %i.bi = icmp ult i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 33
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.0.copyload.i.i20.i = load i64, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 1
  %i.bj = xor i64 %.0.copyload.i.i20.i, 1376283091369227076
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i21.i = load i64, ptr %i.bk, align 1
  %i.bl = xor i64 %.0.copyload.i.i21.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bm = zext i64 %i.bj to i128
  %i.bn = zext i64 %i.bl to i128
  %i.bo = mul nuw i128 %i.bn, %i.bm               ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i.i ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -16
  %.0.copyload.i.i22.i = load i64, ptr %i.bq, align 1
  %i.br = xor i64 %.0.copyload.i.i22.i, 589684135938649225
  %i.bs = getelementptr i8, ptr %i.bp, i64 -8
  %.0.copyload.i.i23.i = load i64, ptr %i.bs, align 1
  %i.bt = xor i64 %.0.copyload.i.i23.i, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.bu = zext i64 %i.br to i128
  %i.bv = zext i64 %i.bt to i128
  %i.bw = mul nuw i128 %i.bv, %i.bu               ; 2 uses
  %i.bx = xor i128 %i.bw, %i.bo
  %i.by = lshr i128 %i.bx, 64
  %i.bz = xor i128 %i.bo, %i.by
  %i.ca = xor i128 %i.bz, %i.bw
  %i.cb = trunc i128 %i.ca to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.m:                                             ; preds = %bb.k
  %.not.i54 = icmp ugt i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 1024
  br i1 %.not.i54, label %bb.o, label %bb.n, !prof !91

bb.n:                                             ; preds = %bb.m
  %i.cc = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i)
  %i.cd = xor i64 %i.cc, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ce = zext i64 %i.cd to i128
  %i.cf = mul nuw i128 %i.ce, 15902822328035259629 ; 2 uses
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = xor i128 %i.cg, %i.cf
  %i.ci = trunc i128 %i.ch to i64
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.o:                                             ; preds = %bb.m
  %i.cj = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.cj, %bb.o ], [ %i.bh, %bb.j ], [ %i.cb, %bb.l ], [ %i.ci, %bb.n ], [ %i.aw, %bb.h ], [ ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), %bb.f ]
  %i.ck = add i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 87
  %i.cl = add i64 %i.ck, %.0.i                    ; 2 uses
  %i.cm = lshr i64 %i.cl, 7
  %i.cn = xor i64 %i.cm, %i.j                     ; 5 uses
  %i.co = trunc i64 %i.cl to i8
  %i.cp = and i8 %i.co, 127                       ; 2 uses
  %i.cq = sub i64 %i.w, %i.cn                     ; 2 uses
  %i.cr = and i64 %i.k, %i.cq
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %bb.p, label %bb.q, !prof !45

bb.p:                                             ; preds = %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit
  %i.ct = and i64 %i.cq, 15
  %i.cu = add nuw nsw i64 %i.ct, %i.cn
  %i.cv = and i64 %i.cu, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.q:                                             ; preds = %_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit
  %i.cw = and i64 %i.cn, %i.b
  %.not.i = icmp ult i64 %i.cw, %i.w
  br i1 %.not.i, label %bb.r, label %bb.t, !prof !45

bb.r:                                             ; preds = %bb.q
  %i.cx = and i64 %i.cn, %i.a                     ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cx
  %i.cz = load <16 x i8>, ptr %i.cy, align 1, !tbaa !66
  %i.da = icmp slt <16 x i8> %i.cz, zeroinitializer
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.db, 0
  br i1 %.not26.i, label %bb.t, label %bb.s, !prof !91

bb.s:                                             ; preds = %bb.r
  %i.dc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.db, i1 true)
  %i.dd = zext nneg i16 %i.dc to i64
  %i.de = add nuw nsw i64 %i.cx, %i.dd
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.t:                                             ; preds = %bb.r, %bb.q
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.cp, i64 noundef %i.w, i64 noundef %i.cn)
  br label %bb.v

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.s, %bb.p
  %.2.i = phi i64 [ %i.de, %bb.s ], [ %i.cv, %bb.p ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.cp, ptr %i.df, align 1, !tbaa !503
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dg, ptr noundef nonnull align 8 dereferenceable(48) %i.x, i64 16, i1 false), !tbaa.struct !279
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 3 uses
  store ptr %i.dj, ptr %i.dh, align 8, !tbaa !60
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !64 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 5 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !67 ; 2 uses
  %i.dp = icmp ult i64 %i.do, 16
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dj, ptr noundef nonnull align 8 dereferenceable(1) %i.dl, i64 %i.dq, i1 false)
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit
  store ptr %i.dk, ptr %i.dh, align 8, !tbaa !64
  %i.dr = load i64, ptr %i.dl, align 8, !tbaa !66
  store i64 %i.dr, ptr %i.dj, align 8, !tbaa !66
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !67
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !67
  store ptr %i.dl, ptr %i.di, align 8, !tbaa !64
  store i64 0, ptr %i.ds, align 8, !tbaa !67
  store i8 0, ptr %i.dl, align 8, !tbaa !66
  br label %bb.v

bb.v:                                             ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8transferEPNS1_13map_slot_typeIS7_SB_EESM_.exit, %bb.t
  %i.dv = add i16 %.sroa.055.062, -1
  %i.dw = and i16 %i.dv, %.sroa.055.062           ; 2 uses
  %.not = icmp eq i16 %i.dw, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA13_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(13) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(13) %2) #28 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(13) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74, !noalias !556
  %i.i = and i64 %i.h, 65535
  %i.j = load i64, ptr %1, align 8, !tbaa !71, !noalias !556 ; 3 uses
  %i.k = lshr i64 %i.f, 7
  %i.l = xor i64 %i.i, %i.k
  %i.m = trunc i64 %i.f to i8
  %i.n = and i8 %i.m, 127
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !66 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.l, %bb.a ], [ %i.at, %bb.e ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.as, %bb.e ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.j                 ; 5 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !66 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.r, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.w, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.033.059 = phi i16 [ %i.w, %.lr.ph ], [ %i.ah, %.critedge ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.7.0, %i.aa
  %i.ac = and i64 %i.ab, %i.j                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ac ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !201
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.x
  br i1 %i.ae, label %bb.d, label %.critedge, !prof !200

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %2, i64 %i.x)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ag = add i16 %.sroa.033.059, -1
  %i.ah = and i16 %i.ag, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %.critedge18, label %bb.c

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ai = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.aj, 0
  br i1 %.not51, label %bb.e, label %.thread, !prof !91

.thread:                                          ; preds = %.critedge18
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !70, !noundef !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
  br label %bb.f

bb.e:                                             ; preds = %.critedge18
  %i.as = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.at = add i64 %i.as, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ac
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.av, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSC_SaIcEEENS0_18container_internal10StringHashENSI_8StringEqESaISt4pairIKSD_SH_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !261, !range !69, !noundef !70
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !559
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !211  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !211
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !225  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS0_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit: ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_NSt7__cxx1112basic_stringIcSB_SaIcEEENSK_18container_internal10StringHashENSQ_8StringEqESaISt4pairIKSC_SP_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !211  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !216    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #25
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = load i64, ptr %2, align 8, !tbaa !257
  store i64 %i.u, ptr %i.q, align 8, !tbaa !257
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.s, align 8, !tbaa !222
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation, ptr %i.r, align 8, !tbaa !225
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !561, !noalias !564
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !222, !alias.scope !564, !noalias !561
  store ptr %i.x, ptr %i.v, align 8, !tbaa !222, !alias.scope !561, !noalias !564
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !225, !alias.scope !564, !noalias !561 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !226, !alias.scope !566
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !225, !alias.scope !561, !noalias !564
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !564, !noalias !561
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !228

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !567, !noalias !570
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !222, !alias.scope !570, !noalias !567
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !222, !alias.scope !567, !noalias !570
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !225, !alias.scope !570, !noalias !567 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !226, !alias.scope !572
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !225, !alias.scope !567, !noalias !570
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !570, !noalias !567
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !228

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ], [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !212
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #27
  br label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !216
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !211
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !212
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.85") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !62, !noalias !579
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !201, !noalias !579
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.a = load ptr, ptr %1, align 8, !tbaa !254, !noalias !583
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !583
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !583
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.b, align 8, !noalias !583
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE4findIS7_EENSJ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !583 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !583
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSE_SaIcEEENSA_18container_internal10StringHashENSK_8StringEqESaISt4pairIKSF_SJ_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISS_T0_DpT1_EESS_E4typeEOSY_DpOSZ_.exit, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i

_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64, !noalias !583
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67, !noalias !583
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.j, ptr %0, align 8, !tbaa !62, !alias.scope !579
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !201, !alias.scope !579
  store i8 0, ptr %i.k, align 8, !tbaa !533, !alias.scope !583
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !60, !alias.scope !583
  store i8 0, ptr %i.m, align 8, !alias.scope !583
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.n, align 8, !tbaa !67, !alias.scope !583
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.o, align 8, !tbaa !535, !alias.scope !583
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSE_SaIcEEENSA_18container_internal10StringHashENSK_8StringEqESaISt4pairIKSF_SJ_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISS_T0_DpT1_EESS_E4typeEOSY_DpOSZ_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSE_SaIcEEENSA_18container_internal10StringHashENSK_8StringEqESaISt4pairIKSF_SJ_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISS_T0_DpT1_EESS_E4typeEOSY_DpOSZ_.exit: ; preds = %bb.a, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i
  %.sink.i.i = phi i8 [ 1, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink.i.i, ptr %i.p, align 8, !tbaa !543, !alias.scope !583
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_NSt7__cxx1112basic_stringIcSA_SaIcEEENSF_18container_internal10StringHashENSL_8StringEqESaISt4pairIKSB_SK_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSY_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEDaPKT_EUlSA_E_, ptr %0, align 8, !tbaa !545
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !215
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !257
  store i64 %i.a, ptr %0, align 8, !tbaa !257
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcSB_SaIcEEENS7_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSC_SG_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE4findIS7_EENSJ_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !71
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !74
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !66 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !62 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !201
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE12EqualElementIS7_EEJRSK_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i)
  %i.h = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE12EqualElementIS7_EEJRSK_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE12EqualElementIS7_EEJRSK_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !66, !nonnull !70, !noundef !70
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %.sroa.0.0.copyload.i.i.i.i.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  tail call void @llvm.prefetch.p0(ptr %i.l, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !62 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !201
  %i.m = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.n = add i64 %.sroa.0.0.copyload.i, 87
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !74, !noalias !584
  %i.r = and i64 %i.q, 65535
  %i.s = load i64, ptr %0, align 8, !tbaa !71, !noalias !584 ; 4 uses
  %i.t = lshr i64 %i.o, 7
  %i.u = xor i64 %i.r, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.o to i8
  %i.w = and i8 %i.v, 127
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !66   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !66 ; 4 uses
  %i.z = insertelement <16 x i8> poison, i8 %i.w, i64 0
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i6 = load i64, ptr %1, align 8
  %.sroa.0.0.copyload.i.i.i.i.i.i6.fr = freeze i64 %.sroa.0.0.copyload.i.i.i.i.i.i6 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i.i8 = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr, 0
  br i1 %i.ab, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.f
  %.pn.i9.us = phi i64 [ %i.ak, %bb.f ], [ %i.u, %bb.e ]
  %.sroa.13.0.i.us = phi i64 [ %i.aj, %bb.f ], [ 0, %bb.e ]
  %.sroa.6.0.i.us = and i64 %.pn.i9.us, %i.s      ; 4 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i.us
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !66 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.aa, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16          ; 2 uses
  %.not45.i.us = icmp eq i16 %i.ag, 0
  br i1 %.not45.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.g, %.split.us
  %i.ah = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.ai = bitcast <16 x i1> %i.ah to i16
  %.not43.i.us = icmp eq i16 %i.ai, 0
  br i1 %.not43.i.us, label %bb.f, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit, !prof !91

bb.f:                                             ; preds = %._crit_edge.i.us
  %i.aj = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.6.0.i.us
  br label %.split.us, !llvm.loop !587

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.g
  %.sroa.017.046.i.us.us = phi i16 [ %i.as, %bb.g ], [ %i.ag, %.split.us ] ; 3 uses
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.us.us, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = add i64 %.sroa.6.0.i.us, %i.am
  %i.ao = and i64 %i.an, %i.s                     ; 2 uses
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.ao ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us = load i64, ptr %i.ap, align 8, !tbaa !62
  %i.aq = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10.us.us, 0
  br i1 %i.aq, label %.thread32.i, label %bb.g, !prof !200

bb.g:                                             ; preds = %.lr.ph.i.us.us
  %i.ar = add i16 %.sroa.017.046.i.us.us, -1
  %i.as = and i16 %i.ar, %.sroa.017.046.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i16 %i.as, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.split:                                           ; preds = %bb.e, %bb.i
  %.pn.i9 = phi i64 [ %i.bl, %bb.i ], [ %i.u, %bb.e ]
  %.sroa.13.0.i = phi i64 [ %i.bk, %bb.i ], [ 0, %bb.e ]
  %.sroa.6.0.i = and i64 %.pn.i9, %i.s            ; 4 uses
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %.sroa.6.0.i
  tail call void @llvm.prefetch.p0(ptr %i.at, i32 0, i32 3, i32 1)
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.6.0.i
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !66 ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.aa, %i.av
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not45.i = icmp eq i16 %i.ax, 0
  br i1 %.not45.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.017.046.i = phi i16 [ %i.bh, %bb.h ], [ %i.ax, %.split ] ; 3 uses
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.6.0.i, %i.az
  %i.bb = and i64 %i.ba, %i.s                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i, i64 %i.bb ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i10 = load i64, ptr %i.bc, align 8, !tbaa !62
  %i.bd = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i10, %.sroa.0.0.copyload.i.i.i.i.i.i6.fr
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, label %bb.h, !prof !200

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i11, align 8, !tbaa !201
  %bcmp.i.i.i.i.i.i.i.i14 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i12, ptr %.sroa.2.0.copyload.i.i.i.i.i.i8, i64 %.sroa.0.0.copyload.i.i.i.i.i.i6.fr)
  %i.be = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i14, 0
  br i1 %i.be, label %.thread32.i, label %bb.h

.thread32.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.ao, %.lr.ph.i.us.us ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %.us-phi18 = phi ptr [ %i.ap, %.lr.ph.i.us.us ], [ %i.bc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 %.us-phi
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i13, %.lr.ph.i
  %i.bg = add i16 %.sroa.017.046.i, -1
  %i.bh = and i16 %i.bg, %.sroa.017.046.i         ; 2 uses
  %.not.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bi = icmp eq <16 x i8> %i.av, splat (i8 -128)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %.not43.i = icmp eq i16 %i.bj, 0
  br i1 %.not43.i, label %bb.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit, !prof !91

bb.i:                                             ; preds = %._crit_edge.i
  %i.bk = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bl = add i64 %i.bk, %.sroa.6.0.i
  br label %.split, !llvm.loop !587

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread32.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bf, %.thread32.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi18, %.thread32.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_smallIS7_EENSJ_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE12EqualElementIS7_EEJRSK_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE10find_largeIS7_EENSJ_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEEvE5applyINS1_12raw_hash_setISC_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE12EqualElementIS7_EEJRSK_ESC_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA20_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(20) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %2) #28 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(20) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74, !noalias !588
  %i.i = and i64 %i.h, 65535
  %i.j = load i64, ptr %1, align 8, !tbaa !71, !noalias !588 ; 3 uses
  %i.k = lshr i64 %i.f, 7
  %i.l = xor i64 %i.i, %i.k
  %i.m = trunc i64 %i.f to i8
  %i.n = and i8 %i.m, 127
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !66 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.l, %bb.a ], [ %i.at, %bb.e ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.as, %bb.e ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.j                 ; 5 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !66 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.r, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.w, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.033.059 = phi i16 [ %i.w, %.lr.ph ], [ %i.ah, %.critedge ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.7.0, %i.aa
  %i.ac = and i64 %i.ab, %i.j                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ac ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !201
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.x
  br i1 %i.ae, label %bb.d, label %.critedge, !prof !200

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %2, i64 %i.x)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ag = add i16 %.sroa.033.059, -1
  %i.ah = and i16 %i.ag, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %.critedge18, label %bb.c

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ai = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.aj, 0
  br i1 %.not51, label %bb.e, label %.thread, !prof !91

.thread:                                          ; preds = %.critedge18
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !70, !noundef !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
  br label %bb.f

bb.e:                                             ; preds = %.critedge18
  %i.as = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.at = add i64 %i.as, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ac
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.av, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA5_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(5) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %2) #28 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(5) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74, !noalias !591
  %i.i = and i64 %i.h, 65535
  %i.j = load i64, ptr %1, align 8, !tbaa !71, !noalias !591 ; 3 uses
  %i.k = lshr i64 %i.f, 7
  %i.l = xor i64 %i.i, %i.k
  %i.m = trunc i64 %i.f to i8
  %i.n = and i8 %i.m, 127
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !66 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.l, %bb.a ], [ %i.at, %bb.e ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.as, %bb.e ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.j                 ; 5 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !66 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.r, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.w, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.033.059 = phi i16 [ %i.w, %.lr.ph ], [ %i.ah, %.critedge ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.7.0, %i.aa
  %i.ac = and i64 %i.ab, %i.j                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ac ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !201
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.x
  br i1 %i.ae, label %bb.d, label %.critedge, !prof !200

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %2, i64 %i.x)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ag = add i16 %.sroa.033.059, -1
  %i.ah = and i16 %i.ag, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %.critedge18, label %bb.c

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ai = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.aj, 0
  br i1 %.not51, label %bb.e, label %.thread, !prof !91

.thread:                                          ; preds = %.critedge18
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !70, !noundef !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
  br label %bb.f

bb.e:                                             ; preds = %.critedge18
  %i.as = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.at = add i64 %i.as, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ac
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.av, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA14_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(14) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(14) %2) #28 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(14) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74, !noalias !594
  %i.i = and i64 %i.h, 65535
  %i.j = load i64, ptr %1, align 8, !tbaa !71, !noalias !594 ; 3 uses
  %i.k = lshr i64 %i.f, 7
  %i.l = xor i64 %i.i, %i.k
  %i.m = trunc i64 %i.f to i8
  %i.n = and i8 %i.m, 127
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !66 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.l, %bb.a ], [ %i.at, %bb.e ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.as, %bb.e ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.j                 ; 5 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !66 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.r, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.w, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.033.059 = phi i16 [ %i.w, %.lr.ph ], [ %i.ah, %.critedge ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.7.0, %i.aa
  %i.ac = and i64 %i.ab, %i.j                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ac ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !201
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.x
  br i1 %i.ae, label %bb.d, label %.critedge, !prof !200

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %2, i64 %i.x)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ag = add i16 %.sroa.033.059, -1
  %i.ah = and i16 %i.ag, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %.critedge18, label %bb.c

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ai = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.aj, 0
  br i1 %.not51, label %bb.e, label %.thread, !prof !91

.thread:                                          ; preds = %.critedge18
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !70, !noundef !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
  br label %bb.f

bb.e:                                             ; preds = %.critedge18
  %i.as = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.at = add i64 %i.as, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ac
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.av, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA16_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.114") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(16) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %2) #28 ; 2 uses
  %i.d = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef nonnull align 1 dereferenceable(16) %2, i64 noundef %i.c)
  %i.e = add i64 %i.c, 87
  %i.f = add i64 %i.e, %i.d                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !74, !noalias !597
  %i.i = and i64 %i.h, 65535
  %i.j = load i64, ptr %1, align 8, !tbaa !71, !noalias !597 ; 3 uses
  %i.k = lshr i64 %i.f, 7
  %i.l = xor i64 %i.i, %i.k
  %i.m = trunc i64 %i.f to i8
  %i.n = and i8 %i.m, 127
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !66 ; 2 uses
  %i.q = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %i.r = shufflevector <16 x i8> %i.q, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.pn = phi i64 [ %i.l, %bb.a ], [ %i.at, %bb.e ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.as, %bb.e ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.j                 ; 5 uses
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !66 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.r, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not58 = icmp eq i16 %i.w, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #28 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.033.059 = phi i16 [ %i.w, %.lr.ph ], [ %i.ah, %.critedge ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.7.0, %i.aa
  %i.ac = and i64 %i.ab, %i.j                     ; 2 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.ac ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !201
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, %i.x
  br i1 %i.ae, label %bb.d, label %.critedge, !prof !200

bb.d:                                             ; preds = %bb.c
  br i1 %i.y, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.2.0.copyload.i.i.i.i.i, ptr nonnull %2, i64 %i.x)
  %i.af = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.af, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ag = add i16 %.sroa.033.059, -1
  %i.ah = and i16 %i.ag, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.ah, 0
  br i1 %.not, label %.critedge18, label %bb.c

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ai = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.aj, 0
  br i1 %.not51, label %bb.e, label %.thread, !prof !91

.thread:                                          ; preds = %.critedge18
  %i.ak = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.7.0, %i.al
  %i.an = and i64 %i.am, %i.j
  %i.ao = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.f, i64 %i.an, i64 %.sroa.15.0) ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !66, !nonnull !70, !noundef !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.p, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.ao
  br label %bb.f

bb.e:                                             ; preds = %.critedge18
  %i.as = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.at = add i64 %i.as, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ac
  br label %bb.f

bb.f:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.aq, %.thread ], [ %i.au, %.critedge20 ]
  %.sink76 = phi ptr [ %i.ar, %.thread ], [ %i.ad, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.av, align 8, !tbaa !80
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { noreturn }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { builtin nounwind }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }

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
!7 = !{!8, !4, i64 4}
!8 = !{!"_ZTSN6google8protobuf15FieldDescriptorE", !9, i64 0, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !10, i64 1, !5, i64 1, !5, i64 2, !5, i64 3, !10, i64 3, !10, i64 3, !5, i64 3, !4, i64 4, !11, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !5, i64 40, !5, i64 48, !17, i64 56, !18, i64 64, !18, i64 72, !5, i64 80}
!9 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !13, i64 0}
!15 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !13, i64 0}
!16 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !13, i64 0}
!17 = !{!"p1 _ZTSN6google8protobuf12FieldOptionsE", !13, i64 0}
!18 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !13, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !6, i64 0}
!21 = !{!22, !16, i64 16}
!22 = !{!"_ZTSN6google8protobuf8compiler6csharp16MessageGeneratorE", !23, i64 0, !16, i64 16, !25, i64 24, !4, i64 48, !10, i64 52}
!23 = !{!"_ZTSN6google8protobuf8compiler6csharp19SourceGeneratorBaseE", !24, i64 8}
!24 = !{!"p1 _ZTSN6google8protobuf8compiler6csharp7OptionsE", !13, i64 0}
!25 = !{!"_ZTSSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p2 _ZTSN6google8protobuf15FieldDescriptorE", !30, i64 0}
!30 = !{!"any p2 pointer", !13, i64 0}
!31 = !{!32, !4, i64 144}
!32 = !{!"_ZTSN6google8protobuf10DescriptorE", !9, i64 0, !10, i64 1, !10, i64 1, !5, i64 1, !5, i64 2, !33, i64 4, !4, i64 8, !11, i64 16, !14, i64 24, !16, i64 32, !34, i64 40, !18, i64 48, !18, i64 56, !35, i64 64, !36, i64 72, !16, i64 80, !37, i64 88, !38, i64 96, !35, i64 104, !39, i64 112, !40, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!33 = !{!"short", !5, i64 0}
!34 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !13, i64 0}
!35 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !13, i64 0}
!36 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !13, i64 0}
!37 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !13, i64 0}
!38 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !13, i64 0}
!39 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !13, i64 0}
!40 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0}
!41 = !{!22, !10, i64 52}
!42 = !{!32, !4, i64 8}
!43 = !{!29, !29, i64 0}
!44 = !{!35, !35, i64 0}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = !{!32, !35, i64 64}
!51 = !{!28, !29, i64 8}
!52 = !{!28, !29, i64 0}
!53 = !{!28, !29, i64 16}
!54 = distinct !{!54, !47}
!55 = !{!8, !5, i64 2}
!56 = !{!22, !4, i64 48}
!57 = distinct !{!57, !47}
!58 = !{ptr @_ZN6google8protobuf8compiler6csharp16MessageGeneratorD2Ev}
!59 = !{!11, !12, i64 0}
!60 = !{!61, !12, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"long", !5, i64 0}
!64 = !{!65, !12, i64 0}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !61, i64 0, !63, i64 8, !5, i64 16}
!66 = !{!5, !5, i64 0}
!67 = !{!65, !63, i64 8}
!68 = !{!32, !34, i64 40}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!72, !63, i64 0}
!72 = !{!"_ZTSN4absl12lts_2025051218container_internal12CommonFieldsE", !63, i64 0, !73, i64 8, !5, i64 16}
!73 = !{!"_ZTSN4absl12lts_2025051218container_internal13HashtableSizeE", !63, i64 0}
!74 = !{!73, !63, i64 0}
!75 = !{!76, !10, i64 66}
!76 = !{!"_ZTSN6google8protobuf8compiler6csharp7OptionsE", !65, i64 0, !65, i64 32, !10, i64 64, !10, i64 65, !10, i64 66, !10, i64 67}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN6google8protobuf8compiler6csharp16MessageGenerator10class_nameB5cxx11Ev: argument 0"}
!79 = distinct !{!79, !"_ZN6google8protobuf8compiler6csharp16MessageGenerator10class_nameB5cxx11Ev"}
!80 = !{!81, !10, i64 16}
!81 = !{!"_ZTSSt4pairIN4absl12lts_2025051218container_internal12raw_hash_setINS2_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS7_SaIcEEEEENS2_10StringHashENS2_8StringEqESaIS_IKS8_SC_EEE8iteratorEbE", !82, i64 0, !10, i64 16}
!82 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE8iteratorE", !13, i64 0, !5, i64 8}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE16try_emplace_implIRA11_KcJEEESF_INS1_12raw_hash_setISC_SD_SE_SI_E8iteratorEbEOT_DpOT0_: argument 0"}
!85 = distinct !{!85, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE16try_emplace_implIRA11_KcJEEESF_INS1_12raw_hash_setISC_SD_SE_SI_E8iteratorEbEOT_DpOT0_"}
!86 = distinct !{!86, !87, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE11try_emplaceIA11_cLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISC_SD_SE_SI_E14const_iteratorEEE5valueEiE4typeELi0EEESF_INSP_8iteratorEbERKSN_DpOT1_: argument 0"}
!87 = distinct !{!87, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE11try_emplaceIA11_cLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISC_SD_SE_SI_E14const_iteratorEEE5valueEiE4typeELi0EEESF_INSP_8iteratorEbERKSN_DpOT1_"}
!88 = !{!89, !63, i64 0}
!89 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !63, i64 0, !12, i64 8}
!90 = !{!89, !12, i64 8}
!91 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!92 = !{!93, !95}
!93 = distinct !{!93, !94, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE16try_emplace_implIRA13_KcJEEESF_INS1_12raw_hash_setISC_SD_SE_SI_E8iteratorEbEOT_DpOT0_: argument 0"}
!94 = distinct !{!94, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE16try_emplace_implIRA13_KcJEEESF_INS1_12raw_hash_setISC_SD_SE_SI_E8iteratorEbEOT_DpOT0_"}
!95 = distinct !{!95, !96, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE11try_emplaceIA13_cLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISC_SD_SE_SI_E14const_iteratorEEE5valueEiE4typeELi0EEESF_INSP_8iteratorEbERKSN_DpOT1_: argument 0"}
!96 = distinct !{!96, !"_ZN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE11try_emplaceIA13_cLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setISC_SD_SE_SI_E14const_iteratorEEE5valueEiE4typeELi0EEESF_INSP_8iteratorEbERKSN_DpOT1_"}
!97 = !{!98, !63, i64 88}
!98 = !{!"_ZTSN6google8protobuf2io7PrinterE", !99, i64 0, !101, i64 40, !63, i64 104, !10, i64 112, !10, i64 113, !63, i64 120, !107, i64 128, !112, i64 152, !117, i64 176, !122, i64 208, !125, i64 240, !131, i64 272}
!99 = !{!"_ZTSN6google8protobuf2io16zc_sink_internal22ZeroCopyStreamByteSinkE", !100, i64 0, !13, i64 8, !63, i64 16, !63, i64 24, !10, i64 32}
!100 = !{!"p1 _ZTSN6google8protobuf2io20ZeroCopyOutputStreamE", !13, i64 0}
!101 = !{!"_ZTSN6google8protobuf2io7Printer7OptionsE", !5, i64 0, !102, i64 8, !89, i64 16, !89, i64 32, !63, i64 48, !103, i64 56}
!102 = !{!"p1 _ZTSN6google8protobuf2io19AnnotationCollectorE", !13, i64 0}
!103 = !{!"_ZTSSt8optionalIbE", !104, i64 0}
!104 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !105, i64 0}
!105 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !106, i64 0}
!106 = !{!"_ZTSSt22_Optional_payload_baseIbE", !5, i64 0, !10, i64 1}
!107 = !{!"_ZTSSt6vectorImSaImEE", !108, i64 0}
!108 = !{!"_ZTSSt12_Vector_baseImSaImEE", !109, i64 0}
!109 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !110, i64 0}
!110 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !111, i64 0, !111, i64 8, !111, i64 16}
!111 = !{!"p1 long", !13, i64 0}
!112 = !{!"_ZTSSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE", !113, i64 0}
!113 = !{!"_ZTSSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE", !114, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_Vector_implE", !115, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!116 = !{!"p1 _ZTSSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEE", !13, i64 0}
!117 = !{!"_ZTSSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE", !118, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE", !119, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE12_Vector_implE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEESaISD_EE17_Vector_impl_dataE", !121, i64 0, !121, i64 8, !121, i64 16}
!121 = !{!"p1 _ZTSSt8functionIFSt8optionalIN6google8protobuf2io7Printer16AnnotationRecordEESt17basic_string_viewIcSt11char_traitsIcEEEE", !13, i64 0}
!122 = !{!"_ZTSN4absl12lts_2025051212AnyInvocableIFvSt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationEEEE", !123, i64 0}
!123 = !{!"_ZTSN4absl12lts_2025051222internal_any_invocable4ImplIFvSt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationEEEE", !124, i64 0}
!124 = !{!"_ZTSN4absl12lts_2025051222internal_any_invocable8CoreImplILb0EvJSt17basic_string_viewIcSt11char_traitsIcEEN6google8protobuf2io7Printer14SourceLocationEEEE", !5, i64 0, !13, i64 16, !13, i64 24}
!125 = !{!"_ZTSN4absl12lts_2025051213flat_hash_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmENS0_18container_internal10StringHashENSA_8StringEqESaIS8_IKS7_S9_EEEE", !126, i64 0}
!126 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_mapINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEE", !127, i64 0}
!127 = !{!"_ZTSN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairImmEEENS1_10StringHashENS1_8StringEqESaISA_IKS9_SB_EEEE", !128, i64 0}
!128 = !{!"_ZTSN4absl12lts_2025051218container_internal15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEE", !129, i64 0}
!129 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple19CompressedTupleImplINS1_15CompressedTupleIJNS1_12CommonFieldsENS1_10StringHashENS1_8StringEqESaIcEEEESt16integer_sequenceImJLm0ELm1ELm2ELm3EEELb1EEE", !130, i64 0}
!130 = !{!"_ZTSN4absl12lts_2025051218container_internal25internal_compressed_tuple7StorageINS1_12CommonFieldsELm0ELb0EEE", !72, i64 0}
!131 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !132, i64 0}
!132 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !133, i64 0}
!133 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !134, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !135, i64 0, !135, i64 8, !135, i64 16}
!135 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!136 = !{!98, !63, i64 104}
!137 = !{!32, !14, i64 24}
!138 = !{!139, !135, i64 8}
!139 = !{!"_ZTSN6google8protobuf14FileDescriptorE", !9, i64 0, !10, i64 1, !10, i64 2, !4, i64 4, !135, i64 8, !135, i64 16, !140, i64 24, !141, i64 32, !15, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !142, i64 80, !143, i64 88, !143, i64 96, !144, i64 104, !16, i64 112, !37, i64 120, !145, i64 128, !35, i64 136, !146, i64 144, !18, i64 152, !18, i64 160, !147, i64 168, !148, i64 176}
!140 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !13, i64 0}
!141 = !{!"_ZTSN6google8protobuf7EditionE", !5, i64 0}
!142 = !{!"p2 _ZTSN6google8protobuf14FileDescriptorE", !30, i64 0}
!143 = !{!"p1 int", !13, i64 0}
!144 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !13, i64 0}
end_hunk_6

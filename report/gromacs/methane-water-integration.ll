Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/methane-water-integration?download=true
inline.NumInlined: 2646
inline.NumDeleted: 1452
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEEC2ES6_.exit
  %i.bbg = load ptr, ptr %180, align 8, !tbaa !23 ; 2 uses
  %i.bbh = icmp eq ptr %i.bbg, %i.azv
  br i1 %i.bbh, label %_ZN5nblib18ParticleIdentifierD2Ev.exit1381, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i1378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i1378: ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20ResidueNameParameterEED2Ev.exit.i1377
  %i.bbi = load i64, ptr %i.azv, align 8, !tbaa !15
  %i.bbj = add i64 %i.bbi, 1
  call void @_ZdlPvm(ptr noundef %i.bbg, i64 noundef %i.bbj) #17
  br label %_ZN5nblib18ParticleIdentifierD2Ev.exit1381

_ZN5nblib18ParticleIdentifierD2Ev.exit1381:       ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20ResidueNameParameterEED2Ev.exit.i1377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i1378
  %i.bbk = load ptr, ptr %181, align 8, !tbaa !23 ; 2 uses
  %i.bbl = icmp eq ptr %i.bbk, %i.azs
  br i1 %i.bbl, label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_21ParticleNameParameterEED2Ev.exit1384, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1382: ; preds = %_ZN5nblib18ParticleIdentifierD2Ev.exit1381
  %i.bbm = load i64, ptr %i.azs, align 8, !tbaa !15
  %i.bbn = add i64 %i.bbm, 1
  call void @_ZdlPvm(ptr noundef %i.bbk, i64 noundef %i.bbn) #17
  br label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_21ParticleNameParameterEED2Ev.exit1384

_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_21ParticleNameParameterEED2Ev.exit1384: ; preds = %_ZN5nblib18ParticleIdentifierD2Ev.exit1381, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1382
  %i.bbo = load ptr, ptr %182, align 8, !tbaa !23 ; 2 uses
  %i.bbp = icmp eq ptr %i.bbo, %i.azp
  br i1 %i.bbp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1385

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1385: ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_21ParticleNameParameterEED2Ev.exit1384
  %i.bbq = load i64, ptr %i.azp, align 8, !tbaa !15
  %i.bbr = add i64 %i.bbq, 1
  call void @_ZdlPvm(ptr noundef %i.bbo, i64 noundef %i.bbr) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387: ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_21ParticleNameParameterEED2Ev.exit1384, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1385
  call void @llvm.lifetime.end.p0(ptr nonnull %180) #16
  %i.bbs = load ptr, ptr %i.azm, align 8, !tbaa !23 ; 2 uses
  %i.bbt = icmp eq ptr %i.bbs, %i.azn
  br i1 %i.bbt, label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20ResidueNameParameterEED2Ev.exit.i1389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1388: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387
  %i.bbu = load i64, ptr %i.azn, align 8, !tbaa !15
  %i.bbv = add i64 %i.bbu, 1
  call void @_ZdlPvm(ptr noundef %i.bbs, i64 noundef %i.bbv) #17
  br label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20ResidueNameParameterEED2Ev.exit.i1389

_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20ResidueNameParameterEED2Ev.exit.i1389: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1387, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1388
  %i.bbw = load ptr, ptr %177, align 8, !tbaa !23 ; 2 uses
  %i.bbx = icmp eq ptr %i.bbw, %i.azk
  br i1 %i.bbx, label %_ZN5nblib18ParticleIdentifierD2Ev.exit1393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i1390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i1390: ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20ResidueNameParameterEED2Ev.exit.i1389
  %i.bby = load i64, ptr %i.azk, align 8, !tbaa !15
  %i.bbz = add i64 %i.bby, 1
  call void @_ZdlPvm(ptr noundef %i.bbw, i64 noundef %i.bbz) #17
  br label %_ZN5nblib18ParticleIdentifierD2Ev.exit1393

_ZN5nblib18ParticleIdentifierD2Ev.exit1393:       ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_20ResidueNameParameterEED2Ev.exit.i1389, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i1390
  %i.bca = load ptr, ptr %178, align 8, !tbaa !23 ; 2 uses
  %i.bcb = icmp eq ptr %i.bca, %i.azi
  br i1 %i.bcb, label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_21ParticleNameParameterEED2Ev.exit1396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1394: ; preds = %_ZN5nblib18ParticleIdentifierD2Ev.exit1393
  %i.bcc = load i64, ptr %i.azi, align 8, !tbaa !15
  %i.bcd = add i64 %i.bcc, 1
  call void @_ZdlPvm(ptr noundef %i.bca, i64 noundef %i.bcd) #17
  br label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_21ParticleNameParameterEED2Ev.exit1396

_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_21ParticleNameParameterEED2Ev.exit1396: ; preds = %_ZN5nblib18ParticleIdentifierD2Ev.exit1393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1394
  %i.bce = load ptr, ptr %179, align 8, !tbaa !23 ; 2 uses
  %i.bcf = icmp eq ptr %i.bce, %i.azf
  br i1 %i.bcf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1397: ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_21ParticleNameParameterEED2Ev.exit1396
  %i.bcg = load i64, ptr %i.azf, align 8, !tbaa !15
  %i.bch = add i64 %i.bcg, 1
  call void @_ZdlPvm(ptr noundef %i.bce, i64 noundef %i.bch) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1399: ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_21ParticleNameParameterEED2Ev.exit1396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1397
  call void @llvm.lifetime.end.p0(ptr nonnull %177) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #16
  invoke void @_ZN5nblib3BoxC1Ef(ptr noundef nonnull align 4 dereferenceable(36) %187, float noundef 6.054490e+00)
          to label %bb.aq unwind label %bb.dk

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1399
  call void @llvm.lifetime.start.p0(ptr nonnull %188) #16
  store i8 0, ptr %188, align 4, !tbaa !215
  %i.bci = getelementptr inbounds nuw i8, ptr %188, i64 4
  store i32 1, ptr %i.bci, align 4, !tbaa !216
  %i.bcj = getelementptr inbounds nuw i8, ptr %188, i64 8
  %i.bck = getelementptr inbounds nuw i8, ptr %188, i64 12
  store float 1.000000e+00, ptr %i.bck, align 4, !tbaa !217
  %i.bcl = getelementptr inbounds nuw i8, ptr %188, i64 16
  %i.bcm = getelementptr inbounds nuw i8, ptr %188, i64 20
  store i8 0, ptr %i.bcm, align 4, !tbaa !218
  %i.bcn = getelementptr inbounds nuw i8, ptr %188, i64 24
  store i32 100, ptr %i.bcn, align 4, !tbaa !219
  %i.bco = getelementptr inbounds nuw i8, ptr %188, i64 28
  store float 1.000000e-03, ptr %i.bco, align 4, !tbaa !220
  store i32 1, ptr %i.bcl, align 4, !tbaa !221
  store i32 1, ptr %i.bcj, align 4, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #16
  invoke void @_ZN5nblib15TopologyBuilderC1Ev(ptr noundef nonnull align 8 dereferenceable(1296) %189)
          to label %bb.ar unwind label %bb.dl

bb.ar:                                            ; preds = %bb.aq
  %i.bcp = invoke noundef nonnull align 8 dereferenceable(1296) ptr @_ZN5nblib15TopologyBuilder11addMoleculeERKNS_8MoleculeEi(ptr noundef nonnull align 8 dereferenceable(1296) %189, ptr noundef nonnull align 8 dereferenceable(1024) %17, i32 noundef 2)
          to label %bb.as unwind label %bb.dm     ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.bcq = invoke noundef nonnull align 8 dereferenceable(1296) ptr @_ZN5nblib15TopologyBuilder11addMoleculeERKNS_8MoleculeEi(ptr noundef nonnull align 8 dereferenceable(1296) %189, ptr noundef nonnull align 8 dereferenceable(1024) %20, i32 noundef 1)
          to label %bb.at unwind label %bb.dm     ; 0 uses

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN5nblib15TopologyBuilder28addParticleTypesInteractionsERKNS_25ParticleTypesInteractionsE(ptr noundef nonnull align 8 dereferenceable(1296) %189, ptr noundef nonnull align 8 dereferenceable(104) %12)
          to label %bb.au unwind label %bb.dm

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %190) #16
  invoke void @_ZN5nblib15TopologyBuilder13buildTopologyEv(ptr dead_on_unwind nonnull writable sret(%"class.nblib::Topology") align 8 %190, ptr noundef nonnull align 8 dereferenceable(1296) %189)
          to label %bb.av unwind label %bb.dn

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %191, i8 0, i64 24, i1 false)
  %i.bcr = invoke noalias noundef nonnull dereferenceable(132) ptr @_Znwm(i64 noundef 132) #18
          to label %bb.ay unwind label %bb.aw     ; 3 uses

bb.aw:                                            ; preds = %bb.av
  %i.bcs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bct = load ptr, ptr %191, align 8, !tbaa !225 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.bct, null
  br i1 %.not.i.i4.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit1805, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bcu = getelementptr inbounds nuw i8, ptr %191, i64 16
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !226
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit1805.sink.split

bb.ay:                                            ; preds = %bb.av
  store ptr %i.bcr, ptr %191, align 8, !tbaa !225
  %i.bcw = getelementptr inbounds nuw i8, ptr %i.bcr, i64 132 ; 2 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %191, i64 16 ; 3 uses
  store ptr %i.bcw, ptr %i.bcx, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.bcr, ptr noundef nonnull align 4 dereferenceable(132) @constinit, i64 132, i1 false)
  %i.bcy = getelementptr inbounds nuw i8, ptr %191, i64 8
  store ptr %i.bcw, ptr %i.bcy, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %192, i8 0, i64 24, i1 false)
  %i.bcz = invoke noalias noundef nonnull dereferenceable(132) ptr @_Znwm(i64 noundef 132) #18
          to label %bb.bb unwind label %bb.az     ; 3 uses

bb.az:                                            ; preds = %bb.ay
  %i.bda = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bdb = load ptr, ptr %192, align 8, !tbaa !225 ; 2 uses
  %.not.i.i4.i1400 = icmp eq ptr %i.bdb, null
  br i1 %.not.i.i4.i1400, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit1802, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.bdc = getelementptr inbounds nuw i8, ptr %192, i64 16
  %i.bdd = load ptr, ptr %i.bdc, align 8, !tbaa !226
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit1802.sink.split

bb.bb:                                            ; preds = %bb.ay
  store ptr %i.bcz, ptr %192, align 8, !tbaa !225
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bcz, i64 132 ; 2 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %192, i64 16 ; 3 uses
  store ptr %i.bde, ptr %i.bdf, align 8, !tbaa !226
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %i.bcz, ptr noundef nonnull align 4 dereferenceable(132) @constinit.12, i64 132, i1 false)
  %i.bdg = getelementptr inbounds nuw i8, ptr %192, i64 8
  store ptr %i.bde, ptr %i.bdg, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %193) #16
  %i.bdh = invoke noundef i32 @_ZNK5nblib8Topology12numParticlesEv(ptr noundef nonnull align 8 dereferenceable(1104) %190)
          to label %bb.bc unwind label %bb.do     ; 3 uses

bb.bc:                                            ; preds = %bb.bb
  %i.bdi = sext i32 %i.bdh to i64                 ; 2 uses
  %i.bdj = icmp slt i32 %i.bdh, 0
  br i1 %i.bdj, label %bb.bd, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #19
          to label %.noexc1406 unwind label %bb.dp

.noexc1406:                                       ; preds = %bb.bd
  unreachable

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.bc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %193, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i32 %i.bdh, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.thread.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.bdk = getelementptr inbounds nuw i8, ptr %193, i64 8
  br label %.loopexit

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.bdl = mul nuw nsw i64 %i.bdi, 12             ; 3 uses
  %i.bdm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bdl) #18
          to label %.noexc1407 unwind label %bb.dp ; 5 uses

.noexc1407:                                       ; preds = %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.i
  store ptr %i.bdm, ptr %193, align 8, !tbaa !225
  %i.bdn = getelementptr inbounds nuw i8, ptr %193, i64 8 ; 2 uses
  store ptr %i.bdm, ptr %i.bdn, align 8, !tbaa !227
  %i.bdo = getelementptr inbounds nuw [12 x i8], ptr %i.bdm, i64 %i.bdi
  %i.bdp = getelementptr inbounds nuw i8, ptr %193, i64 16
  store ptr %i.bdo, ptr %i.bdp, align 8, !tbaa !226
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bdm, i8 0, i64 %i.bdl, i1 false)
  %scevgep = getelementptr i8, ptr %i.bdm, i64 %i.bdl
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc1407, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.bdq = phi ptr [ %i.bdk, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.bdn, %.noexc1407 ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep, %.noexc1407 ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.bdq, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %194) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %195, ptr noundef nonnull align 8 dereferenceable(36) %187, i64 36, i1 false), !tbaa.struct !228
  invoke void @_ZN5nblib8TopologyC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1104) %196, ptr noundef nonnull align 8 dereferenceable(1104) %190)
          to label %bb.be unwind label %bb.dq

bb.be:                                            ; preds = %.loopexit
  invoke void @_ZN5nblib15SimulationStateC1ERKSt6vectorIN3gmx11BasicVectorIfEESaIS4_EES8_S8_NS_3BoxENS_8TopologyE(ptr noundef nonnull align 8 dereferenceable(16) %194, ptr noundef nonnull align 8 dereferenceable(24) %191, ptr noundef nonnull align 8 dereferenceable(24) %192, ptr noundef nonnull align 8 dereferenceable(24) %193, ptr noundef nonnull byval(%"class.nblib::Box") align 8 %195, ptr noundef nonnull align 8 %196)
          to label %bb.bf unwind label %bb.dr

bb.bf:                                            ; preds = %bb.be
  call void @_ZN5nblib8TopologyD2Ev(ptr noundef nonnull align 8 dead_on_return(1100) dereferenceable(1104) %196) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #16
  %i.bdr = invoke noundef nonnull align 8 dereferenceable(1104) ptr @_ZNK5nblib15SimulationState8topologyEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.bg unwind label %bb.ds

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN5nblib26setupGmxForceCalculatorCpuERKNS_8TopologyERKNS_15NBKernelOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %197, ptr noundef nonnull align 8 dereferenceable(1104) %i.bdr, ptr noundef nonnull align 4 dereferenceable(32) %188)
          to label %bb.bh unwind label %bb.ds

bb.bh:                                            ; preds = %bb.bg
  %i.bds = load ptr, ptr %197, align 8, !tbaa !27
  %i.bdt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5nblib15SimulationState11coordinatesEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.bi unwind label %bb.dt     ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.bdu = load ptr, ptr %i.bdt, align 8, !tbaa !225 ; 3 uses
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdt, i64 8
  %i.bdw = load ptr, ptr %i.bdv, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %198) #16
  invoke void @_ZNK5nblib15SimulationState3boxEv(ptr dead_on_unwind nonnull writable sret(%"class.nblib::Box") align 4 %198, ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.bj unwind label %bb.du

bb.bj:                                            ; preds = %bb.bi
  %i.bdx = ptrtoint ptr %i.bdw to i64
  %i.bdy = ptrtoint ptr %i.bdu to i64
  %i.bdz = sub i64 %i.bdx, %i.bdy
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdu, i64 %i.bdz
  invoke void @_ZN5nblib23GmxNBForceCalculatorCpu14updatePairlistEN3gmx8ArrayRefINS1_11BasicVectorIfEEEERKNS_3BoxE(ptr noundef nonnull align 8 dereferenceable(8) %i.bds, ptr %i.bdu, ptr %i.bea, ptr noundef nonnull align 4 dereferenceable(36) %198)
          to label %bb.bk unwind label %bb.du

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %198) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %200) #16
  invoke void @_ZNK5nblib8Topology18getInteractionDataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.279") align 8 %200, ptr noundef nonnull align 8 dereferenceable(1104) %190)
          to label %bb.bl unwind label %bb.dv

bb.bl:                                            ; preds = %bb.bk
  %i.beb = invoke noundef i32 @_ZNK5nblib8Topology12numParticlesEv(ptr noundef nonnull align 8 dereferenceable(1104) %190)
          to label %bb.bm unwind label %bb.dw

bb.bm:                                            ; preds = %bb.bl
  %i.bec = sext i32 %i.beb to i64
  invoke void @_ZN5nblib21ListedForceCalculatorC1ERKSt5tupleIJNS_14ListedTypeDataINS_23TwoParameterInteractionINS_25HarmonicBondTypeParameterEEEEENS2_INS_11G96BondTypeEEENS2_INS_13CubicBondTypeEEENS2_INS_13MorseBondTypeEEENS2_INS3_INS_21FENEBondTypeParameterEEEEENS2_INS3_INS_38HalfAttractiveQuarticBondTypeParameterEEEEENS2_INS_10PairLJTypeEEENS2_INS_20AngleInteractionTypeINS_22HarmonicAngleParameterEEEEENS2_INS_16CosineParamAngleINS_17G96AngleParameterEEEEENS2_INS_12QuarticAngleEEENS2_INSP_INS_24RestrictedAngleParameterEEEEENS2_INS_13CrossBondBondEEENS2_INS_14CrossBondAngleEEENS2_INS3_INS_20LinearAngleParameterEEEEENS2_INS_14ProperDihedralEEENS2_INS_16ImproperDihedralEEENS2_INS_24RyckaertBellemanDihedralEEENS2_INS_14Default5CenterEEEEEmiRKNS_3BoxE(ptr noundef nonnull align 8 dereferenceable(160) %199, ptr noundef nonnull align 8 dereferenceable(864) %200, i64 noundef %i.bec, i32 noundef 4, ptr noundef nonnull align 4 dereferenceable(36) %187)
          to label %bb.bn unwind label %bb.dw

bb.bn:                                            ; preds = %bb.bm
  call void @_ZNSt11_Tuple_implILm0EJN5nblib14ListedTypeDataINS0_23TwoParameterInteractionINS0_25HarmonicBondTypeParameterEEEEENS1_INS0_11G96BondTypeEEENS1_INS0_13CubicBondTypeEEENS1_INS0_13MorseBondTypeEEENS1_INS2_INS0_21FENEBondTypeParameterEEEEENS1_INS2_INS0_38HalfAttractiveQuarticBondTypeParameterEEEEENS1_INS0_10PairLJTypeEEENS1_INS0_20AngleInteractionTypeINS0_22HarmonicAngleParameterEEEEENS1_INS0_16CosineParamAngleINS0_17G96AngleParameterEEEEENS1_INS0_12QuarticAngleEEENS1_INSO_INS0_24RestrictedAngleParameterEEEEENS1_INS0_13CrossBondBondEEENS1_INS0_14CrossBondAngleEEENS1_INS2_INS0_20LinearAngleParameterEEEEENS1_INS0_14ProperDihedralEEENS1_INS0_16ImproperDihedralEEENS1_INS0_24RyckaertBellemanDihedralEEENS1_INS0_14Default5CenterEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(864) dereferenceable(864) %200) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #16
  %i.bed = invoke noundef nonnull align 8 dereferenceable(1104) ptr @_ZNK5nblib15SimulationState8topologyEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.bo unwind label %bb.dy

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #16
  invoke void @_ZNK5nblib15SimulationState3boxEv(ptr dead_on_unwind nonnull writable sret(%"class.nblib::Box") align 4 %202, ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.bp unwind label %bb.dz

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN5nblib8LeapFrogC1ERKNS_8TopologyERKNS_3BoxE(ptr noundef nonnull align 8 dereferenceable(64) %201, ptr noundef nonnull align 8 dereferenceable(1104) %i.bed, ptr noundef nonnull align 4 dereferenceable(36) %202)
          to label %bb.bq unwind label %bb.dz

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #16
  %i.bee = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5nblib15SimulationState11coordinatesEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.br unwind label %bb.ea

bb.br:                                            ; preds = %bb.bq
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !225
  %i.beg = load float, ptr %i.bef, align 4, !tbaa !25
  %i.beh = fpext float %i.beg to double
  %i.bei = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5nblib15SimulationState11coordinatesEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.bs unwind label %bb.ea

bb.bs:                                            ; preds = %bb.br
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !225
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 4
  %i.bel = load float, ptr %i.bek, align 4, !tbaa !25
  %i.bem = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5nblib15SimulationState11coordinatesEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.bt unwind label %bb.ea

bb.bt:                                            ; preds = %bb.bs
  %i.ben = fpext float %i.bel to double
  %i.beo = load ptr, ptr %i.bem, align 8, !tbaa !225
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 8
  %i.beq = load float, ptr %i.bep, align 4, !tbaa !25
  %i.ber = fpext float %i.beq to double
  %i.bes = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.beh, double noundef %i.ben, double noundef %i.ber) ; 0 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %205, i64 8 ; 2 uses
  %i.beu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5nblib15SimulationState6forcesEv(ptr noundef nonnull align 8 dereferenceable(16) %194)
          to label %bb.eb unwind label %bb.fb     ; 2 uses

bb.bu:                                            ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEEC2ES6_.exit
  %i.bev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bew = load ptr, ptr %1, align 8, !tbaa !23   ; 2 uses
  %i.bex = icmp eq ptr %i.bew, %i.d
  br i1 %i.bex, label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1410, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1408: ; preds = %bb.bu
  %i.bey = load i64, ptr %i.d, align 8, !tbaa !15
  %i.bez = add i64 %i.bey, 1
  call void @_ZdlPvm(ptr noundef %i.bew, i64 noundef %i.bez) #17
  br label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1410

_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1410: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1408
  %i.bfa = load ptr, ptr %2, align 8, !tbaa !23   ; 2 uses
  %i.bfb = icmp eq ptr %i.bfa, %i.a
  br i1 %i.bfb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1411: ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1410
  %i.bfc = load i64, ptr %i.a, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1413.sink.split

bb.bv:                                            ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEEC2ES6_.exit348
  %i.bfd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfe = load ptr, ptr %4, align 8, !tbaa !23   ; 2 uses
  %i.bff = icmp eq ptr %i.bfe, %i.q
  br i1 %i.bff, label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1414

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1414: ; preds = %bb.bv
  %i.bfg = load i64, ptr %i.q, align 8, !tbaa !15
  %i.bfh = add i64 %i.bfg, 1
  call void @_ZdlPvm(ptr noundef %i.bfe, i64 noundef %i.bfh) #17
  br label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1416

_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1416: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1414
  %i.bfi = load ptr, ptr %5, align 8, !tbaa !23   ; 2 uses
  %i.bfj = icmp eq ptr %i.bfi, %i.n
  br i1 %i.bfj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1417

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1417: ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1416
  %i.bfk = load i64, ptr %i.n, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1419.sink.split

bb.bw:                                            ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEEC2ES6_.exit360
  %i.bfl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfm = load ptr, ptr %7, align 8, !tbaa !23   ; 2 uses
  %i.bfn = icmp eq ptr %i.bfm, %i.ad
  br i1 %i.bfn, label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1420

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1420: ; preds = %bb.bw
  %i.bfo = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.bfp = add i64 %i.bfo, 1
  call void @_ZdlPvm(ptr noundef %i.bfm, i64 noundef %i.bfp) #17
  br label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1422

_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1422: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1420
  %i.bfq = load ptr, ptr %8, align 8, !tbaa !23   ; 2 uses
  %i.bfr = icmp eq ptr %i.bfq, %i.aa
  br i1 %i.bfr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1423

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1423: ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1422
  %i.bfs = load i64, ptr %i.aa, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1425.sink.split

bb.bx:                                            ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEEC2ES6_.exit372
  %i.bft = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bfu = load ptr, ptr %10, align 8, !tbaa !23  ; 2 uses
  %i.bfv = icmp eq ptr %i.bfu, %i.aq
  br i1 %i.bfv, label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1428, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1426

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1426: ; preds = %bb.bx
  %i.bfw = load i64, ptr %i.aq, align 8, !tbaa !15
  %i.bfx = add i64 %i.bfw, 1
  call void @_ZdlPvm(ptr noundef %i.bfu, i64 noundef %i.bfx) #17
  br label %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1428

_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1428: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1426
  %i.bfy = load ptr, ptr %11, align 8, !tbaa !23  ; 2 uses
  %i.bfz = icmp eq ptr %i.bfy, %i.an
  br i1 %i.bfz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1429: ; preds = %_ZN5nblib10StrongTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_25ParticleTypeNameParameterEED2Ev.exit1428
  %i.bga = load i64, ptr %i.an, align 8, !tbaa !15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1431.sink.split
end_hunk_0

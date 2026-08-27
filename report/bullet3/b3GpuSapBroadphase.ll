Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuSapBroadphase?download=true
inline.NumInlined: 649
inline.NumDeleted: 180
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN18b3GpuSapBroadphase44calculateOverlappingPairsHostIncremental3SapEv:bb.a
          to label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i423 unwind label %bb.cz

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i423: ; preds = %bb.cx, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i419
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 24), align 8, !tbaa !153
  store ptr %.0.i12.i.i420, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 16), align 8, !tbaa !147
  store i32 %.0.i.i421, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 8), align 8, !tbaa !152
  %.pre.i424 = load i32, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 4), align 4, !tbaa !151
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i423, %bb.cu, %bb.ct
  %i.aaq = phi i32 [ %.pre.i424, %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i423 ], [ %i.zr, %bb.cu ], [ %i.zr, %bb.ct ]
  %i.aar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 16), align 8, !tbaa !147
  %i.aas = sext i32 %i.aaq to i64
  %i.aat = getelementptr inbounds [16 x i8], ptr %i.aar, i64 %i.aas ; 2 uses
  store i32 %spec.select690, ptr %i.aat, align 16
  %.sroa.6657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  store i32 %spec.select691, ptr %.sroa.6657.0..sroa_idx, align 4
  %i.aau = load i32, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 4), align 4, !tbaa !151
  %i.aav = add nsw i32 %i.aau, 1
  store i32 %i.aav, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 4), align 4, !tbaa !151
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx, %.noexc432, %.split7.i.i430, %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i417
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.da:                                            ; preds = %bb.cs, %bb.cy, %bb.ck, %bb.cq, %bb.bs
  %indvars.iv.next797 = add nsw i64 %indvars.iv796, %i.uw ; 2 uses
  %i.aax = trunc nsw i64 %indvars.iv.next797 to i32
  %.not304 = icmp eq i32 %i.uh, %i.aax
  br i1 %.not304, label %.loopexit718, label %bb.bs, !llvm.loop !171

.loopexit718:                                     ; preds = %bb.da, %bb.bq
  br i1 %.not305.a, label %.loopexit717, label %bb.db

bb.db:                                            ; preds = %.loopexit718
  %i.aay = getelementptr inbounds nuw [32 x i8], ptr %i.ux, i64 %indvars.iv808
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 104
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.ek
  %indvars.iv805 = phi i64 [ %i.vb, %bb.db ], [ %indvars.iv.next806, %bb.ek ] ; 2 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !42
  %i.abb = getelementptr inbounds [8 x i8], ptr %i.aba, i64 %indvars.iv805
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !127
  %i.abe = sdiv i32 %i.abd, 2                     ; 6 uses
  %i.abf = zext i32 %i.abe to i64
  %.not307.a = icmp eq i64 %indvars.iv815, %i.abf
  br i1 %.not307.a, label %bb.ek, label %.preheader714.a

.preheader714.a:                                  ; preds = %bb.dc
  %i.abg = load i32, ptr %i.cn, align 8, !tbaa !68 ; 2 uses
  %i.abh = sext i32 %i.abg to i64
  %invariant.gep742 = getelementptr [32 x i8], ptr %i.iy, i64 %i.abh ; 3 uses
  %i.abi = sext i32 %i.abe to i64                 ; 6 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %invariant.gep742, i64 16
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !49 ; 2 uses
  %i.abl = getelementptr inbounds nuw [8 x i8], ptr %i.abk, i64 %indvars.iv815 ; 2 uses
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !127
  %i.abn = getelementptr inbounds [8 x i8], ptr %i.abk, i64 %i.abi ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !127
  %i.abq = icmp ugt i32 %i.abm, %i.abp
  br i1 %i.abq, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.preheader714.a
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abl, i64 4
  %i.abs = load i32, ptr %i.abr, align 4, !tbaa !127
  %i.abt = load i32, ptr %i.abn, align 4, !tbaa !127
  %i.abu = icmp ult i32 %i.abs, %i.abt
  br i1 %i.abu, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd, %.preheader714.a
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %bb.de
  %.1222 = phi i1 [ false, %bb.de ], [ true, %bb.dd ]
  %i.abv = getelementptr i8, ptr %invariant.gep742, i64 80
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !49 ; 2 uses
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %i.abw, i64 %indvars.iv815 ; 2 uses
  %i.aby = load i32, ptr %i.abx, align 4, !tbaa !127
  %i.abz = getelementptr inbounds [8 x i8], ptr %i.abw, i64 %i.abi ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !127
  %i.acc = icmp ugt i32 %i.aby, %i.acb
  br i1 %i.acc, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abx, i64 4
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !127
  %i.acf = load i32, ptr %i.abz, align 4, !tbaa !127
  %i.acg = icmp ult i32 %i.ace, %i.acf
  br i1 %i.acg, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg, %bb.df
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.1222.1 = phi i1 [ false, %bb.dh ], [ %.1222, %bb.dg ]
  %i.ach = getelementptr i8, ptr %invariant.gep742, i64 144
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !49 ; 2 uses
  %i.acj = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %indvars.iv815 ; 2 uses
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !127
  %i.acl = getelementptr inbounds [8 x i8], ptr %i.aci, i64 %i.abi ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 4
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !127
  %i.aco = icmp ugt i32 %i.ack, %i.acn
  br i1 %i.aco, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acj, i64 4
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !127
  %i.acr = load i32, ptr %i.acl, align 4, !tbaa !127
  %i.acs = icmp ult i32 %i.acq, %i.acr
  br i1 %i.acs, label %bb.dk, label %.preheader713

bb.dk:                                            ; preds = %bb.dj, %bb.di
  br label %.preheader713

.preheader713:                                    ; preds = %bb.dk, %bb.dj
  %.1222.2 = phi i1 [ false, %bb.dk ], [ %.1222.1, %bb.dj ]
  %i.act = sub nsw i32 1, %i.abg
  %i.acu = sext i32 %i.act to i64
  %invariant.gep746 = getelementptr [32 x i8], ptr %i.iy, i64 %i.acu ; 3 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %invariant.gep746, i64 16
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !49 ; 2 uses
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv815 ; 2 uses
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !127
  %i.acz = getelementptr inbounds [8 x i8], ptr %i.acw, i64 %i.abi ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 4
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !127
  %i.adc = icmp ugt i32 %i.acy, %i.adb
  br i1 %i.adc, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %.preheader713
  %i.add = getelementptr inbounds nuw i8, ptr %i.acx, i64 4
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !127
  %i.adf = load i32, ptr %i.acz, align 4, !tbaa !127
  %i.adg = icmp ult i32 %i.ade, %i.adf
  br i1 %i.adg, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl, %.preheader713
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  %.1219 = phi i1 [ false, %bb.dm ], [ true, %bb.dl ]
  %i.adh = getelementptr i8, ptr %invariant.gep746, i64 80
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !49 ; 2 uses
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %indvars.iv815 ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !127
  %i.adl = getelementptr inbounds [8 x i8], ptr %i.adi, i64 %i.abi ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 4
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !127
  %i.ado = icmp ugt i32 %i.adk, %i.adn
  br i1 %i.ado, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adj, i64 4
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !127
  %i.adr = load i32, ptr %i.adl, align 4, !tbaa !127
  %i.ads = icmp ult i32 %i.adq, %i.adr
  br i1 %i.ads, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do, %bb.dn
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.1219.1 = phi i1 [ false, %bb.dp ], [ %.1219, %bb.do ]
  %i.adt = getelementptr i8, ptr %invariant.gep746, i64 144
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !49 ; 2 uses
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %indvars.iv815 ; 2 uses
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !127
  %i.adx = getelementptr inbounds [8 x i8], ptr %i.adu, i64 %i.abi ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 4
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !127
  %i.aea = icmp ugt i32 %i.adw, %i.adz
  br i1 %i.aea, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adv, i64 4
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !127
  %i.aed = load i32, ptr %i.adx, align 4, !tbaa !127
  %i.aee = icmp ult i32 %i.aec, %i.aed
  br i1 %i.aee, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.1219.2 = phi i1 [ false, %bb.ds ], [ %.1219.1, %bb.dr ] ; 2 uses
  %.not5 = xor i1 %.1222.2, true                  ; 2 uses
  br i1 %i.uz, label %bb.du, label %bb.ec

bb.du:                                            ; preds = %bb.dt
  %or.cond7 = or i1 %.1219.2, %.not5
  br i1 %or.cond7, label %bb.ek, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %spec.select694 = call i32 @llvm.smax.i32(i32 %i.tw, i32 %i.abe)
  %spec.select695 = call i32 @llvm.smin.i32(i32 %i.tw, i32 %i.abe)
  %i.aef = load i32, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 4), align 4, !tbaa !151 ; 6 uses
  %i.aeg = load i32, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 8), align 8, !tbaa !152
  %i.aeh = icmp eq i32 %i.aef, %i.aeg
  br i1 %i.aeh, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %bb.dv
  %.not.i.i436 = icmp eq i32 %i.aef, 0
  %i.aei = shl nsw i32 %i.aef, 1
  %i.aej = select i1 %.not.i.i436, i32 1, i32 %i.aei ; 6 uses
  %i.aek = icmp slt i32 %i.aef, %i.aej
  br i1 %i.aek, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %.not.i.i.i437 = icmp eq i32 %i.aej, 0
  br i1 %.not.i.i.i437, label %.split7.i.i451, label %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i438

_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i438: ; preds = %bb.dx
  %i.ael = sext i32 %i.aej to i64
  %i.aem = shl nsw i64 %i.ael, 4
  %i.aen = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.aem, i32 noundef 16)
          to label %.noexc452 unwind label %bb.eb ; 7 uses

.noexc452:                                        ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i438
  %i.aeo = icmp eq ptr %i.aen, null
  br i1 %i.aeo, label %.split7.i.i451, label %.split.i.i439

.split.i.i439:                                    ; preds = %.noexc452
  %i.aep = load i32, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 4), align 4, !tbaa !151 ; 4 uses
  %i.aeq = icmp sgt i32 %i.aep, 0
  br i1 %i.aeq, label %.lr.ph.i.i.i446, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440

.lr.ph.i.i.i446:                                  ; preds = %.split.i.i439
  %wide.trip.count.i.i.i447 = zext nneg i32 %i.aep to i64 ; 2 uses
  %xtraiter1056 = and i64 %wide.trip.count.i.i.i447, 1
  %i.aer = icmp eq i32 %i.aep, 1
  br i1 %i.aer, label %.epil.preheader1055, label %.lr.ph.i.i.i446.new

.lr.ph.i.i.i446.new:                              ; preds = %.lr.ph.i.i.i446
  %unroll_iter1060 = and i64 %wide.trip.count.i.i.i447, 2147483646
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %.lr.ph.i.i.i446.new
  %indvars.iv.i.i.i448 = phi i64 [ 0, %.lr.ph.i.i.i446.new ], [ %indvars.iv.next.i.i.i449.1, %bb.dy ] ; 4 uses
  %niter1061 = phi i64 [ 0, %.lr.ph.i.i.i446.new ], [ %niter1061.next.1, %bb.dy ]
  %i.aes = getelementptr inbounds nuw [16 x i8], ptr %i.aen, i64 %indvars.iv.i.i.i448
  %i.aet = load ptr, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 16), align 8, !tbaa !147
  %i.aeu = getelementptr inbounds nuw [16 x i8], ptr %i.aet, i64 %indvars.iv.i.i.i448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aes, ptr noundef nonnull align 16 dereferenceable(16) %i.aeu, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i449 = or disjoint i64 %indvars.iv.i.i.i448, 1 ; 2 uses
  %i.aev = getelementptr inbounds nuw [16 x i8], ptr %i.aen, i64 %indvars.iv.next.i.i.i449
  %i.aew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 16), align 8, !tbaa !147
  %i.aex = getelementptr inbounds nuw [16 x i8], ptr %i.aew, i64 %indvars.iv.next.i.i.i449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aev, ptr noundef nonnull align 16 dereferenceable(16) %i.aex, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i449.1 = add nuw nsw i64 %indvars.iv.i.i.i448, 2 ; 2 uses
  %niter1061.next.1 = add i64 %niter1061, 2       ; 2 uses
  %niter1061.ncmp.1 = icmp eq i64 %niter1061.next.1, %unroll_iter1060
  br i1 %niter1061.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440.loopexit.unr-lcssa, label %bb.dy, !llvm.loop !170

.split7.i.i451:                                   ; preds = %.noexc452, %bb.dx
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.47, i32 noundef 301)
          to label %.noexc453 unwind label %bb.eb

.noexc453:                                        ; preds = %.split7.i.i451
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.48)
          to label %.noexc454 unwind label %bb.eb

.noexc454:                                        ; preds = %.noexc453
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 4), align 4, !tbaa !151
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440.loopexit.unr-lcssa: ; preds = %bb.dy
  %lcmp.mod1058.not = icmp eq i64 %xtraiter1056, 0
  br i1 %lcmp.mod1058.not, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440, label %.epil.preheader1055

.epil.preheader1055:                              ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440.loopexit.unr-lcssa, %.lr.ph.i.i.i446
  %indvars.iv.i.i.i448.epil.init = phi i64 [ 0, %.lr.ph.i.i.i446 ], [ %indvars.iv.next.i.i.i449.1, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1059 = trunc i32 %i.aep to i1
  call void @llvm.assume(i1 %lcmp.mod1059)
  %i.aey = getelementptr inbounds nuw [16 x i8], ptr %i.aen, i64 %indvars.iv.i.i.i448.epil.init
  %i.aez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 16), align 8, !tbaa !147
  %i.afa = getelementptr inbounds nuw [16 x i8], ptr %i.aez, i64 %indvars.iv.i.i.i448.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aey, ptr noundef nonnull align 16 dereferenceable(16) %i.afa, i64 16, i1 false), !tbaa.struct !169
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440: ; preds = %.epil.preheader1055, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440.loopexit.unr-lcssa, %.noexc454, %.split.i.i439
  %.0.i12.i.i441 = phi ptr [ null, %.noexc454 ], [ %i.aen, %.split.i.i439 ], [ %i.aen, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440.loopexit.unr-lcssa ], [ %i.aen, %.epil.preheader1055 ]
  %.0.i.i442 = phi i32 [ 0, %.noexc454 ], [ %i.aej, %.split.i.i439 ], [ %i.aej, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440.loopexit.unr-lcssa ], [ %i.aej, %.epil.preheader1055 ]
  %i.afb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 16), align 8, !tbaa !147 ; 2 uses
  %.not.i10.i.i443 = icmp ne ptr %i.afb, null
  %i.afc = load i8, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 24), align 8, !range !94
  %i.afd = trunc nuw i8 %i.afc to i1
  %or.cond697 = select i1 %.not.i10.i.i443, i1 %i.afd, i1 false
  br i1 %or.cond697, label %bb.dz, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i444

bb.dz:                                            ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.afb)
          to label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i444 unwind label %bb.eb

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i444: ; preds = %bb.dz, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i440
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 24), align 8, !tbaa !153
  store ptr %.0.i12.i.i441, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 16), align 8, !tbaa !147
  store i32 %.0.i.i442, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 8), align 8, !tbaa !152
  %.pre.i445 = load i32, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 4), align 4, !tbaa !151
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i444, %bb.dw, %bb.dv
  %i.afe = phi i32 [ %.pre.i445, %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i444 ], [ %i.aef, %bb.dw ], [ %i.aef, %bb.dv ]
  %i.aff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 16), align 8, !tbaa !147
  %i.afg = sext i32 %i.afe to i64
  %i.afh = getelementptr inbounds [16 x i8], ptr %i.aff, i64 %i.afg ; 2 uses
  store i32 %spec.select695, ptr %i.afh, align 16
  %.sroa.6654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.afh, i64 4
  store i32 %spec.select694, ptr %.sroa.6654.0..sroa_idx, align 4
  %i.afi = load i32, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 4), align 4, !tbaa !151
  %i.afj = add nsw i32 %i.afi, 1
  store i32 %i.afj, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 4), align 4, !tbaa !151
  br label %bb.ek

bb.eb:                                            ; preds = %bb.dz, %.noexc453, %.split7.i.i451, %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i438
  %i.afk = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ec:                                            ; preds = %bb.dt
  %or.cond10 = and i1 %.1219.2, %.not5
  br i1 %or.cond10, label %bb.ed, label %bb.ek

bb.ed:                                            ; preds = %bb.ec
  %spec.select698 = call i32 @llvm.smax.i32(i32 %i.tv, i32 %i.abe)
  %spec.select699 = call i32 @llvm.smin.i32(i32 %i.tv, i32 %i.abe)
  %i.afl = load i32, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 4), align 4, !tbaa !151 ; 6 uses
  %i.afm = load i32, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 8), align 8, !tbaa !152
  %i.afn = icmp eq i32 %i.afl, %i.afm
  br i1 %i.afn, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %bb.ed
  %.not.i.i457 = icmp eq i32 %i.afl, 0
  %i.afo = shl nsw i32 %i.afl, 1
  %i.afp = select i1 %.not.i.i457, i32 1, i32 %i.afo ; 6 uses
  %i.afq = icmp slt i32 %i.afl, %i.afp
  br i1 %i.afq, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %.not.i.i.i458 = icmp eq i32 %i.afp, 0
  br i1 %.not.i.i.i458, label %.split7.i.i472, label %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i459

_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i459: ; preds = %bb.ef
  %i.afr = sext i32 %i.afp to i64
  %i.afs = shl nsw i64 %i.afr, 4
  %i.aft = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.afs, i32 noundef 16)
          to label %.noexc473 unwind label %bb.ej ; 7 uses

.noexc473:                                        ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i459
  %i.afu = icmp eq ptr %i.aft, null
  br i1 %i.afu, label %.split7.i.i472, label %.split.i.i460

.split.i.i460:                                    ; preds = %.noexc473
  %i.afv = load i32, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 4), align 4, !tbaa !151 ; 4 uses
  %i.afw = icmp sgt i32 %i.afv, 0
  br i1 %i.afw, label %.lr.ph.i.i.i467, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461

.lr.ph.i.i.i467:                                  ; preds = %.split.i.i460
  %wide.trip.count.i.i.i468 = zext nneg i32 %i.afv to i64 ; 2 uses
  %xtraiter1049 = and i64 %wide.trip.count.i.i.i468, 1
  %i.afx = icmp eq i32 %i.afv, 1
  br i1 %i.afx, label %.epil.preheader1048, label %.lr.ph.i.i.i467.new

.lr.ph.i.i.i467.new:                              ; preds = %.lr.ph.i.i.i467
  %unroll_iter1053 = and i64 %wide.trip.count.i.i.i468, 2147483646
  br label %bb.eg

bb.eg:                                            ; preds = %bb.eg, %.lr.ph.i.i.i467.new
  %indvars.iv.i.i.i469 = phi i64 [ 0, %.lr.ph.i.i.i467.new ], [ %indvars.iv.next.i.i.i470.1, %bb.eg ] ; 4 uses
  %niter1054 = phi i64 [ 0, %.lr.ph.i.i.i467.new ], [ %niter1054.next.1, %bb.eg ]
  %i.afy = getelementptr inbounds nuw [16 x i8], ptr %i.aft, i64 %indvars.iv.i.i.i469
  %i.afz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 16), align 8, !tbaa !147
  %i.aga = getelementptr inbounds nuw [16 x i8], ptr %i.afz, i64 %indvars.iv.i.i.i469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.afy, ptr noundef nonnull align 16 dereferenceable(16) %i.aga, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i470 = or disjoint i64 %indvars.iv.i.i.i469, 1 ; 2 uses
  %i.agb = getelementptr inbounds nuw [16 x i8], ptr %i.aft, i64 %indvars.iv.next.i.i.i470
  %i.agc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 16), align 8, !tbaa !147
  %i.agd = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %indvars.iv.next.i.i.i470
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.agb, ptr noundef nonnull align 16 dereferenceable(16) %i.agd, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i470.1 = add nuw nsw i64 %indvars.iv.i.i.i469, 2 ; 2 uses
  %niter1054.next.1 = add i64 %niter1054, 2       ; 2 uses
  %niter1054.ncmp.1 = icmp eq i64 %niter1054.next.1, %unroll_iter1053
  br i1 %niter1054.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461.loopexit.unr-lcssa, label %bb.eg, !llvm.loop !170

.split7.i.i472:                                   ; preds = %.noexc473, %bb.ef
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.47, i32 noundef 301)
          to label %.noexc474 unwind label %bb.ej

.noexc474:                                        ; preds = %.split7.i.i472
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.48)
          to label %.noexc475 unwind label %bb.ej

.noexc475:                                        ; preds = %.noexc474
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 4), align 4, !tbaa !151
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461.loopexit.unr-lcssa: ; preds = %bb.eg
  %lcmp.mod1051.not = icmp eq i64 %xtraiter1049, 0
  br i1 %lcmp.mod1051.not, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461, label %.epil.preheader1048

.epil.preheader1048:                              ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461.loopexit.unr-lcssa, %.lr.ph.i.i.i467
  %indvars.iv.i.i.i469.epil.init = phi i64 [ 0, %.lr.ph.i.i.i467 ], [ %indvars.iv.next.i.i.i470.1, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1052 = trunc i32 %i.afv to i1
  call void @llvm.assume(i1 %lcmp.mod1052)
  %i.age = getelementptr inbounds nuw [16 x i8], ptr %i.aft, i64 %indvars.iv.i.i.i469.epil.init
  %i.agf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 16), align 8, !tbaa !147
  %i.agg = getelementptr inbounds nuw [16 x i8], ptr %i.agf, i64 %indvars.iv.i.i.i469.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.age, ptr noundef nonnull align 16 dereferenceable(16) %i.agg, i64 16, i1 false), !tbaa.struct !169
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461: ; preds = %.epil.preheader1048, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461.loopexit.unr-lcssa, %.noexc475, %.split.i.i460
  %.0.i12.i.i462 = phi ptr [ null, %.noexc475 ], [ %i.aft, %.split.i.i460 ], [ %i.aft, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461.loopexit.unr-lcssa ], [ %i.aft, %.epil.preheader1048 ]
  %.0.i.i463 = phi i32 [ 0, %.noexc475 ], [ %i.afp, %.split.i.i460 ], [ %i.afp, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461.loopexit.unr-lcssa ], [ %i.afp, %.epil.preheader1048 ]
  %i.agh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 16), align 8, !tbaa !147 ; 2 uses
  %.not.i10.i.i464 = icmp ne ptr %i.agh, null
  %i.agi = load i8, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 24), align 8, !range !94
  %i.agj = trunc nuw i8 %i.agi to i1
  %or.cond701 = select i1 %.not.i10.i.i464, i1 %i.agj, i1 false
  br i1 %or.cond701, label %bb.eh, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i465

bb.eh:                                            ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.agh)
          to label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i465 unwind label %bb.ej

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i465: ; preds = %bb.eh, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i461
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 24), align 8, !tbaa !153
  store ptr %.0.i12.i.i462, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 16), align 8, !tbaa !147
  store i32 %.0.i.i463, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 8), align 8, !tbaa !152
  %.pre.i466 = load i32, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 4), align 4, !tbaa !151
  br label %bb.ei

bb.ei:                                            ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i465, %bb.ee, %bb.ed
  %i.agk = phi i32 [ %.pre.i466, %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i465 ], [ %i.afl, %bb.ee ], [ %i.afl, %bb.ed ]
  %i.agl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 16), align 8, !tbaa !147
  %i.agm = sext i32 %i.agk to i64
  %i.agn = getelementptr inbounds [16 x i8], ptr %i.agl, i64 %i.agm ; 2 uses
  store i32 %spec.select699, ptr %i.agn, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.agn, i64 4
  store i32 %spec.select698, ptr %.sroa.6.0..sroa_idx, align 4
  %i.ago = load i32, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 4), align 4, !tbaa !151
  %i.agp = add nsw i32 %i.ago, 1
  store i32 %i.agp, ptr getelementptr inbounds nuw (i8, ptr @removedHostPairs, i64 4), align 4, !tbaa !151
  br label %bb.ek

bb.ej:                                            ; preds = %bb.eh, %.noexc474, %.split7.i.i472, %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i459
  %i.agq = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ek:                                            ; preds = %bb.ea, %bb.du, %bb.ei, %bb.ec, %bb.dc
  %indvars.iv.next806 = add nsw i64 %indvars.iv805, %i.uy ; 2 uses
  %i.agr = trunc nsw i64 %indvars.iv.next806 to i32
  %.not306 = icmp eq i32 %i.uj, %i.agr
  br i1 %.not306, label %.loopexit717, label %bb.dc, !llvm.loop !172

.loopexit717:                                     ; preds = %bb.ek, %.loopexit718
  br i1 %i.vc, label %bb.bq, label %bb.bp, !llvm.loop !173

bb.el:                                            ; preds = %bb.eb, %bb.ej, %bb.cr, %bb.cz
  %.pn316.pn = phi { ptr, i32 } [ %i.aaw, %bb.cz ], [ %i.zq, %bb.cr ], [ %i.afk, %bb.eb ], [ %i.agq, %bb.ej ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit366.a unwind label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ags = landingpad { ptr, i32 }
          catch ptr null
  %i.agt = extractvalue { ptr, i32 } %i.ags, 0
  call void @__clang_call_terminate(ptr %i.agt) #22
  unreachable

_ZN13b3ProfileZoneC2EPKc.exit398:                 ; preds = %_ZN13b3ProfileZoneD2Ev.exit396
  %i.agu = load i32, ptr %i.df, align 4, !tbaa !151 ; 2 uses
  %i.agv = icmp sgt i32 %i.agu, 1
  br i1 %i.agv, label %bb.en, label %_ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit

bb.en:                                            ; preds = %_ZN13b3ProfileZoneC2EPKc.exit398
  %i.agw = add nsw i32 %i.agu, -1
  invoke void @_ZN20b3AlignedObjectArrayI6b3Int4E17quickSortInternalIFbRKS0_S4_EEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull @_ZL9b3PairCmpRK6b3Int4S1_, i32 noundef 0, i32 noundef %i.agw)
          to label %_ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit unwind label %bb.ev

_ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit: ; preds = %_ZN13b3ProfileZoneC2EPKc.exit398, %bb.en
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit480 unwind label %bb.eo

bb.eo:                                            ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit
  %i.agx = landingpad { ptr, i32 }
          catch ptr null
  %i.agy = extractvalue { ptr, i32 } %i.agx, 0
  call void @__clang_call_terminate(ptr %i.agy) #22
  unreachable

_ZN13b3ProfileZoneD2Ev.exit480:                   ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.24)
          to label %_ZN13b3ProfileZoneC2EPKc.exit482 unwind label %bb.ex

_ZN13b3ProfileZoneC2EPKc.exit482:                 ; preds = %_ZN13b3ProfileZoneD2Ev.exit480
  %i.agz = load i32, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 4), align 4, !tbaa !151 ; 2 uses
  %i.aha = icmp sgt i32 %i.agz, 1
  br i1 %i.aha, label %bb.ep, label %_ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit484

bb.ep:                                            ; preds = %_ZN13b3ProfileZoneC2EPKc.exit482
  %i.ahb = add nsw i32 %i.agz, -1
  invoke void @_ZN20b3AlignedObjectArrayI6b3Int4E17quickSortInternalIFbRKS0_S4_EEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) @addedHostPairs, ptr noundef nonnull @_ZL9b3PairCmpRK6b3Int4S1_, i32 noundef 0, i32 noundef %i.ahb)
          to label %_ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit484 unwind label %bb.ey

_ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit484: ; preds = %_ZN13b3ProfileZoneC2EPKc.exit482, %bb.ep
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit485 unwind label %bb.eq

end_hunk_0
begin_hunk_1_@_ZN18b3GpuSapBroadphase44calculateOverlappingPairsHostIncremental3SapEv:bb.a
  %i.amk = phi i32 [ %.pre834, %._ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit521_crit_edge ], [ %i.alm, %._crit_edge761 ] ; 2 uses
  %i.aml = sub nsw i32 %i.amk, %.2216             ; 8 uses
  %i.amm = icmp slt i32 %.2216, 0
  br i1 %i.amm, label %bb.fp, label %.loopexit

bb.fp:                                            ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit521
  %i.amn = load i32, ptr %i.dg, align 8, !tbaa !152
  %i.amo = icmp slt i32 %i.amn, %i.aml
  br i1 %i.amo, label %bb.fq, label %.lr.ph.i522

bb.fq:                                            ; preds = %bb.fp
  %.not.i.i.i527 = icmp eq i32 %i.aml, 0
  br i1 %.not.i.i.i527, label %.split7.i.i540, label %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i528

_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i528: ; preds = %bb.fq
  %i.amp = sext i32 %i.aml to i64
  %i.amq = shl nsw i64 %i.amp, 4
  %i.amr = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.amq, i32 noundef 16)
          to label %.noexc541 unwind label %bb.fu ; 7 uses

.noexc541:                                        ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i528
  %i.ams = icmp eq ptr %i.amr, null
  br i1 %i.ams, label %.split7.i.i540, label %.split.i.i529

.split.i.i529:                                    ; preds = %.noexc541
  %i.amt = load i32, ptr %i.df, align 4, !tbaa !151 ; 4 uses
  %i.amu = icmp sgt i32 %i.amt, 0
  br i1 %i.amu, label %.lr.ph.i.i.i535, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530

.lr.ph.i.i.i535:                                  ; preds = %.split.i.i529
  %wide.trip.count.i.i.i536 = zext nneg i32 %i.amt to i64 ; 2 uses
  %xtraiter1072 = and i64 %wide.trip.count.i.i.i536, 1
  %i.amv = icmp eq i32 %i.amt, 1
  br i1 %i.amv, label %.epil.preheader1071, label %.lr.ph.i.i.i535.new

.lr.ph.i.i.i535.new:                              ; preds = %.lr.ph.i.i.i535
  %unroll_iter1076 = and i64 %wide.trip.count.i.i.i536, 2147483646
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fr, %.lr.ph.i.i.i535.new
  %indvars.iv.i.i.i537 = phi i64 [ 0, %.lr.ph.i.i.i535.new ], [ %indvars.iv.next.i.i.i538.1, %bb.fr ] ; 4 uses
  %niter1077 = phi i64 [ 0, %.lr.ph.i.i.i535.new ], [ %niter1077.next.1, %bb.fr ]
  %i.amw = getelementptr inbounds nuw [16 x i8], ptr %i.amr, i64 %indvars.iv.i.i.i537
  %i.amx = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.amy = getelementptr inbounds nuw [16 x i8], ptr %i.amx, i64 %indvars.iv.i.i.i537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.amw, ptr noundef nonnull align 16 dereferenceable(16) %i.amy, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i538 = or disjoint i64 %indvars.iv.i.i.i537, 1 ; 2 uses
  %i.amz = getelementptr inbounds nuw [16 x i8], ptr %i.amr, i64 %indvars.iv.next.i.i.i538
  %i.ana = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.anb = getelementptr inbounds nuw [16 x i8], ptr %i.ana, i64 %indvars.iv.next.i.i.i538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.amz, ptr noundef nonnull align 16 dereferenceable(16) %i.anb, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i538.1 = add nuw nsw i64 %indvars.iv.i.i.i537, 2 ; 2 uses
  %niter1077.next.1 = add i64 %niter1077, 2       ; 2 uses
  %niter1077.ncmp.1 = icmp eq i64 %niter1077.next.1, %unroll_iter1076
  br i1 %niter1077.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530.loopexit.unr-lcssa, label %bb.fr, !llvm.loop !170

.split7.i.i540:                                   ; preds = %.noexc541, %bb.fq
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.47, i32 noundef 301)
          to label %.noexc542 unwind label %bb.fu

.noexc542:                                        ; preds = %.split7.i.i540
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.48)
          to label %.noexc543 unwind label %bb.fu

.noexc543:                                        ; preds = %.noexc542
  store i32 0, ptr %i.df, align 4, !tbaa !151
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530.loopexit.unr-lcssa: ; preds = %bb.fr
  %lcmp.mod1074.not = icmp eq i64 %xtraiter1072, 0
  br i1 %lcmp.mod1074.not, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530, label %.epil.preheader1071

.epil.preheader1071:                              ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530.loopexit.unr-lcssa, %.lr.ph.i.i.i535
  %indvars.iv.i.i.i537.epil.init = phi i64 [ 0, %.lr.ph.i.i.i535 ], [ %indvars.iv.next.i.i.i538.1, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1075 = trunc i32 %i.amt to i1
  call void @llvm.assume(i1 %lcmp.mod1075)
  %i.anc = getelementptr inbounds nuw [16 x i8], ptr %i.amr, i64 %indvars.iv.i.i.i537.epil.init
  %i.and = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.ane = getelementptr inbounds nuw [16 x i8], ptr %i.and, i64 %indvars.iv.i.i.i537.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.anc, ptr noundef nonnull align 16 dereferenceable(16) %i.ane, i64 16, i1 false), !tbaa.struct !169
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530: ; preds = %.epil.preheader1071, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530.loopexit.unr-lcssa, %.noexc543, %.split.i.i529
  %.0.i12.i.i531 = phi ptr [ null, %.noexc543 ], [ %i.amr, %.split.i.i529 ], [ %i.amr, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530.loopexit.unr-lcssa ], [ %i.amr, %.epil.preheader1071 ]
  %.0.i.i532 = phi i32 [ 0, %.noexc543 ], [ %i.aml, %.split.i.i529 ], [ %i.aml, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530.loopexit.unr-lcssa ], [ %i.aml, %.epil.preheader1071 ]
  %i.anf = load ptr, ptr %i.de, align 8, !tbaa !147 ; 2 uses
  %.not.i10.i.i533 = icmp ne ptr %i.anf, null
  %i.ang = load i8, ptr %i.dd, align 8, !range !94
  %i.anh = trunc nuw i8 %i.ang to i1
  %or.cond705 = select i1 %.not.i10.i.i533, i1 %i.anh, i1 false
  br i1 %or.cond705, label %bb.fs, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i534

bb.fs:                                            ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.anf)
          to label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i534 unwind label %bb.fu

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i534: ; preds = %bb.fs, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i530
  store i8 1, ptr %i.dd, align 8, !tbaa !153
  store ptr %.0.i12.i.i531, ptr %i.de, align 8, !tbaa !147
  store i32 %.0.i.i532, ptr %i.dg, align 8, !tbaa !152
  br label %.lr.ph.i522

.lr.ph.i522:                                      ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i534, %bb.fp
  %i.ani = sext i32 %i.amk to i64                 ; 2 uses
  %wide.trip.count.i523 = sext i32 %i.aml to i64
  %i.anj = sext i32 %.2216 to i64
  %i.ank = sub nsw i64 0, %i.anj
  %xtraiter1081 = and i64 %i.ank, 3               ; 2 uses
  %lcmp.mod1082.not = icmp eq i64 %xtraiter1081, 0
  br i1 %lcmp.mod1082.not, label %.prol.loopexit1079, label %.prol.preheader1078

.prol.preheader1078:                              ; preds = %.lr.ph.i522, %.prol.preheader1078
  %indvars.iv.i524.prol = phi i64 [ %indvars.iv.next.i525.prol, %.prol.preheader1078 ], [ %i.ani, %.lr.ph.i522 ] ; 2 uses
  %prol.iter1083 = phi i64 [ %prol.iter1083.next, %.prol.preheader1078 ], [ 0, %.lr.ph.i522 ]
  %i.anl = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.anm = getelementptr inbounds [16 x i8], ptr %i.anl, i64 %indvars.iv.i524.prol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.anm, i8 0, i64 16, i1 false)
  %indvars.iv.next.i525.prol = add nsw i64 %indvars.iv.i524.prol, 1 ; 2 uses
  %prol.iter1083.next = add i64 %prol.iter1083, 1 ; 2 uses
  %prol.iter1083.cmp.not = icmp eq i64 %prol.iter1083.next, %xtraiter1081
  br i1 %prol.iter1083.cmp.not, label %.prol.loopexit1079, label %.prol.preheader1078, !llvm.loop !182

.prol.loopexit1079:                               ; preds = %.prol.preheader1078, %.lr.ph.i522
  %indvars.iv.i524.unr = phi i64 [ %i.ani, %.lr.ph.i522 ], [ %indvars.iv.next.i525.prol, %.prol.preheader1078 ]
  %i.ann = icmp ugt i32 %.2216, -4
  br i1 %i.ann, label %.loopexit, label %.lr.ph.i522.new

.lr.ph.i522.new:                                  ; preds = %.prol.loopexit1079, %.lr.ph.i522.new
  %indvars.iv.i524 = phi i64 [ %indvars.iv.next.i525.3, %.lr.ph.i522.new ], [ %indvars.iv.i524.unr, %.prol.loopexit1079 ] ; 5 uses
  %i.ano = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.anp = getelementptr inbounds [16 x i8], ptr %i.ano, i64 %indvars.iv.i524
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.anp, i8 0, i64 16, i1 false)
  %i.anq = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.anr = getelementptr [16 x i8], ptr %i.anq, i64 %indvars.iv.i524
  %i.ans = getelementptr i8, ptr %i.anr, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ans, i8 0, i64 16, i1 false)
  %i.ant = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.anu = getelementptr [16 x i8], ptr %i.ant, i64 %indvars.iv.i524
  %i.anv = getelementptr i8, ptr %i.anu, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.anv, i8 0, i64 16, i1 false)
  %i.anw = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.anx = getelementptr [16 x i8], ptr %i.anw, i64 %indvars.iv.i524
  %i.any = getelementptr i8, ptr %i.anx, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.any, i8 0, i64 16, i1 false)
  %indvars.iv.next.i525.3 = add nsw i64 %indvars.iv.i524, 4 ; 2 uses
  %exitcond.not.i526.3 = icmp eq i64 %indvars.iv.next.i525.3, %wide.trip.count.i523
  br i1 %exitcond.not.i526.3, label %.loopexit, label %.lr.ph.i522.new, !llvm.loop !155

.loopexit:                                        ; preds = %.prol.loopexit1079, %.lr.ph.i522.new, %_ZN20b3AlignedObjectArrayI6b3Int4E9quickSortIFbRKS0_S4_EEEvRKT_.exit521
  store i32 %i.aml, ptr %i.df, align 4, !tbaa !151
  br label %_ZN13b3ProfileZoneC2EPKc.exit492._crit_edge.thread

bb.ft:                                            ; preds = %bb.fo
  %i.anz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fu:                                            ; preds = %bb.fs, %.noexc542, %.split7.i.i540, %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i528
  %i.aoa = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

_ZN13b3ProfileZoneC2EPKc.exit492._crit_edge.thread: ; preds = %_ZN13b3ProfileZoneC2EPKc.exit492.preheader, %.loopexit, %_ZN13b3ProfileZoneC2EPKc.exit492._crit_edge
  invoke void @b3LeaveProfileZone()
          to label %bb.fw unwind label %bb.fv

bb.fv:                                            ; preds = %_ZN13b3ProfileZoneC2EPKc.exit492._crit_edge.thread
  %i.aob = landingpad { ptr, i32 }
          catch ptr null
  %i.aoc = extractvalue { ptr, i32 } %i.aob, 0
  call void @__clang_call_terminate(ptr %i.aoc) #22
  unreachable

bb.fw:                                            ; preds = %_ZN13b3ProfileZoneC2EPKc.exit492._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.aod = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i8 1, ptr %i.aod, align 8, !tbaa !153
  %i.aoe = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr null, ptr %i.aoe, align 8, !tbaa !147
  %i.aof = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 5 uses
  store i32 0, ptr %i.aof, align 4, !tbaa !151
  %i.aog = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.aog, align 8, !tbaa !152
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.27)
          to label %_ZN13b3ProfileZoneC2EPKc.exit548.preheader unwind label %bb.fz

_ZN13b3ProfileZoneC2EPKc.exit548.preheader:       ; preds = %bb.fw
  %i.aoh = load i32, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 4), align 4, !tbaa !151
  %i.aoi = icmp sgt i32 %i.aoh, 0
  br i1 %i.aoi, label %.lr.ph766, label %._crit_edge769

.preheader:                                       ; preds = %_ZN13b3ProfileZoneC2EPKc.exit548
  %i.aoj = icmp sgt i32 %i.aqo, 0
  br i1 %i.aoj, label %.lr.ph768.preheader, label %._crit_edge769

.lr.ph768.preheader:                              ; preds = %.preheader
  %.pre838 = load i32, ptr %i.df, align 4, !tbaa !151
  %i.aok = zext nneg i32 %i.aqo to i64
  br label %.lr.ph768

bb.fx:                                            ; preds = %bb.fn, %bb.fu, %bb.ft
  %.pn297.pn = phi { ptr, i32 } [ %i.anz, %bb.ft ], [ %i.aoa, %bb.fu ], [ %i.aku, %bb.fn ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit549 unwind label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aol = landingpad { ptr, i32 }
          catch ptr null
  %i.aom = extractvalue { ptr, i32 } %i.aol, 0
  call void @__clang_call_terminate(ptr %i.aom) #22
  unreachable

bb.fz:                                            ; preds = %bb.fw
  %i.aon = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13b3ProfileZoneD2Ev.exit630

.lr.ph766:                                        ; preds = %_ZN13b3ProfileZoneC2EPKc.exit548.preheader, %_ZN13b3ProfileZoneC2EPKc.exit548
  %i.aoo = phi ptr [ %i.aql, %_ZN13b3ProfileZoneC2EPKc.exit548 ], [ null, %_ZN13b3ProfileZoneC2EPKc.exit548.preheader ] ; 4 uses
  %i.aop = phi ptr [ %i.aqm, %_ZN13b3ProfileZoneC2EPKc.exit548 ], [ null, %_ZN13b3ProfileZoneC2EPKc.exit548.preheader ] ; 7 uses
  %i.aoq = phi i32 [ %i.aqn, %_ZN13b3ProfileZoneC2EPKc.exit548 ], [ 0, %_ZN13b3ProfileZoneC2EPKc.exit548.preheader ] ; 14 uses
  %i.aor = phi i32 [ %i.aqo, %_ZN13b3ProfileZoneC2EPKc.exit548 ], [ 0, %_ZN13b3ProfileZoneC2EPKc.exit548.preheader ] ; 4 uses
  %indvars.iv826 = phi i64 [ %indvars.iv.next827, %_ZN13b3ProfileZoneC2EPKc.exit548 ], [ 0, %_ZN13b3ProfileZoneC2EPKc.exit548.preheader ] ; 2 uses
  %.sroa.0.1763 = phi i32 [ %.sroa.0636.0.copyload, %_ZN13b3ProfileZoneC2EPKc.exit548 ], [ -1, %_ZN13b3ProfileZoneC2EPKc.exit548.preheader ]
  %.sroa.9.1762 = phi i32 [ %.sroa.9.0.copyload639, %_ZN13b3ProfileZoneC2EPKc.exit548 ], [ -1, %_ZN13b3ProfileZoneC2EPKc.exit548.preheader ]
  %i.aos = load ptr, ptr getelementptr inbounds nuw (i8, ptr @addedHostPairs, i64 16), align 8, !tbaa !147
  %i.aot = getelementptr inbounds nuw [16 x i8], ptr %i.aos, i64 %indvars.iv826 ; 3 uses
  %.sroa.0636.0.copyload = load i32, ptr %i.aot, align 16 ; 6 uses
  %.sroa.9.0..sroa_idx638 = getelementptr inbounds nuw i8, ptr %i.aot, i64 4
  %.sroa.9.0.copyload639 = load i32, ptr %.sroa.9.0..sroa_idx638, align 4 ; 5 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  %i.aou = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !127
  %.not286 = icmp eq i32 %.sroa.0636.0.copyload, %.sroa.0.1763
  %.not287 = icmp eq i32 %.sroa.9.0.copyload639, %.sroa.9.1762
  %or.cond333 = select i1 %.not286, i1 %.not287, i1 false
  br i1 %or.cond333, label %_ZN13b3ProfileZoneC2EPKc.exit548, label %bb.ga

bb.ga:                                            ; preds = %.lr.ph766
  %i.aov = load i32, ptr %i.df, align 4, !tbaa !151 ; 3 uses
  %.not32.i550 = icmp slt i32 %i.aov, 1
  br i1 %.not32.i550, label %_ZNK20b3AlignedObjectArrayI6b3Int4E16findLinearSearchERKS0_.exit576.thread.thread, label %.lr.ph.i551

.lr.ph.i551:                                      ; preds = %bb.ga
  %i.aow = add nsw i32 %i.aov, -1
  %i.aox = load ptr, ptr %i.de, align 8, !tbaa !147
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gf, %.lr.ph.i551
  %.01334.i554 = phi i32 [ %i.aow, %.lr.ph.i551 ], [ %.2.i562, %bb.gf ] ; 2 uses
  %.01433.i555 = phi i32 [ 0, %.lr.ph.i551 ], [ %.216.i561, %bb.gf ] ; 2 uses
  %i.aoy = add nuw nsw i32 %.01433.i555, %.01334.i554
  %i.aoz = lshr i32 %i.aoy, 1                     ; 5 uses
  %i.apa = zext nneg i32 %i.aoz to i64
  %i.apb = getelementptr inbounds nuw [16 x i8], ptr %i.aox, i64 %i.apa ; 2 uses
  %.val21.i556 = load i32, ptr %i.apb, align 16, !tbaa !127 ; 3 uses
  %i.apc = getelementptr i8, ptr %i.apb, i64 4
  %.val22.i557 = load i32, ptr %i.apc, align 4    ; 2 uses
  %i.apd = icmp sgt i32 %.sroa.0636.0.copyload, %.val21.i556
  %i.ape = icmp eq i32 %.sroa.0636.0.copyload, %.val21.i556 ; 2 uses
  %i.apf = icmp sgt i32 %.sroa.9.0.copyload639, %.val22.i557
  %spec.select.i.i558 = select i1 %i.ape, i1 %i.apf, i1 false
  %i.apg = select i1 %i.apd, i1 true, i1 %spec.select.i.i558
  br i1 %i.apg, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.aph = add nuw nsw i32 %i.aoz, 1
  br label %bb.gf

bb.gd:                                            ; preds = %bb.gb
  %i.api = icmp slt i32 %.sroa.0636.0.copyload, %.val21.i556
  %i.apj = icmp slt i32 %.sroa.9.0.copyload639, %.val22.i557
  %spec.select.i27.i559 = select i1 %i.ape, i1 %i.apj, i1 false
  %i.apk = select i1 %i.api, i1 true, i1 %spec.select.i27.i559
  br i1 %i.apk, label %bb.ge, label %.lr.ph.i566

bb.ge:                                            ; preds = %bb.gd
  %i.apl = add nsw i32 %i.aoz, -1
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gc
  %.216.i561 = phi i32 [ %.01433.i555, %bb.ge ], [ %i.aph, %bb.gc ] ; 2 uses
  %.2.i562 = phi i32 [ %i.apl, %bb.ge ], [ %.01334.i554, %bb.gc ] ; 2 uses
  %.not.i563 = icmp sgt i32 %.216.i561, %.2.i562
  br i1 %.not.i563, label %_ZNK20b3AlignedObjectArrayI6b3Int4E16findLinearSearchERKS0_.exit576.thread.thread, label %bb.gb, !llvm.loop !174

.lr.ph.i566:                                      ; preds = %bb.gd
  %.not288 = icmp eq i32 %i.aoz, %i.aov
  br i1 %.not288, label %_ZNK20b3AlignedObjectArrayI6b3Int4E16findLinearSearchERKS0_.exit576.thread.thread, label %_ZNK20b3AlignedObjectArrayI6b3Int4E16findLinearSearchERKS0_.exit576.thread

bb.gg:                                            ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread, %.noexc594, %.split7.i.i592, %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i579
  %i.apm = landingpad { ptr, i32 }
          cleanup
  br label %bb.hb

_ZNK20b3AlignedObjectArrayI6b3Int4E16findLinearSearchERKS0_.exit576.thread: ; preds = %.lr.ph.i566
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %.pre835 = load i32, ptr %i.df, align 4, !tbaa !151
  %i.apn = icmp eq i32 %i.aoz, %.pre835
  br i1 %i.apn, label %_ZNK20b3AlignedObjectArrayI6b3Int4E16findLinearSearchERKS0_.exit576.thread.thread, label %_ZN13b3ProfileZoneC2EPKc.exit548

_ZNK20b3AlignedObjectArrayI6b3Int4E16findLinearSearchERKS0_.exit576.thread.thread: ; preds = %bb.gf, %bb.ga, %.lr.ph.i566, %_ZNK20b3AlignedObjectArrayI6b3Int4E16findLinearSearchERKS0_.exit576.thread
  %i.apo = icmp eq i32 %i.aor, %i.aoq
  br i1 %i.apo, label %bb.gh, label %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit597

bb.gh:                                            ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E16findLinearSearchERKS0_.exit576.thread.thread
  %.not.i.i577 = icmp eq i32 %i.aoq, 0
  %i.app = shl nsw i32 %i.aoq, 1
  %i.apq = select i1 %.not.i.i577, i32 1, i32 %i.app ; 6 uses
  %i.apr = icmp slt i32 %i.aoq, %i.apq
  br i1 %i.apr, label %bb.gi, label %_ZN20b3AlignedObjectArrayI6b3Int4E9push_backERKS0_.exit597

bb.gi:                                            ; preds = %bb.gh
  %.not.i.i.i578 = icmp eq i32 %i.apq, 0
  br i1 %.not.i.i.i578, label %.split7.i.i592, label %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i579

_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i579: ; preds = %bb.gi
  %i.aps = sext i32 %i.apq to i64
  %i.apt = shl nsw i64 %i.aps, 4
  %i.apu = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.apt, i32 noundef 16)
          to label %.noexc593 unwind label %bb.gg ; 7 uses

.noexc593:                                        ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i579
  %i.apv = icmp eq ptr %i.apu, null
  br i1 %i.apv, label %.split7.i.i592, label %.split.i.i580

.split.i.i580:                                    ; preds = %.noexc593
  %i.apw = icmp sgt i32 %i.aoq, 0
  br i1 %i.apw, label %.lr.ph.i.i.i587, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581

.lr.ph.i.i.i587:                                  ; preds = %.split.i.i580
  %wide.trip.count.i.i.i588 = zext nneg i32 %i.aoq to i64 ; 2 uses
  %xtraiter1085 = and i64 %wide.trip.count.i.i.i588, 1
  %i.apx = icmp eq i32 %i.aoq, 1
  br i1 %i.apx, label %.epil.preheader1084, label %.lr.ph.i.i.i587.new

.lr.ph.i.i.i587.new:                              ; preds = %.lr.ph.i.i.i587
  %unroll_iter1089 = and i64 %wide.trip.count.i.i.i588, 2147483646
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gj, %.lr.ph.i.i.i587.new
  %indvars.iv.i.i.i589 = phi i64 [ 0, %.lr.ph.i.i.i587.new ], [ %indvars.iv.next.i.i.i590.1, %bb.gj ] ; 4 uses
  %niter1090 = phi i64 [ 0, %.lr.ph.i.i.i587.new ], [ %niter1090.next.1, %bb.gj ]
  %i.apy = getelementptr inbounds nuw [16 x i8], ptr %i.apu, i64 %indvars.iv.i.i.i589
  %i.apz = getelementptr inbounds nuw [16 x i8], ptr %i.aop, i64 %indvars.iv.i.i.i589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.apy, ptr noundef nonnull align 16 dereferenceable(16) %i.apz, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i590 = or disjoint i64 %indvars.iv.i.i.i589, 1 ; 2 uses
  %i.aqa = getelementptr inbounds nuw [16 x i8], ptr %i.apu, i64 %indvars.iv.next.i.i.i590
  %i.aqb = getelementptr inbounds nuw [16 x i8], ptr %i.aop, i64 %indvars.iv.next.i.i.i590
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aqa, ptr noundef nonnull align 16 dereferenceable(16) %i.aqb, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i590.1 = add nuw nsw i64 %indvars.iv.i.i.i589, 2 ; 2 uses
  %niter1090.next.1 = add i64 %niter1090, 2       ; 2 uses
  %niter1090.ncmp.1 = icmp eq i64 %niter1090.next.1, %unroll_iter1089
  br i1 %niter1090.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread.loopexit.unr-lcssa, label %bb.gj, !llvm.loop !170

.split7.i.i592:                                   ; preds = %.noexc593, %bb.gi
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.47, i32 noundef 301)
          to label %.noexc594 unwind label %bb.gg

.noexc594:                                        ; preds = %.split7.i.i592
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.48)
          to label %.noexc595 unwind label %bb.gg

.noexc595:                                        ; preds = %.noexc594
  store i32 0, ptr %i.aof, align 4, !tbaa !151
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581: ; preds = %.noexc595, %.split.i.i580
  %.pre.i586837 = phi i32 [ 0, %.noexc595 ], [ %i.aoq, %.split.i.i580 ]
  %.0.i12.i.i582 = phi ptr [ null, %.noexc595 ], [ %i.apu, %.split.i.i580 ] ; 2 uses
  %.0.i.i583 = phi i32 [ 0, %.noexc595 ], [ %i.apq, %.split.i.i580 ] ; 2 uses
  %.not.i10.i.i584.not = icmp eq ptr %i.aop, null
  br i1 %.not.i10.i.i584.not, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i585, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread.loopexit.unr-lcssa: ; preds = %bb.gj
  %lcmp.mod1087.not = icmp eq i64 %xtraiter1085, 0
  br i1 %lcmp.mod1087.not, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread, label %.epil.preheader1084

.epil.preheader1084:                              ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i587
  %indvars.iv.i.i.i589.epil.init = phi i64 [ 0, %.lr.ph.i.i.i587 ], [ %indvars.iv.next.i.i.i590.1, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1088 = trunc i32 %i.aoq to i1
  call void @llvm.assume(i1 %lcmp.mod1088)
  %i.aqc = getelementptr inbounds nuw [16 x i8], ptr %i.apu, i64 %indvars.iv.i.i.i589.epil.init
  %i.aqd = getelementptr inbounds nuw [16 x i8], ptr %i.aop, i64 %indvars.iv.i.i.i589.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aqc, ptr noundef nonnull align 16 dereferenceable(16) %i.aqd, i64 16, i1 false), !tbaa.struct !169
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread: ; preds = %.epil.preheader1084, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread.loopexit.unr-lcssa, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581
  %.0.i.i583949 = phi i32 [ %.0.i.i583, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581 ], [ %i.apq, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread.loopexit.unr-lcssa ], [ %i.apq, %.epil.preheader1084 ]
  %.0.i12.i.i582947 = phi ptr [ %.0.i12.i.i582, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581 ], [ %i.apu, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread.loopexit.unr-lcssa ], [ %i.apu, %.epil.preheader1084 ]
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aop)
          to label %._ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i585_crit_edge unwind label %bb.gg

._ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i585_crit_edge: ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581.thread
  %.pre.i586.pre = load i32, ptr %i.aof, align 4, !tbaa !151
  br label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i585

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i585: ; preds = %._ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i585_crit_edge, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581
  %.0.i.i583950 = phi i32 [ %.0.i.i583949, %._ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i585_crit_edge ], [ %.0.i.i583, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581 ] ; 2 uses
  %.0.i12.i.i582948 = phi ptr [ %.0.i12.i.i582947, %._ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i585_crit_edge ], [ %.0.i12.i.i582, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581 ] ; 2 uses
  %.pre.i586 = phi i32 [ %.pre.i586.pre, %._ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i585_crit_edge ], [ %.pre.i586837, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i581 ]
  store i8 1, ptr %i.aod, align 8, !tbaa !153
  store ptr %.0.i12.i.i582948, ptr %i.aoe, align 8, !tbaa !147
end_hunk_1
begin_hunk_2_@_ZN18b3GpuSapBroadphase44calculateOverlappingPairsHostIncremental3SapEv:bb.a
  %.not.i.i601 = icmp eq i32 %i.aqw, 0
  %i.ara = shl nsw i32 %i.aqw, 1
  %i.arb = select i1 %.not.i.i601, i32 1, i32 %i.ara ; 6 uses
  %i.arc = icmp slt i32 %i.aqw, %i.arb
  br i1 %i.arc, label %bb.gn, label %bb.gq

bb.gn:                                            ; preds = %bb.gm
  %.not.i.i.i602 = icmp eq i32 %i.arb, 0
  br i1 %.not.i.i.i602, label %.split7.i.i616, label %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i603

_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i603: ; preds = %bb.gn
  %i.ard = sext i32 %i.arb to i64
  %i.are = shl nsw i64 %i.ard, 4
  %i.arf = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.are, i32 noundef 16)
          to label %.noexc617 unwind label %bb.gl ; 7 uses

.noexc617:                                        ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i603
  %i.arg = icmp eq ptr %i.arf, null
  br i1 %i.arg, label %.split7.i.i616, label %.split.i.i604

.split.i.i604:                                    ; preds = %.noexc617
  %i.arh = load i32, ptr %i.df, align 4, !tbaa !151 ; 4 uses
  %i.ari = icmp sgt i32 %i.arh, 0
  br i1 %i.ari, label %.lr.ph.i.i.i611, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605

.lr.ph.i.i.i611:                                  ; preds = %.split.i.i604
  %wide.trip.count.i.i.i612 = zext nneg i32 %i.arh to i64 ; 2 uses
  %xtraiter1092 = and i64 %wide.trip.count.i.i.i612, 1
  %i.arj = icmp eq i32 %i.arh, 1
  br i1 %i.arj, label %.epil.preheader1091, label %.lr.ph.i.i.i611.new

.lr.ph.i.i.i611.new:                              ; preds = %.lr.ph.i.i.i611
  %unroll_iter1096 = and i64 %wide.trip.count.i.i.i612, 2147483646
  br label %bb.go

bb.go:                                            ; preds = %bb.go, %.lr.ph.i.i.i611.new
  %indvars.iv.i.i.i613 = phi i64 [ 0, %.lr.ph.i.i.i611.new ], [ %indvars.iv.next.i.i.i614.1, %bb.go ] ; 4 uses
  %niter1097 = phi i64 [ 0, %.lr.ph.i.i.i611.new ], [ %niter1097.next.1, %bb.go ]
  %i.ark = getelementptr inbounds nuw [16 x i8], ptr %i.arf, i64 %indvars.iv.i.i.i613
  %i.arl = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.arm = getelementptr inbounds nuw [16 x i8], ptr %i.arl, i64 %indvars.iv.i.i.i613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ark, ptr noundef nonnull align 16 dereferenceable(16) %i.arm, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i614 = or disjoint i64 %indvars.iv.i.i.i613, 1 ; 2 uses
  %i.arn = getelementptr inbounds nuw [16 x i8], ptr %i.arf, i64 %indvars.iv.next.i.i.i614
  %i.aro = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.arp = getelementptr inbounds nuw [16 x i8], ptr %i.aro, i64 %indvars.iv.next.i.i.i614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.arn, ptr noundef nonnull align 16 dereferenceable(16) %i.arp, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i614.1 = add nuw nsw i64 %indvars.iv.i.i.i613, 2 ; 2 uses
  %niter1097.next.1 = add i64 %niter1097, 2       ; 2 uses
  %niter1097.ncmp.1 = icmp eq i64 %niter1097.next.1, %unroll_iter1096
  br i1 %niter1097.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605.loopexit.unr-lcssa, label %bb.go, !llvm.loop !170

.split7.i.i616:                                   ; preds = %.noexc617, %bb.gn
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.47, i32 noundef 301)
          to label %.noexc618 unwind label %bb.gl

.noexc618:                                        ; preds = %.split7.i.i616
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.48)
          to label %.noexc619 unwind label %bb.gl

.noexc619:                                        ; preds = %.noexc618
  store i32 0, ptr %i.df, align 4, !tbaa !151
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605.loopexit.unr-lcssa: ; preds = %bb.go
  %lcmp.mod1094.not = icmp eq i64 %xtraiter1092, 0
  br i1 %lcmp.mod1094.not, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605, label %.epil.preheader1091

.epil.preheader1091:                              ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605.loopexit.unr-lcssa, %.lr.ph.i.i.i611
  %indvars.iv.i.i.i613.epil.init = phi i64 [ 0, %.lr.ph.i.i.i611 ], [ %indvars.iv.next.i.i.i614.1, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod1095 = trunc i32 %i.arh to i1
  call void @llvm.assume(i1 %lcmp.mod1095)
  %i.arq = getelementptr inbounds nuw [16 x i8], ptr %i.arf, i64 %indvars.iv.i.i.i613.epil.init
  %i.arr = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.ars = getelementptr inbounds nuw [16 x i8], ptr %i.arr, i64 %indvars.iv.i.i.i613.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.arq, ptr noundef nonnull align 16 dereferenceable(16) %i.ars, i64 16, i1 false), !tbaa.struct !169
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605: ; preds = %.epil.preheader1091, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605.loopexit.unr-lcssa, %.noexc619, %.split.i.i604
  %.0.i12.i.i606 = phi ptr [ null, %.noexc619 ], [ %i.arf, %.split.i.i604 ], [ %i.arf, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605.loopexit.unr-lcssa ], [ %i.arf, %.epil.preheader1091 ]
  %.0.i.i607 = phi i32 [ 0, %.noexc619 ], [ %i.arb, %.split.i.i604 ], [ %i.arb, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605.loopexit.unr-lcssa ], [ %i.arb, %.epil.preheader1091 ]
  %i.art = load ptr, ptr %i.de, align 8, !tbaa !147 ; 2 uses
  %.not.i10.i.i608 = icmp ne ptr %i.art, null
  %i.aru = load i8, ptr %i.dd, align 8, !range !94
  %i.arv = trunc nuw i8 %i.aru to i1
  %or.cond709 = select i1 %.not.i10.i.i608, i1 %i.arv, i1 false
  br i1 %or.cond709, label %bb.gp, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i609

bb.gp:                                            ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.art)
          to label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i609 unwind label %bb.gl

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i609: ; preds = %bb.gp, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i605
  store i8 1, ptr %i.dd, align 8, !tbaa !153
  store ptr %.0.i12.i.i606, ptr %i.de, align 8, !tbaa !147
  store i32 %.0.i.i607, ptr %i.dg, align 8, !tbaa !152
  %.pre.i610 = load i32, ptr %i.df, align 4, !tbaa !151
  br label %bb.gq

bb.gq:                                            ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i609, %bb.gm, %.lr.ph768
  %i.arw = phi i32 [ %.pre.i610, %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i609 ], [ %i.aqw, %bb.gm ], [ %i.aqw, %.lr.ph768 ]
  %i.arx = load ptr, ptr %i.de, align 8, !tbaa !147
  %i.ary = sext i32 %i.arw to i64
  %i.arz = getelementptr inbounds [16 x i8], ptr %i.arx, i64 %i.ary
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.arz, ptr noundef nonnull align 16 dereferenceable(16) %i.aqx, i64 16, i1 false), !tbaa.struct !169
  %i.asa = load i32, ptr %i.df, align 4, !tbaa !151
  %i.asb = add nsw i32 %i.asa, 1                  ; 2 uses
  store i32 %i.asb, ptr %i.df, align 4, !tbaa !151
  %indvars.iv.next830 = add nuw nsw i64 %indvars.iv829, 1 ; 2 uses
  %i.asc = icmp samesign ult i64 %indvars.iv.next830, %i.aok
  br i1 %i.asc, label %.lr.ph768, label %._crit_edge769, !llvm.loop !184

_ZN13b3ProfileZoneC2EPKc.exit600:                 ; preds = %_ZN13b3ProfileZoneD2Ev.exit598
  invoke void @_ZN13b3OpenCLArrayI6b3Int4E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.dh, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext true)
          to label %bb.gr unwind label %bb.he

bb.gr:                                            ; preds = %_ZN13b3ProfileZoneC2EPKc.exit600
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit622 unwind label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.asd = landingpad { ptr, i32 }
          catch ptr null
  %i.ase = extractvalue { ptr, i32 } %i.asd, 0
  call void @__clang_call_terminate(ptr %i.ase) #22
  unreachable

_ZN13b3ProfileZoneD2Ev.exit622:                   ; preds = %bb.gr
  %.not.i.i.i623.not = icmp eq ptr %i.aqs, null
  br i1 %.not.i.i.i623.not, label %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit, label %bb.gt

bb.gt:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit622
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aqs)
          to label %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit unwind label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.asf = landingpad { ptr, i32 }
          catch ptr null
  %i.asg = extractvalue { ptr, i32 } %i.asf, 0
  call void @__clang_call_terminate(ptr %i.asg) #22
  unreachable

_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit:      ; preds = %_ZN13b3ProfileZoneD2Ev.exit622, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ash = load ptr, ptr %i.ahk, align 8, !tbaa !82 ; 2 uses
  %.not.i.i.i624 = icmp ne ptr %i.ash, null
  %i.asi = load i8, ptr %i.ahj, align 8, !range !94
  %i.asj = trunc nuw i8 %i.asi to i1
  %or.cond.i.i625 = select i1 %.not.i.i.i624, i1 %i.asj, i1 false
  br i1 %or.cond.i.i625, label %bb.gv, label %_ZN20b3AlignedObjectArrayIiED2Ev.exit

bb.gv:                                            ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ash)
          to label %_ZN20b3AlignedObjectArrayIiED2Ev.exit unwind label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ask = landingpad { ptr, i32 }
          catch ptr null
  %i.asl = extractvalue { ptr, i32 } %i.ask, 0
  call void @__clang_call_terminate(ptr %i.asl) #22
  unreachable

_ZN20b3AlignedObjectArrayIiED2Ev.exit:            ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.asm = load ptr, ptr %i.de, align 8, !tbaa !147 ; 2 uses
  %.not.i.i.i626 = icmp ne ptr %i.asm, null
  %i.asn = load i8, ptr %i.dd, align 8, !range !94
  %i.aso = trunc nuw i8 %i.asn to i1
  %or.cond.i.i627 = select i1 %.not.i.i.i626, i1 %i.aso, i1 false
  br i1 %or.cond.i.i627, label %bb.gx, label %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit628

bb.gx:                                            ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.asm)
          to label %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit628 unwind label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.asp = landingpad { ptr, i32 }
          catch ptr null
  %i.asq = extractvalue { ptr, i32 } %i.asp, 0
  call void @__clang_call_terminate(ptr %i.asq) #22
  unreachable

_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit628:   ; preds = %_ZN20b3AlignedObjectArrayIiED2Ev.exit, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.gz

bb.gz:                                            ; preds = %._crit_edge, %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit628
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit629 unwind label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.asr = landingpad { ptr, i32 }
          catch ptr null
  %i.ass = extractvalue { ptr, i32 } %i.asr, 0
  call void @__clang_call_terminate(ptr %i.ass) #22
  unreachable

_ZN13b3ProfileZoneD2Ev.exit629:                   ; preds = %bb.gz
  ret void

bb.hb:                                            ; preds = %bb.gg, %bb.gl
  %.pn289.pn = phi { ptr, i32 } [ %i.aqv, %bb.gl ], [ %i.apm, %bb.gg ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit630 unwind label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ast = landingpad { ptr, i32 }
          catch ptr null
  %i.asu = extractvalue { ptr, i32 } %i.ast, 0
  call void @__clang_call_terminate(ptr %i.asu) #22
  unreachable

bb.hd:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit598
  %i.asv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13b3ProfileZoneD2Ev.exit630

bb.he:                                            ; preds = %_ZN13b3ProfileZoneC2EPKc.exit600
  %i.asw = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit630 unwind label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.asx = landingpad { ptr, i32 }
          catch ptr null
  %i.asy = extractvalue { ptr, i32 } %i.asx, 0
  call void @__clang_call_terminate(ptr %i.asy) #22
  unreachable

_ZN13b3ProfileZoneD2Ev.exit630:                   ; preds = %bb.hd, %bb.he, %bb.fz, %bb.hb
  %.pn289.pn.pn.pn = phi { ptr, i32 } [ %.pn289.pn, %bb.hb ], [ %i.aon, %bb.fz ], [ %i.asv, %bb.hd ], [ %i.asw, %bb.he ]
  call void @_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZN13b3ProfileZoneD2Ev.exit549

_ZN13b3ProfileZoneD2Ev.exit549:                   ; preds = %bb.fd, %bb.fx, %_ZN13b3ProfileZoneD2Ev.exit630
  %.pn297.pn.pn.pn = phi { ptr, i32 } [ %.pn289.pn.pn.pn, %_ZN13b3ProfileZoneD2Ev.exit630 ], [ %i.aie, %bb.fd ], [ %.pn297.pn, %bb.fx ]
  call void @_ZN20b3AlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN13b3ProfileZoneD2Ev.exit366.a

_ZN13b3ProfileZoneD2Ev.exit366.a:                 ; preds = %bb.fa, %bb.fb, %bb.ex, %bb.ey, %bb.eu, %bb.ev, %bb.bn, %bb.el, %bb.ai, %bb.bh, %bb.ae, %bb.af, %bb.z, %bb.aa, %bb.ac, %_ZN13b3ProfileZoneD2Ev.exit549
  %.pn324.pn.pn = phi { ptr, i32 } [ %.pn316.pn, %bb.el ], [ %i.is, %bb.aa ], [ %i.ju, %bb.af ], [ %i.iv, %bb.ac ], [ %i.sy, %bb.bh ], [ %.pn297.pn.pn.pn, %_ZN13b3ProfileZoneD2Ev.exit549 ], [ %i.ahx, %bb.ey ], [ %i.aht, %bb.ev ], [ %i.ir, %bb.z ], [ %i.jj, %bb.ae ], [ %i.kf, %bb.ai ], [ %i.tz, %bb.bn ], [ %i.ahs, %bb.eu ], [ %i.ahw, %bb.ex ], [ %i.aia, %bb.fa ], [ %i.aib, %bb.fb ]
  %i.asz = load ptr, ptr %i.de, align 8, !tbaa !147 ; 2 uses
  %.not.i.i.i632 = icmp ne ptr %i.asz, null
  %i.ata = load i8, ptr %i.dd, align 8, !range !94
  %i.atb = trunc nuw i8 %i.ata to i1
  %or.cond.i.i633 = select i1 %.not.i.i.i632, i1 %i.atb, i1 false
  br i1 %or.cond.i.i633, label %bb.hg, label %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit634

bb.hg:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit366.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.asz)
          to label %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit634 unwind label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.atc = landingpad { ptr, i32 }
          catch ptr null
  %i.atd = extractvalue { ptr, i32 } %i.atc, 0
  call void @__clang_call_terminate(ptr %i.atd) #22
  unreachable

_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit634:   ; preds = %bb.hg, %_ZN13b3ProfileZoneD2Ev.exit366.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %_ZN13b3ProfileZoneD2Ev.exit365

_ZN13b3ProfileZoneD2Ev.exit365:                   ; preds = %bb.w, %bb.x, %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit634, %bb.n, %bb.m, %bb.l
  %.pn324.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn324.pn.pn, %_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev.exit634 ], [ %i.cq, %bb.l ], [ %i.cs, %bb.n ], [ %i.cr, %bb.m ], [ %i.in, %bb.w ], [ %i.io, %bb.x ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit635 unwind label %bb.hi

bb.hi:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit365
  %i.ate = landingpad { ptr, i32 }
          catch ptr null
  %i.atf = extractvalue { ptr, i32 } %i.ate, 0
  call void @__clang_call_terminate(ptr %i.atf) #22
  unreachable

_ZN13b3ProfileZoneD2Ev.exit635:                   ; preds = %_ZN13b3ProfileZoneD2Ev.exit365
  resume { ptr, i32 } %.pn324.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK13b3OpenCLArrayI6b3Int4E10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !185  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !151  ; 2 uses
  %i.f = icmp slt i32 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %_ZN20b3AlignedObjectArrayI6b3Int4E6resizeEiRKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !152
  %i.i = icmp slt i32 %i.h, %i.c
  br i1 %i.i, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i: ; preds = %bb.c
  %sext = shl i64 %i.b, 32
  %i.j = ashr exact i64 %sext, 28
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i
  %i.m = load i32, ptr %i.d, align 4, !tbaa !151  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !147
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.next.i.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !147
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !169
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !170

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E8allocateEi.exit.i.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.47, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.48)
  store i32 0, ptr %i.d, align 4, !tbaa !151
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod9 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod9)
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !147
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa.struct !169
  br label %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.split7.i.i ], [ %i.k, %.split.i.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.split7.i.i ], [ %i.c, %.split.i.i ], [ %i.c, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.c, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !147 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i.i, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !153, !range !94, !noundef !124
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI6b3Int4E4copyEiiPS0_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !153
  store ptr %.0.i12.i.i, ptr %i.z, align 8, !tbaa !147
  store i32 %.0.i.i, ptr %i.g, align 8, !tbaa !152
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI6b3Int4E10deallocateEv.exit.i.i, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.ag = sext i32 %i.e to i64                    ; 4 uses
  %sext3 = shl i64 %i.b, 32
  %wide.trip.count.i = ashr exact i64 %sext3, 32  ; 2 uses
  %i.ah = sub i64 %i.b, %i.ag
  %xtraiter10 = and i64 %i.ah, 3                  ; 2 uses
  %lcmp.mod11.not = icmp eq i64 %xtraiter10, 0
  br i1 %lcmp.mod11.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
end_hunk_2

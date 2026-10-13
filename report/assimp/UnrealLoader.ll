Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/UnrealLoader?download=true
inline.NumInlined: 880
inline.NumDeleted: 400
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp14UnrealImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
bb.iq:                                            ; preds = %bb.ip
  %i.aeh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store ptr %i.aeg, ptr %i.aeh, align 8
  %i.aei = load i32, ptr %i.aco, align 8          ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.aei, ptr %i.aej, align 8
  %i.aek = zext i32 %i.aei to i64
  %i.ael = shl nuw nsw i64 %i.aek, 3
  %i.aem = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ael) #28
          to label %bb.ir unwind label %bb.id

bb.ir:                                            ; preds = %bb.iq
  %i.aen = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.aem, ptr %i.aen, align 8
  %i.aeo = load i32, ptr %i.aco, align 8          ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.pm, i64 1120
  store i32 %i.aeo, ptr %i.aep, align 8
  %i.aeq = zext i32 %i.aeo to i64
  %i.aer = shl nuw nsw i64 %i.aeq, 2
  %i.aes = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aer) #28
          to label %bb.is unwind label %bb.id

bb.is:                                            ; preds = %bb.ir
  %i.aet = getelementptr inbounds nuw i8, ptr %i.pm, i64 1128 ; 2 uses
  store ptr %i.aes, ptr %i.aet, align 8
  %i.aeu = load i32, ptr %i.aco, align 8
  %.not907 = icmp eq i32 %i.aeu, 0
  br i1 %.not907, label %.lr.ph905, label %.lr.ph901

.lr.ph901:                                        ; preds = %bb.is
  %i.aev = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %28, i64 4 ; 13 uses
  br label %bb.it

.lr.ph905:                                        ; preds = %.loopexit, %bb.is
  %i.aex = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.aey = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.aez = ptrtoint ptr %.sroa.0657.2 to i64
  br label %bb.jw

bb.it:                                            ; preds = %.lr.ph901, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph901 ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %i.afa = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #28
          to label %bb.iu unwind label %bb.jc     ; 10 uses

bb.iu:                                            ; preds = %bb.it
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 4
  store i32 0, ptr %i.afb, align 4
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afa, i64 8
  store i32 0, ptr %i.afc, align 8
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afa, i64 16 ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afa, i64 224
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afa, i64 1272
  %i.afg = getelementptr inbounds nuw i8, ptr %i.afa, i64 1312
  store ptr null, ptr %i.afg, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.afd, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.afe, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.aff, i8 0, i64 36, i1 false)
  %i.afh = load ptr, ptr %i.aeh, align 8
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %indvars.iv
  store ptr %i.afa, ptr %i.afi, align 8
  store i32 4, ptr %i.afa, align 8
  %i.afj = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0657.2, i64 %indvars.iv ; 5 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.afl = load i32, ptr %i.afk, align 4          ; 3 uses
  %i.afm = zext i32 %i.afl to i64                 ; 5 uses
  %i.afn = shl nuw nsw i64 %i.afm, 4
  %i.afo = or disjoint i64 %i.afn, 8
  %i.afp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.afo) #28
          to label %bb.iv unwind label %bb.jd     ; 2 uses

bb.iv:                                            ; preds = %bb.iu
  store i64 %i.afm, ptr %i.afp, align 16
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 8 ; 4 uses
  %i.afr = icmp eq i32 %i.afl, 0                  ; 3 uses
  br i1 %i.afr, label %.loopexit825, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.afs = getelementptr inbounds nuw [16 x i8], ptr %i.afq, i64 %i.afm
  %i.aft = add nuw nsw i64 %i.afm, 1152921504606846975
  %i.afu = and i64 %i.aft, 1152921504606846975
  %xtraiter = and i64 %i.afm, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.iw, %.prol.preheader
  %i.afv = phi ptr [ %i.afx, %.prol.preheader ], [ %i.afq, %bb.iw ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.iw ]
  store i32 0, ptr %i.afv, align 8
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  store ptr null, ptr %i.afw, align 8
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afv, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !40

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.iw
  %.unr = phi ptr [ %i.afq, %bb.iw ], [ %i.afx, %.prol.preheader ]
  %i.afy = icmp samesign ult i64 %i.afu, 7
  br i1 %i.afy, label %.loopexit825, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.afz = phi ptr [ %i.agp, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.afz, align 8
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  store ptr null, ptr %i.aga, align 8
  %i.agb = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  store i32 0, ptr %i.agb, align 8
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afz, i64 24
  store ptr null, ptr %i.agc, align 8
  %i.agd = getelementptr inbounds nuw i8, ptr %i.afz, i64 32
  store i32 0, ptr %i.agd, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %i.afz, i64 40
  store ptr null, ptr %i.age, align 8
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afz, i64 48
  store i32 0, ptr %i.agf, align 8
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afz, i64 56
  store ptr null, ptr %i.agg, align 8
  %i.agh = getelementptr inbounds nuw i8, ptr %i.afz, i64 64
  store i32 0, ptr %i.agh, align 8
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afz, i64 72
  store ptr null, ptr %i.agi, align 8
  %i.agj = getelementptr inbounds nuw i8, ptr %i.afz, i64 80
  store i32 0, ptr %i.agj, align 8
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afz, i64 88
  store ptr null, ptr %i.agk, align 8
  %i.agl = getelementptr inbounds nuw i8, ptr %i.afz, i64 96
  store i32 0, ptr %i.agl, align 8
  %i.agm = getelementptr inbounds nuw i8, ptr %i.afz, i64 104
  store ptr null, ptr %i.agm, align 8
  %i.agn = getelementptr inbounds nuw i8, ptr %i.afz, i64 112
  store i32 0, ptr %i.agn, align 8
  %i.ago = getelementptr inbounds nuw i8, ptr %i.afz, i64 120
  store ptr null, ptr %i.ago, align 8
  %i.agp = getelementptr inbounds nuw i8, ptr %i.afz, i64 128 ; 2 uses
  %i.agq = icmp eq ptr %i.agp, %i.afs
  br i1 %i.agq, label %.loopexit825, label %.new

.loopexit825:                                     ; preds = %.prol.loopexit, %.new, %bb.iv
  %i.agr = getelementptr inbounds nuw i8, ptr %i.afa, i64 208
  store ptr %i.afq, ptr %i.agr, align 8
  %i.ags = mul i32 %i.afl, 3
  %i.agt = zext i32 %i.ags to i64
  %i.agu = mul nuw nsw i64 %i.agt, 12             ; 4 uses
  %i.agv = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.agu) #28
          to label %bb.ix unwind label %bb.jd     ; 2 uses

bb.ix:                                            ; preds = %.loopexit825
  br i1 %i.afr, label %.loopexit824, label %.loopexit824.loopexit

.loopexit824.loopexit:                            ; preds = %bb.ix
  %i.agw = add nsw i64 %i.agu, -12                ; 2 uses
  %i.agx = urem i64 %i.agw, 12
  %i.agy = sub nuw nsw i64 %i.agw, %i.agx
  %i.agz = add nsw i64 %i.agy, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.agv, i8 0, i64 %i.agz, i1 false)
  br label %.loopexit824

.loopexit824:                                     ; preds = %.loopexit824.loopexit, %bb.ix
  store ptr %i.agv, ptr %i.afd, align 8
  %i.aha = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.agu) #28
          to label %bb.iy unwind label %bb.jd     ; 2 uses

bb.iy:                                            ; preds = %.loopexit824
  br i1 %i.afr, label %.loopexit823, label %.loopexit823.loopexit

.loopexit823.loopexit:                            ; preds = %bb.iy
  %i.ahb = add nsw i64 %i.agu, -12                ; 2 uses
  %i.ahc = urem i64 %i.ahb, 12
  %i.ahd = sub nuw nsw i64 %i.ahb, %i.ahc
  %i.ahe = add nsw i64 %i.ahd, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aha, i8 0, i64 %i.ahe, i1 false)
  br label %.loopexit823

.loopexit823:                                     ; preds = %.loopexit823.loopexit, %bb.iy
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.afa, i64 112
  store ptr %i.aha, ptr %i.ahf, align 8
  %i.ahg = load ptr, ptr %i.aet, align 8
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv
  %i.ahi = trunc nuw i64 %indvars.iv to i32       ; 2 uses
  store i32 %i.ahi, ptr %i.ahh, align 4
  %i.ahj = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28
          to label %bb.iz unwind label %bb.je     ; 8 uses

bb.iz:                                            ; preds = %.loopexit823
  invoke void @_ZN10aiMaterialC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ahj)
          to label %bb.ja unwind label %bb.jf

bb.ja:                                            ; preds = %bb.iz
  %i.ahk = load ptr, ptr %i.aen, align 8
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.ahk, i64 %indvars.iv
  store ptr %i.ahj, ptr %i.ahl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #25
  store <2 x float> splat (float 1.000000e+00), ptr %27, align 8
  store float 1.000000e+00, ptr %i.aev, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %28, i8 0, i64 1028, i1 false)
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.afj, i64 4 ; 2 uses
  %i.ahn = load i32, ptr %i.ahm, align 4
  %i.aho = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aew, i64 noundef 1024, ptr noundef nonnull @.str.32, i32 noundef %i.ahi, i32 noundef %i.ahn) #25 ; 0 uses
  %i.ahp = load i32, ptr %i.afj, align 4          ; 2 uses
  %i.ahq = icmp eq i32 %i.ahp, 1
  br i1 %i.ahq, label %bb.jb, label %bb.jh

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i32 1, ptr %i.f, align 4
  %i.ahr = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ahj, ptr noundef nonnull %i.f, i32 noundef 4, ptr noundef nonnull @.str.33, i32 noundef 0, i32 noundef 0, i32 noundef 4)
          to label %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit unwind label %bb.jg ; 0 uses

_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit:      ; preds = %bb.jb
  %strlen216 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aew)
  %endptr217 = getelementptr inbounds i8, ptr %i.aew, i64 %strlen216
  store i32 6255476, ptr %endptr217, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  %.pre958 = load i32, ptr %i.afj, align 4
  br label %bb.ji

bb.jc:                                            ; preds = %bb.it
  %i.ahs = landingpad { ptr, i32 }
          cleanup
  br label %bb.kw

bb.jd:                                            ; preds = %.loopexit824, %.loopexit825, %bb.iu
  %i.aht = landingpad { ptr, i32 }
          cleanup
  br label %.thread789

bb.je:                                            ; preds = %.loopexit823
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  br label %.thread789

bb.jf:                                            ; preds = %bb.iz
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ahj, i64 noundef 16) #27
  br label %.thread789

bb.jg:                                            ; preds = %bb.jb
  %i.ahw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  br label %bb.jv

bb.jh:                                            ; preds = %bb.ja
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aew)
  %endptr = getelementptr inbounds i8, ptr %i.aew, i64 %strlen
  store i32 6255471, ptr %endptr, align 1
  br label %bb.ji

bb.ji:                                            ; preds = %bb.jh, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit
  %32 = phi i32 [ %i.ahp, %bb.jh ], [ %.pre958, %_ZN10aiMaterial11AddPropertyEPKijPKcjj.exit ] ; 2 uses
  %i.ahx = icmp eq i32 %32, 2
  br i1 %i.ahx, label %bb.jj, label %bb.jl

bb.jj:                                            ; preds = %bb.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  store float f0x3F666666, ptr %i.g, align 4
  %i.ahy = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ahj, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit unwind label %bb.jk ; 0 uses

_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit:      ; preds = %bb.jj
  %strlen220 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aew)
  %endptr221 = getelementptr inbounds i8, ptr %i.aew, i64 %strlen220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr221, ptr noundef nonnull align 1 dereferenceable(6) @.str.37, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  %.pre959 = load i32, ptr %i.afj, align 4
  br label %bb.jm

bb.jk:                                            ; preds = %bb.jj
  %i.ahz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  br label %bb.jv

bb.jl:                                            ; preds = %bb.ji
  %strlen218 = call i64 @strlen(ptr nonnull dereferenceable(1) %i.aew)
  %endptr219 = getelementptr inbounds i8, ptr %i.aew, i64 %strlen218
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %endptr219, ptr noundef nonnull align 1 dereferenceable(6) @.str.38, i64 6, i1 false)
  br label %bb.jm

bb.jm:                                            ; preds = %bb.jl, %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit
  %33 = phi i32 [ %32, %bb.jl ], [ %.pre959, %_ZN10aiMaterial11AddPropertyEPKfjPKcjj.exit ]
  %i.aia = icmp eq i32 %33, 8
  br i1 %i.aia, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aew, ptr noundef nonnull align 1 dereferenceable(12) @.str.39, i64 12, i1 false)
  store i32 11, ptr %28, align 4
  store <2 x float> zeroinitializer, ptr %27, align 8
  store float 0.000000e+00, ptr %i.aev, align 8
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %bb.jm
  %i.aib = invoke noundef i32 @_ZN10aiMaterial17AddBinaryPropertyEPKvjPKcjj18aiPropertyTypeInfo(ptr noundef nonnull align 8 dereferenceable(16) %i.ahj, ptr noundef nonnull %27, i32 noundef 12, ptr noundef nonnull @.str.40, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit unwind label %bb.jq ; 0 uses

_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit: ; preds = %bb.jo
  %i.aic = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aew) #29
  %i.aid = trunc i64 %i.aic to i32
  store i32 %i.aid, ptr %28, align 4
  %i.aie = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ahj, ptr noundef nonnull %28, ptr noundef nonnull @.str.41, i32 noundef 0, i32 noundef 0)
          to label %bb.jp unwind label %bb.jq     ; 0 uses

bb.jp:                                            ; preds = %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  %i.aif = load i32, ptr %i.ahm, align 4
  %i.aig = load ptr, ptr %19, align 8             ; 2 uses
  %i.aih = load ptr, ptr %i.aby, align 8          ; 2 uses
  %.not821895 = icmp eq ptr %i.aig, %i.aih
  br i1 %.not821895, label %.loopexit, label %.lr.ph898

bb.jq:                                            ; preds = %bb.jo, %_ZN10aiMaterial11AddPropertyEPK9aiColor3DjPKcjj.exit
  %i.aii = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

.lr.ph898:                                        ; preds = %bb.jp, %bb.ju
  %.sroa.0642.0896 = phi ptr [ %i.aiu, %bb.ju ], [ %i.aig, %bb.jp ] ; 4 uses
  %i.aij = load i32, ptr %.sroa.0642.0896, align 8
  %i.aik = icmp eq i32 %i.aij, %i.aif
  br i1 %i.aik, label %bb.jr, label %bb.ju

bb.jr:                                            ; preds = %.lr.ph898
  %i.ail = getelementptr inbounds nuw i8, ptr %.sroa.0642.0896, i64 16
  %i.aim = load i64, ptr %i.ail, align 8          ; 4 uses
  %i.ain = icmp ugt i64 %i.aim, 1023
  br i1 %i.ain, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.aio = getelementptr inbounds nuw i8, ptr %.sroa.0642.0896, i64 8
  %i.aip = trunc nuw nsw i64 %i.aim to i32
  store i32 %i.aip, ptr %28, align 4
  %i.aiq = load ptr, ptr %i.aio, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aew, ptr align 1 %i.aiq, i64 %i.aim, i1 false)
  %i.air = getelementptr inbounds nuw i8, ptr %i.aew, i64 %i.aim
  store i8 0, ptr %i.air, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568: ; preds = %bb.jr, %bb.js
  %i.ais = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %i.ahj, ptr noundef nonnull %28, ptr noundef nonnull @.str.42, i32 noundef 1, i32 noundef 0)
          to label %.loopexit unwind label %bb.jt ; 0 uses

bb.jt:                                            ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568
  %i.ait = landingpad { ptr, i32 }
          cleanup
  br label %bb.jv

bb.ju:                                            ; preds = %.lr.ph898
  %i.aiu = getelementptr inbounds nuw i8, ptr %.sroa.0642.0896, i64 40 ; 2 uses
  %.not821 = icmp eq ptr %i.aiu, %i.aih
  br i1 %.not821, label %.loopexit, label %.lr.ph898, !llvm.loop !41

.loopexit:                                        ; preds = %bb.ju, %bb.jp, %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit568
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aiv = load i32, ptr %i.aco, align 8
  %i.aiw = zext i32 %i.aiv to i64
  %i.aix = icmp samesign ult i64 %indvars.iv.next, %i.aiw
  br i1 %i.aix, label %bb.it, label %.lr.ph905, !llvm.loop !42

bb.jv:                                            ; preds = %bb.jt, %bb.jq, %bb.jk, %bb.jg
  %.pn222 = phi { ptr, i32 } [ %i.ait, %bb.jt ], [ %i.aii, %bb.jq ], [ %i.ahz, %bb.jk ], [ %i.ahw, %bb.jg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25
  br label %bb.kw

._crit_edge906:                                   ; preds = %bb.jx
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #25
  call void @_ZN6Assimp11BaseProcessC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %30) #25
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp21MakeLeftHandedProcessE, i64 16), ptr %30, align 8
  invoke void @_ZN6Assimp21MakeLeftHandedProcess7ExecuteEP7aiScene(ptr noundef nonnull align 8 dereferenceable(24) %30, ptr noundef nonnull %2)
          to label %bb.kb unwind label %bb.kt

bb.jw:                                            ; preds = %.lr.ph905, %bb.jx
  %.sroa.0638.0904 = phi ptr [ %i.jj, %.lr.ph905 ], [ %i.amr, %bb.jx ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  %i.aiy = getelementptr inbounds nuw i8, ptr %.sroa.0638.0904, i64 6
  %i.aiz = load i8, ptr %i.aiy, align 2
  %i.aja = sext i8 %i.aiz to i32
  store i32 %i.aja, ptr %29, align 4
  %i.ajb = getelementptr inbounds nuw i8, ptr %.sroa.0638.0904, i64 14
  %i.ajc = load i8, ptr %i.ajb, align 2
  %i.ajd = zext i8 %i.ajc to i32
  store i32 %i.ajd, ptr %i.aex, align 4
  store i32 0, ptr %i.aey, align 4
  %i.aje = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_St26random_access_iterator_tag(ptr %.sroa.0657.2, ptr %.sroa.22.1, ptr nonnull align 4 dereferenceable(12) %29)
          to label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570 unwind label %bb.jy

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570: ; preds = %bb.jw
  %i.ajf = load ptr, ptr %i.aeh, align 8
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = sub i64 %i.ajg, %i.aez
  %i.aji = sdiv exact i64 %i.ajh, 12
  %i.ajj = getelementptr inbounds [8 x i8], ptr %i.ajf, i64 %i.aji
  %i.ajk = load ptr, ptr %i.ajj, align 8          ; 5 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.ajk, i64 208
  %i.ajm = load ptr, ptr %i.ajl, align 8
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajk, i64 8 ; 2 uses
  %i.ajo = load i32, ptr %i.ajn, align 8          ; 2 uses
  %i.ajp = add i32 %i.ajo, 1
  store i32 %i.ajp, ptr %i.ajn, align 8
  %i.ajq = zext i32 %i.ajo to i64
  %i.ajr = getelementptr inbounds nuw [16 x i8], ptr %i.ajm, i64 %i.ajq ; 2 uses
  store i32 3, ptr %i.ajr, align 8
  %i.ajs = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znam(i64 noundef 12) #28
          to label %bb.jx unwind label %bb.jz     ; 2 uses

bb.jx:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPN6Assimp6Unreal7TempMatESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit570
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8 ; 3 uses
  store ptr %i.ajs, ptr %i.ajt, align 8
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajk, i64 4 ; 12 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajk, i64 16 ; 3 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.sroa.0638.0904, i64 8
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajk, i64 112 ; 3 uses
  %i.ajy = load i32, ptr %i.aju, align 4          ; 2 uses
  store i32 %i.ajy, ptr %i.ajs, align 4
  %i.ajz = load i16, ptr %.sroa.0638.0904, align 2
  %i.aka = zext i16 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.aka
  %i.akc = load ptr, ptr %i.ajv, align 8
  %i.akd = zext i32 %i.ajy to i64
  %i.ake = getelementptr inbounds nuw [12 x i8], ptr %i.akc, i64 %i.akd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ake, ptr noundef nonnull align 4 dereferenceable(12) %i.akb, i64 12, i1 false)
  %i.akf = load i8, ptr %i.ajw, align 2
  %i.akg = uitofp i8 %i.akf to float
  %i.akh = fdiv float %i.akg, 2.550000e+02
  %i.aki = getelementptr inbounds nuw i8, ptr %.sroa.0638.0904, i64 9
  %i.akj = load i8, ptr %i.aki, align 1
  %i.akk = uitofp i8 %i.akj to float
  %i.akl = fdiv float %i.akk, 2.550000e+02
  %i.akm = fsub float 1.000000e+00, %i.akl
  %i.akn = load ptr, ptr %i.ajx, align 8
  %i.ako = load i32, ptr %i.aju, align 4
  %i.akp = zext i32 %i.ako to i64
  %i.akq = getelementptr inbounds nuw [12 x i8], ptr %i.akn, i64 %i.akp ; 3 uses
  store float %i.akh, ptr %i.akq, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 4
  store float %i.akm, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.akq, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx, align 4
  %i.akr = load i32, ptr %i.aju, align 4
  %i.aks = add i32 %i.akr, 1                      ; 2 uses
  store i32 %i.aks, ptr %i.aju, align 4
  %i.akt = load ptr, ptr %i.ajt, align 8
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 4
  store i32 %i.aks, ptr %i.aku, align 4
  %i.akv = getelementptr inbounds nuw i8, ptr %.sroa.0638.0904, i64 2
  %i.akw = load i16, ptr %i.akv, align 2
  %i.akx = zext i16 %i.akw to i64
  %i.aky = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.akx
  %i.akz = load ptr, ptr %i.ajv, align 8
  %i.ala = load i32, ptr %i.aju, align 4
  %i.alb = zext i32 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [12 x i8], ptr %i.akz, i64 %i.alb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.alc, ptr noundef nonnull align 4 dereferenceable(12) %i.aky, i64 12, i1 false)
  %i.ald = getelementptr inbounds nuw i8, ptr %.sroa.0638.0904, i64 10
  %i.ale = load i8, ptr %i.ald, align 2
  %i.alf = uitofp i8 %i.ale to float
  %i.alg = fdiv float %i.alf, 2.550000e+02
  %i.alh = getelementptr inbounds nuw i8, ptr %.sroa.0638.0904, i64 11
  %i.ali = load i8, ptr %i.alh, align 1
  %i.alj = uitofp i8 %i.ali to float
  %i.alk = fdiv float %i.alj, 2.550000e+02
  %i.all = fsub float 1.000000e+00, %i.alk
  %i.alm = load ptr, ptr %i.ajx, align 8
  %i.aln = load i32, ptr %i.aju, align 4
  %i.alo = zext i32 %i.aln to i64
  %i.alp = getelementptr inbounds nuw [12 x i8], ptr %i.alm, i64 %i.alo ; 3 uses
  store float %i.alg, ptr %i.alp, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.alp, i64 4
  store float %i.all, ptr %.sroa.4.0..sroa_idx.1, align 4
  %.sroa.5.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.alp, i64 8
  store float 0.000000e+00, ptr %.sroa.5.0..sroa_idx.1, align 4
  %i.alq = load i32, ptr %i.aju, align 4
  %i.alr = add i32 %i.alq, 1                      ; 2 uses
  store i32 %i.alr, ptr %i.aju, align 4
  %i.als = load ptr, ptr %i.ajt, align 8
  %i.alt = getelementptr inbounds nuw i8, ptr %i.als, i64 8
  store i32 %i.alr, ptr %i.alt, align 4
  %i.alu = getelementptr inbounds nuw i8, ptr %.sroa.0638.0904, i64 4
  %i.alv = load i16, ptr %i.alu, align 2
  %i.alw = zext i16 %i.alv to i64
end_hunk_0
